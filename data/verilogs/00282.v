module min_finder (
  input [7:0] num1,
  input [7:0] num2,
  input [7:0] num3,
  input [7:0] num4,
  output reg [7:0] min_val
);

  assign min_val = (num1 < num2) ? num1 : num2;
  assign min_val = (min_val < num3) ? min_val : num3;
  assign min_val = (min_val < num4) ? min_val : num4;

endmodule
