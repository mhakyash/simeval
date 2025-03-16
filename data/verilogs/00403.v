module Modulo (
  input [31:0] a,
  input [31:0] b,
  output [31:0] c
);

  assign c = a - (b * (a / b));

endmodule