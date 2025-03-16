// Benchmark "sky130_fd_sc_hs__mux4_2" written by ABC on Wed Jun 26 15:22:07 2024

module sky130_fd_sc_hs__mux4_2 ( 
    A0, A1, A2, A3, S0, S1,
    X  );
  input  A0, A1, A2, A3, S0, S1;
  output X;
  wire new_n8, new_n9, new_n10, new_n11, new_n12, new_n13, new_n14, new_n15;
  NAND2X1  g0(.A(S1), .B(S0), .Y(new_n8));
  MX2X1    g1(.A(A3), .B(A2), .S0(new_n8), .Y(new_n9));
  INVX1    g2(.A(S1), .Y(new_n10));
  NOR2X1   g3(.A(new_n10), .B(S0), .Y(new_n11));
  MX2X1    g4(.A(new_n9), .B(A1), .S0(new_n11), .Y(new_n12));
  AND2X1   g5(.A(new_n10), .B(S0), .Y(new_n13));
  MX2X1    g6(.A(new_n12), .B(A2), .S0(new_n13), .Y(new_n14));
  NOR2X1   g7(.A(S1), .B(S0), .Y(new_n15));
  MX2X1    g8(.A(new_n14), .B(A0), .S0(new_n15), .Y(X));
endmodule


