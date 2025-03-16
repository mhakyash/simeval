// Benchmark "logic_gate" written by ABC on Wed Jun 26 15:22:17 2024

module logic_gate ( 
    a, b, c,
    y1, y2  );
  input  a, b, c;
  output y1, y2;
  wire new_n7;
  NOR3X1   g0(.A(c), .B(b), .C(a), .Y(y1));
  INVX1    g1(.A(a), .Y(new_n7));
  XOR2X1   g2(.A(b), .B(new_n7), .Y(y2));
endmodule


