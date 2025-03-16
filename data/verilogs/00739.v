module FA_69 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n9, n10, n11;

  // S = XNOR(A XNOR B, Ci)
  XNOR2_X1 U2 ( .A(B), .B(A), .ZN(n11) );
  XNOR2_X1 U1 ( .A(Ci), .B(n11), .ZN(S) );

  // Co = NAND(A NAND B, NOT(S))
  NAND2_X1 U4 ( .A1(A), .A2(B), .ZN(n9) );
  OAI21_X1 U5 ( .B1(A), .B2(B), .A(Ci), .ZN(n10) );
  NAND2_X1 U3 ( .A1(n10), .A2(n9), .ZN(Co) );

endmodule