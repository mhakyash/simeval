// Benchmark "digital_circuit" written by ABC on Wed Jun 26 15:22:11 2024

module digital_circuit ( 
    A1, A2, B1_N,
    Y  );
  input  A1, A2, B1_N;
  output Y;
  wire new_n5;
  NAND2X1  g0(.A(A2), .B(A1), .Y(new_n5));
  AND2X1   g1(.A(new_n5), .B(B1_N), .Y(Y));
endmodule


