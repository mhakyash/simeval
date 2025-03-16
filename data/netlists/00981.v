// Benchmark "BCD_to_Binary" written by ABC on Wed Jun 26 15:22:26 2024

module BCD_to_Binary ( 
    \bcd_in[0] , \bcd_in[1] , \bcd_in[2] , \bcd_in[3] ,
    \bin_out[0] , \bin_out[1] , \bin_out[2] , \bin_out[3] , \bin_out[4] ,
    \bin_out[5] , \bin_out[6] , \bin_out[7]   );
  input  \bcd_in[0] , \bcd_in[1] , \bcd_in[2] , \bcd_in[3] ;
  output \bin_out[0] , \bin_out[1] , \bin_out[2] , \bin_out[3] , \bin_out[4] ,
    \bin_out[5] , \bin_out[6] , \bin_out[7] ;
  wire new_n13, new_n14, new_n15, new_n16, new_n17, new_n18, new_n19,
    new_n20, new_n21, new_n22, new_n23, new_n24, new_n25, new_n26, new_n27,
    new_n28, new_n29, new_n30, new_n31, new_n32, new_n33, new_n35;
  INVX1    g00(.A(\bcd_in[0] ), .Y(new_n13));
  INVX1    g01(.A(\bcd_in[3] ), .Y(new_n14));
  NOR4X1   g02(.A(new_n14), .B(\bcd_in[2] ), .C(\bcd_in[1] ), .D(new_n13), .Y(new_n15));
  INVX1    g03(.A(\bcd_in[1] ), .Y(new_n16));
  INVX1    g04(.A(\bcd_in[2] ), .Y(new_n17));
  NOR4X1   g05(.A(\bcd_in[3] ), .B(new_n17), .C(new_n16), .D(new_n13), .Y(new_n18));
  OR2X1    g06(.A(\bcd_in[3] ), .B(\bcd_in[2] ), .Y(new_n19));
  NOR3X1   g07(.A(new_n19), .B(\bcd_in[1] ), .C(new_n13), .Y(new_n20));
  NOR4X1   g08(.A(\bcd_in[3] ), .B(new_n17), .C(\bcd_in[1] ), .D(new_n13), .Y(new_n21));
  NOR3X1   g09(.A(new_n19), .B(new_n16), .C(new_n13), .Y(new_n22));
  OR2X1    g10(.A(new_n22), .B(new_n21), .Y(new_n23));
  OR4X1    g11(.A(new_n23), .B(new_n20), .C(new_n18), .D(new_n15), .Y(new_n24));
  OR2X1    g12(.A(\bcd_in[1] ), .B(\bcd_in[0] ), .Y(new_n25));
  NOR3X1   g13(.A(new_n25), .B(new_n14), .C(\bcd_in[2] ), .Y(new_n26));
  OR2X1    g14(.A(new_n26), .B(new_n15), .Y(new_n27));
  NOR3X1   g15(.A(new_n19), .B(new_n16), .C(\bcd_in[0] ), .Y(new_n28));
  OR2X1    g16(.A(new_n28), .B(new_n22), .Y(new_n29));
  NOR4X1   g17(.A(\bcd_in[3] ), .B(new_n17), .C(new_n16), .D(\bcd_in[0] ), .Y(new_n30));
  NOR3X1   g18(.A(new_n25), .B(\bcd_in[3] ), .C(new_n17), .Y(new_n31));
  OR4X1    g19(.A(new_n31), .B(new_n30), .C(new_n21), .D(new_n18), .Y(new_n32));
  OR4X1    g20(.A(new_n32), .B(new_n29), .C(new_n27), .D(new_n20), .Y(new_n33));
  AND2X1   g21(.A(new_n33), .B(new_n24), .Y(\bin_out[0] ));
  OR4X1    g22(.A(new_n30), .B(new_n28), .C(new_n22), .D(new_n18), .Y(new_n35));
  AND2X1   g23(.A(new_n35), .B(new_n33), .Y(\bin_out[1] ));
  AND2X1   g24(.A(new_n33), .B(new_n32), .Y(\bin_out[2] ));
  AND2X1   g25(.A(new_n33), .B(new_n27), .Y(\bin_out[3] ));
  ZERO     g26(.Y(\bin_out[4] ));
  ZERO     g27(.Y(\bin_out[5] ));
  ZERO     g28(.Y(\bin_out[6] ));
  ZERO     g29(.Y(\bin_out[7] ));
endmodule


