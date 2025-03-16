// Benchmark "seven_input_one_output" written by ABC on Wed Jun 26 15:22:22 2024

module seven_input_one_output ( 
    a, b, c, d, e, f, g,
    x  );
  input  a, b, c, d, e, f, g;
  output x;
  wire new_n9, new_n10;
  NAND3X1  g0(.A(g), .B(f), .C(e), .Y(new_n9));
  NAND4X1  g1(.A(d), .B(c), .C(b), .D(a), .Y(new_n10));
  NOR2X1   g2(.A(new_n10), .B(new_n9), .Y(x));
endmodule


