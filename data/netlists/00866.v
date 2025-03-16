// Benchmark "seven_segment_decoder" written by ABC on Wed Jun 26 15:22:22 2024

module seven_segment_decoder ( 
    \in[0] , \in[1] , \in[2] , \in[3] , common_anode,
    \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6]   );
  input  \in[0] , \in[1] , \in[2] , \in[3] , common_anode;
  output \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ;
  wire new_n13, new_n14, new_n15, new_n16, new_n17, new_n18, new_n19,
    new_n20, new_n21, new_n22, new_n23, new_n24, new_n25, new_n26, new_n27,
    new_n28, new_n29, new_n30, new_n31, new_n32, new_n33, new_n34, new_n35,
    new_n36, new_n37, new_n38, new_n39, new_n40, new_n41, new_n42, new_n43,
    new_n44, new_n45, new_n46, new_n47, new_n49, new_n50, new_n51, new_n53,
    new_n54, new_n55, new_n57, new_n58, new_n59, new_n60, new_n61, new_n63,
    new_n64, new_n65, new_n66, new_n68, new_n69, new_n70, new_n72, new_n73,
    new_n74;
  NAND2X1  g00(.A(\in[1] ), .B(\in[0] ), .Y(new_n13));
  OR2X1    g01(.A(\in[3] ), .B(\in[2] ), .Y(new_n14));
  NOR2X1   g02(.A(new_n14), .B(new_n13), .Y(new_n15));
  INVX1    g03(.A(\in[1] ), .Y(new_n16));
  NOR3X1   g04(.A(new_n14), .B(new_n16), .C(\in[0] ), .Y(new_n17));
  OR2X1    g05(.A(new_n17), .B(new_n15), .Y(new_n18));
  INVX1    g06(.A(\in[0] ), .Y(new_n19));
  NAND2X1  g07(.A(\in[3] ), .B(\in[2] ), .Y(new_n20));
  AOI21X1  g08(.A0(new_n16), .A1(new_n19), .B0(new_n20), .Y(new_n21));
  INVX1    g09(.A(\in[3] ), .Y(new_n22));
  NOR3X1   g10(.A(new_n13), .B(new_n22), .C(\in[2] ), .Y(new_n23));
  NOR4X1   g11(.A(new_n22), .B(\in[2] ), .C(new_n16), .D(\in[0] ), .Y(new_n24));
  NOR4X1   g12(.A(new_n22), .B(\in[2] ), .C(\in[1] ), .D(new_n19), .Y(new_n25));
  OR2X1    g13(.A(\in[1] ), .B(\in[0] ), .Y(new_n26));
  NOR3X1   g14(.A(new_n26), .B(new_n22), .C(\in[2] ), .Y(new_n27));
  OR4X1    g15(.A(new_n27), .B(new_n25), .C(new_n24), .D(new_n23), .Y(new_n28));
  INVX1    g16(.A(\in[2] ), .Y(new_n29));
  OR2X1    g17(.A(\in[3] ), .B(new_n29), .Y(new_n30));
  AOI21X1  g18(.A0(\in[1] ), .A1(\in[0] ), .B0(new_n30), .Y(new_n31));
  OR4X1    g19(.A(new_n31), .B(new_n28), .C(new_n21), .D(new_n18), .Y(new_n32));
  NOR2X1   g20(.A(new_n20), .B(new_n13), .Y(new_n33));
  NOR3X1   g21(.A(new_n20), .B(new_n16), .C(\in[0] ), .Y(new_n34));
  NOR3X1   g22(.A(new_n20), .B(\in[1] ), .C(new_n19), .Y(new_n35));
  NOR2X1   g23(.A(new_n26), .B(new_n20), .Y(new_n36));
  OR4X1    g24(.A(new_n36), .B(new_n35), .C(new_n34), .D(new_n33), .Y(new_n37));
  NOR4X1   g25(.A(\in[3] ), .B(new_n29), .C(new_n16), .D(\in[0] ), .Y(new_n38));
  NOR4X1   g26(.A(\in[3] ), .B(new_n29), .C(\in[1] ), .D(new_n19), .Y(new_n39));
  NOR3X1   g27(.A(new_n26), .B(\in[3] ), .C(new_n29), .Y(new_n40));
  NOR3X1   g28(.A(new_n13), .B(\in[3] ), .C(new_n29), .Y(new_n41));
  OR4X1    g29(.A(new_n41), .B(new_n40), .C(new_n39), .D(new_n38), .Y(new_n42));
  NOR3X1   g30(.A(new_n14), .B(\in[1] ), .C(new_n19), .Y(new_n43));
  NOR4X1   g31(.A(\in[3] ), .B(\in[2] ), .C(\in[1] ), .D(\in[0] ), .Y(new_n44));
  OR4X1    g32(.A(new_n44), .B(new_n43), .C(new_n17), .D(new_n15), .Y(new_n45));
  OR4X1    g33(.A(new_n45), .B(new_n42), .C(new_n37), .D(new_n28), .Y(new_n46));
  AND2X1   g34(.A(new_n46), .B(new_n32), .Y(new_n47));
  XOR2X1   g35(.A(new_n47), .B(common_anode), .Y(\out[0] ));
  AOI21X1  g36(.A0(new_n16), .A1(\in[0] ), .B0(new_n20), .Y(new_n49));
  OR4X1    g37(.A(new_n49), .B(new_n44), .C(new_n31), .D(new_n28), .Y(new_n50));
  AND2X1   g38(.A(new_n50), .B(new_n46), .Y(new_n51));
  XOR2X1   g39(.A(new_n51), .B(common_anode), .Y(\out[1] ));
  OR4X1    g40(.A(new_n44), .B(new_n38), .C(new_n27), .D(new_n17), .Y(new_n53));
  OR4X1    g41(.A(new_n53), .B(new_n37), .C(new_n24), .D(new_n23), .Y(new_n54));
  AND2X1   g42(.A(new_n54), .B(new_n46), .Y(new_n55));
  XOR2X1   g43(.A(new_n55), .B(common_anode), .Y(\out[2] ));
  NOR3X1   g44(.A(new_n44), .B(new_n17), .C(new_n15), .Y(new_n57));
  NOR4X1   g45(.A(new_n39), .B(new_n38), .C(new_n23), .D(new_n34), .Y(new_n58));
  NOR4X1   g46(.A(new_n36), .B(new_n27), .C(new_n25), .D(new_n35), .Y(new_n59));
  NAND3X1  g47(.A(new_n59), .B(new_n58), .C(new_n57), .Y(new_n60));
  AND2X1   g48(.A(new_n60), .B(new_n46), .Y(new_n61));
  XOR2X1   g49(.A(new_n61), .B(common_anode), .Y(\out[3] ));
  NOR4X1   g50(.A(new_n45), .B(new_n42), .C(new_n37), .D(new_n28), .Y(new_n63));
  OR4X1    g51(.A(new_n44), .B(new_n43), .C(new_n35), .D(new_n15), .Y(new_n64));
  NOR3X1   g52(.A(new_n64), .B(new_n42), .C(new_n28), .Y(new_n65));
  NOR2X1   g53(.A(new_n65), .B(new_n63), .Y(new_n66));
  XOR2X1   g54(.A(new_n66), .B(common_anode), .Y(\out[4] ));
  NOR3X1   g55(.A(new_n27), .B(new_n25), .C(new_n24), .Y(new_n68));
  NOR4X1   g56(.A(new_n45), .B(new_n41), .C(new_n40), .D(new_n35), .Y(new_n69));
  AOI21X1  g57(.A0(new_n69), .A1(new_n68), .B0(new_n63), .Y(new_n70));
  XOR2X1   g58(.A(new_n70), .B(common_anode), .Y(\out[5] ));
  NOR4X1   g59(.A(new_n49), .B(new_n41), .C(new_n39), .D(new_n38), .Y(new_n72));
  NAND3X1  g60(.A(new_n72), .B(new_n68), .C(new_n57), .Y(new_n73));
  AND2X1   g61(.A(new_n73), .B(new_n46), .Y(new_n74));
  XOR2X1   g62(.A(new_n74), .B(common_anode), .Y(\out[6] ));
endmodule


