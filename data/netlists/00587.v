// Benchmark "mux4to1" written by ABC on Wed Jun 26 15:22:14 2024

module mux4to1 ( 
    in0, in1, in2, in3, \sel[0] , \sel[1] ,
    out  );
  input  in0, in1, in2, in3, \sel[0] , \sel[1] ;
  output out;
  wire new_n8, new_n9, new_n10, new_n11, new_n12, new_n13, new_n14, new_n15;
  AND2X1   g0(.A(\sel[1] ), .B(\sel[0] ), .Y(new_n8));
  INVX1    g1(.A(\sel[1] ), .Y(new_n9));
  NOR2X1   g2(.A(new_n9), .B(\sel[0] ), .Y(new_n10));
  AOI22X1  g3(.A0(new_n10), .A1(in2), .B0(new_n8), .B1(in3), .Y(new_n11));
  AND2X1   g4(.A(new_n9), .B(\sel[0] ), .Y(new_n12));
  NOR2X1   g5(.A(\sel[1] ), .B(\sel[0] ), .Y(new_n13));
  AOI22X1  g6(.A0(new_n13), .A1(in0), .B0(new_n12), .B1(in1), .Y(new_n14));
  NOR4X1   g7(.A(new_n13), .B(new_n12), .C(new_n10), .D(new_n8), .Y(new_n15));
  AOI21X1  g8(.A0(new_n14), .A1(new_n11), .B0(new_n15), .Y(out));
endmodule


