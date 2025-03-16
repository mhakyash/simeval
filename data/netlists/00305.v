// Benchmark "memory_protection_blocks" written by ABC on Wed Jun 26 15:22:06 2024

module memory_protection_blocks ( 
    \in1[0] , \in1[1] , \in1[2] , \in1[3] , \in1[4] , \in1[5] , \in1[6] ,
    \in1[7] , \in1[8] , \in1[9] , \in1[10] , \in1[11] , \in1[12] ,
    \in1[13] , \in1[14] , \in1[15] , \in1[16] , \in1[17] , \in1[18] ,
    \in1[19] , \in1[20] , \in1[21] , \in1[22] , \in1[23] , \in1[24] ,
    \in1[25] , \in1[26] , \in1[27] , \in1[28] , \in1[29] , \in1[30] ,
    \in1[31] , in2,
    out  );
  input  \in1[0] , \in1[1] , \in1[2] , \in1[3] , \in1[4] , \in1[5] ,
    \in1[6] , \in1[7] , \in1[8] , \in1[9] , \in1[10] , \in1[11] ,
    \in1[12] , \in1[13] , \in1[14] , \in1[15] , \in1[16] , \in1[17] ,
    \in1[18] , \in1[19] , \in1[20] , \in1[21] , \in1[22] , \in1[23] ,
    \in1[24] , \in1[25] , \in1[26] , \in1[27] , \in1[28] , \in1[29] ,
    \in1[30] , \in1[31] , in2;
  output out;
  wire new_n35, new_n36, new_n37, new_n38, new_n39, new_n40, new_n41,
    new_n42, new_n43, new_n44, new_n45, new_n46, new_n47, new_n48, new_n49,
    new_n50, new_n51, new_n52, new_n53, new_n54, new_n55, new_n56, new_n57,
    new_n58, new_n59, new_n60, new_n61, new_n62, new_n63, new_n64, new_n65,
    new_n66, new_n67, new_n68, new_n69, new_n70, new_n71, new_n72, new_n73,
    new_n74;
  INVX1    g00(.A(in2), .Y(new_n35));
  OR4X1    g01(.A(\in1[31] ), .B(\in1[30] ), .C(\in1[29] ), .D(\in1[28] ), .Y(new_n36));
  OR4X1    g02(.A(\in1[27] ), .B(\in1[26] ), .C(\in1[25] ), .D(\in1[24] ), .Y(new_n37));
  OR4X1    g03(.A(\in1[23] ), .B(\in1[22] ), .C(\in1[21] ), .D(\in1[20] ), .Y(new_n38));
  OR4X1    g04(.A(\in1[19] ), .B(\in1[18] ), .C(\in1[17] ), .D(\in1[16] ), .Y(new_n39));
  NOR4X1   g05(.A(new_n39), .B(new_n38), .C(new_n37), .D(new_n36), .Y(new_n40));
  INVX1    g06(.A(new_n40), .Y(new_n41));
  OR4X1    g07(.A(\in1[15] ), .B(\in1[14] ), .C(\in1[13] ), .D(\in1[12] ), .Y(new_n42));
  OR2X1    g08(.A(\in1[11] ), .B(\in1[10] ), .Y(new_n43));
  OR4X1    g09(.A(new_n43), .B(new_n42), .C(\in1[9] ), .D(\in1[8] ), .Y(new_n44));
  OR4X1    g10(.A(\in1[7] ), .B(\in1[6] ), .C(\in1[5] ), .D(\in1[4] ), .Y(new_n45));
  OR4X1    g11(.A(\in1[3] ), .B(\in1[2] ), .C(\in1[1] ), .D(\in1[0] ), .Y(new_n46));
  NOR4X1   g12(.A(new_n46), .B(new_n45), .C(new_n44), .D(new_n41), .Y(new_n47));
  NOR2X1   g13(.A(new_n37), .B(new_n36), .Y(new_n48));
  NOR4X1   g14(.A(\in1[19] ), .B(\in1[18] ), .C(\in1[17] ), .D(\in1[16] ), .Y(new_n49));
  NOR4X1   g15(.A(\in1[23] ), .B(\in1[22] ), .C(\in1[21] ), .D(\in1[20] ), .Y(new_n50));
  OAI21X1  g16(.A0(new_n49), .A1(new_n38), .B0(new_n50), .Y(new_n51));
  AND2X1   g17(.A(new_n51), .B(new_n48), .Y(new_n52));
  NOR4X1   g18(.A(\in1[27] ), .B(\in1[26] ), .C(\in1[25] ), .D(\in1[24] ), .Y(new_n53));
  NOR4X1   g19(.A(\in1[31] ), .B(\in1[30] ), .C(\in1[29] ), .D(\in1[28] ), .Y(new_n54));
  OAI21X1  g20(.A0(new_n53), .A1(new_n36), .B0(new_n54), .Y(new_n55));
  NOR4X1   g21(.A(\in1[11] ), .B(\in1[10] ), .C(\in1[9] ), .D(\in1[8] ), .Y(new_n56));
  NOR4X1   g22(.A(\in1[15] ), .B(\in1[14] ), .C(\in1[13] ), .D(\in1[12] ), .Y(new_n57));
  OAI21X1  g23(.A0(new_n56), .A1(new_n42), .B0(new_n57), .Y(new_n58));
  INVX1    g24(.A(new_n58), .Y(new_n59));
  NOR4X1   g25(.A(new_n43), .B(new_n42), .C(\in1[9] ), .D(\in1[8] ), .Y(new_n60));
  INVX1    g26(.A(\in1[3] ), .Y(new_n61));
  NAND2X1  g27(.A(new_n61), .B(\in1[2] ), .Y(new_n62));
  AND2X1   g28(.A(new_n61), .B(\in1[2] ), .Y(new_n63));
  AOI21X1  g29(.A0(new_n63), .A1(new_n62), .B0(new_n45), .Y(new_n64));
  OR4X1    g30(.A(\in1[7] ), .B(\in1[6] ), .C(\in1[5] ), .D(\in1[4] ), .Y(new_n65));
  OAI21X1  g31(.A0(new_n65), .A1(new_n64), .B0(new_n60), .Y(new_n66));
  AOI21X1  g32(.A0(new_n66), .A1(new_n59), .B0(new_n41), .Y(new_n67));
  NOR4X1   g33(.A(new_n67), .B(new_n55), .C(new_n52), .D(new_n47), .Y(new_n68));
  AOI21X1  g34(.A0(new_n51), .A1(new_n48), .B0(new_n55), .Y(new_n69));
  NAND4X1  g35(.A(\in1[7] ), .B(\in1[6] ), .C(\in1[5] ), .D(\in1[4] ), .Y(new_n70));
  NAND4X1  g36(.A(\in1[3] ), .B(\in1[2] ), .C(\in1[1] ), .D(\in1[0] ), .Y(new_n71));
  NOR3X1   g37(.A(new_n71), .B(new_n70), .C(new_n44), .Y(new_n72));
  OAI21X1  g38(.A0(new_n72), .A1(new_n58), .B0(new_n40), .Y(new_n73));
  AOI22X1  g39(.A0(new_n73), .A1(new_n69), .B0(new_n72), .B1(new_n40), .Y(new_n74));
  NOR3X1   g40(.A(new_n74), .B(new_n68), .C(new_n35), .Y(out));
endmodule


