// Benchmark "top_module" written by ABC on Wed Jun 26 15:22:18 2024

module top_module ( 
    a, b, c, reset,
    out  );
  input  a, b, c, reset;
  output out;
  wire new_n6, new_n7;
  INVX1    g0(.A(reset), .Y(new_n6));
  MX2X1    g1(.A(b), .B(a), .S0(reset), .Y(new_n7));
  OR2X1    g2(.A(new_n7), .B(new_n6), .Y(out));
endmodule


