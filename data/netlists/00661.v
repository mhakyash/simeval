// Benchmark "custom_logic" written by ABC on Wed Jun 26 15:22:16 2024

module custom_logic ( 
    A1, A2, B1_N,
    Y  );
  input  A1, A2, B1_N;
  output Y;
  wire new_n5;
  INVX1    g0(.A(B1_N), .Y(new_n5));
  NAND3X1  g1(.A(new_n5), .B(A2), .C(A1), .Y(Y));
endmodule


