// Benchmark "mux4to1" written by ABC on Wed Jun 26 15:21:59 2024

module mux4to1 ( 
    IN0, IN1, IN2, IN3, \S[0] , \S[1] ,
    MO  );
  input  IN0, IN1, IN2, IN3, \S[0] , \S[1] ;
  output MO;
  wire new_n8, new_n9, new_n10, new_n11, new_n12, new_n13, new_n14, new_n15;
  NOR2X1   g0(.A(\S[1] ), .B(\S[0] ), .Y(new_n8));
  INVX1    g1(.A(\S[1] ), .Y(new_n9));
  AND2X1   g2(.A(new_n9), .B(\S[0] ), .Y(new_n10));
  INVX1    g3(.A(\S[0] ), .Y(new_n11));
  NAND3X1  g4(.A(\S[1] ), .B(new_n11), .C(IN2), .Y(new_n12));
  NAND3X1  g5(.A(\S[1] ), .B(\S[0] ), .C(IN3), .Y(new_n13));
  NAND2X1  g6(.A(new_n13), .B(new_n12), .Y(new_n14));
  MX2X1    g7(.A(new_n14), .B(IN1), .S0(new_n10), .Y(new_n15));
  MX2X1    g8(.A(new_n15), .B(IN0), .S0(new_n8), .Y(MO));
endmodule


