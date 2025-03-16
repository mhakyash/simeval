// Benchmark "nor_4to1_mux" written by ABC on Wed Jun 26 15:22:04 2024

module nor_4to1_mux ( 
    \data0[0] , \data0[1] , \data0[2] , \data0[3] , \data1[0] , \data1[1] ,
    \data1[2] , \data1[3] , \data2[0] , \data2[1] , \data2[2] , \data2[3] ,
    \data3[0] , \data3[1] , \data3[2] , \data3[3] , \sel[0] , \sel[1] ,
    \out[0] , \out[1] , \out[2] , \out[3]   );
  input  \data0[0] , \data0[1] , \data0[2] , \data0[3] , \data1[0] ,
    \data1[1] , \data1[2] , \data1[3] , \data2[0] , \data2[1] , \data2[2] ,
    \data2[3] , \data3[0] , \data3[1] , \data3[2] , \data3[3] , \sel[0] ,
    \sel[1] ;
  output \out[0] , \out[1] , \out[2] , \out[3] ;
  wire new_n23, new_n24, new_n25, new_n26, new_n27, new_n28, new_n29,
    new_n30, new_n31, new_n32, new_n33, new_n34, new_n35, new_n37, new_n38,
    new_n39, new_n41, new_n42, new_n43, new_n45, new_n46, new_n47;
  NOR2X1   g00(.A(\data3[0] ), .B(\data2[0] ), .Y(new_n23));
  OAI21X1  g01(.A0(\data1[0] ), .A1(\data0[0] ), .B0(\sel[0] ), .Y(new_n24));
  INVX1    g02(.A(\sel[0] ), .Y(new_n25));
  INVX1    g03(.A(\sel[1] ), .Y(new_n26));
  NOR2X1   g04(.A(\data1[0] ), .B(\data0[0] ), .Y(new_n27));
  NOR4X1   g05(.A(new_n27), .B(new_n23), .C(new_n26), .D(new_n25), .Y(new_n28));
  OAI21X1  g06(.A0(new_n24), .A1(new_n23), .B0(new_n28), .Y(new_n29));
  AND2X1   g07(.A(\sel[1] ), .B(new_n25), .Y(new_n30));
  AND2X1   g08(.A(new_n26), .B(\sel[0] ), .Y(new_n31));
  AOI22X1  g09(.A0(new_n31), .A1(new_n27), .B0(new_n30), .B1(new_n23), .Y(new_n32));
  AND2X1   g10(.A(\sel[1] ), .B(\sel[0] ), .Y(new_n33));
  NOR2X1   g11(.A(\sel[1] ), .B(\sel[0] ), .Y(new_n34));
  NOR4X1   g12(.A(new_n34), .B(new_n31), .C(new_n30), .D(new_n33), .Y(new_n35));
  AOI21X1  g13(.A0(new_n32), .A1(new_n29), .B0(new_n35), .Y(\out[0] ));
  OR4X1    g14(.A(\sel[1] ), .B(new_n25), .C(\data1[1] ), .D(\data0[1] ), .Y(new_n37));
  NOR2X1   g15(.A(\data3[1] ), .B(\data2[1] ), .Y(new_n38));
  OAI21X1  g16(.A0(new_n38), .A1(\sel[0] ), .B0(\sel[1] ), .Y(new_n39));
  AOI21X1  g17(.A0(new_n39), .A1(new_n37), .B0(new_n35), .Y(\out[1] ));
  OR4X1    g18(.A(\sel[1] ), .B(new_n25), .C(\data1[2] ), .D(\data0[2] ), .Y(new_n41));
  NOR2X1   g19(.A(\data3[2] ), .B(\data2[2] ), .Y(new_n42));
  OAI21X1  g20(.A0(new_n42), .A1(\sel[0] ), .B0(\sel[1] ), .Y(new_n43));
  AOI21X1  g21(.A0(new_n43), .A1(new_n41), .B0(new_n35), .Y(\out[2] ));
  OR4X1    g22(.A(\sel[1] ), .B(new_n25), .C(\data1[3] ), .D(\data0[3] ), .Y(new_n45));
  NOR2X1   g23(.A(\data3[3] ), .B(\data2[3] ), .Y(new_n46));
  OAI21X1  g24(.A0(new_n46), .A1(\sel[0] ), .B0(\sel[1] ), .Y(new_n47));
  AOI21X1  g25(.A0(new_n47), .A1(new_n45), .B0(new_n35), .Y(\out[3] ));
endmodule


