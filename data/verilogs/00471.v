module calculator(
  input [7:0] num1,
  input [7:0] num2,
  input [1:0] op,
  output reg [7:0] result
);

  always @(*) begin
    case (op)
      2'b00: result = num1 + num2;
      2'b01: result = num1 - num2;
      2'b10: result = num1 * num2;
      2'b11: result = num1 / num2;
    endcase
  end

endmodule