// Benchmark "mux6to1_pipeline" written by ABC on Wed Jun 26 15:21:59 2024

module mux6to1_pipeline ( 
    \sel[0] , \sel[1] , \sel[2] , \data0[0] , \data0[1] , \data0[2] ,
    \data0[3] , \data1[0] , \data1[1] , \data1[2] , \data1[3] , \data2[0] ,
    \data2[1] , \data2[2] , \data2[3] , \data3[0] , \data3[1] , \data3[2] ,
    \data3[3] , \data4[0] , \data4[1] , \data4[2] , \data4[3] , \data5[0] ,
    \data5[1] , \data5[2] , \data5[3] ,
    \out[0] , \out[1] , \out[2] , \out[3]   );
  input  \sel[0] , \sel[1] , \sel[2] , \data0[0] , \data0[1] ,
    \data0[2] , \data0[3] , \data1[0] , \data1[1] , \data1[2] , \data1[3] ,
    \data2[0] , \data2[1] , \data2[2] , \data2[3] , \data3[0] , \data3[1] ,
    \data3[2] , \data3[3] , \data4[0] , \data4[1] , \data4[2] , \data4[3] ,
    \data5[0] , \data5[1] , \data5[2] , \data5[3] ;
  output \out[0] , \out[1] , \out[2] , \out[3] ;
  wire new_n32, new_n33, new_n34, new_n35, new_n36, new_n37, new_n38,
    new_n39, new_n40, new_n41, new_n42, new_n43, new_n44, new_n45, new_n46,
    new_n47, new_n48, new_n49, new_n50, new_n51, new_n52, new_n53, new_n54,
    new_n55, new_n56, new_n57, new_n58, new_n59, new_n60, new_n61, new_n62,
    new_n63, new_n65, new_n66, new_n67, new_n68, new_n69, new_n70, new_n71,
    new_n72, new_n73, new_n74, new_n75, new_n77, new_n78, new_n79, new_n80,
    new_n81, new_n82, new_n83, new_n84, new_n85, new_n86, new_n87, new_n89;
  INVX1    g00(.A(\sel[0] ), .Y(new_n32));
  NOR3X1   g01(.A(\sel[2] ), .B(\sel[1] ), .C(new_n32), .Y(new_n33));
  NOR3X1   g02(.A(\sel[2] ), .B(\sel[1] ), .C(\sel[0] ), .Y(new_n34));
  INVX1    g03(.A(\sel[2] ), .Y(new_n35));
  NOR3X1   g04(.A(new_n35), .B(\sel[1] ), .C(new_n32), .Y(new_n36));
  NOR3X1   g05(.A(new_n35), .B(\sel[1] ), .C(\sel[0] ), .Y(new_n37));
  INVX1    g06(.A(\sel[1] ), .Y(new_n38));
  NOR3X1   g07(.A(\sel[2] ), .B(new_n38), .C(new_n32), .Y(new_n39));
  NOR3X1   g08(.A(\sel[2] ), .B(new_n38), .C(\sel[0] ), .Y(new_n40));
  OR4X1    g09(.A(new_n40), .B(new_n39), .C(new_n37), .D(new_n36), .Y(new_n41));
  NOR3X1   g10(.A(new_n41), .B(new_n34), .C(new_n33), .Y(new_n42));
  AOI22X1  g11(.A0(new_n37), .A1(\data4[3] ), .B0(new_n36), .B1(\data5[3] ), .Y(new_n43));
  AOI22X1  g12(.A0(new_n40), .A1(\data2[3] ), .B0(new_n39), .B1(\data3[3] ), .Y(new_n44));
  AOI22X1  g13(.A0(new_n34), .A1(\data0[3] ), .B0(new_n33), .B1(\data1[3] ), .Y(new_n45));
  NAND2X1  g14(.A(new_n42), .B(\data5[3] ), .Y(new_n46));
  INVX1    g15(.A(\data5[3] ), .Y(new_n47));
  INVX1    g16(.A(\data4[0] ), .Y(new_n48));
  INVX1    g17(.A(\data5[0] ), .Y(new_n49));
  NAND3X1  g18(.A(\sel[2] ), .B(new_n38), .C(\sel[0] ), .Y(new_n50));
  NAND3X1  g19(.A(\sel[2] ), .B(new_n38), .C(new_n32), .Y(new_n51));
  OAI22X1  g20(.A0(new_n51), .A1(new_n48), .B0(new_n50), .B1(new_n49), .Y(new_n52));
  INVX1    g21(.A(\data2[0] ), .Y(new_n53));
  INVX1    g22(.A(\data3[0] ), .Y(new_n54));
  NAND3X1  g23(.A(new_n35), .B(\sel[1] ), .C(\sel[0] ), .Y(new_n55));
  NAND3X1  g24(.A(new_n35), .B(\sel[1] ), .C(new_n32), .Y(new_n56));
  OAI22X1  g25(.A0(new_n56), .A1(new_n53), .B0(new_n55), .B1(new_n54), .Y(new_n57));
  INVX1    g26(.A(\data1[0] ), .Y(new_n58));
  NAND3X1  g27(.A(new_n35), .B(new_n38), .C(\sel[0] ), .Y(new_n59));
  NAND2X1  g28(.A(new_n34), .B(\data0[0] ), .Y(new_n60));
  OAI21X1  g29(.A0(new_n59), .A1(new_n58), .B0(new_n60), .Y(new_n61));
  NOR3X1   g30(.A(new_n61), .B(new_n57), .C(new_n52), .Y(new_n62));
  MX2X1    g31(.A(new_n62), .B(new_n47), .S0(new_n42), .Y(new_n63));
  OAI21X1  g32(.A0(new_n63), .A1(new_n42), .B0(new_n46), .Y(\out[0] ));
  INVX1    g33(.A(\data4[1] ), .Y(new_n65));
  INVX1    g34(.A(\data5[1] ), .Y(new_n66));
  OAI22X1  g35(.A0(new_n51), .A1(new_n65), .B0(new_n50), .B1(new_n66), .Y(new_n67));
  INVX1    g36(.A(\data2[1] ), .Y(new_n68));
  INVX1    g37(.A(\data3[1] ), .Y(new_n69));
  OAI22X1  g38(.A0(new_n56), .A1(new_n68), .B0(new_n55), .B1(new_n69), .Y(new_n70));
  INVX1    g39(.A(\data1[1] ), .Y(new_n71));
  NAND2X1  g40(.A(new_n34), .B(\data0[1] ), .Y(new_n72));
  OAI21X1  g41(.A0(new_n59), .A1(new_n71), .B0(new_n72), .Y(new_n73));
  NOR3X1   g42(.A(new_n73), .B(new_n70), .C(new_n67), .Y(new_n74));
  MX2X1    g43(.A(new_n74), .B(new_n47), .S0(new_n42), .Y(new_n75));
  OAI21X1  g44(.A0(new_n75), .A1(new_n42), .B0(new_n46), .Y(\out[1] ));
  INVX1    g45(.A(\data4[2] ), .Y(new_n77));
  INVX1    g46(.A(\data5[2] ), .Y(new_n78));
  OAI22X1  g47(.A0(new_n51), .A1(new_n77), .B0(new_n50), .B1(new_n78), .Y(new_n79));
  INVX1    g48(.A(\data2[2] ), .Y(new_n80));
  INVX1    g49(.A(\data3[2] ), .Y(new_n81));
  OAI22X1  g50(.A0(new_n56), .A1(new_n80), .B0(new_n55), .B1(new_n81), .Y(new_n82));
  INVX1    g51(.A(\data1[2] ), .Y(new_n83));
  NAND2X1  g52(.A(new_n34), .B(\data0[2] ), .Y(new_n84));
  OAI21X1  g53(.A0(new_n59), .A1(new_n83), .B0(new_n84), .Y(new_n85));
  NOR3X1   g54(.A(new_n85), .B(new_n82), .C(new_n79), .Y(new_n86));
  MX2X1    g55(.A(new_n86), .B(new_n47), .S0(new_n42), .Y(new_n87));
  OAI21X1  g56(.A0(new_n87), .A1(new_n42), .B0(new_n46), .Y(\out[2] ));
  NAND3X1  g57(.A(new_n45), .B(new_n44), .C(new_n43), .Y(new_n89));
  MX2X1    g58(.A(new_n89), .B(\data5[3] ), .S0(new_n42), .Y(\out[3] ));
endmodule


