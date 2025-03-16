// Benchmark "binary_puncture_encoder" written by ABC on Wed Jun 26 15:22:17 2024

module binary_puncture_encoder ( 
    \din[0] , \din[1] , \din[2] , \din[3] , \din[4] , \din[5] , \din[6] ,
    \din[7] , \mask[0] , \mask[1] , \mask[2] , \mask[3] , \mask[4] ,
    \mask[5] , \mask[6] , \mask[7] ,
    \dout[0] , \dout[1] , \dout[2] , \dout[3] , \dout[4] , \dout[5] ,
    \dout[6] , \dout[7] , \ndout[0] , \ndout[1] , \ndout[2] , \ndout[3]   );
  input  \din[0] , \din[1] , \din[2] , \din[3] , \din[4] , \din[5] ,
    \din[6] , \din[7] , \mask[0] , \mask[1] , \mask[2] , \mask[3] ,
    \mask[4] , \mask[5] , \mask[6] , \mask[7] ;
  output \dout[0] , \dout[1] , \dout[2] , \dout[3] , \dout[4] , \dout[5] ,
    \dout[6] , \dout[7] , \ndout[0] , \ndout[1] , \ndout[2] , \ndout[3] ;
  wire new_n29, new_n30, new_n31, new_n32, new_n33, new_n34, new_n35,
    new_n36, new_n37, new_n38, new_n39, new_n40, new_n41, new_n42, new_n43,
    new_n44, new_n45, new_n46, new_n47, new_n49, new_n51, new_n52, new_n53,
    new_n54, new_n55, new_n57, new_n58, new_n59, new_n60, new_n61, new_n62,
    new_n63, new_n65, new_n66, new_n67, new_n68, new_n69, new_n70, new_n72,
    new_n73, new_n74, new_n75, new_n76, new_n77, new_n79, new_n80, new_n81,
    new_n82, new_n83, new_n85, new_n86, new_n88, new_n90;
  NAND4X1  g00(.A(\mask[3] ), .B(\mask[2] ), .C(\mask[1] ), .D(\mask[0] ), .Y(new_n29));
  NAND4X1  g01(.A(\mask[7] ), .B(\mask[6] ), .C(\mask[5] ), .D(\mask[4] ), .Y(new_n30));
  NOR2X1   g02(.A(new_n30), .B(new_n29), .Y(new_n31));
  INVX1    g03(.A(\mask[3] ), .Y(new_n32));
  INVX1    g04(.A(\mask[6] ), .Y(new_n33));
  OR4X1    g05(.A(\mask[7] ), .B(new_n33), .C(new_n32), .D(\mask[2] ), .Y(new_n34));
  INVX1    g06(.A(\mask[1] ), .Y(new_n35));
  NAND4X1  g07(.A(\mask[5] ), .B(\mask[4] ), .C(new_n35), .D(\mask[0] ), .Y(new_n36));
  NOR2X1   g08(.A(new_n36), .B(new_n34), .Y(new_n37));
  INVX1    g09(.A(\mask[2] ), .Y(new_n38));
  OR4X1    g10(.A(new_n32), .B(new_n38), .C(new_n35), .D(\mask[0] ), .Y(new_n39));
  INVX1    g11(.A(\mask[5] ), .Y(new_n40));
  NAND4X1  g12(.A(\mask[7] ), .B(new_n33), .C(new_n40), .D(\mask[4] ), .Y(new_n41));
  NOR2X1   g13(.A(new_n41), .B(new_n39), .Y(new_n42));
  INVX1    g14(.A(\mask[7] ), .Y(new_n43));
  OR4X1    g15(.A(new_n43), .B(new_n33), .C(new_n40), .D(\mask[4] ), .Y(new_n44));
  NAND4X1  g16(.A(new_n32), .B(\mask[2] ), .C(\mask[1] ), .D(\mask[0] ), .Y(new_n45));
  AOI21X1  g17(.A0(new_n45), .A1(new_n39), .B0(new_n44), .Y(new_n46));
  NOR3X1   g18(.A(new_n46), .B(new_n42), .C(new_n37), .Y(new_n47));
  AND2X1   g19(.A(new_n31), .B(\din[0] ), .Y(\dout[0] ));
  INVX1    g20(.A(\din[1] ), .Y(new_n49));
  NOR3X1   g21(.A(new_n30), .B(new_n29), .C(new_n49), .Y(\dout[1] ));
  NOR4X1   g22(.A(new_n46), .B(new_n42), .C(new_n37), .D(new_n31), .Y(new_n51));
  NAND2X1  g23(.A(new_n31), .B(\din[2] ), .Y(new_n52));
  NOR2X1   g24(.A(new_n45), .B(new_n44), .Y(new_n53));
  NOR2X1   g25(.A(new_n44), .B(new_n39), .Y(new_n54));
  AOI22X1  g26(.A0(new_n54), .A1(\din[1] ), .B0(new_n53), .B1(\din[0] ), .Y(new_n55));
  AOI21X1  g27(.A0(new_n55), .A1(new_n52), .B0(new_n51), .Y(\dout[2] ));
  AOI22X1  g28(.A0(new_n42), .A1(\din[2] ), .B0(new_n37), .B1(\din[0] ), .Y(new_n57));
  INVX1    g29(.A(\din[3] ), .Y(new_n58));
  NOR3X1   g30(.A(new_n30), .B(new_n29), .C(new_n58), .Y(new_n59));
  NOR3X1   g31(.A(new_n45), .B(new_n44), .C(new_n49), .Y(new_n60));
  INVX1    g32(.A(\din[2] ), .Y(new_n61));
  NOR3X1   g33(.A(new_n44), .B(new_n39), .C(new_n61), .Y(new_n62));
  NOR3X1   g34(.A(new_n62), .B(new_n60), .C(new_n59), .Y(new_n63));
  AOI21X1  g35(.A0(new_n63), .A1(new_n57), .B0(new_n51), .Y(\dout[3] ));
  AOI22X1  g36(.A0(new_n42), .A1(\din[3] ), .B0(new_n37), .B1(\din[4] ), .Y(new_n65));
  INVX1    g37(.A(\din[4] ), .Y(new_n66));
  NOR3X1   g38(.A(new_n30), .B(new_n29), .C(new_n66), .Y(new_n67));
  NOR3X1   g39(.A(new_n45), .B(new_n44), .C(new_n61), .Y(new_n68));
  NOR3X1   g40(.A(new_n44), .B(new_n39), .C(new_n58), .Y(new_n69));
  NOR3X1   g41(.A(new_n69), .B(new_n68), .C(new_n67), .Y(new_n70));
  AOI21X1  g42(.A0(new_n70), .A1(new_n65), .B0(new_n51), .Y(\dout[4] ));
  AOI22X1  g43(.A0(new_n42), .A1(\din[4] ), .B0(new_n37), .B1(\din[5] ), .Y(new_n72));
  INVX1    g44(.A(\din[5] ), .Y(new_n73));
  NOR3X1   g45(.A(new_n30), .B(new_n29), .C(new_n73), .Y(new_n74));
  NOR3X1   g46(.A(new_n45), .B(new_n44), .C(new_n58), .Y(new_n75));
  NOR3X1   g47(.A(new_n44), .B(new_n39), .C(new_n66), .Y(new_n76));
  NOR3X1   g48(.A(new_n76), .B(new_n75), .C(new_n74), .Y(new_n77));
  AOI21X1  g49(.A0(new_n77), .A1(new_n72), .B0(new_n51), .Y(\dout[5] ));
  AOI22X1  g50(.A0(new_n42), .A1(\din[7] ), .B0(new_n37), .B1(\din[6] ), .Y(new_n79));
  AND2X1   g51(.A(new_n31), .B(\din[6] ), .Y(new_n80));
  NOR3X1   g52(.A(new_n45), .B(new_n44), .C(new_n66), .Y(new_n81));
  NOR3X1   g53(.A(new_n44), .B(new_n39), .C(new_n73), .Y(new_n82));
  NOR3X1   g54(.A(new_n82), .B(new_n81), .C(new_n80), .Y(new_n83));
  AOI21X1  g55(.A0(new_n83), .A1(new_n79), .B0(new_n51), .Y(\dout[6] ));
  NAND2X1  g56(.A(new_n31), .B(\din[7] ), .Y(new_n85));
  AOI22X1  g57(.A0(new_n54), .A1(\din[6] ), .B0(new_n53), .B1(\din[5] ), .Y(new_n86));
  AOI21X1  g58(.A0(new_n86), .A1(new_n85), .B0(new_n51), .Y(\dout[7] ));
  NOR2X1   g59(.A(new_n42), .B(new_n37), .Y(new_n88));
  NOR2X1   g60(.A(new_n51), .B(new_n88), .Y(\ndout[0] ));
  OR4X1    g61(.A(new_n46), .B(new_n42), .C(new_n37), .D(new_n31), .Y(new_n90));
  AND2X1   g62(.A(new_n90), .B(new_n46), .Y(\ndout[1] ));
  NOR2X1   g63(.A(new_n51), .B(new_n47), .Y(\ndout[2] ));
  NOR2X1   g64(.A(new_n30), .B(new_n29), .Y(\ndout[3] ));
endmodule


