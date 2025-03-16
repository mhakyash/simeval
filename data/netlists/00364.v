// Benchmark "my_module" written by ABC on Wed Jun 26 15:22:07 2024

module my_module ( 
    A1, A2, B1_N,
    Y  );
  input  A1, A2, B1_N;
  output Y;
  wire new_n5, new_n6;
  NOR3X1   g0(.A(B1_N), .B(A2), .C(A1), .Y(new_n5));
  XOR2X1   g1(.A(A2), .B(A1), .Y(new_n6));
  OR2X1    g2(.A(new_n6), .B(new_n5), .Y(Y));
endmodule


