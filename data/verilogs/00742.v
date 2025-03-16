module non_restoring_divider (
  input clk,
  input start,
  input [n-1:0] dividend,
  input [n-1:0] divisor,
  output reg done,
  output reg [n-1:0] quotient,
  output reg [n-1:0] remainder
);

parameter n = 8;

reg [n-1:0] dividend_reg;
reg [n-1:0] divisor_reg;
reg [n-1:0] quotient_reg;
reg [n-1:0] remainder_reg;
reg [1:0] state;

always @(posedge clk) begin
  case(state)
    2'b00: begin // idle state
      if(start) begin
        state <= 2'b01;
        dividend_reg <= dividend;
        divisor_reg <= divisor;
        quotient_reg <= 0;
        remainder_reg <= 0;
      end
    end
    2'b01: begin // subtract divisor from dividend
      if(dividend_reg >= divisor_reg) begin
        dividend_reg <= dividend_reg - divisor_reg;
        quotient_reg[n-1] <= 1;
      end else begin
        quotient_reg[n-1] <= 0;
      end
      state <= 2'b10;
    end
    2'b10: begin // restore dividend
      if(dividend_reg < 0) begin
        dividend_reg <= dividend_reg + divisor_reg;
        quotient_reg[n-1] <= 0;
      end
      quotient_reg <= {quotient_reg[n-2:0], quotient_reg[n-1]};
      divisor_reg <= {divisor_reg[n-2:0], 0};
      state <= 2'b01;
      if(divisor_reg == 0) begin
        done <= 1;
        quotient <= quotient_reg;
        remainder <= dividend_reg;
      end
    end
  endcase
end

endmodule