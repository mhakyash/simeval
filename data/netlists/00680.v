// Benchmark "mux16to1" written by ABC on Wed Jun 26 15:22:17 2024

module mux16to1 ( 
    \data_in[0] , \data_in[1] , \data_in[2] , \data_in[3] , \data_in[4] ,
    \data_in[5] , \data_in[6] , \data_in[7] , \data_in[8] , \data_in[9] ,
    \data_in[10] , \data_in[11] , \data_in[12] , \data_in[13] ,
    \data_in[14] , \data_in[15] , \select[0] , \select[1] , \select[2] ,
    \select[3] ,
    data_out  );
  input  \data_in[0] , \data_in[1] , \data_in[2] , \data_in[3] ,
    \data_in[4] , \data_in[5] , \data_in[6] , \data_in[7] , \data_in[8] ,
    \data_in[9] , \data_in[10] , \data_in[11] , \data_in[12] ,
    \data_in[13] , \data_in[14] , \data_in[15] , \select[0] , \select[1] ,
    \select[2] , \select[3] ;
  output data_out;
  wire new_n22, new_n23, new_n24, new_n25, new_n26, new_n27, new_n28,
    new_n29, new_n30, new_n31, new_n32, new_n33, new_n34, new_n35, new_n36,
    new_n37, new_n38, new_n39, new_n40, new_n41, new_n42, new_n43, new_n44,
    new_n45, new_n46, new_n47, new_n48, new_n49, new_n50, new_n51, new_n52,
    new_n53, new_n54, new_n55, new_n56, new_n57, new_n58, new_n59, new_n60,
    new_n61, new_n62, new_n63, new_n64, new_n65, new_n66, new_n67, new_n68,
    new_n69, new_n70, new_n71, new_n72;
  INVX1    g00(.A(\data_in[10] ), .Y(new_n22));
  INVX1    g01(.A(\data_in[11] ), .Y(new_n23));
  INVX1    g02(.A(\select[0] ), .Y(new_n24));
  INVX1    g03(.A(\select[1] ), .Y(new_n25));
  INVX1    g04(.A(\select[3] ), .Y(new_n26));
  OR4X1    g05(.A(new_n26), .B(\select[2] ), .C(new_n25), .D(new_n24), .Y(new_n27));
  OR4X1    g06(.A(new_n26), .B(\select[2] ), .C(new_n25), .D(\select[0] ), .Y(new_n28));
  OAI22X1  g07(.A0(new_n28), .A1(new_n22), .B0(new_n27), .B1(new_n23), .Y(new_n29));
  INVX1    g08(.A(\data_in[8] ), .Y(new_n30));
  INVX1    g09(.A(\data_in[9] ), .Y(new_n31));
  OR4X1    g10(.A(new_n26), .B(\select[2] ), .C(\select[1] ), .D(new_n24), .Y(new_n32));
  OR4X1    g11(.A(new_n26), .B(\select[2] ), .C(\select[1] ), .D(\select[0] ), .Y(new_n33));
  OAI22X1  g12(.A0(new_n33), .A1(new_n30), .B0(new_n32), .B1(new_n31), .Y(new_n34));
  INVX1    g13(.A(\data_in[14] ), .Y(new_n35));
  INVX1    g14(.A(\data_in[15] ), .Y(new_n36));
  NAND4X1  g15(.A(\select[3] ), .B(\select[2] ), .C(\select[1] ), .D(\select[0] ), .Y(new_n37));
  INVX1    g16(.A(\select[2] ), .Y(new_n38));
  OR4X1    g17(.A(new_n26), .B(new_n38), .C(new_n25), .D(\select[0] ), .Y(new_n39));
  OAI22X1  g18(.A0(new_n39), .A1(new_n35), .B0(new_n37), .B1(new_n36), .Y(new_n40));
  INVX1    g19(.A(\data_in[12] ), .Y(new_n41));
  INVX1    g20(.A(\data_in[13] ), .Y(new_n42));
  OR4X1    g21(.A(new_n26), .B(new_n38), .C(\select[1] ), .D(new_n24), .Y(new_n43));
  OR4X1    g22(.A(new_n26), .B(new_n38), .C(\select[1] ), .D(\select[0] ), .Y(new_n44));
  OAI22X1  g23(.A0(new_n44), .A1(new_n41), .B0(new_n43), .B1(new_n42), .Y(new_n45));
  NOR4X1   g24(.A(new_n45), .B(new_n40), .C(new_n34), .D(new_n29), .Y(new_n46));
  INVX1    g25(.A(\data_in[2] ), .Y(new_n47));
  INVX1    g26(.A(\data_in[3] ), .Y(new_n48));
  OR4X1    g27(.A(\select[3] ), .B(\select[2] ), .C(new_n25), .D(new_n24), .Y(new_n49));
  OR4X1    g28(.A(\select[3] ), .B(\select[2] ), .C(new_n25), .D(\select[0] ), .Y(new_n50));
  OAI22X1  g29(.A0(new_n50), .A1(new_n47), .B0(new_n49), .B1(new_n48), .Y(new_n51));
  INVX1    g30(.A(\data_in[0] ), .Y(new_n52));
  INVX1    g31(.A(\data_in[1] ), .Y(new_n53));
  OR4X1    g32(.A(\select[3] ), .B(\select[2] ), .C(\select[1] ), .D(new_n24), .Y(new_n54));
  OR4X1    g33(.A(\select[3] ), .B(\select[2] ), .C(\select[1] ), .D(\select[0] ), .Y(new_n55));
  OAI22X1  g34(.A0(new_n55), .A1(new_n52), .B0(new_n54), .B1(new_n53), .Y(new_n56));
  INVX1    g35(.A(\data_in[6] ), .Y(new_n57));
  INVX1    g36(.A(\data_in[7] ), .Y(new_n58));
  OR4X1    g37(.A(\select[3] ), .B(new_n38), .C(new_n25), .D(new_n24), .Y(new_n59));
  OR4X1    g38(.A(\select[3] ), .B(new_n38), .C(new_n25), .D(\select[0] ), .Y(new_n60));
  OAI22X1  g39(.A0(new_n60), .A1(new_n57), .B0(new_n59), .B1(new_n58), .Y(new_n61));
  INVX1    g40(.A(\data_in[4] ), .Y(new_n62));
  INVX1    g41(.A(\data_in[5] ), .Y(new_n63));
  OR4X1    g42(.A(\select[3] ), .B(new_n38), .C(\select[1] ), .D(new_n24), .Y(new_n64));
  OR4X1    g43(.A(\select[3] ), .B(new_n38), .C(\select[1] ), .D(\select[0] ), .Y(new_n65));
  OAI22X1  g44(.A0(new_n65), .A1(new_n62), .B0(new_n64), .B1(new_n63), .Y(new_n66));
  NOR4X1   g45(.A(new_n66), .B(new_n61), .C(new_n56), .D(new_n51), .Y(new_n67));
  NAND4X1  g46(.A(new_n33), .B(new_n32), .C(new_n28), .D(new_n27), .Y(new_n68));
  NAND4X1  g47(.A(new_n44), .B(new_n43), .C(new_n39), .D(new_n37), .Y(new_n69));
  NAND4X1  g48(.A(new_n55), .B(new_n54), .C(new_n50), .D(new_n49), .Y(new_n70));
  NAND4X1  g49(.A(new_n65), .B(new_n64), .C(new_n60), .D(new_n59), .Y(new_n71));
  NOR4X1   g50(.A(new_n71), .B(new_n70), .C(new_n69), .D(new_n68), .Y(new_n72));
  AOI21X1  g51(.A0(new_n67), .A1(new_n46), .B0(new_n72), .Y(data_out));
endmodule


