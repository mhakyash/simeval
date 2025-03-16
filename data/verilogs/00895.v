module adder (
  input [3:0] a,
  input [3:0] b,
  input cin,
  output [3:0] sum,
  output cout
);

  assign sum = a + b + cin;
  assign cout = (a[3] & b[3]) | (a[3] & cin) | (b[3] & cin);

endmodule