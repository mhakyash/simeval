module uart_tx (
  input clk,
  input reset,
  input [7:0] data_in,
  output tx
);
  reg [9:0] shift_reg;
  reg [3:0] bit_counter;
  always @(posedge clk or posedge reset) begin
    if (reset) begin
      shift_reg <= 10'b10_0000_0000;
      bit_counter <= 4'b0;
    end else begin
      if (bit_counter == 0) begin
        shift_reg <= {1'b1, data_in, 1'b0};
        bit_counter <= 4'b1000;
      end else begin
        shift_reg <= shift_reg >> 1;
        bit_counter <= bit_counter - 1;
      end
    end
  end
  assign tx = shift_reg[0];
endmodule

module uart_rx (
  input clk,
  input reset,
  input rx,
  output [7:0] data_out
);
  reg [9:0] shift_reg;
  reg [3:0] bit_counter;
  reg [7:0] data_buffer;
  always @(posedge clk or posedge reset) begin
    if (reset) begin
      shift_reg <= 10'b10_0000_0000;
      bit_counter <= 4'b0;
      data_buffer <= 8'b0;
    end else begin
      if (bit_counter == 0) begin
        if (~shift_reg[9] & rx) begin
          bit_counter <= 4'b1000;
        end
      end else begin
        shift_reg <= {rx, shift_reg[9:1]};
        bit_counter <= bit_counter - 1;
        if (bit_counter == 1) begin
          data_buffer <= shift_reg[8:1];
        end
      end
    end
  end
  assign data_out = data_buffer;
endmodule