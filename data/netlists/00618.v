// Benchmark "byte_sum_and_multiply" written by ABC on Wed Jun 26 15:22:15 2024

module byte_sum_and_multiply ( 
    \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] , \in[6] , \in[7] ,
    \in[8] , \in[9] , \in[10] , \in[11] , \in[12] , \in[13] , \in[14] ,
    \in[15] ,
    \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] , \out[8] , \out[9] , \out[10] , \out[11] , \out[12] ,
    \out[13] , \out[14] , \out[15]   );
  input  \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] , \in[6] ,
    \in[7] , \in[8] , \in[9] , \in[10] , \in[11] , \in[12] , \in[13] ,
    \in[14] , \in[15] ;
  output \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] , \out[8] , \out[9] , \out[10] , \out[11] , \out[12] ,
    \out[13] , \out[14] , \out[15] ;
  wire new_n35, new_n36, new_n38, new_n39, new_n40, new_n41, new_n43,
    new_n44, new_n45, new_n46, new_n48, new_n49, new_n50, new_n51, new_n52,
    new_n54, new_n55, new_n56, new_n57, new_n59, new_n60, new_n61, new_n62,
    new_n63, new_n64, new_n65, new_n67, new_n68, new_n69, new_n71, new_n72,
    new_n73, new_n74, new_n75;
  XOR2X1   g00(.A(\in[8] ), .B(\in[0] ), .Y(\out[1] ));
  XOR2X1   g01(.A(\in[9] ), .B(\in[1] ), .Y(new_n35));
  AND2X1   g02(.A(\in[8] ), .B(\in[0] ), .Y(new_n36));
  XOR2X1   g03(.A(new_n36), .B(new_n35), .Y(\out[2] ));
  XOR2X1   g04(.A(\in[10] ), .B(\in[2] ), .Y(new_n38));
  INVX1    g05(.A(new_n38), .Y(new_n39));
  AND2X1   g06(.A(\in[9] ), .B(\in[1] ), .Y(new_n40));
  AOI21X1  g07(.A0(new_n36), .A1(new_n35), .B0(new_n40), .Y(new_n41));
  XOR2X1   g08(.A(new_n41), .B(new_n39), .Y(\out[3] ));
  XOR2X1   g09(.A(\in[11] ), .B(\in[3] ), .Y(new_n43));
  AND2X1   g10(.A(\in[10] ), .B(\in[2] ), .Y(new_n44));
  INVX1    g11(.A(new_n44), .Y(new_n45));
  OAI21X1  g12(.A0(new_n41), .A1(new_n39), .B0(new_n45), .Y(new_n46));
  XOR2X1   g13(.A(new_n46), .B(new_n43), .Y(\out[4] ));
  XOR2X1   g14(.A(\in[12] ), .B(\in[4] ), .Y(new_n48));
  NAND2X1  g15(.A(new_n43), .B(new_n38), .Y(new_n49));
  AND2X1   g16(.A(\in[11] ), .B(\in[3] ), .Y(new_n50));
  AOI21X1  g17(.A0(new_n44), .A1(new_n43), .B0(new_n50), .Y(new_n51));
  OAI21X1  g18(.A0(new_n49), .A1(new_n41), .B0(new_n51), .Y(new_n52));
  XOR2X1   g19(.A(new_n52), .B(new_n48), .Y(\out[5] ));
  XOR2X1   g20(.A(\in[13] ), .B(\in[5] ), .Y(new_n54));
  INVX1    g21(.A(new_n54), .Y(new_n55));
  AND2X1   g22(.A(\in[12] ), .B(\in[4] ), .Y(new_n56));
  AOI21X1  g23(.A0(new_n52), .A1(new_n48), .B0(new_n56), .Y(new_n57));
  XOR2X1   g24(.A(new_n57), .B(new_n55), .Y(\out[6] ));
  XOR2X1   g25(.A(\in[14] ), .B(\in[6] ), .Y(new_n59));
  INVX1    g26(.A(new_n59), .Y(new_n60));
  AND2X1   g27(.A(\in[13] ), .B(\in[5] ), .Y(new_n61));
  AND2X1   g28(.A(new_n56), .B(new_n54), .Y(new_n62));
  OR2X1    g29(.A(new_n62), .B(new_n61), .Y(new_n63));
  AND2X1   g30(.A(new_n54), .B(new_n48), .Y(new_n64));
  AOI21X1  g31(.A0(new_n64), .A1(new_n52), .B0(new_n63), .Y(new_n65));
  XOR2X1   g32(.A(new_n65), .B(new_n60), .Y(\out[7] ));
  XOR2X1   g33(.A(\in[15] ), .B(\in[7] ), .Y(new_n67));
  NAND2X1  g34(.A(\in[14] ), .B(\in[6] ), .Y(new_n68));
  OAI21X1  g35(.A0(new_n65), .A1(new_n60), .B0(new_n68), .Y(new_n69));
  XOR2X1   g36(.A(new_n69), .B(new_n67), .Y(\out[8] ));
  AND2X1   g37(.A(new_n67), .B(new_n59), .Y(new_n71));
  NAND3X1  g38(.A(new_n71), .B(new_n64), .C(new_n52), .Y(new_n72));
  OAI21X1  g39(.A0(new_n62), .A1(new_n61), .B0(new_n71), .Y(new_n73));
  NAND2X1  g40(.A(\in[15] ), .B(\in[7] ), .Y(new_n74));
  NAND3X1  g41(.A(new_n67), .B(\in[14] ), .C(\in[6] ), .Y(new_n75));
  NAND4X1  g42(.A(new_n75), .B(new_n74), .C(new_n73), .D(new_n72), .Y(\out[9] ));
  ZERO     g43(.Y(\out[0] ));
  ZERO     g44(.Y(\out[10] ));
  ZERO     g45(.Y(\out[11] ));
  ZERO     g46(.Y(\out[12] ));
  ZERO     g47(.Y(\out[13] ));
  ZERO     g48(.Y(\out[14] ));
  ZERO     g49(.Y(\out[15] ));
endmodule


