// Benchmark "counter" written by ABC on Wed Jun 26 15:22:00 2024

module counter ( clock, 
    clk, rst, up_down,
    \count[0] , \count[1] , \count[2] , \count[3] , \count[4] , \count[5] ,
    \count[6] , \count[7]   );
  input  clock;
  input  clk, rst, up_down;
  output \count[0] , \count[1] , \count[2] , \count[3] , \count[4] ,
    \count[5] , \count[6] , \count[7] ;
  reg \count[0] , \count[1] , \count[2] , \count[3] , \count[4] ,
    \count[5] , \count[6] , \count[7] ;
  wire new_n36_1, new_n37, new_n38, new_n39, new_n40_1, new_n41, new_n42,
    new_n43, new_n44_1, new_n45, new_n46, new_n47, new_n49, new_n50,
    new_n51, new_n52_1, new_n53, new_n54, new_n56, new_n57, new_n58,
    new_n59, new_n60, new_n61, new_n63, new_n64, new_n65, new_n66, new_n67,
    new_n68, new_n69, new_n71, new_n72, new_n73, new_n74, new_n75, new_n76,
    new_n78, new_n79, new_n80, new_n81, new_n82, new_n83, new_n84, new_n86,
    new_n87, new_n88, new_n89, new_n90, new_n91, new_n92, new_n94, new_n95,
    new_n96, new_n97, new_n98, new_n99, n24, n28, n32, n36, n40, n44, n48,
    n52;
  INVX1    g00(.A(up_down), .Y(new_n36_1));
  INVX1    g01(.A(\count[0] ), .Y(new_n37));
  NOR4X1   g02(.A(\count[7] ), .B(\count[6] ), .C(\count[1] ), .D(\count[0] ), .Y(new_n38));
  NOR4X1   g03(.A(\count[5] ), .B(\count[4] ), .C(\count[3] ), .D(\count[2] ), .Y(new_n39));
  AND2X1   g04(.A(new_n39), .B(new_n38), .Y(new_n40_1));
  OAI21X1  g05(.A0(new_n40_1), .A1(new_n37), .B0(new_n36_1), .Y(new_n41));
  INVX1    g06(.A(\count[6] ), .Y(new_n42));
  INVX1    g07(.A(\count[7] ), .Y(new_n43));
  NAND4X1  g08(.A(\count[3] ), .B(\count[2] ), .C(\count[1] ), .D(\count[0] ), .Y(new_n44_1));
  NAND2X1  g09(.A(\count[5] ), .B(\count[4] ), .Y(new_n45));
  OR4X1    g10(.A(new_n45), .B(new_n44_1), .C(new_n43), .D(new_n42), .Y(new_n46));
  NAND3X1  g11(.A(new_n46), .B(new_n37), .C(up_down), .Y(new_n47));
  AOI21X1  g12(.A0(new_n47), .A1(new_n41), .B0(rst), .Y(n24));
  INVX1    g13(.A(rst), .Y(new_n49));
  NOR4X1   g14(.A(new_n45), .B(new_n44_1), .C(new_n43), .D(new_n42), .Y(new_n50));
  XOR2X1   g15(.A(\count[1] ), .B(\count[0] ), .Y(new_n51));
  XOR2X1   g16(.A(\count[1] ), .B(\count[0] ), .Y(new_n52_1));
  NAND2X1  g17(.A(new_n52_1), .B(up_down), .Y(new_n53));
  OAI22X1  g18(.A0(new_n53), .A1(new_n50), .B0(new_n51), .B1(up_down), .Y(new_n54));
  AND2X1   g19(.A(new_n54), .B(new_n49), .Y(n28));
  NOR2X1   g20(.A(\count[1] ), .B(\count[0] ), .Y(new_n56));
  XOR2X1   g21(.A(new_n56), .B(\count[2] ), .Y(new_n57));
  OAI21X1  g22(.A0(new_n57), .A1(new_n40_1), .B0(new_n36_1), .Y(new_n58));
  AND2X1   g23(.A(\count[1] ), .B(\count[0] ), .Y(new_n59));
  XOR2X1   g24(.A(new_n59), .B(\count[2] ), .Y(new_n60));
  NAND3X1  g25(.A(new_n60), .B(new_n46), .C(up_down), .Y(new_n61));
  AOI21X1  g26(.A0(new_n61), .A1(new_n58), .B0(rst), .Y(n32));
  OR2X1    g27(.A(new_n50), .B(new_n36_1), .Y(new_n63));
  NOR3X1   g28(.A(\count[2] ), .B(\count[1] ), .C(\count[0] ), .Y(new_n64));
  XOR2X1   g29(.A(new_n64), .B(\count[3] ), .Y(new_n65));
  OAI21X1  g30(.A0(new_n65), .A1(new_n40_1), .B0(new_n36_1), .Y(new_n66));
  NAND3X1  g31(.A(\count[2] ), .B(\count[1] ), .C(\count[0] ), .Y(new_n67));
  XOR2X1   g32(.A(new_n67), .B(\count[3] ), .Y(new_n68));
  OAI21X1  g33(.A0(new_n68), .A1(new_n63), .B0(new_n66), .Y(new_n69));
  AND2X1   g34(.A(new_n69), .B(new_n49), .Y(n36));
  NOR4X1   g35(.A(\count[3] ), .B(\count[2] ), .C(\count[1] ), .D(\count[0] ), .Y(new_n71));
  XOR2X1   g36(.A(new_n71), .B(\count[4] ), .Y(new_n72));
  OAI21X1  g37(.A0(new_n72), .A1(new_n40_1), .B0(new_n36_1), .Y(new_n73));
  INVX1    g38(.A(\count[4] ), .Y(new_n74));
  XOR2X1   g39(.A(new_n44_1), .B(new_n74), .Y(new_n75));
  NAND3X1  g40(.A(new_n75), .B(new_n46), .C(up_down), .Y(new_n76));
  AOI21X1  g41(.A0(new_n76), .A1(new_n73), .B0(rst), .Y(n40));
  AND2X1   g42(.A(new_n71), .B(new_n74), .Y(new_n78));
  XOR2X1   g43(.A(new_n78), .B(\count[5] ), .Y(new_n79));
  OAI21X1  g44(.A0(new_n79), .A1(new_n40_1), .B0(new_n36_1), .Y(new_n80));
  AND2X1   g45(.A(new_n46), .B(up_down), .Y(new_n81));
  NOR2X1   g46(.A(new_n44_1), .B(new_n74), .Y(new_n82));
  XOR2X1   g47(.A(new_n82), .B(\count[5] ), .Y(new_n83));
  NAND2X1  g48(.A(new_n83), .B(new_n81), .Y(new_n84));
  AOI21X1  g49(.A0(new_n84), .A1(new_n80), .B0(rst), .Y(n44));
  OR4X1    g50(.A(\count[3] ), .B(\count[2] ), .C(\count[1] ), .D(\count[0] ), .Y(new_n86));
  NOR3X1   g51(.A(new_n86), .B(\count[5] ), .C(\count[4] ), .Y(new_n87));
  XOR2X1   g52(.A(new_n87), .B(\count[6] ), .Y(new_n88));
  OAI21X1  g53(.A0(new_n88), .A1(new_n40_1), .B0(new_n36_1), .Y(new_n89));
  NOR2X1   g54(.A(new_n45), .B(new_n44_1), .Y(new_n90));
  XOR2X1   g55(.A(new_n90), .B(\count[6] ), .Y(new_n91));
  NAND2X1  g56(.A(new_n91), .B(new_n81), .Y(new_n92));
  AOI21X1  g57(.A0(new_n92), .A1(new_n89), .B0(rst), .Y(n48));
  NOR4X1   g58(.A(new_n86), .B(\count[6] ), .C(\count[5] ), .D(\count[4] ), .Y(new_n94));
  XOR2X1   g59(.A(new_n94), .B(\count[7] ), .Y(new_n95));
  OAI21X1  g60(.A0(new_n95), .A1(new_n40_1), .B0(new_n36_1), .Y(new_n96));
  NOR3X1   g61(.A(new_n45), .B(new_n44_1), .C(new_n42), .Y(new_n97));
  XOR2X1   g62(.A(new_n97), .B(\count[7] ), .Y(new_n98));
  NAND2X1  g63(.A(new_n98), .B(new_n81), .Y(new_n99));
  AOI21X1  g64(.A0(new_n99), .A1(new_n96), .B0(rst), .Y(n52));
  always @ (posedge clock) begin
    \count[0]  <= n24;
    \count[1]  <= n28;
    \count[2]  <= n32;
    \count[3]  <= n36;
    \count[4]  <= n40;
    \count[5]  <= n44;
    \count[6]  <= n48;
    \count[7]  <= n52;
  end
endmodule


