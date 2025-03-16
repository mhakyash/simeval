// Benchmark "five_to_one" written by ABC on Wed Jun 26 15:22:10 2024

module five_to_one ( 
    A, B, C, D, E,
    Y  );
  input  A, B, C, D, E;
  output Y;
  wire new_n7;
  XOR2X1   g0(.A(E), .B(D), .Y(new_n7));
  OR4X1    g1(.A(new_n7), .B(C), .C(B), .D(A), .Y(Y));
endmodule


