module calculator(
  input signed [31:0] a, b,
  input [1:0] op,
  output reg signed [31:0] sum,
  output reg signed [31:0] difference,
  output reg signed [31:0] product,
  output reg signed [31:0] quotient
);

always @(*) begin
  case(op)
    2'b00: begin // addition
      sum = a + b;
    end
    2'b01: begin // subtraction
      difference = a - b;
    end
    2'b10: begin // multiplication
      product = a * b;
    end
    2'b11: begin // division
      quotient = a / b;
    end
    default: begin // invalid operation
      sum = 0;
      difference = 0;
      product = 0;
      quotient = 0;
    end
  endcase
end

endmodule