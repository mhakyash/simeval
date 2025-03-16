// Benchmark "mux4" written by ABC on Wed Jun 26 15:22:05 2024

module mux4 ( 
    A0, A1, A2, A3, S0, S1, VPWR, VGND, VPB, VNB,
    X  );
  input  A0, A1, A2, A3, S0, S1, VPWR, VGND, VPB, VNB;
  output X;
  wire new_n12, new_n13;
  MX2X1    g0(.A(A0), .B(A2), .S0(S1), .Y(new_n12));
  MX2X1    g1(.A(A1), .B(A3), .S0(S1), .Y(new_n13));
  MX2X1    g2(.A(new_n12), .B(new_n13), .S0(S0), .Y(X));
endmodule


