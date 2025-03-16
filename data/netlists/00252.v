// Benchmark "top_module" written by ABC on Wed Jun 26 15:22:04 2024

module top_module ( 
    \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] , \in[6] , \in[7] ,
    \shift_amount[0] , \shift_amount[1] , shift_direction,
    \shifted_out[0] , \shifted_out[1] , \shifted_out[2] , \shifted_out[3]   );
  input  \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] , \in[6] ,
    \in[7] , \shift_amount[0] , \shift_amount[1] , shift_direction;
  output \shifted_out[0] , \shifted_out[1] , \shifted_out[2] ,
    \shifted_out[3] ;
  wire new_n16, new_n17, new_n18, new_n19, new_n20, new_n21, new_n22,
    new_n23, new_n24, new_n25, new_n26, new_n27, new_n28, new_n29, new_n30,
    new_n31, new_n32, new_n33, new_n35, new_n36, new_n37, new_n38, new_n39,
    new_n40, new_n41, new_n42, new_n43, new_n44, new_n45, new_n46, new_n47,
    new_n48, new_n49, new_n50, new_n51, new_n53, new_n54, new_n55, new_n56,
    new_n57, new_n58, new_n59, new_n60, new_n61, new_n62, new_n63, new_n65,
    new_n66, new_n67, new_n68, new_n69, new_n70, new_n71, new_n72, new_n73,
    new_n74;
  INVX1    g00(.A(\shift_amount[1] ), .Y(new_n16));
  MX2X1    g01(.A(\in[0] ), .B(\in[1] ), .S0(\shift_amount[0] ), .Y(new_n17));
  MX2X1    g02(.A(\in[2] ), .B(\in[3] ), .S0(\shift_amount[0] ), .Y(new_n18));
  MX2X1    g03(.A(new_n18), .B(new_n17), .S0(new_n16), .Y(new_n19));
  INVX1    g04(.A(\in[0] ), .Y(new_n20));
  NOR4X1   g05(.A(shift_direction), .B(\shift_amount[1] ), .C(\shift_amount[0] ), .D(new_n20), .Y(new_n21));
  AOI21X1  g06(.A0(new_n19), .A1(shift_direction), .B0(new_n21), .Y(new_n22));
  OR4X1    g07(.A(\in[3] ), .B(\in[2] ), .C(\in[1] ), .D(new_n20), .Y(new_n23));
  INVX1    g08(.A(\in[1] ), .Y(new_n24));
  OR4X1    g09(.A(\in[3] ), .B(\in[2] ), .C(new_n24), .D(\in[0] ), .Y(new_n25));
  MX2X1    g10(.A(\in[4] ), .B(\in[5] ), .S0(\shift_amount[0] ), .Y(new_n26));
  MX2X1    g11(.A(\in[6] ), .B(\in[7] ), .S0(\shift_amount[0] ), .Y(new_n27));
  MX2X1    g12(.A(new_n27), .B(new_n26), .S0(new_n16), .Y(new_n28));
  MX2X1    g13(.A(\in[4] ), .B(\in[3] ), .S0(\shift_amount[0] ), .Y(new_n29));
  MX2X1    g14(.A(\in[2] ), .B(\in[1] ), .S0(\shift_amount[0] ), .Y(new_n30));
  MX2X1    g15(.A(new_n30), .B(new_n29), .S0(new_n16), .Y(new_n31));
  MX2X1    g16(.A(new_n31), .B(new_n28), .S0(shift_direction), .Y(new_n32));
  NAND2X1  g17(.A(new_n32), .B(new_n23), .Y(new_n33));
  OAI22X1  g18(.A0(new_n33), .A1(new_n25), .B0(new_n23), .B1(new_n22), .Y(\shifted_out[0] ));
  NOR2X1   g19(.A(shift_direction), .B(\shift_amount[1] ), .Y(new_n35));
  MX2X1    g20(.A(\in[1] ), .B(\in[2] ), .S0(\shift_amount[0] ), .Y(new_n36));
  MX2X1    g21(.A(\in[3] ), .B(\in[4] ), .S0(\shift_amount[0] ), .Y(new_n37));
  MX2X1    g22(.A(new_n37), .B(new_n36), .S0(new_n16), .Y(new_n38));
  MX2X1    g23(.A(\in[1] ), .B(\in[0] ), .S0(\shift_amount[0] ), .Y(new_n39));
  AOI22X1  g24(.A0(new_n39), .A1(new_n35), .B0(new_n38), .B1(shift_direction), .Y(new_n40));
  INVX1    g25(.A(shift_direction), .Y(new_n41));
  MX2X1    g26(.A(\in[5] ), .B(\in[6] ), .S0(\shift_amount[0] ), .Y(new_n42));
  NAND2X1  g27(.A(new_n42), .B(new_n16), .Y(new_n43));
  INVX1    g28(.A(\shift_amount[0] ), .Y(new_n44));
  NAND3X1  g29(.A(\shift_amount[1] ), .B(new_n44), .C(\in[7] ), .Y(new_n45));
  AOI21X1  g30(.A0(new_n45), .A1(new_n43), .B0(new_n41), .Y(new_n46));
  MX2X1    g31(.A(\in[5] ), .B(\in[4] ), .S0(\shift_amount[0] ), .Y(new_n47));
  MX2X1    g32(.A(\in[3] ), .B(\in[2] ), .S0(\shift_amount[0] ), .Y(new_n48));
  MX2X1    g33(.A(new_n48), .B(new_n47), .S0(new_n16), .Y(new_n49));
  AND2X1   g34(.A(new_n49), .B(new_n41), .Y(new_n50));
  OAI21X1  g35(.A0(new_n50), .A1(new_n46), .B0(new_n23), .Y(new_n51));
  OAI22X1  g36(.A0(new_n51), .A1(new_n25), .B0(new_n40), .B1(new_n23), .Y(\shifted_out[1] ));
  AND2X1   g37(.A(new_n18), .B(new_n16), .Y(new_n53));
  AOI21X1  g38(.A0(new_n26), .A1(\shift_amount[1] ), .B0(new_n53), .Y(new_n54));
  NOR3X1   g39(.A(new_n16), .B(\shift_amount[0] ), .C(new_n20), .Y(new_n55));
  AOI21X1  g40(.A0(new_n30), .A1(new_n16), .B0(new_n55), .Y(new_n56));
  MX2X1    g41(.A(new_n56), .B(new_n54), .S0(shift_direction), .Y(new_n57));
  NOR4X1   g42(.A(\in[3] ), .B(\in[2] ), .C(\in[1] ), .D(new_n20), .Y(new_n58));
  AND2X1   g43(.A(shift_direction), .B(new_n16), .Y(new_n59));
  MX2X1    g44(.A(\in[6] ), .B(\in[5] ), .S0(\shift_amount[0] ), .Y(new_n60));
  MX2X1    g45(.A(new_n60), .B(new_n29), .S0(\shift_amount[1] ), .Y(new_n61));
  AOI22X1  g46(.A0(new_n61), .A1(new_n41), .B0(new_n59), .B1(new_n27), .Y(new_n62));
  OR2X1    g47(.A(new_n62), .B(new_n58), .Y(new_n63));
  OAI22X1  g48(.A0(new_n63), .A1(new_n25), .B0(new_n57), .B1(new_n23), .Y(\shifted_out[2] ));
  AND2X1   g49(.A(new_n37), .B(new_n16), .Y(new_n65));
  AOI21X1  g50(.A0(new_n42), .A1(\shift_amount[1] ), .B0(new_n65), .Y(new_n66));
  AND2X1   g51(.A(new_n48), .B(new_n16), .Y(new_n67));
  AOI21X1  g52(.A0(new_n39), .A1(\shift_amount[1] ), .B0(new_n67), .Y(new_n68));
  MX2X1    g53(.A(new_n68), .B(new_n66), .S0(shift_direction), .Y(new_n69));
  AND2X1   g54(.A(new_n44), .B(\in[7] ), .Y(new_n70));
  MX2X1    g55(.A(\in[7] ), .B(\in[6] ), .S0(\shift_amount[0] ), .Y(new_n71));
  MX2X1    g56(.A(new_n71), .B(new_n47), .S0(\shift_amount[1] ), .Y(new_n72));
  AOI22X1  g57(.A0(new_n72), .A1(new_n41), .B0(new_n59), .B1(new_n70), .Y(new_n73));
  OR2X1    g58(.A(new_n73), .B(new_n58), .Y(new_n74));
  OAI22X1  g59(.A0(new_n74), .A1(new_n25), .B0(new_n69), .B1(new_n23), .Y(\shifted_out[3] ));
endmodule


