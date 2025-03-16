// Benchmark "nor3" written by ABC on Wed Jun 26 15:21:58 2024

module nor3 ( 
    A, B, C,
    Y  );
  input  A, B, C;
  output Y;
  NOR3X1   g0(.A(C), .B(B), .C(A), .Y(Y));
endmodule


