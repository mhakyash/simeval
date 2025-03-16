// Benchmark "FSM" written by ABC on Wed Jun 26 15:22:18 2024

module FSM ( clock, 
    \in[0] , \in[1] , \in[2] , \in[3] ,
    \out[0] , \out[1]   );
  input  clock;
  input  \in[0] , \in[1] , \in[2] , \in[3] ;
  output \out[0] , \out[1] ;
  reg \state[0] , \state[1] , \state[2] , \state[3] , \state[4] ,
    \state[5] , \state[6] , \state[7] , \output_reg[0] , \output_reg[1] ;
  wire new_n37, new_n38, new_n39_1, new_n40, new_n41, new_n42, new_n43,
    new_n45, new_n46, new_n47, new_n48, new_n50, new_n51, new_n52, new_n53,
    new_n54_1, new_n56, new_n57, new_n58, new_n59_1, new_n61, new_n62,
    new_n63, new_n64, new_n66, new_n67, new_n68, new_n69, new_n71, new_n72,
    new_n73, new_n74, new_n76, new_n77, new_n79, new_n80, new_n81, new_n83,
    n14, n19, n24, n29, n34, n39, n44, n49, n54, n59;
  INVX1    g00(.A(\state[0] ), .Y(new_n37));
  XOR2X1   g01(.A(\in[1] ), .B(\in[0] ), .Y(new_n38));
  OR2X1    g02(.A(new_n38), .B(new_n37), .Y(new_n39_1));
  INVX1    g03(.A(\in[1] ), .Y(new_n40));
  NAND3X1  g04(.A(\state[2] ), .B(new_n40), .C(\in[0] ), .Y(new_n41));
  INVX1    g05(.A(\in[0] ), .Y(new_n42));
  NAND3X1  g06(.A(\state[4] ), .B(\in[1] ), .C(new_n42), .Y(new_n43));
  NAND3X1  g07(.A(new_n43), .B(new_n41), .C(new_n39_1), .Y(n14));
  INVX1    g08(.A(\state[1] ), .Y(new_n45));
  OR2X1    g09(.A(new_n38), .B(new_n45), .Y(new_n46));
  NAND3X1  g10(.A(\state[6] ), .B(\in[1] ), .C(new_n42), .Y(new_n47));
  NAND3X1  g11(.A(\state[3] ), .B(new_n40), .C(\in[0] ), .Y(new_n48));
  NAND3X1  g12(.A(new_n48), .B(new_n47), .C(new_n46), .Y(n19));
  OR2X1    g13(.A(\state[1] ), .B(\state[0] ), .Y(new_n50));
  NAND3X1  g14(.A(new_n50), .B(\in[1] ), .C(new_n42), .Y(new_n51));
  INVX1    g15(.A(\state[2] ), .Y(new_n52));
  OR2X1    g16(.A(new_n38), .B(new_n52), .Y(new_n53));
  NAND3X1  g17(.A(\state[7] ), .B(new_n40), .C(\in[0] ), .Y(new_n54_1));
  NAND3X1  g18(.A(new_n54_1), .B(new_n53), .C(new_n51), .Y(n24));
  NAND3X1  g19(.A(\state[2] ), .B(\in[1] ), .C(new_n42), .Y(new_n56));
  INVX1    g20(.A(\state[3] ), .Y(new_n57));
  OR2X1    g21(.A(new_n38), .B(new_n57), .Y(new_n58));
  NAND3X1  g22(.A(\state[5] ), .B(new_n40), .C(\in[0] ), .Y(new_n59_1));
  NAND3X1  g23(.A(new_n59_1), .B(new_n58), .C(new_n56), .Y(n29));
  NAND3X1  g24(.A(\state[5] ), .B(\in[1] ), .C(new_n42), .Y(new_n61));
  INVX1    g25(.A(\state[4] ), .Y(new_n62));
  OR2X1    g26(.A(new_n38), .B(new_n62), .Y(new_n63));
  NAND3X1  g27(.A(\state[0] ), .B(new_n40), .C(\in[0] ), .Y(new_n64));
  NAND3X1  g28(.A(new_n64), .B(new_n63), .C(new_n61), .Y(n34));
  NAND3X1  g29(.A(\state[7] ), .B(\in[1] ), .C(new_n42), .Y(new_n66));
  INVX1    g30(.A(\state[5] ), .Y(new_n67));
  OR2X1    g31(.A(new_n38), .B(new_n67), .Y(new_n68));
  NAND3X1  g32(.A(\state[1] ), .B(new_n40), .C(\in[0] ), .Y(new_n69));
  NAND3X1  g33(.A(new_n69), .B(new_n68), .C(new_n66), .Y(n39));
  NAND3X1  g34(.A(\state[3] ), .B(\in[1] ), .C(new_n42), .Y(new_n71));
  INVX1    g35(.A(\state[6] ), .Y(new_n72));
  OR2X1    g36(.A(new_n38), .B(new_n72), .Y(new_n73));
  NAND3X1  g37(.A(\state[4] ), .B(new_n40), .C(\in[0] ), .Y(new_n74));
  NAND3X1  g38(.A(new_n74), .B(new_n73), .C(new_n71), .Y(n44));
  INVX1    g39(.A(\state[7] ), .Y(new_n76));
  NAND3X1  g40(.A(\state[6] ), .B(new_n40), .C(\in[0] ), .Y(new_n77));
  OAI21X1  g41(.A0(new_n38), .A1(new_n76), .B0(new_n77), .Y(n49));
  AND2X1   g42(.A(\in[1] ), .B(new_n42), .Y(new_n79));
  OR4X1    g43(.A(\state[7] ), .B(\state[6] ), .C(\state[5] ), .D(\state[4] ), .Y(new_n80));
  NOR4X1   g44(.A(new_n80), .B(new_n50), .C(\state[3] ), .D(\state[2] ), .Y(new_n81));
  MX2X1    g45(.A(new_n79), .B(\output_reg[0] ), .S0(new_n81), .Y(n54));
  AND2X1   g46(.A(new_n40), .B(\in[0] ), .Y(new_n83));
  MX2X1    g47(.A(new_n83), .B(\output_reg[1] ), .S0(new_n81), .Y(n59));
  BUFX1    g48(.A(\output_reg[0] ), .Y(\out[0] ));
  BUFX1    g49(.A(\output_reg[1] ), .Y(\out[1] ));
  always @ (posedge clock) begin
    \state[0]  <= n14;
    \state[1]  <= n19;
    \state[2]  <= n24;
    \state[3]  <= n29;
    \state[4]  <= n34;
    \state[5]  <= n39;
    \state[6]  <= n44;
    \state[7]  <= n49;
    \output_reg[0]  <= n54;
    \output_reg[1]  <= n59;
  end
endmodule


