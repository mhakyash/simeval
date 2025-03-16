// Benchmark "booth_multiplier" written by ABC on Wed Jun 26 15:22:07 2024

module booth_multiplier ( 
    \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ,
    \Y[0] , \Y[1] , \Y[2] , \Y[3] , \Y[4] , \Y[5] , \Y[6] , \Y[7]   );
  input  \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ;
  output \Y[0] , \Y[1] , \Y[2] , \Y[3] , \Y[4] , \Y[5] , \Y[6] , \Y[7] ;
  wire new_n18, new_n19, new_n21, new_n22, new_n23, new_n24, new_n25,
    new_n26, new_n28, new_n29, new_n30, new_n31, new_n32, new_n33, new_n34,
    new_n35, new_n36, new_n37, new_n38, new_n39, new_n40, new_n42, new_n43,
    new_n44, new_n45, new_n46, new_n47, new_n48, new_n49, new_n50, new_n51,
    new_n52, new_n53, new_n54, new_n55, new_n56, new_n57, new_n58, new_n59,
    new_n61, new_n62, new_n63, new_n64, new_n65, new_n66, new_n67, new_n68,
    new_n69, new_n70, new_n71, new_n72, new_n73, new_n74, new_n75, new_n76,
    new_n77, new_n78, new_n80, new_n81, new_n82, new_n83, new_n84, new_n85,
    new_n86, new_n87, new_n88, new_n89, new_n90, new_n91, new_n92, new_n93,
    new_n94, new_n96, new_n97, new_n98, new_n99, new_n100, new_n101,
    new_n102, new_n103;
  AND2X1   g00(.A(\B[0] ), .B(\A[0] ), .Y(\Y[0] ));
  AND2X1   g01(.A(\B[0] ), .B(\A[1] ), .Y(new_n18));
  AND2X1   g02(.A(\B[1] ), .B(\A[0] ), .Y(new_n19));
  XOR2X1   g03(.A(new_n19), .B(new_n18), .Y(\Y[1] ));
  AND2X1   g04(.A(\B[0] ), .B(\A[2] ), .Y(new_n21));
  AND2X1   g05(.A(\B[1] ), .B(\A[1] ), .Y(new_n22));
  XOR2X1   g06(.A(new_n22), .B(new_n21), .Y(new_n23));
  NAND4X1  g07(.A(\B[1] ), .B(\B[0] ), .C(\A[1] ), .D(\A[0] ), .Y(new_n24));
  XOR2X1   g08(.A(new_n24), .B(new_n23), .Y(new_n25));
  NAND2X1  g09(.A(\B[2] ), .B(\A[0] ), .Y(new_n26));
  XOR2X1   g10(.A(new_n26), .B(new_n25), .Y(\Y[2] ));
  NAND2X1  g11(.A(\B[3] ), .B(\A[0] ), .Y(new_n28));
  AND2X1   g12(.A(\B[0] ), .B(\A[3] ), .Y(new_n29));
  XOR2X1   g13(.A(new_n29), .B(new_n28), .Y(new_n30));
  NAND2X1  g14(.A(\B[1] ), .B(\A[2] ), .Y(new_n31));
  XOR2X1   g15(.A(new_n31), .B(new_n30), .Y(new_n32));
  AND2X1   g16(.A(new_n22), .B(new_n21), .Y(new_n33));
  XOR2X1   g17(.A(new_n33), .B(new_n32), .Y(new_n34));
  AND2X1   g18(.A(\B[2] ), .B(\A[1] ), .Y(new_n35));
  XOR2X1   g19(.A(new_n35), .B(new_n34), .Y(new_n36));
  INVX1    g20(.A(new_n36), .Y(new_n37));
  NAND3X1  g21(.A(new_n23), .B(new_n19), .C(new_n18), .Y(new_n38));
  OAI21X1  g22(.A0(new_n26), .A1(new_n25), .B0(new_n38), .Y(new_n39));
  XOR2X1   g23(.A(new_n39), .B(new_n37), .Y(new_n40));
  INVX1    g24(.A(new_n40), .Y(\Y[3] ));
  AND2X1   g25(.A(\B[3] ), .B(\A[1] ), .Y(new_n42));
  AND2X1   g26(.A(\B[1] ), .B(\A[3] ), .Y(new_n43));
  XOR2X1   g27(.A(new_n43), .B(new_n42), .Y(new_n44));
  NAND4X1  g28(.A(\B[3] ), .B(\B[0] ), .C(\A[3] ), .D(\A[0] ), .Y(new_n45));
  OAI21X1  g29(.A0(new_n31), .A1(new_n30), .B0(new_n45), .Y(new_n46));
  XOR2X1   g30(.A(new_n46), .B(new_n44), .Y(new_n47));
  AND2X1   g31(.A(\B[2] ), .B(\A[2] ), .Y(new_n48));
  XOR2X1   g32(.A(new_n48), .B(new_n47), .Y(new_n49));
  NAND4X1  g33(.A(\B[1] ), .B(\B[0] ), .C(\A[2] ), .D(\A[1] ), .Y(new_n50));
  XOR2X1   g34(.A(new_n50), .B(new_n32), .Y(new_n51));
  INVX1    g35(.A(new_n35), .Y(new_n52));
  NAND2X1  g36(.A(new_n33), .B(new_n32), .Y(new_n53));
  OAI21X1  g37(.A0(new_n52), .A1(new_n51), .B0(new_n53), .Y(new_n54));
  XOR2X1   g38(.A(new_n54), .B(new_n49), .Y(new_n55));
  NAND2X1  g39(.A(new_n39), .B(new_n36), .Y(new_n56));
  XOR2X1   g40(.A(new_n56), .B(new_n55), .Y(new_n57));
  INVX1    g41(.A(\Y[0] ), .Y(new_n58));
  XOR2X1   g42(.A(\Y[1] ), .B(new_n58), .Y(new_n59));
  XOR2X1   g43(.A(new_n59), .B(new_n57), .Y(\Y[4] ));
  NAND2X1  g44(.A(\B[3] ), .B(\A[2] ), .Y(new_n61));
  NAND4X1  g45(.A(\B[3] ), .B(\B[1] ), .C(\A[3] ), .D(\A[1] ), .Y(new_n62));
  XOR2X1   g46(.A(new_n62), .B(new_n61), .Y(new_n63));
  AND2X1   g47(.A(\B[2] ), .B(\A[3] ), .Y(new_n64));
  INVX1    g48(.A(new_n64), .Y(new_n65));
  XOR2X1   g49(.A(new_n65), .B(new_n63), .Y(new_n66));
  AND2X1   g50(.A(new_n46), .B(new_n44), .Y(new_n67));
  AOI21X1  g51(.A0(new_n48), .A1(new_n47), .B0(new_n67), .Y(new_n68));
  XOR2X1   g52(.A(new_n68), .B(new_n66), .Y(new_n69));
  AND2X1   g53(.A(new_n54), .B(new_n49), .Y(new_n70));
  XOR2X1   g54(.A(new_n70), .B(new_n69), .Y(new_n71));
  AND2X1   g55(.A(new_n39), .B(new_n36), .Y(new_n72));
  AND2X1   g56(.A(new_n72), .B(new_n55), .Y(new_n73));
  XOR2X1   g57(.A(new_n73), .B(new_n71), .Y(new_n74));
  INVX1    g58(.A(\Y[2] ), .Y(new_n75));
  XOR2X1   g59(.A(new_n75), .B(\Y[1] ), .Y(new_n76));
  XOR2X1   g60(.A(new_n76), .B(new_n74), .Y(new_n77));
  OR2X1    g61(.A(new_n59), .B(new_n57), .Y(new_n78));
  XOR2X1   g62(.A(new_n78), .B(new_n77), .Y(\Y[5] ));
  NAND2X1  g63(.A(\B[3] ), .B(\A[3] ), .Y(new_n80));
  NOR2X1   g64(.A(new_n62), .B(new_n61), .Y(new_n81));
  AOI21X1  g65(.A0(new_n64), .A1(new_n63), .B0(new_n81), .Y(new_n82));
  XOR2X1   g66(.A(new_n82), .B(new_n80), .Y(new_n83));
  NOR2X1   g67(.A(new_n68), .B(new_n66), .Y(new_n84));
  XOR2X1   g68(.A(new_n84), .B(new_n83), .Y(new_n85));
  AND2X1   g69(.A(new_n70), .B(new_n69), .Y(new_n86));
  XOR2X1   g70(.A(new_n86), .B(new_n85), .Y(new_n87));
  AND2X1   g71(.A(new_n73), .B(new_n71), .Y(new_n88));
  XOR2X1   g72(.A(new_n88), .B(new_n87), .Y(new_n89));
  XOR2X1   g73(.A(new_n40), .B(new_n75), .Y(new_n90));
  XOR2X1   g74(.A(new_n90), .B(new_n89), .Y(new_n91));
  XOR2X1   g75(.A(\Y[2] ), .B(\Y[1] ), .Y(new_n92));
  NAND2X1  g76(.A(new_n92), .B(new_n74), .Y(new_n93));
  OAI21X1  g77(.A0(new_n78), .A1(new_n77), .B0(new_n93), .Y(new_n94));
  XOR2X1   g78(.A(new_n94), .B(new_n91), .Y(\Y[6] ));
  NOR2X1   g79(.A(new_n82), .B(new_n80), .Y(new_n96));
  AND2X1   g80(.A(new_n84), .B(new_n83), .Y(new_n97));
  XOR2X1   g81(.A(new_n97), .B(new_n96), .Y(new_n98));
  AND2X1   g82(.A(new_n86), .B(new_n85), .Y(new_n99));
  AOI21X1  g83(.A0(new_n88), .A1(new_n87), .B0(new_n99), .Y(new_n100));
  XOR2X1   g84(.A(new_n100), .B(new_n98), .Y(new_n101));
  AND2X1   g85(.A(new_n90), .B(new_n89), .Y(new_n102));
  AOI21X1  g86(.A0(new_n94), .A1(new_n91), .B0(new_n102), .Y(new_n103));
  XOR2X1   g87(.A(new_n103), .B(new_n101), .Y(\Y[7] ));
endmodule


