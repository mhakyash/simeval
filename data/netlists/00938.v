// Benchmark "mux2" written by ABC on Wed Jun 26 15:22:24 2024

module mux2 ( 
    A0, A1, S,
    X  );
  input  A0, A1, S;
  output X;
  MX2X1    g0(.A(A0), .B(A1), .S0(S), .Y(X));
endmodule


