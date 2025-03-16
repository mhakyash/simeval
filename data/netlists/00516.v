// Benchmark "addsub_4bit" written by ABC on Wed Jun 26 15:22:12 2024

module addsub_4bit ( 
    \in_0[0] , \in_0[1] , \in_0[2] , \in_0[3] , \in_1[0] , \in_1[1] ,
    \in_1[2] , \in_1[3] , ctrl,
    \out[0] , \out[1] , \out[2] , \out[3] , ov  );
  input  \in_0[0] , \in_0[1] , \in_0[2] , \in_0[3] , \in_1[0] ,
    \in_1[1] , \in_1[2] , \in_1[3] , ctrl;
  output \out[0] , \out[1] , \out[2] , \out[3] , ov;
  wire new_n16, new_n17, new_n18, new_n19, new_n20, new_n21, new_n22,
    new_n23, new_n24, new_n26, new_n27, new_n28, new_n29, new_n30, new_n31,
    new_n32, new_n33, new_n34, new_n35, new_n36, new_n37, new_n38, new_n39,
    new_n40, new_n41, new_n42, new_n43, new_n44, new_n46, new_n47, new_n48,
    new_n49, new_n50, new_n51, new_n52, new_n53, new_n54, new_n55, new_n56,
    new_n57, new_n58, new_n59, new_n61, new_n62, new_n63, new_n64, new_n65,
    new_n66, new_n67, new_n68, new_n69, new_n70, new_n71, new_n72, new_n73,
    new_n74, new_n75, new_n76, new_n77, new_n78;
  XOR2X1   g00(.A(\in_1[0] ), .B(\in_0[0] ), .Y(\out[0] ));
  INVX1    g01(.A(ctrl), .Y(new_n16));
  NAND2X1  g02(.A(\in_1[0] ), .B(\in_0[0] ), .Y(new_n17));
  XOR2X1   g03(.A(\in_1[1] ), .B(\in_0[1] ), .Y(new_n18));
  XOR2X1   g04(.A(new_n18), .B(new_n17), .Y(new_n19));
  INVX1    g05(.A(new_n19), .Y(new_n20));
  XOR2X1   g06(.A(\in_1[1] ), .B(\in_0[1] ), .Y(new_n21));
  INVX1    g07(.A(\in_0[0] ), .Y(new_n22));
  AND2X1   g08(.A(\in_1[0] ), .B(new_n22), .Y(new_n23));
  XOR2X1   g09(.A(new_n23), .B(new_n21), .Y(new_n24));
  MX2X1    g10(.A(new_n24), .B(new_n20), .S0(new_n16), .Y(\out[1] ));
  XOR2X1   g11(.A(\in_1[2] ), .B(\in_0[2] ), .Y(new_n26));
  AND2X1   g12(.A(\in_1[0] ), .B(\in_0[0] ), .Y(new_n27));
  AND2X1   g13(.A(\in_1[1] ), .B(\in_0[1] ), .Y(new_n28));
  AOI21X1  g14(.A0(new_n18), .A1(new_n27), .B0(new_n28), .Y(new_n29));
  XOR2X1   g15(.A(new_n29), .B(new_n26), .Y(new_n30));
  INVX1    g16(.A(new_n30), .Y(new_n31));
  INVX1    g17(.A(\in_0[1] ), .Y(new_n32));
  NOR2X1   g18(.A(\in_1[1] ), .B(new_n32), .Y(new_n33));
  XOR2X1   g19(.A(\in_1[2] ), .B(\in_0[2] ), .Y(new_n34));
  AOI21X1  g20(.A0(\in_1[0] ), .A1(new_n22), .B0(new_n21), .Y(new_n35));
  NOR3X1   g21(.A(new_n35), .B(new_n34), .C(new_n33), .Y(new_n36));
  OR2X1    g22(.A(\in_1[1] ), .B(new_n32), .Y(new_n37));
  INVX1    g23(.A(\in_0[2] ), .Y(new_n38));
  XOR2X1   g24(.A(\in_1[2] ), .B(new_n38), .Y(new_n39));
  INVX1    g25(.A(\in_1[0] ), .Y(new_n40));
  NOR2X1   g26(.A(\in_1[1] ), .B(\in_0[1] ), .Y(new_n41));
  OAI22X1  g27(.A0(new_n41), .A1(new_n28), .B0(new_n40), .B1(\in_0[0] ), .Y(new_n42));
  AOI21X1  g28(.A0(new_n42), .A1(new_n37), .B0(new_n39), .Y(new_n43));
  OR2X1    g29(.A(new_n43), .B(new_n36), .Y(new_n44));
  MX2X1    g30(.A(new_n44), .B(new_n31), .S0(new_n16), .Y(\out[2] ));
  XOR2X1   g31(.A(\in_1[3] ), .B(\in_0[3] ), .Y(new_n46));
  XOR2X1   g32(.A(\in_1[2] ), .B(new_n38), .Y(new_n47));
  NAND2X1  g33(.A(\in_1[2] ), .B(\in_0[2] ), .Y(new_n48));
  OAI21X1  g34(.A0(new_n29), .A1(new_n47), .B0(new_n48), .Y(new_n49));
  XOR2X1   g35(.A(new_n49), .B(new_n46), .Y(new_n50));
  NOR2X1   g36(.A(\in_1[2] ), .B(new_n38), .Y(new_n51));
  XOR2X1   g37(.A(\in_1[3] ), .B(\in_0[3] ), .Y(new_n52));
  AOI21X1  g38(.A0(new_n42), .A1(new_n37), .B0(new_n34), .Y(new_n53));
  NOR3X1   g39(.A(new_n53), .B(new_n52), .C(new_n51), .Y(new_n54));
  OR2X1    g40(.A(\in_1[2] ), .B(new_n38), .Y(new_n55));
  INVX1    g41(.A(new_n52), .Y(new_n56));
  OAI21X1  g42(.A0(new_n35), .A1(new_n33), .B0(new_n39), .Y(new_n57));
  AOI21X1  g43(.A0(new_n57), .A1(new_n55), .B0(new_n56), .Y(new_n58));
  OR2X1    g44(.A(new_n58), .B(new_n54), .Y(new_n59));
  MX2X1    g45(.A(new_n59), .B(new_n50), .S0(new_n16), .Y(\out[3] ));
  NAND2X1  g46(.A(new_n46), .B(new_n26), .Y(new_n61));
  AND2X1   g47(.A(\in_1[2] ), .B(\in_0[2] ), .Y(new_n62));
  AND2X1   g48(.A(\in_1[3] ), .B(\in_0[3] ), .Y(new_n63));
  AOI21X1  g49(.A0(new_n46), .A1(new_n62), .B0(new_n63), .Y(new_n64));
  OAI21X1  g50(.A0(new_n61), .A1(new_n29), .B0(new_n64), .Y(new_n65));
  XOR2X1   g51(.A(\in_1[0] ), .B(new_n22), .Y(new_n66));
  NOR4X1   g52(.A(new_n65), .B(new_n30), .C(new_n19), .D(new_n66), .Y(new_n67));
  NAND2X1  g53(.A(new_n67), .B(new_n50), .Y(new_n68));
  NAND3X1  g54(.A(new_n68), .B(new_n65), .C(new_n16), .Y(new_n69));
  NOR2X1   g55(.A(new_n52), .B(new_n34), .Y(new_n70));
  OAI21X1  g56(.A0(new_n35), .A1(new_n33), .B0(new_n70), .Y(new_n71));
  INVX1    g57(.A(\in_0[3] ), .Y(new_n72));
  NOR2X1   g58(.A(\in_1[3] ), .B(new_n72), .Y(new_n73));
  AOI21X1  g59(.A0(new_n56), .A1(new_n51), .B0(new_n73), .Y(new_n74));
  AND2X1   g60(.A(new_n74), .B(new_n71), .Y(new_n75));
  NOR3X1   g61(.A(new_n58), .B(new_n54), .C(new_n44), .Y(new_n76));
  OR4X1    g62(.A(new_n58), .B(new_n54), .C(new_n43), .D(new_n36), .Y(new_n77));
  OR4X1    g63(.A(new_n77), .B(new_n76), .C(new_n75), .D(new_n16), .Y(new_n78));
  NAND2X1  g64(.A(new_n78), .B(new_n69), .Y(ov));
endmodule


