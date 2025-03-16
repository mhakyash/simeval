module mux_johnson_counter(
  input                clk,
  input                rst_n,
  input [2:0]          sel,
  input [3:0]          data,
  output reg [3:0]     Q
);

  reg [3:0] shift_reg;
  reg [1:0] state = 2'b00;
  
  always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
      shift_reg <= 4'b0000;
      state <= 2'b00;
    end else begin
      shift_reg <= {shift_reg[2:0], data[sel]};
      case (state)
        2'b00: begin
          Q <= shift_reg[3:0];
          state <= 2'b01;
        end
        2'b01: begin
          Q <= shift_reg[2:0];
          state <= 2'b11;
        end
        2'b11: begin
          Q <= shift_reg[1:0] ^ shift_reg[3];
          state <= 2'b10;
        end
        2'b10: begin
          Q <= shift_reg[0] ^ shift_reg[2];
          state <= 2'b01;
        end
      endcase
    end
  end

endmodule