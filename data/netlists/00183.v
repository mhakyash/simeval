// Benchmark "DAC" written by ABC on Wed Jun 26 15:22:02 2024

module DAC ( 
    \din[0] , \din[1] , \din[2] , \din[3] , \din[4] , \din[5] , \din[6] ,
    \din[7] ,
    \analog_out[0] , \analog_out[1] , \analog_out[2] , \analog_out[3] ,
    \analog_out[4] , \analog_out[5] , \analog_out[6] , \analog_out[7] ,
    \analog_out[8] , \analog_out[9]   );
  input  \din[0] , \din[1] , \din[2] , \din[3] , \din[4] , \din[5] ,
    \din[6] , \din[7] ;
  output \analog_out[0] , \analog_out[1] , \analog_out[2] , \analog_out[3] ,
    \analog_out[4] , \analog_out[5] , \analog_out[6] , \analog_out[7] ,
    \analog_out[8] , \analog_out[9] ;
  wire new_n20, new_n21, new_n22, new_n23, new_n24, new_n25, new_n26,
    new_n27, new_n28, new_n29, new_n30, new_n31, new_n32, new_n33, new_n34,
    new_n35, new_n36, new_n37, new_n38, new_n39, new_n40, new_n41, new_n42,
    new_n43, new_n44, new_n45, new_n46, new_n47, new_n48, new_n49, new_n50,
    new_n51, new_n52, new_n53, new_n54, new_n56, new_n57, new_n59;
  OR4X1    g00(.A(\din[7] ), .B(\din[6] ), .C(\din[5] ), .D(\din[4] ), .Y(new_n20));
  INVX1    g01(.A(\din[2] ), .Y(new_n21));
  NAND2X1  g02(.A(\din[1] ), .B(\din[0] ), .Y(new_n22));
  OR4X1    g03(.A(new_n22), .B(new_n20), .C(\din[3] ), .D(new_n21), .Y(new_n23));
  INVX1    g04(.A(\din[0] ), .Y(new_n24));
  OR4X1    g05(.A(\din[3] ), .B(new_n21), .C(\din[1] ), .D(new_n24), .Y(new_n25));
  OAI21X1  g06(.A0(new_n25), .A1(new_n20), .B0(new_n23), .Y(new_n26));
  OR2X1    g07(.A(\din[3] ), .B(\din[2] ), .Y(new_n27));
  NOR3X1   g08(.A(new_n27), .B(new_n22), .C(new_n20), .Y(new_n28));
  NOR4X1   g09(.A(new_n27), .B(new_n20), .C(\din[1] ), .D(new_n24), .Y(new_n29));
  NOR3X1   g10(.A(new_n29), .B(new_n28), .C(new_n26), .Y(new_n30));
  NAND2X1  g11(.A(\din[3] ), .B(\din[2] ), .Y(new_n31));
  NOR3X1   g12(.A(new_n31), .B(new_n22), .C(new_n20), .Y(new_n32));
  NOR4X1   g13(.A(new_n31), .B(new_n20), .C(\din[1] ), .D(new_n24), .Y(new_n33));
  INVX1    g14(.A(\din[3] ), .Y(new_n34));
  NOR4X1   g15(.A(new_n22), .B(new_n20), .C(new_n34), .D(\din[2] ), .Y(new_n35));
  OR2X1    g16(.A(new_n34), .B(\din[2] ), .Y(new_n36));
  NOR4X1   g17(.A(new_n36), .B(new_n20), .C(\din[1] ), .D(new_n24), .Y(new_n37));
  NOR4X1   g18(.A(new_n37), .B(new_n35), .C(new_n33), .D(new_n32), .Y(new_n38));
  INVX1    g19(.A(\din[1] ), .Y(new_n39));
  NOR4X1   g20(.A(new_n31), .B(new_n20), .C(new_n39), .D(\din[0] ), .Y(new_n40));
  NOR4X1   g21(.A(new_n31), .B(new_n20), .C(\din[1] ), .D(\din[0] ), .Y(new_n41));
  OR4X1    g22(.A(new_n41), .B(new_n40), .C(new_n33), .D(new_n32), .Y(new_n42));
  OR4X1    g23(.A(new_n22), .B(new_n20), .C(new_n34), .D(\din[2] ), .Y(new_n43));
  OR4X1    g24(.A(new_n34), .B(\din[2] ), .C(new_n39), .D(\din[0] ), .Y(new_n44));
  OAI21X1  g25(.A0(new_n44), .A1(new_n20), .B0(new_n43), .Y(new_n45));
  NOR4X1   g26(.A(new_n36), .B(new_n20), .C(\din[1] ), .D(\din[0] ), .Y(new_n46));
  NOR4X1   g27(.A(new_n46), .B(new_n45), .C(new_n42), .D(new_n37), .Y(new_n47));
  OR4X1    g28(.A(\din[3] ), .B(new_n21), .C(new_n39), .D(\din[0] ), .Y(new_n48));
  OAI21X1  g29(.A0(new_n48), .A1(new_n20), .B0(new_n23), .Y(new_n49));
  OR4X1    g30(.A(\din[3] ), .B(new_n21), .C(\din[1] ), .D(\din[0] ), .Y(new_n50));
  AOI21X1  g31(.A0(new_n50), .A1(new_n25), .B0(new_n20), .Y(new_n51));
  NOR4X1   g32(.A(new_n27), .B(new_n20), .C(new_n39), .D(\din[0] ), .Y(new_n52));
  OR2X1    g33(.A(new_n52), .B(new_n28), .Y(new_n53));
  NOR4X1   g34(.A(new_n53), .B(new_n51), .C(new_n49), .D(new_n29), .Y(new_n54));
  AOI22X1  g35(.A0(new_n54), .A1(new_n47), .B0(new_n38), .B1(new_n30), .Y(\analog_out[1] ));
  OR2X1    g36(.A(new_n40), .B(new_n32), .Y(new_n56));
  NOR4X1   g37(.A(new_n53), .B(new_n49), .C(new_n45), .D(new_n56), .Y(new_n57));
  AOI21X1  g38(.A0(new_n54), .A1(new_n47), .B0(new_n57), .Y(\analog_out[2] ));
  NOR3X1   g39(.A(new_n51), .B(new_n49), .C(new_n42), .Y(new_n59));
  AOI21X1  g40(.A0(new_n54), .A1(new_n47), .B0(new_n59), .Y(\analog_out[3] ));
  OR4X1    g41(.A(new_n46), .B(new_n45), .C(new_n42), .D(new_n37), .Y(\analog_out[4] ));
  ZERO     g42(.Y(\analog_out[0] ));
  ZERO     g43(.Y(\analog_out[5] ));
  ZERO     g44(.Y(\analog_out[6] ));
  ZERO     g45(.Y(\analog_out[7] ));
  ZERO     g46(.Y(\analog_out[8] ));
  ZERO     g47(.Y(\analog_out[9] ));
endmodule


