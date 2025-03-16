// Benchmark "nor_gate_expression" written by ABC on Wed Jun 26 15:22:23 2024

module nor_gate_expression ( 
    A, B, C, D,
    Y  );
  input  A, B, C, D;
  output Y;
  wire new_n6;
  NOR2X1   g0(.A(B), .B(A), .Y(new_n6));
  NOR3X1   g1(.A(new_n6), .B(D), .C(C), .Y(Y));
endmodule


