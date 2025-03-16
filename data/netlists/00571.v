// Benchmark "nor4_module" written by ABC on Wed Jun 26 15:22:14 2024

module nor4_module ( 
    A, B, C, D,
    Y  );
  input  A, B, C, D;
  output Y;
  NOR4X1   g0(.A(D), .B(C), .C(B), .D(A), .Y(Y));
endmodule


