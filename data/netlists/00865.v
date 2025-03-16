// Benchmark "sky130_fd_sc_hd__o311ai" written by ABC on Wed Jun 26 15:22:22 2024

module sky130_fd_sc_hd__o311ai ( 
    A1, A2, A3, B1, C1, VPB, VPWR, VGND, VNB,
    Y  );
  input  A1, A2, A3, B1, C1, VPB, VPWR, VGND, VNB;
  output Y;
  wire new_n11, new_n12, new_n13;
  INVX1    g0(.A(A1), .Y(new_n11));
  INVX1    g1(.A(A2), .Y(new_n12));
  INVX1    g2(.A(A3), .Y(new_n13));
  NAND3X1  g3(.A(new_n13), .B(new_n12), .C(new_n11), .Y(Y));
endmodule


