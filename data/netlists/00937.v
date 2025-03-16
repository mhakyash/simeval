// Benchmark "my_module" written by ABC on Wed Jun 26 15:22:24 2024

module my_module ( 
    g, p, g_prec, p_prec,
    g_out, p_out  );
  input  g, p, g_prec, p_prec;
  output g_out, p_out;
  wire new_n7, new_n8;
  INVX1    g0(.A(p), .Y(new_n7));
  INVX1    g1(.A(g_prec), .Y(new_n8));
  AOI21X1  g2(.A0(new_n8), .A1(g), .B0(new_n7), .Y(g_out));
  AND2X1   g3(.A(p_prec), .B(p), .Y(p_out));
endmodule


