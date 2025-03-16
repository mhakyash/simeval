// Benchmark "sky130_fd_sc_lp__nand3" written by ABC on Wed Jun 26 15:22:06 2024

module sky130_fd_sc_lp__nand3 ( 
    A, B, C, VPWR, VGND, VPB, VNB,
    Y  );
  input  A, B, C, VPWR, VGND, VPB, VNB;
  output Y;
  NAND3X1  g0(.A(C), .B(B), .C(A), .Y(Y));
endmodule


