// Benchmark "multiplication_module" written by ABC on Wed Jun 26 15:22:20 2024

module multiplication_module ( 
    \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ,
    \product[0] , \product[1] , \product[2] , \product[3] , \product[4] ,
    \product[5] , \product[6] , \product[7]   );
  input  \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ;
  output \product[0] , \product[1] , \product[2] , \product[3] , \product[4] ,
    \product[5] , \product[6] , \product[7] ;
  wire new_n18, new_n19, new_n21, new_n22, new_n23, new_n24, new_n25,
    new_n26, new_n27, new_n29, new_n30, new_n31, new_n32, new_n33, new_n34,
    new_n35, new_n36, new_n37, new_n38, new_n39, new_n40, new_n42, new_n43,
    new_n44, new_n45, new_n46, new_n47, new_n48, new_n49, new_n50, new_n51,
    new_n52, new_n53, new_n54, new_n56, new_n57, new_n58, new_n59, new_n60,
    new_n61, new_n62, new_n63, new_n64, new_n65, new_n66, new_n68, new_n69,
    new_n70, new_n71, new_n72, new_n73, new_n74, new_n75, new_n76, new_n77,
    new_n79;
  AND2X1   g00(.A(\B[0] ), .B(\A[0] ), .Y(\product[0] ));
  AND2X1   g01(.A(\B[0] ), .B(\A[1] ), .Y(new_n18));
  AND2X1   g02(.A(\B[1] ), .B(\A[0] ), .Y(new_n19));
  XOR2X1   g03(.A(new_n19), .B(new_n18), .Y(\product[1] ));
  AND2X1   g04(.A(\B[0] ), .B(\A[2] ), .Y(new_n21));
  AND2X1   g05(.A(\B[1] ), .B(\A[1] ), .Y(new_n22));
  XOR2X1   g06(.A(new_n22), .B(new_n21), .Y(new_n23));
  AND2X1   g07(.A(new_n19), .B(new_n18), .Y(new_n24));
  XOR2X1   g08(.A(new_n24), .B(new_n23), .Y(new_n25));
  NAND2X1  g09(.A(\B[2] ), .B(\A[0] ), .Y(new_n26));
  INVX1    g10(.A(new_n26), .Y(new_n27));
  XOR2X1   g11(.A(new_n27), .B(new_n25), .Y(\product[2] ));
  NAND2X1  g12(.A(\B[3] ), .B(\A[0] ), .Y(new_n29));
  AND2X1   g13(.A(\B[0] ), .B(\A[3] ), .Y(new_n30));
  XOR2X1   g14(.A(new_n30), .B(new_n29), .Y(new_n31));
  NAND2X1  g15(.A(\B[1] ), .B(\A[2] ), .Y(new_n32));
  XOR2X1   g16(.A(new_n32), .B(new_n31), .Y(new_n33));
  AND2X1   g17(.A(new_n22), .B(new_n21), .Y(new_n34));
  XOR2X1   g18(.A(new_n34), .B(new_n33), .Y(new_n35));
  AND2X1   g19(.A(\B[2] ), .B(\A[1] ), .Y(new_n36));
  XOR2X1   g20(.A(new_n36), .B(new_n35), .Y(new_n37));
  AND2X1   g21(.A(new_n24), .B(new_n23), .Y(new_n38));
  AND2X1   g22(.A(new_n27), .B(new_n25), .Y(new_n39));
  OR2X1    g23(.A(new_n39), .B(new_n38), .Y(new_n40));
  XOR2X1   g24(.A(new_n40), .B(new_n37), .Y(\product[3] ));
  NAND2X1  g25(.A(\B[3] ), .B(\A[1] ), .Y(new_n42));
  NAND2X1  g26(.A(\B[1] ), .B(\A[3] ), .Y(new_n43));
  XOR2X1   g27(.A(new_n43), .B(new_n42), .Y(new_n44));
  NAND4X1  g28(.A(\B[3] ), .B(\B[0] ), .C(\A[3] ), .D(\A[0] ), .Y(new_n45));
  OAI21X1  g29(.A0(new_n32), .A1(new_n31), .B0(new_n45), .Y(new_n46));
  XOR2X1   g30(.A(new_n46), .B(new_n44), .Y(new_n47));
  AND2X1   g31(.A(\B[2] ), .B(\A[2] ), .Y(new_n48));
  INVX1    g32(.A(new_n48), .Y(new_n49));
  XOR2X1   g33(.A(new_n49), .B(new_n47), .Y(new_n50));
  AND2X1   g34(.A(new_n34), .B(new_n33), .Y(new_n51));
  AOI21X1  g35(.A0(new_n36), .A1(new_n35), .B0(new_n51), .Y(new_n52));
  XOR2X1   g36(.A(new_n52), .B(new_n50), .Y(new_n53));
  AND2X1   g37(.A(new_n40), .B(new_n37), .Y(new_n54));
  XOR2X1   g38(.A(new_n54), .B(new_n53), .Y(\product[4] ));
  AND2X1   g39(.A(\B[3] ), .B(\A[2] ), .Y(new_n56));
  NAND4X1  g40(.A(\B[3] ), .B(\B[1] ), .C(\A[3] ), .D(\A[1] ), .Y(new_n57));
  XOR2X1   g41(.A(new_n57), .B(new_n56), .Y(new_n58));
  AND2X1   g42(.A(\B[2] ), .B(\A[3] ), .Y(new_n59));
  XOR2X1   g43(.A(new_n59), .B(new_n58), .Y(new_n60));
  AND2X1   g44(.A(new_n46), .B(new_n44), .Y(new_n61));
  AOI21X1  g45(.A0(new_n48), .A1(new_n47), .B0(new_n61), .Y(new_n62));
  XOR2X1   g46(.A(new_n62), .B(new_n60), .Y(new_n63));
  INVX1    g47(.A(new_n63), .Y(new_n64));
  NOR2X1   g48(.A(new_n52), .B(new_n50), .Y(new_n65));
  AOI21X1  g49(.A0(new_n54), .A1(new_n53), .B0(new_n65), .Y(new_n66));
  XOR2X1   g50(.A(new_n66), .B(new_n64), .Y(\product[5] ));
  NAND2X1  g51(.A(\B[3] ), .B(\A[3] ), .Y(new_n68));
  INVX1    g52(.A(new_n59), .Y(new_n69));
  INVX1    g53(.A(new_n56), .Y(new_n70));
  OR2X1    g54(.A(new_n57), .B(new_n70), .Y(new_n71));
  OAI21X1  g55(.A0(new_n69), .A1(new_n58), .B0(new_n71), .Y(new_n72));
  XOR2X1   g56(.A(new_n72), .B(new_n68), .Y(new_n73));
  NAND3X1  g57(.A(new_n63), .B(new_n54), .C(new_n53), .Y(new_n74));
  NOR2X1   g58(.A(new_n62), .B(new_n60), .Y(new_n75));
  AOI21X1  g59(.A0(new_n65), .A1(new_n63), .B0(new_n75), .Y(new_n76));
  AND2X1   g60(.A(new_n76), .B(new_n74), .Y(new_n77));
  XOR2X1   g61(.A(new_n77), .B(new_n73), .Y(\product[6] ));
  NAND3X1  g62(.A(new_n72), .B(\B[3] ), .C(\A[3] ), .Y(new_n79));
  OAI21X1  g63(.A0(new_n77), .A1(new_n73), .B0(new_n79), .Y(\product[7] ));
endmodule


