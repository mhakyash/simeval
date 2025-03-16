// Benchmark "binary_to_bcd_converter" written by ABC on Wed Jun 26 15:22:03 2024

module binary_to_bcd_converter ( 
    \BIN[0] , \BIN[1] , \BIN[2] , \BIN[3] ,
    \BCD_HIGH[0] , \BCD_HIGH[1] , \BCD_HIGH[2] , \BCD_HIGH[3] ,
    \BCD_LOW[0] , \BCD_LOW[1] , \BCD_LOW[2] , \BCD_LOW[3]   );
  input  \BIN[0] , \BIN[1] , \BIN[2] , \BIN[3] ;
  output \BCD_HIGH[0] , \BCD_HIGH[1] , \BCD_HIGH[2] , \BCD_HIGH[3] ,
    \BCD_LOW[0] , \BCD_LOW[1] , \BCD_LOW[2] , \BCD_LOW[3] ;
  wire new_n13, new_n14, new_n15, new_n16, new_n17, new_n18, new_n19,
    new_n20, new_n21, new_n22, new_n23, new_n24, new_n25, new_n26, new_n27,
    new_n28, new_n29, new_n30, new_n31, new_n32, new_n33, new_n34, new_n35,
    new_n36, new_n37, new_n38, new_n39, new_n40, new_n41, new_n42, new_n43,
    new_n44, new_n45, new_n46, new_n47, new_n49, new_n50, new_n51, new_n52,
    new_n53, new_n54, new_n55, new_n56, new_n57, new_n58, new_n59, new_n60,
    new_n62;
  INVX1    g00(.A(\BIN[0] ), .Y(new_n13));
  INVX1    g01(.A(\BIN[1] ), .Y(new_n14));
  INVX1    g02(.A(\BIN[2] ), .Y(new_n15));
  INVX1    g03(.A(\BIN[3] ), .Y(new_n16));
  NOR4X1   g04(.A(new_n16), .B(new_n15), .C(new_n14), .D(new_n13), .Y(new_n17));
  NAND2X1  g05(.A(\BIN[1] ), .B(\BIN[0] ), .Y(new_n18));
  NAND2X1  g06(.A(\BIN[3] ), .B(\BIN[2] ), .Y(new_n19));
  NOR2X1   g07(.A(new_n19), .B(new_n18), .Y(new_n20));
  NOR4X1   g08(.A(\BIN[3] ), .B(\BIN[2] ), .C(\BIN[1] ), .D(\BIN[0] ), .Y(new_n21));
  OR2X1    g09(.A(\BIN[3] ), .B(\BIN[2] ), .Y(new_n22));
  OR2X1    g10(.A(\BIN[1] ), .B(new_n13), .Y(new_n23));
  OR2X1    g11(.A(new_n14), .B(\BIN[0] ), .Y(new_n24));
  AOI21X1  g12(.A0(new_n24), .A1(new_n23), .B0(new_n22), .Y(new_n25));
  OR2X1    g13(.A(\BIN[1] ), .B(\BIN[0] ), .Y(new_n26));
  OR2X1    g14(.A(\BIN[3] ), .B(new_n15), .Y(new_n27));
  OR2X1    g15(.A(new_n16), .B(\BIN[2] ), .Y(new_n28));
  AOI21X1  g16(.A0(new_n28), .A1(new_n27), .B0(new_n26), .Y(new_n29));
  NOR4X1   g17(.A(new_n29), .B(new_n25), .C(new_n21), .D(new_n20), .Y(new_n30));
  OR4X1    g18(.A(new_n16), .B(new_n15), .C(new_n14), .D(\BIN[0] ), .Y(new_n31));
  OR4X1    g19(.A(new_n16), .B(\BIN[2] ), .C(new_n14), .D(new_n13), .Y(new_n32));
  OR4X1    g20(.A(new_n16), .B(new_n15), .C(\BIN[1] ), .D(new_n13), .Y(new_n33));
  NAND3X1  g21(.A(new_n33), .B(new_n32), .C(new_n31), .Y(new_n34));
  NOR2X1   g22(.A(new_n22), .B(new_n18), .Y(new_n35));
  NOR4X1   g23(.A(\BIN[3] ), .B(new_n15), .C(\BIN[1] ), .D(new_n13), .Y(new_n36));
  OR2X1    g24(.A(new_n36), .B(new_n35), .Y(new_n37));
  OAI22X1  g25(.A0(new_n27), .A1(new_n24), .B0(new_n26), .B1(new_n19), .Y(new_n38));
  NOR3X1   g26(.A(new_n38), .B(new_n37), .C(new_n34), .Y(new_n39));
  OR4X1    g27(.A(new_n16), .B(\BIN[2] ), .C(new_n14), .D(\BIN[0] ), .Y(new_n40));
  OR4X1    g28(.A(\BIN[3] ), .B(new_n15), .C(new_n14), .D(new_n13), .Y(new_n41));
  OR4X1    g29(.A(new_n16), .B(\BIN[2] ), .C(\BIN[1] ), .D(new_n13), .Y(new_n42));
  NAND3X1  g30(.A(new_n42), .B(new_n41), .C(new_n40), .Y(new_n43));
  NOR4X1   g31(.A(new_n38), .B(new_n37), .C(new_n34), .D(new_n43), .Y(new_n44));
  AOI21X1  g32(.A0(new_n44), .A1(new_n30), .B0(new_n39), .Y(new_n45));
  NOR2X1   g33(.A(new_n34), .B(new_n43), .Y(new_n46));
  AOI21X1  g34(.A0(new_n44), .A1(new_n30), .B0(new_n46), .Y(new_n47));
  XOR2X1   g35(.A(new_n45), .B(new_n17), .Y(\BCD_HIGH[0] ));
  INVX1    g36(.A(new_n17), .Y(new_n49));
  NAND2X1  g37(.A(new_n47), .B(new_n45), .Y(new_n50));
  OR4X1    g38(.A(new_n29), .B(new_n25), .C(new_n21), .D(new_n20), .Y(new_n51));
  OR4X1    g39(.A(new_n38), .B(new_n37), .C(new_n34), .D(new_n43), .Y(new_n52));
  OAI22X1  g40(.A0(new_n52), .A1(new_n51), .B0(new_n34), .B1(new_n43), .Y(new_n53));
  OR2X1    g41(.A(new_n53), .B(new_n45), .Y(new_n54));
  MX2X1    g42(.A(new_n54), .B(new_n50), .S0(new_n49), .Y(new_n55));
  NAND2X1  g43(.A(new_n53), .B(new_n45), .Y(new_n56));
  MX2X1    g44(.A(new_n56), .B(new_n54), .S0(new_n49), .Y(new_n57));
  XOR2X1   g45(.A(new_n45), .B(new_n49), .Y(new_n58));
  XOR2X1   g46(.A(new_n45), .B(new_n17), .Y(new_n59));
  AND2X1   g47(.A(new_n59), .B(new_n58), .Y(new_n60));
  XOR2X1   g48(.A(new_n45), .B(new_n17), .Y(\BCD_LOW[0] ));
  INVX1    g49(.A(new_n45), .Y(new_n62));
  NOR3X1   g50(.A(new_n53), .B(new_n62), .C(new_n49), .Y(\BCD_LOW[2] ));
  AOI21X1  g51(.A0(new_n57), .A1(new_n55), .B0(new_n60), .Y(\BCD_HIGH[1] ));
  NOR3X1   g52(.A(new_n53), .B(new_n62), .C(new_n49), .Y(\BCD_HIGH[2] ));
  AOI21X1  g53(.A0(new_n57), .A1(new_n55), .B0(new_n60), .Y(\BCD_LOW[1] ));
  ZERO     g54(.Y(\BCD_HIGH[3] ));
  ZERO     g55(.Y(\BCD_LOW[3] ));
endmodule


