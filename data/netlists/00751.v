// Benchmark "Forwarding" written by ABC on Wed Jun 26 15:22:19 2024

module Forwarding ( 
    \EX_rs[0] , \EX_rs[1] , \EX_rs[2] , \EX_rs[3] , \EX_rs[4] , \EX_rt[0] ,
    \EX_rt[1] , \EX_rt[2] , \EX_rt[3] , \EX_rt[4] , \MEM_rd[0] ,
    \MEM_rd[1] , \MEM_rd[2] , \MEM_rd[3] , \MEM_rd[4] , \WB_rd[0] ,
    \WB_rd[1] , \WB_rd[2] , \WB_rd[3] , \WB_rd[4] , MEM_RegWrite,
    WB_RegWrite,
    \ForwardA[0] , \ForwardA[1] , \ForwardB[0] , \ForwardB[1]   );
  input  \EX_rs[0] , \EX_rs[1] , \EX_rs[2] , \EX_rs[3] , \EX_rs[4] ,
    \EX_rt[0] , \EX_rt[1] , \EX_rt[2] , \EX_rt[3] , \EX_rt[4] ,
    \MEM_rd[0] , \MEM_rd[1] , \MEM_rd[2] , \MEM_rd[3] , \MEM_rd[4] ,
    \WB_rd[0] , \WB_rd[1] , \WB_rd[2] , \WB_rd[3] , \WB_rd[4] ,
    MEM_RegWrite, WB_RegWrite;
  output \ForwardA[0] , \ForwardA[1] , \ForwardB[0] , \ForwardB[1] ;
  wire new_n27, new_n28, new_n29, new_n30, new_n31, new_n32, new_n33,
    new_n34, new_n35, new_n36, new_n37, new_n38, new_n39, new_n40, new_n41,
    new_n42, new_n43, new_n44, new_n45, new_n46, new_n48, new_n49, new_n50,
    new_n51, new_n53, new_n54, new_n55, new_n56, new_n57, new_n58, new_n59,
    new_n60, new_n61, new_n62, new_n63, new_n64, new_n65, new_n66, new_n67,
    new_n68, new_n70;
  XOR2X1   g00(.A(\MEM_rd[3] ), .B(\EX_rs[3] ), .Y(new_n27));
  XOR2X1   g01(.A(\MEM_rd[4] ), .B(\EX_rs[4] ), .Y(new_n28));
  OR2X1    g02(.A(new_n28), .B(new_n27), .Y(new_n29));
  XOR2X1   g03(.A(\MEM_rd[0] ), .B(\EX_rs[0] ), .Y(new_n30));
  XOR2X1   g04(.A(\MEM_rd[1] ), .B(\EX_rs[1] ), .Y(new_n31));
  XOR2X1   g05(.A(\MEM_rd[2] ), .B(\EX_rs[2] ), .Y(new_n32));
  NOR4X1   g06(.A(new_n32), .B(new_n31), .C(new_n30), .D(new_n29), .Y(new_n33));
  INVX1    g07(.A(WB_RegWrite), .Y(new_n34));
  NOR2X1   g08(.A(\WB_rd[1] ), .B(\WB_rd[0] ), .Y(new_n35));
  NOR3X1   g09(.A(\WB_rd[4] ), .B(\WB_rd[3] ), .C(\WB_rd[2] ), .Y(new_n36));
  AOI21X1  g10(.A0(new_n36), .A1(new_n35), .B0(new_n34), .Y(new_n37));
  INVX1    g11(.A(\EX_rs[3] ), .Y(new_n38));
  XOR2X1   g12(.A(\WB_rd[3] ), .B(new_n38), .Y(new_n39));
  INVX1    g13(.A(\EX_rs[4] ), .Y(new_n40));
  XOR2X1   g14(.A(\WB_rd[4] ), .B(new_n40), .Y(new_n41));
  XOR2X1   g15(.A(\WB_rd[0] ), .B(\EX_rs[0] ), .Y(new_n42));
  XOR2X1   g16(.A(\WB_rd[1] ), .B(\EX_rs[1] ), .Y(new_n43));
  XOR2X1   g17(.A(\WB_rd[2] ), .B(\EX_rs[2] ), .Y(new_n44));
  NOR3X1   g18(.A(new_n44), .B(new_n43), .C(new_n42), .Y(new_n45));
  NAND4X1  g19(.A(new_n45), .B(new_n41), .C(new_n39), .D(new_n37), .Y(new_n46));
  AOI21X1  g20(.A0(new_n33), .A1(MEM_RegWrite), .B0(new_n46), .Y(\ForwardA[0] ));
  INVX1    g21(.A(MEM_RegWrite), .Y(new_n48));
  OR4X1    g22(.A(new_n32), .B(new_n31), .C(new_n30), .D(new_n29), .Y(new_n49));
  OR2X1    g23(.A(\MEM_rd[1] ), .B(\MEM_rd[0] ), .Y(new_n50));
  NOR4X1   g24(.A(new_n50), .B(\MEM_rd[4] ), .C(\MEM_rd[3] ), .D(\MEM_rd[2] ), .Y(new_n51));
  NOR4X1   g25(.A(new_n51), .B(\ForwardA[0] ), .C(new_n49), .D(new_n48), .Y(\ForwardA[1] ));
  XOR2X1   g26(.A(\MEM_rd[3] ), .B(\EX_rt[3] ), .Y(new_n53));
  XOR2X1   g27(.A(\MEM_rd[4] ), .B(\EX_rt[4] ), .Y(new_n54));
  OR2X1    g28(.A(new_n54), .B(new_n53), .Y(new_n55));
  XOR2X1   g29(.A(\MEM_rd[0] ), .B(\EX_rt[0] ), .Y(new_n56));
  XOR2X1   g30(.A(\MEM_rd[1] ), .B(\EX_rt[1] ), .Y(new_n57));
  XOR2X1   g31(.A(\MEM_rd[2] ), .B(\EX_rt[2] ), .Y(new_n58));
  NOR4X1   g32(.A(new_n58), .B(new_n57), .C(new_n56), .D(new_n55), .Y(new_n59));
  INVX1    g33(.A(\EX_rt[3] ), .Y(new_n60));
  XOR2X1   g34(.A(\WB_rd[3] ), .B(new_n60), .Y(new_n61));
  INVX1    g35(.A(\EX_rt[4] ), .Y(new_n62));
  XOR2X1   g36(.A(\WB_rd[4] ), .B(new_n62), .Y(new_n63));
  XOR2X1   g37(.A(\WB_rd[0] ), .B(\EX_rt[0] ), .Y(new_n64));
  XOR2X1   g38(.A(\WB_rd[1] ), .B(\EX_rt[1] ), .Y(new_n65));
  XOR2X1   g39(.A(\WB_rd[2] ), .B(\EX_rt[2] ), .Y(new_n66));
  NOR3X1   g40(.A(new_n66), .B(new_n65), .C(new_n64), .Y(new_n67));
  NAND4X1  g41(.A(new_n67), .B(new_n63), .C(new_n61), .D(new_n37), .Y(new_n68));
  AOI21X1  g42(.A0(new_n59), .A1(MEM_RegWrite), .B0(new_n68), .Y(\ForwardB[0] ));
  OR4X1    g43(.A(new_n58), .B(new_n57), .C(new_n56), .D(new_n55), .Y(new_n70));
  NOR4X1   g44(.A(\ForwardB[0] ), .B(new_n70), .C(new_n51), .D(new_n48), .Y(\ForwardB[1] ));
endmodule


