// Benchmark "four_bit_multiplier" written by ABC on Wed Jun 26 15:22:12 2024

module four_bit_multiplier ( 
    \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ,
    \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7]   );
  input  \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ;
  output \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] ;
  wire new_n20, new_n21, new_n23, new_n24, new_n25, new_n26, new_n27,
    new_n28, new_n30, new_n31, new_n32, new_n33, new_n34, new_n35, new_n36,
    new_n37, new_n38, new_n39, new_n40, new_n41, new_n43, new_n44, new_n45,
    new_n46, new_n47, new_n48, new_n49, new_n50, new_n51, new_n52, new_n53,
    new_n54, new_n55, new_n56, new_n57, new_n59, new_n60, new_n61, new_n62,
    new_n63, new_n64, new_n65, new_n66, new_n67, new_n68, new_n69, new_n70,
    new_n71;
  AND2X1   g00(.A(\B[0] ), .B(\A[0] ), .Y(\out[2] ));
  AND2X1   g01(.A(\B[0] ), .B(\A[1] ), .Y(new_n20));
  AND2X1   g02(.A(\B[1] ), .B(\A[0] ), .Y(new_n21));
  XOR2X1   g03(.A(new_n21), .B(new_n20), .Y(\out[3] ));
  AND2X1   g04(.A(\B[0] ), .B(\A[2] ), .Y(new_n23));
  AND2X1   g05(.A(\B[1] ), .B(\A[1] ), .Y(new_n24));
  XOR2X1   g06(.A(new_n24), .B(new_n23), .Y(new_n25));
  AND2X1   g07(.A(new_n21), .B(new_n20), .Y(new_n26));
  XOR2X1   g08(.A(new_n26), .B(new_n25), .Y(new_n27));
  AND2X1   g09(.A(\B[2] ), .B(\A[0] ), .Y(new_n28));
  XOR2X1   g10(.A(new_n28), .B(new_n27), .Y(\out[4] ));
  AND2X1   g11(.A(\B[0] ), .B(\A[3] ), .Y(new_n30));
  AND2X1   g12(.A(\B[1] ), .B(\A[2] ), .Y(new_n31));
  XOR2X1   g13(.A(new_n31), .B(new_n30), .Y(new_n32));
  AND2X1   g14(.A(new_n24), .B(new_n23), .Y(new_n33));
  AOI21X1  g15(.A0(new_n26), .A1(new_n25), .B0(new_n33), .Y(new_n34));
  XOR2X1   g16(.A(new_n34), .B(new_n32), .Y(new_n35));
  AND2X1   g17(.A(\B[2] ), .B(\A[1] ), .Y(new_n36));
  XOR2X1   g18(.A(new_n36), .B(new_n35), .Y(new_n37));
  NAND2X1  g19(.A(new_n28), .B(new_n27), .Y(new_n38));
  INVX1    g20(.A(new_n38), .Y(new_n39));
  XOR2X1   g21(.A(new_n39), .B(new_n37), .Y(new_n40));
  NAND2X1  g22(.A(\B[3] ), .B(\A[0] ), .Y(new_n41));
  XOR2X1   g23(.A(new_n41), .B(new_n40), .Y(\out[5] ));
  AND2X1   g24(.A(\B[1] ), .B(\A[3] ), .Y(new_n43));
  NAND3X1  g25(.A(new_n32), .B(new_n26), .C(new_n25), .Y(new_n44));
  AND2X1   g26(.A(new_n31), .B(new_n30), .Y(new_n45));
  AOI21X1  g27(.A0(new_n33), .A1(new_n32), .B0(new_n45), .Y(new_n46));
  AND2X1   g28(.A(new_n46), .B(new_n44), .Y(new_n47));
  XOR2X1   g29(.A(new_n47), .B(new_n43), .Y(new_n48));
  AND2X1   g30(.A(\B[2] ), .B(\A[2] ), .Y(new_n49));
  XOR2X1   g31(.A(new_n49), .B(new_n48), .Y(new_n50));
  NAND2X1  g32(.A(\B[2] ), .B(\A[1] ), .Y(new_n51));
  OR2X1    g33(.A(new_n51), .B(new_n35), .Y(new_n52));
  OAI21X1  g34(.A0(new_n38), .A1(new_n37), .B0(new_n52), .Y(new_n53));
  XOR2X1   g35(.A(new_n53), .B(new_n50), .Y(new_n54));
  NAND2X1  g36(.A(\B[3] ), .B(\A[1] ), .Y(new_n55));
  XOR2X1   g37(.A(new_n55), .B(new_n54), .Y(new_n56));
  NOR2X1   g38(.A(new_n41), .B(new_n40), .Y(new_n57));
  XOR2X1   g39(.A(new_n57), .B(new_n56), .Y(\out[6] ));
  INVX1    g40(.A(new_n43), .Y(new_n59));
  AOI21X1  g41(.A0(new_n46), .A1(new_n44), .B0(new_n59), .Y(new_n60));
  AND2X1   g42(.A(\B[2] ), .B(\A[3] ), .Y(new_n61));
  XOR2X1   g43(.A(new_n61), .B(new_n60), .Y(new_n62));
  INVX1    g44(.A(new_n49), .Y(new_n63));
  XOR2X1   g45(.A(new_n63), .B(new_n48), .Y(new_n64));
  NOR2X1   g46(.A(new_n63), .B(new_n48), .Y(new_n65));
  AOI21X1  g47(.A0(new_n53), .A1(new_n64), .B0(new_n65), .Y(new_n66));
  XOR2X1   g48(.A(new_n66), .B(new_n62), .Y(new_n67));
  AND2X1   g49(.A(\B[3] ), .B(\A[2] ), .Y(new_n68));
  XOR2X1   g50(.A(new_n68), .B(new_n67), .Y(new_n69));
  NOR2X1   g51(.A(new_n55), .B(new_n54), .Y(new_n70));
  AOI21X1  g52(.A0(new_n57), .A1(new_n56), .B0(new_n70), .Y(new_n71));
  XOR2X1   g53(.A(new_n71), .B(new_n69), .Y(\out[7] ));
  ZERO     g54(.Y(\out[0] ));
  ZERO     g55(.Y(\out[1] ));
endmodule


