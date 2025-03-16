module sd_controller (
  input clk,
  input rst,
  input [7:0] cmd,
  input [511:0] data_in,
  input mode,
  input data_en,
  output [511:0] data_out,
  output cmd_ack,
  output data_ack
);

  // Define internal registers
  reg [7:0] cmd_reg;
  reg [511:0] data_in_reg;
  reg mode_reg;
  reg data_en_reg;
  reg [511:0] data_out_reg;
  reg cmd_ack_reg;
  reg data_ack_reg;
  reg [2:0] state;

  // Define constants
  localparam CMD_IDLE = 3'b000;
  localparam CMD_SEND = 3'b001;
  localparam CMD_RECEIVE = 3'b010;
  localparam CMD_ACK = 3'b011;
  localparam DATA_IDLE = 3'b100;
  localparam DATA_SEND = 3'b101;
  localparam DATA_RECEIVE = 3'b110;
  localparam DATA_ACK = 3'b111;
  localparam CRC_POLY = 16'h1021;

  // Define internal signals
  wire [7:0] crc_out;
  wire [7:0] crc_in;
  wire [7:0] crc_data;
  wire [7:0] crc_cmd;

  // Instantiate CRC module
  crc16 crc (
    .clk(clk),
    .rst(rst),
    .data_in(crc_data),
    .crc_out(crc_out),
    .crc_in(crc_in),
    .crc_poly(CRC_POLY)
  );

  // Define state machine
  always @(posedge clk) begin
    if (rst) begin
      state <= CMD_IDLE;
      cmd_reg <= 0;
      data_in_reg <= 0;
      mode_reg <= 0;
      data_en_reg <= 0;
      cmd_ack_reg <= 0;
      data_ack_reg <= 0;
      data_out_reg <= 0;
    end else begin
      case (state)
        CMD_IDLE: begin
          cmd_ack_reg <= 0;
          if (cmd != 0) begin
            cmd_reg <= cmd;
            state <= CMD_SEND;
          end
        end
        CMD_SEND: begin
          crc_data <= cmd_reg;
          crc_cmd <= cmd_reg;
          cmd_ack_reg <= 1;
          state <= CMD_ACK;
        end
        CMD_ACK: begin
          if (crc_out == 8'h00) begin
            if (mode == 1) begin
              state <= DATA_SEND;
            end else begin
              state <= CMD_IDLE;
            end
          end
        end
        DATA_IDLE: begin
          data_ack_reg <= 0;
          if (data_en == 1) begin
            data_in_reg <= data_in;
            state <= DATA_SEND;
          end
        end
        DATA_SEND: begin
          crc_data <= data_in_reg;
          data_ack_reg <= 1;
          state <= DATA_ACK;
        end
        DATA_ACK: begin
          if (crc_out == 8'h00) begin
            if (mode == 1) begin
              state <= DATA_RECEIVE;
            end else begin
              state <= CMD_IDLE;
            end
          end
        end
        DATA_RECEIVE: begin
          crc_in <= data_out_reg;
          data_ack_reg <= 1;
          state <= DATA_ACK;
        end
      endcase
    end
  end

  // Transmit and receive data
  always @(posedge clk) begin
    if (rst) begin
      data_out_reg <= 0;
    end else begin
      case (state)
        DATA_IDLE: begin
          data_out_reg <= 0;
        end
        DATA_SEND: begin
          data_out_reg <= data_in_reg;
        end
        DATA_RECEIVE: begin
          data_out_reg <= data_out;
        end
      endcase
    end
  end

  // Assign outputs
  assign cmd_ack = cmd_ack_reg;
  assign data_ack = data_ack_reg;
  assign data_out = data_out_reg;

endmodule

// CRC module
module crc16 (
  input clk,
  input rst,
  input [7:0] data_in,
  output [7:0] crc_out,
  input [7:0] crc_in,
  input [15:0] crc_poly
);

  // Define internal registers
  reg [7:0] crc_reg;
  reg [7:0] data_reg;
  reg [3:0] i;

  // Define constants
  localparam WIDTH = 16;

  // Define internal signals
  wire [15:0] crc_poly_reg;
  wire [15:0] crc_reg_shifted;
  wire [0:0] xor_in;
  wire [7:0] xor_out;

  // Shift register
  always @(posedge clk) begin
    if (rst) begin
      crc_reg <= 0;
    end else begin
      crc_reg <= crc_reg_shifted;
    end
  end

  // CRC calculation
  always @(posedge clk) begin
    if (rst) begin
      data_reg <= 0;
      i <= 0;
    end else begin
      data_reg <= data_in;
      crc_poly_reg <= crc_poly;
      crc_reg_shifted <= {crc_reg[14:0], 1'b0};
      if (i < WIDTH) begin
        xor_in <= crc_reg_shifted[15] ^ data_reg[7];
        xor_out <= {1'b0, crc_reg_shifted[15:8]} ^ (crc_poly_reg << 1);
        if (xor_in == 1'b1) begin
          crc_reg_shifted <= xor_out;
        end else begin
          crc_reg_shifted <= crc_reg_shifted;
        end
        i <= i + 1;
      end
    end
  end

  // Assign output
  assign crc_out = crc_reg;

endmodule