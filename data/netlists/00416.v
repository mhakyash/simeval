// Benchmark "logic_operation" written by ABC on Wed Jun 26 15:22:10 2024

module logic_operation ( 
    A, B, C, D,
    Y  );
  input  A, B, C, D;
  output Y;
  wire new_n6, new_n7;
  AND2X1   g0(.A(B), .B(A), .Y(new_n6));
  AND2X1   g1(.A(D), .B(C), .Y(new_n7));
  OR2X1    g2(.A(new_n7), .B(new_n6), .Y(Y));
endmodule


