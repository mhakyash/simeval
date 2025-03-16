// Benchmark "signal_selector" written by ABC on Wed Jun 26 15:22:08 2024

module signal_selector ( 
    A1, A2, A3, B1, C1, VPB, VPWR, VGND, VNB,
    Y  );
  input  A1, A2, A3, B1, C1, VPB, VPWR, VGND, VNB;
  output Y;
  wire new_n11, new_n12, new_n13, new_n14, new_n15, new_n16;
  XOR2X1   g0(.A(C1), .B(B1), .Y(new_n11));
  INVX1    g1(.A(A2), .Y(new_n12));
  OAI21X1  g2(.A0(A3), .A1(A1), .B0(new_n12), .Y(new_n13));
  MX2X1    g3(.A(new_n11), .B(C1), .S0(new_n13), .Y(new_n14));
  INVX1    g4(.A(A1), .Y(new_n15));
  OAI21X1  g5(.A0(A3), .A1(A2), .B0(new_n15), .Y(new_n16));
  MX2X1    g6(.A(new_n14), .B(B1), .S0(new_n16), .Y(Y));
endmodule


