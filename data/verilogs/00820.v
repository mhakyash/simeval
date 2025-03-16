module mag_comparator (
  input [n-1:0] A,
  input [n-1:0] B,
  output GT,
  output EQ,
  output LT
);

parameter n = 4; // number of bits in the binary numbers

assign GT = (A > B);
assign EQ = (A == B);
assign LT = (A < B);

endmodule