// Benchmark "signal_converter" written by ABC on Wed Jun 26 15:22:04 2024

module signal_converter ( 
    A1, A2, B1_N,
    X  );
  input  A1, A2, B1_N;
  output X;
  wire new_n5, new_n6, new_n7, new_n8, new_n9, new_n10;
  INVX1    g0(.A(A1), .Y(new_n5));
  INVX1    g1(.A(B1_N), .Y(new_n6));
  NAND3X1  g2(.A(new_n6), .B(A2), .C(new_n5), .Y(new_n7));
  INVX1    g3(.A(A2), .Y(new_n8));
  NAND3X1  g4(.A(B1_N), .B(new_n8), .C(A1), .Y(new_n9));
  XOR2X1   g5(.A(A2), .B(A1), .Y(new_n10));
  NAND3X1  g6(.A(new_n10), .B(new_n9), .C(new_n7), .Y(X));
endmodule


