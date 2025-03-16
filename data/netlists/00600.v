// Benchmark "and_gate" written by ABC on Wed Jun 26 15:22:15 2024

module and_gate ( 
    A, B,
    Y  );
  input  A, B;
  output Y;
  AND2X1   g0(.A(B), .B(A), .Y(Y));
endmodule


