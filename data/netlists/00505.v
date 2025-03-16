// Benchmark "bcd_to_7seg_decoder" written by ABC on Wed Jun 26 15:22:12 2024

module bcd_to_7seg_decoder ( 
    \BCD[0] , \BCD[1] , \BCD[2] , \BCD[3] ,
    \SEG[0] , \SEG[1] , \SEG[2] , \SEG[3] , \SEG[4] , \SEG[5] , \SEG[6]   );
  input  \BCD[0] , \BCD[1] , \BCD[2] , \BCD[3] ;
  output \SEG[0] , \SEG[1] , \SEG[2] , \SEG[3] , \SEG[4] , \SEG[5] , \SEG[6] ;
  wire new_n12, new_n13, new_n14, new_n15, new_n16, new_n17, new_n18,
    new_n19, new_n20, new_n21, new_n22, new_n23, new_n24, new_n25, new_n26,
    new_n27, new_n28, new_n29, new_n30, new_n31, new_n32, new_n33, new_n35,
    new_n36, new_n39, new_n41, new_n42;
  INVX1    g00(.A(\BCD[1] ), .Y(new_n12));
  INVX1    g01(.A(\BCD[2] ), .Y(new_n13));
  NAND4X1  g02(.A(\BCD[3] ), .B(new_n13), .C(new_n12), .D(\BCD[0] ), .Y(new_n14));
  NOR2X1   g03(.A(\BCD[1] ), .B(\BCD[0] ), .Y(new_n15));
  NAND3X1  g04(.A(new_n15), .B(\BCD[3] ), .C(new_n13), .Y(new_n16));
  INVX1    g05(.A(\BCD[0] ), .Y(new_n17));
  OR4X1    g06(.A(\BCD[3] ), .B(new_n13), .C(new_n12), .D(new_n17), .Y(new_n18));
  OR4X1    g07(.A(\BCD[3] ), .B(new_n13), .C(new_n12), .D(\BCD[0] ), .Y(new_n19));
  NAND4X1  g08(.A(new_n19), .B(new_n18), .C(new_n16), .D(new_n14), .Y(new_n20));
  OR2X1    g09(.A(\BCD[3] ), .B(\BCD[2] ), .Y(new_n21));
  NOR3X1   g10(.A(new_n21), .B(\BCD[1] ), .C(new_n17), .Y(new_n22));
  NOR4X1   g11(.A(\BCD[3] ), .B(\BCD[2] ), .C(\BCD[1] ), .D(\BCD[0] ), .Y(new_n23));
  OR2X1    g12(.A(new_n23), .B(new_n22), .Y(new_n24));
  NOR4X1   g13(.A(\BCD[3] ), .B(new_n13), .C(\BCD[1] ), .D(\BCD[0] ), .Y(new_n25));
  NOR4X1   g14(.A(\BCD[3] ), .B(new_n13), .C(\BCD[1] ), .D(new_n17), .Y(new_n26));
  OR2X1    g15(.A(new_n26), .B(new_n25), .Y(new_n27));
  NAND2X1  g16(.A(\BCD[1] ), .B(\BCD[0] ), .Y(new_n28));
  NOR2X1   g17(.A(new_n21), .B(new_n28), .Y(new_n29));
  NOR3X1   g18(.A(new_n21), .B(new_n12), .C(\BCD[0] ), .Y(new_n30));
  OR2X1    g19(.A(new_n30), .B(new_n29), .Y(new_n31));
  NOR4X1   g20(.A(new_n31), .B(new_n27), .C(new_n24), .D(new_n20), .Y(new_n32));
  OR2X1    g21(.A(new_n25), .B(new_n22), .Y(new_n33));
  OR2X1    g22(.A(new_n33), .B(new_n32), .Y(\SEG[0] ));
  INVX1    g23(.A(new_n26), .Y(new_n35));
  NAND2X1  g24(.A(new_n35), .B(new_n19), .Y(new_n36));
  OR2X1    g25(.A(new_n36), .B(new_n32), .Y(\SEG[1] ));
  OR2X1    g26(.A(new_n32), .B(new_n30), .Y(\SEG[2] ));
  INVX1    g27(.A(new_n18), .Y(new_n39));
  OR4X1    g28(.A(new_n32), .B(new_n25), .C(new_n22), .D(new_n39), .Y(\SEG[3] ));
  OR2X1    g29(.A(\BCD[1] ), .B(new_n17), .Y(new_n41));
  OAI22X1  g30(.A0(new_n28), .A1(\BCD[3] ), .B0(new_n41), .B1(\BCD[2] ), .Y(new_n42));
  OR4X1    g31(.A(new_n42), .B(new_n32), .C(new_n26), .D(new_n25), .Y(\SEG[4] ));
  OR4X1    g32(.A(new_n32), .B(new_n31), .C(new_n22), .D(new_n39), .Y(\SEG[5] ));
  OR4X1    g33(.A(new_n32), .B(new_n23), .C(new_n22), .D(new_n39), .Y(\SEG[6] ));
endmodule


