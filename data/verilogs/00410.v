module comparator_3bit (
  input [2:0] A,
  input [2:0] B,
  output EQ
);

  assign EQ = (A == B) ? 1'b1 : 1'b0;

endmodule
