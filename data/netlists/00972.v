// Benchmark "sky130_fd_sc_hs__fa" written by ABC on Wed Jun 26 15:22:25 2024

module sky130_fd_sc_hs__fa ( 
    A, B, CIN, VPWR, VGND,
    COUT, SUM  );
  input  A, B, CIN, VPWR, VGND;
  output COUT, SUM;
  wire new_n8, new_n9, new_n11;
  NAND2X1  g0(.A(CIN), .B(A), .Y(new_n8));
  OAI21X1  g1(.A0(CIN), .A1(A), .B0(B), .Y(new_n9));
  NAND2X1  g2(.A(new_n9), .B(new_n8), .Y(COUT));
  XOR2X1   g3(.A(B), .B(A), .Y(new_n11));
  XOR2X1   g4(.A(new_n11), .B(CIN), .Y(SUM));
endmodule


