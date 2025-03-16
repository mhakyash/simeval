module adder (
  input [7:0] A,
  input [7:0] B,
  output [7:0] sum
);

  assign sum = A + B;

endmodule