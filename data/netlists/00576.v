// Benchmark "pre_decoder" written by ABC on Wed Jun 26 15:22:14 2024

module pre_decoder ( 
    \addr_i[0] , \addr_i[1] , \addr_i[2] , \addr_i[3] , \addr_i[4] ,
    \addr_i[5] ,
    pre_dec_o, pre_dec_err_o  );
  input  \addr_i[0] , \addr_i[1] , \addr_i[2] , \addr_i[3] , \addr_i[4] ,
    \addr_i[5] ;
  output pre_dec_o, pre_dec_err_o;
  wire new_n9, new_n10, new_n11, new_n12, new_n13, new_n14, new_n15, new_n16,
    new_n17, new_n18, new_n19, new_n20, new_n21, new_n23, new_n24;
  INVX1    g00(.A(\addr_i[2] ), .Y(new_n9));
  OR2X1    g01(.A(\addr_i[5] ), .B(\addr_i[4] ), .Y(new_n10));
  NOR3X1   g02(.A(new_n10), .B(\addr_i[3] ), .C(new_n9), .Y(new_n11));
  NAND2X1  g03(.A(\addr_i[3] ), .B(\addr_i[2] ), .Y(new_n12));
  INVX1    g04(.A(\addr_i[3] ), .Y(new_n13));
  OR2X1    g05(.A(new_n13), .B(\addr_i[2] ), .Y(new_n14));
  AOI21X1  g06(.A0(new_n14), .A1(new_n12), .B0(new_n10), .Y(new_n15));
  INVX1    g07(.A(\addr_i[5] ), .Y(new_n16));
  NAND2X1  g08(.A(new_n16), .B(\addr_i[4] ), .Y(new_n17));
  AOI21X1  g09(.A0(new_n14), .A1(new_n12), .B0(new_n17), .Y(new_n18));
  NAND4X1  g10(.A(new_n16), .B(\addr_i[4] ), .C(new_n13), .D(\addr_i[2] ), .Y(new_n19));
  NAND4X1  g11(.A(new_n16), .B(\addr_i[4] ), .C(new_n13), .D(new_n9), .Y(new_n20));
  NAND2X1  g12(.A(new_n20), .B(new_n19), .Y(new_n21));
  OR4X1    g13(.A(new_n21), .B(new_n18), .C(new_n15), .D(new_n11), .Y(pre_dec_o));
  OR2X1    g14(.A(new_n16), .B(\addr_i[4] ), .Y(new_n23));
  OAI22X1  g15(.A0(new_n23), .A1(\addr_i[2] ), .B0(new_n10), .B1(\addr_i[3] ), .Y(new_n24));
  NOR4X1   g16(.A(new_n24), .B(new_n21), .C(new_n18), .D(new_n15), .Y(pre_dec_err_o));
endmodule


