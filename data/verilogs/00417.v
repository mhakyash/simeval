module decoder_2to4 (
  input A,
  input B,
  output Y0,
  output Y1,
  output Y2,
  output Y3
);

  assign Y0 = ~(A | B);
  assign Y1 = ~(A | ~B);
  assign Y2 = ~(~A | B);
  assign Y3 = ~(~A | ~B);

endmodule
module decoder_3to8 (
  input A,
  input B,
  input C,
  output Y0,
  output Y1,
  output Y2,
  output Y3,
  output Y4,
  output Y5,
  output Y6,
  output Y7
);

  wire Y0_0, Y0_1, Y1_0, Y1_1, Y2_0, Y2_1, Y3_0, Y3_1;

  decoder_2to4 d1(A, B, Y0_0, Y0_1);
  decoder_2to4 d2(A, ~B, Y1_0, Y1_1);
  decoder_2to4 d3(~A, B, Y2_0, Y2_1);
  decoder_2to4 d4(~A, ~B, Y3_0, Y3_1);

  assign Y0 = ~(Y0_0 | Y0_1 | C);
  assign Y1 = ~(Y1_0 | Y1_1 | C);
  assign Y2 = ~(Y2_0 | Y2_1 | C);
  assign Y3 = ~(Y3_0 | Y3_1 | C);
  assign Y4 = ~(Y0_0 | Y2_0 | C);
  assign Y5 = ~(Y0_1 | Y2_1 | C);
  assign Y6 = ~(Y1_0 | Y3_0 | C);
  assign Y7 = ~(Y1_1 | Y3_1 | C);

endmodule
