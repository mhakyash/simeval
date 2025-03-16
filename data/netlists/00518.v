// Benchmark "and_gate" written by ABC on Wed Jun 26 15:22:12 2024

module and_gate ( 
    A, B, C,
    Y  );
  input  A, B, C;
  output Y;
  wire new_n5;
  AND2X1   g0(.A(B), .B(A), .Y(new_n5));
  AND2X1   g1(.A(new_n5), .B(C), .Y(Y));
endmodule


