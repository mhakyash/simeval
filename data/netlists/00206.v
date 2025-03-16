// Benchmark "my_xor3" written by ABC on Wed Jun 26 15:22:03 2024

module my_xor3 ( 
    A, B, C,
    X  );
  input  A, B, C;
  output X;
  wire new_n5, new_n6, new_n7, new_n8, new_n9, new_n10, new_n11;
  INVX1    g0(.A(A), .Y(new_n5));
  NOR3X1   g1(.A(C), .B(B), .C(new_n5), .Y(new_n6));
  INVX1    g2(.A(B), .Y(new_n7));
  NOR3X1   g3(.A(C), .B(new_n7), .C(A), .Y(new_n8));
  INVX1    g4(.A(C), .Y(new_n9));
  NOR3X1   g5(.A(new_n9), .B(B), .C(A), .Y(new_n10));
  NOR3X1   g6(.A(new_n9), .B(new_n7), .C(new_n5), .Y(new_n11));
  OR4X1    g7(.A(new_n11), .B(new_n10), .C(new_n8), .D(new_n6), .Y(X));
endmodule


