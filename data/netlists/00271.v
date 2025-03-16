// Benchmark "power_good" written by ABC on Wed Jun 26 15:22:05 2024

module power_good ( 
    in1, in2, in3, in4, in5, in6, in7, in8, in9,
    out1  );
  input  in1, in2, in3, in4, in5, in6, in7, in8, in9;
  output out1;
  wire new_n11, new_n12, new_n13;
  NAND3X1  g0(.A(in9), .B(in8), .C(in7), .Y(new_n11));
  NAND2X1  g1(.A(in2), .B(in1), .Y(new_n12));
  NAND4X1  g2(.A(in6), .B(in5), .C(in4), .D(in3), .Y(new_n13));
  NOR3X1   g3(.A(new_n13), .B(new_n12), .C(new_n11), .Y(out1));
endmodule


