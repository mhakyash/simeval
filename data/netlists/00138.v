// Benchmark "mux_4to1_enable" written by ABC on Wed Jun 26 15:22:01 2024

module mux_4to1_enable ( 
    \in0[0] , \in0[1] , \in0[2] , \in0[3] , \in1[0] , \in1[1] , \in1[2] ,
    \in1[3] , \in2[0] , \in2[1] , \in2[2] , \in2[3] , \in3[0] , \in3[1] ,
    \in3[2] , \in3[3] , \sel[0] , \sel[1] , en,
    \out[0] , \out[1] , \out[2] , \out[3]   );
  input  \in0[0] , \in0[1] , \in0[2] , \in0[3] , \in1[0] , \in1[1] ,
    \in1[2] , \in1[3] , \in2[0] , \in2[1] , \in2[2] , \in2[3] , \in3[0] ,
    \in3[1] , \in3[2] , \in3[3] , \sel[0] , \sel[1] , en;
  output \out[0] , \out[1] , \out[2] , \out[3] ;
  wire new_n24, new_n25, new_n26, new_n27, new_n28, new_n29, new_n30,
    new_n31, new_n32, new_n33, new_n35, new_n36, new_n37, new_n38, new_n39,
    new_n40, new_n41, new_n43, new_n44, new_n45, new_n46, new_n47, new_n48,
    new_n49, new_n51, new_n52, new_n53, new_n54, new_n55, new_n56, new_n57;
  INVX1    g00(.A(en), .Y(new_n24));
  INVX1    g01(.A(\sel[0] ), .Y(new_n25));
  INVX1    g02(.A(\sel[1] ), .Y(new_n26));
  NAND3X1  g03(.A(new_n26), .B(new_n25), .C(\in0[0] ), .Y(new_n27));
  INVX1    g04(.A(\in1[0] ), .Y(new_n28));
  NOR3X1   g05(.A(\sel[1] ), .B(new_n25), .C(new_n28), .Y(new_n29));
  NAND3X1  g06(.A(\sel[1] ), .B(new_n25), .C(\in2[0] ), .Y(new_n30));
  OAI21X1  g07(.A0(new_n26), .A1(\sel[0] ), .B0(\in3[0] ), .Y(new_n31));
  AOI22X1  g08(.A0(new_n31), .A1(new_n30), .B0(new_n26), .B1(\sel[0] ), .Y(new_n32));
  OAI22X1  g09(.A0(new_n32), .A1(new_n29), .B0(\sel[1] ), .B1(\sel[0] ), .Y(new_n33));
  AOI21X1  g10(.A0(new_n33), .A1(new_n27), .B0(new_n24), .Y(\out[0] ));
  NAND3X1  g11(.A(new_n26), .B(new_n25), .C(\in0[1] ), .Y(new_n35));
  INVX1    g12(.A(\in1[1] ), .Y(new_n36));
  NOR3X1   g13(.A(\sel[1] ), .B(new_n25), .C(new_n36), .Y(new_n37));
  NAND3X1  g14(.A(\sel[1] ), .B(new_n25), .C(\in2[1] ), .Y(new_n38));
  OAI21X1  g15(.A0(new_n26), .A1(\sel[0] ), .B0(\in3[1] ), .Y(new_n39));
  AOI22X1  g16(.A0(new_n39), .A1(new_n38), .B0(new_n26), .B1(\sel[0] ), .Y(new_n40));
  OAI22X1  g17(.A0(new_n40), .A1(new_n37), .B0(\sel[1] ), .B1(\sel[0] ), .Y(new_n41));
  AOI21X1  g18(.A0(new_n41), .A1(new_n35), .B0(new_n24), .Y(\out[1] ));
  NAND3X1  g19(.A(new_n26), .B(new_n25), .C(\in0[2] ), .Y(new_n43));
  INVX1    g20(.A(\in1[2] ), .Y(new_n44));
  NOR3X1   g21(.A(\sel[1] ), .B(new_n25), .C(new_n44), .Y(new_n45));
  NAND3X1  g22(.A(\sel[1] ), .B(new_n25), .C(\in2[2] ), .Y(new_n46));
  OAI21X1  g23(.A0(new_n26), .A1(\sel[0] ), .B0(\in3[2] ), .Y(new_n47));
  AOI22X1  g24(.A0(new_n47), .A1(new_n46), .B0(new_n26), .B1(\sel[0] ), .Y(new_n48));
  OAI22X1  g25(.A0(new_n48), .A1(new_n45), .B0(\sel[1] ), .B1(\sel[0] ), .Y(new_n49));
  AOI21X1  g26(.A0(new_n49), .A1(new_n43), .B0(new_n24), .Y(\out[2] ));
  NAND3X1  g27(.A(new_n26), .B(new_n25), .C(\in0[3] ), .Y(new_n51));
  INVX1    g28(.A(\in1[3] ), .Y(new_n52));
  NOR3X1   g29(.A(\sel[1] ), .B(new_n25), .C(new_n52), .Y(new_n53));
  NAND3X1  g30(.A(\sel[1] ), .B(new_n25), .C(\in2[3] ), .Y(new_n54));
  OAI21X1  g31(.A0(new_n26), .A1(\sel[0] ), .B0(\in3[3] ), .Y(new_n55));
  AOI22X1  g32(.A0(new_n55), .A1(new_n54), .B0(new_n26), .B1(\sel[0] ), .Y(new_n56));
  OAI22X1  g33(.A0(new_n56), .A1(new_n53), .B0(\sel[1] ), .B1(\sel[0] ), .Y(new_n57));
  AOI21X1  g34(.A0(new_n57), .A1(new_n51), .B0(new_n24), .Y(\out[3] ));
endmodule


