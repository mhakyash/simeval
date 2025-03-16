// Benchmark "th34_ref" written by ABC on Wed Jun 26 15:22:15 2024

module th34_ref ( clock, 
    a, b, c, d,
    y  );
  input  clock;
  input  a, b, c, d;
  output y;
  reg yi;
  wire new_n9, new_n10, new_n11, new_n12_1, n12;
  NAND3X1  g0(.A(c), .B(b), .C(a), .Y(new_n9));
  NAND3X1  g1(.A(d), .B(b), .C(a), .Y(new_n10));
  NAND3X1  g2(.A(d), .B(c), .C(a), .Y(new_n11));
  NAND3X1  g3(.A(d), .B(c), .C(b), .Y(new_n12_1));
  NAND4X1  g4(.A(new_n12_1), .B(new_n11), .C(new_n10), .D(new_n9), .Y(n12));
  BUFX1    g5(.A(yi), .Y(y));
  always @ (posedge clock) begin
    yi <= n12;
  end
endmodule


