// Benchmark "my_module" written by ABC on Wed Jun 26 15:22:26 2024

module my_module ( 
    A, SLEEP_B, VPWR, KAGND, VPB, VNB,
    X  );
  input  A, SLEEP_B, VPWR, KAGND, VPB, VNB;
  output X;
  wire new_n8, new_n9, new_n10, new_n11;
  INVX1    g0(.A(VPB), .Y(new_n8));
  INVX1    g1(.A(A), .Y(new_n9));
  INVX1    g2(.A(VPWR), .Y(new_n10));
  OR4X1    g3(.A(KAGND), .B(new_n10), .C(SLEEP_B), .D(new_n9), .Y(new_n11));
  NOR3X1   g4(.A(new_n11), .B(VNB), .C(new_n8), .Y(X));
endmodule


