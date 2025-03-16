module Full_Adder (A, B, Ci, S, Co);
  input A, B, Ci;
  output S, Co;
  wire n1, n2, n3, n4, n5, n6, n7, n8;

  XOR2_X1 U1(.A(A), .B(B), .ZN(n1));
  XOR2_X1 U2(.A(n1), .B(Ci), .ZN(S));
  AND2_X1 U3(.A(A), .B(B), .ZN(n2));
  AND2_X1 U4(.A(n1), .B(Ci), .ZN(n3));
  OR2_X1 U5(.A(n2), .B(n3), .ZN(Co));
  AND2_X1 U6(.A(n2), .B(n3), .ZN(n4));
  NOT1_X1 U7(.A(n1), .ZN(n5));
  NOT1_X1 U8(.A(Ci), .ZN(n6));
  AND2_X1 U9(.A(n5), .B(B), .ZN(n7));
  AND2_X1 U10(.A(n6), .B(A), .ZN(n8));
  OR2_X1 U11(.A(n7), .B(n8), .ZN(Ci));
endmodule