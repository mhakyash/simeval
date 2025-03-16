// Benchmark "my_or4" written by ABC on Wed Jun 26 15:22:25 2024

module my_or4 ( 
    A, B, C, D,
    X  );
  input  A, B, C, D;
  output X;
  OR4X1    g0(.A(D), .B(C), .C(B), .D(A), .Y(X));
endmodule


