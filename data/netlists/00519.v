// Benchmark "mux_2to1" written by ABC on Wed Jun 26 15:22:13 2024

module mux_2to1 ( 
    A, B, SEL,
    OUT  );
  input  A, B, SEL;
  output OUT;
  MX2X1    g0(.A(A), .B(B), .S0(SEL), .Y(OUT));
endmodule


