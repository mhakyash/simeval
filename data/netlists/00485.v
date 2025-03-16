// Benchmark "verilog_module" written by ABC on Wed Jun 26 15:22:12 2024

module verilog_module ( 
    A1_N, A2_N, B1, B2, VPWR, VGND, VPB, VNB,
    X  );
  input  A1_N, A2_N, B1, B2, VPWR, VGND, VPB, VNB;
  output X;
  wire new_n10;
  NAND2X1  g0(.A(B2), .B(B1), .Y(new_n10));
  NOR3X1   g1(.A(new_n10), .B(A2_N), .C(A1_N), .Y(X));
endmodule


