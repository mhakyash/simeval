// Benchmark "sky130_fd_sc_hvl__and3" written by ABC on Wed Jun 26 15:21:58 2024

module sky130_fd_sc_hvl__and3 ( 
    A, B, C, VPWR, VGND, VPB, VNB,
    X  );
  input  A, B, C, VPWR, VGND, VPB, VNB;
  output X;
  wire new_n9;
  AND2X1   g0(.A(B), .B(A), .Y(new_n9));
  AND2X1   g1(.A(new_n9), .B(C), .Y(X));
endmodule


