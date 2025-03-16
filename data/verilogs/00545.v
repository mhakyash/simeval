module magnitude_comparator(
  input [3:0] A,
  input [3:0] B,
  output EQ,
  output GT
);

  assign EQ = (A == B);
  assign GT = (A > B);

endmodule