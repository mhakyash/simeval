module fixed_point_arithmetic (
  input signed [integer_bits+fractional_bits-1:0] num1,
  input signed [integer_bits+fractional_bits-1:0] num2,
  input [1:0] ctrl,
  output signed [integer_bits+fractional_bits-1:0] result
);

parameter integer_bits = 4;
parameter fractional_bits = 4;

reg signed [integer_bits+fractional_bits-1:0] temp_result;

always @(*) begin
  case(ctrl)
    2'b00: temp_result = num1 + num2; // addition
    2'b01: temp_result = num1 - num2; // subtraction
    2'b10: temp_result = num1 * num2; // multiplication
    2'b11: temp_result = (num1 << fractional_bits) / num2; // division
  endcase
end

assign result = temp_result;

endmodule