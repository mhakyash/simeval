// Benchmark "bcd_to_7seg" written by ABC on Wed Jun 26 15:22:24 2024

module bcd_to_7seg ( 
    \BCD[0] , \BCD[1] , \BCD[2] , \BCD[3] ,
    \SEG[0] , \SEG[1] , \SEG[2] , \SEG[3] , \SEG[4] , \SEG[5] , \SEG[6]   );
  input  \BCD[0] , \BCD[1] , \BCD[2] , \BCD[3] ;
  output \SEG[0] , \SEG[1] , \SEG[2] , \SEG[3] , \SEG[4] , \SEG[5] , \SEG[6] ;
  wire new_n12, new_n13, new_n14, new_n15, new_n16, new_n17, new_n18,
    new_n19, new_n20, new_n21, new_n22, new_n23, new_n24, new_n25, new_n26,
    new_n27, new_n28, new_n29, new_n30, new_n31, new_n32, new_n33, new_n34,
    new_n36, new_n38, new_n40, new_n41, new_n43, new_n45, new_n46, new_n48;
  INVX1    g00(.A(\BCD[0] ), .Y(new_n12));
  INVX1    g01(.A(\BCD[3] ), .Y(new_n13));
  NOR4X1   g02(.A(new_n13), .B(\BCD[2] ), .C(\BCD[1] ), .D(new_n12), .Y(new_n14));
  OR2X1    g03(.A(\BCD[1] ), .B(\BCD[0] ), .Y(new_n15));
  NOR3X1   g04(.A(new_n15), .B(new_n13), .C(\BCD[2] ), .Y(new_n16));
  OR2X1    g05(.A(new_n16), .B(new_n14), .Y(new_n17));
  INVX1    g06(.A(\BCD[1] ), .Y(new_n18));
  INVX1    g07(.A(\BCD[2] ), .Y(new_n19));
  NOR4X1   g08(.A(\BCD[3] ), .B(new_n19), .C(new_n18), .D(\BCD[0] ), .Y(new_n20));
  NOR4X1   g09(.A(\BCD[3] ), .B(new_n19), .C(\BCD[1] ), .D(new_n12), .Y(new_n21));
  NOR3X1   g10(.A(new_n15), .B(\BCD[3] ), .C(new_n19), .Y(new_n22));
  OR2X1    g11(.A(new_n22), .B(new_n21), .Y(new_n23));
  OR2X1    g12(.A(\BCD[3] ), .B(\BCD[2] ), .Y(new_n24));
  NOR3X1   g13(.A(new_n24), .B(new_n18), .C(new_n12), .Y(new_n25));
  NOR3X1   g14(.A(new_n24), .B(new_n18), .C(\BCD[0] ), .Y(new_n26));
  OR2X1    g15(.A(new_n26), .B(new_n25), .Y(new_n27));
  OR4X1    g16(.A(new_n27), .B(new_n23), .C(new_n20), .D(new_n17), .Y(new_n28));
  NOR4X1   g17(.A(\BCD[3] ), .B(new_n19), .C(new_n18), .D(new_n12), .Y(new_n29));
  OR4X1    g18(.A(new_n29), .B(new_n20), .C(new_n16), .D(new_n14), .Y(new_n30));
  NOR3X1   g19(.A(new_n24), .B(\BCD[1] ), .C(new_n12), .Y(new_n31));
  NOR4X1   g20(.A(\BCD[3] ), .B(\BCD[2] ), .C(\BCD[1] ), .D(\BCD[0] ), .Y(new_n32));
  OR2X1    g21(.A(new_n32), .B(new_n31), .Y(new_n33));
  OR4X1    g22(.A(new_n33), .B(new_n30), .C(new_n27), .D(new_n23), .Y(new_n34));
  AND2X1   g23(.A(new_n34), .B(new_n28), .Y(\SEG[0] ));
  OR4X1    g24(.A(new_n32), .B(new_n23), .C(new_n20), .D(new_n17), .Y(new_n36));
  AND2X1   g25(.A(new_n36), .B(new_n34), .Y(\SEG[1] ));
  OR4X1    g26(.A(new_n32), .B(new_n26), .C(new_n20), .D(new_n16), .Y(new_n38));
  AND2X1   g27(.A(new_n38), .B(new_n34), .Y(\SEG[2] ));
  OR2X1    g28(.A(new_n20), .B(new_n16), .Y(new_n40));
  OR4X1    g29(.A(new_n40), .B(new_n32), .C(new_n27), .D(new_n21), .Y(new_n41));
  AND2X1   g30(.A(new_n41), .B(new_n34), .Y(\SEG[3] ));
  OR4X1    g31(.A(new_n33), .B(new_n30), .C(new_n25), .D(new_n23), .Y(new_n43));
  AND2X1   g32(.A(new_n43), .B(new_n34), .Y(\SEG[4] ));
  OR2X1    g33(.A(new_n29), .B(new_n22), .Y(new_n45));
  OR4X1    g34(.A(new_n45), .B(new_n33), .C(new_n27), .D(new_n17), .Y(new_n46));
  AND2X1   g35(.A(new_n46), .B(new_n34), .Y(\SEG[5] ));
  OR4X1    g36(.A(new_n32), .B(new_n30), .C(new_n27), .D(new_n21), .Y(new_n48));
  AND2X1   g37(.A(new_n48), .B(new_n34), .Y(\SEG[6] ));
endmodule


