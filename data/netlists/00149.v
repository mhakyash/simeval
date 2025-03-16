// Benchmark "nor_buf" written by ABC on Wed Jun 26 15:22:01 2024

module nor_buf ( 
    A, B, C,
    Y  );
  input  A, B, C;
  output Y;
  NOR3X1   g0(.A(C), .B(B), .C(A), .Y(Y));
endmodule


