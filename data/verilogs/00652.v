module my_module(
  input A1,
  input A2,
  input B,
  output O
);

  wire w0;

  or g0(
    .o(w0),
    .a(A1),
    .b(A2)
  );

  nand g1(
    .o(O),
    .a(w0),
    .b(B)
  );

endmodule