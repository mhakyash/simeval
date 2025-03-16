// Benchmark "Comparator" written by ABC on Wed Jun 26 15:22:18 2024

module Comparator ( 
    \a[0] , \a[1] , \a[2] , \a[3] , \a[4] , \a[5] , \a[6] , \a[7] , \b[0] ,
    \b[1] , \b[2] , \b[3] , \b[4] , \b[5] , \b[6] , \b[7] ,
    eq, gt, lt  );
  input  \a[0] , \a[1] , \a[2] , \a[3] , \a[4] , \a[5] , \a[6] , \a[7] ,
    \b[0] , \b[1] , \b[2] , \b[3] , \b[4] , \b[5] , \b[6] , \b[7] ;
  output eq, gt, lt;
  wire new_n20, new_n21, new_n22, new_n23, new_n24, new_n25, new_n26,
    new_n27, new_n28, new_n29, new_n30, new_n31, new_n32, new_n33, new_n34,
    new_n35, new_n36, new_n37, new_n38, new_n39, new_n40, new_n41, new_n42,
    new_n43, new_n44, new_n45, new_n46, new_n47, new_n48, new_n49, new_n50,
    new_n51, new_n52, new_n53, new_n54, new_n55, new_n56, new_n57, new_n58,
    new_n59, new_n60, new_n61, new_n62, new_n63, new_n64, new_n65, new_n66,
    new_n67, new_n68, new_n72;
  XOR2X1   g00(.A(\b[2] ), .B(\a[2] ), .Y(new_n20));
  XOR2X1   g01(.A(\b[3] ), .B(\a[3] ), .Y(new_n21));
  XOR2X1   g02(.A(\b[0] ), .B(\a[0] ), .Y(new_n22));
  XOR2X1   g03(.A(\b[1] ), .B(\a[1] ), .Y(new_n23));
  NOR4X1   g04(.A(new_n23), .B(new_n22), .C(new_n21), .D(new_n20), .Y(new_n24));
  XOR2X1   g05(.A(\b[6] ), .B(\a[6] ), .Y(new_n25));
  XOR2X1   g06(.A(\b[7] ), .B(\a[7] ), .Y(new_n26));
  XOR2X1   g07(.A(\b[4] ), .B(\a[4] ), .Y(new_n27));
  XOR2X1   g08(.A(\b[5] ), .B(\a[5] ), .Y(new_n28));
  NOR4X1   g09(.A(new_n28), .B(new_n27), .C(new_n26), .D(new_n25), .Y(new_n29));
  XOR2X1   g10(.A(\b[7] ), .B(\a[7] ), .Y(new_n30));
  XOR2X1   g11(.A(\b[6] ), .B(\a[6] ), .Y(new_n31));
  XOR2X1   g12(.A(\b[5] ), .B(\a[5] ), .Y(new_n32));
  XOR2X1   g13(.A(\b[4] ), .B(\a[4] ), .Y(new_n33));
  OR4X1    g14(.A(new_n33), .B(new_n32), .C(new_n31), .D(new_n30), .Y(new_n34));
  INVX1    g15(.A(\a[1] ), .Y(new_n35));
  NOR2X1   g16(.A(\b[1] ), .B(new_n35), .Y(new_n36));
  XOR2X1   g17(.A(\b[3] ), .B(\a[3] ), .Y(new_n37));
  XOR2X1   g18(.A(\b[2] ), .B(\a[2] ), .Y(new_n38));
  NOR2X1   g19(.A(new_n38), .B(new_n37), .Y(new_n39));
  INVX1    g20(.A(\a[0] ), .Y(new_n40));
  XOR2X1   g21(.A(\b[1] ), .B(\a[1] ), .Y(new_n41));
  AOI21X1  g22(.A0(\b[0] ), .A1(new_n40), .B0(new_n41), .Y(new_n42));
  OAI21X1  g23(.A0(new_n42), .A1(new_n36), .B0(new_n39), .Y(new_n43));
  INVX1    g24(.A(\b[2] ), .Y(new_n44));
  AND2X1   g25(.A(new_n44), .B(\a[2] ), .Y(new_n45));
  INVX1    g26(.A(\a[3] ), .Y(new_n46));
  NOR2X1   g27(.A(\b[3] ), .B(new_n46), .Y(new_n47));
  XOR2X1   g28(.A(\b[3] ), .B(new_n46), .Y(new_n48));
  AOI21X1  g29(.A0(new_n48), .A1(new_n45), .B0(new_n47), .Y(new_n49));
  AOI21X1  g30(.A0(new_n49), .A1(new_n43), .B0(new_n34), .Y(new_n50));
  OR2X1    g31(.A(new_n31), .B(new_n30), .Y(new_n51));
  INVX1    g32(.A(\b[4] ), .Y(new_n52));
  AND2X1   g33(.A(new_n52), .B(\a[4] ), .Y(new_n53));
  INVX1    g34(.A(\a[5] ), .Y(new_n54));
  NOR2X1   g35(.A(\b[5] ), .B(new_n54), .Y(new_n55));
  XOR2X1   g36(.A(\b[5] ), .B(new_n54), .Y(new_n56));
  AOI21X1  g37(.A0(new_n56), .A1(new_n53), .B0(new_n55), .Y(new_n57));
  INVX1    g38(.A(\b[6] ), .Y(new_n58));
  AND2X1   g39(.A(new_n58), .B(\a[6] ), .Y(new_n59));
  INVX1    g40(.A(\a[7] ), .Y(new_n60));
  NOR2X1   g41(.A(\b[7] ), .B(new_n60), .Y(new_n61));
  XOR2X1   g42(.A(\b[7] ), .B(new_n60), .Y(new_n62));
  AOI21X1  g43(.A0(new_n62), .A1(new_n59), .B0(new_n61), .Y(new_n63));
  OAI21X1  g44(.A0(new_n57), .A1(new_n51), .B0(new_n63), .Y(new_n64));
  XOR2X1   g45(.A(\b[0] ), .B(\a[0] ), .Y(new_n65));
  OR4X1    g46(.A(new_n65), .B(new_n41), .C(new_n38), .D(new_n37), .Y(new_n66));
  OR2X1    g47(.A(new_n66), .B(new_n34), .Y(new_n67));
  OAI21X1  g48(.A0(new_n64), .A1(new_n50), .B0(new_n67), .Y(new_n68));
  AND2X1   g49(.A(new_n29), .B(new_n24), .Y(eq));
  AOI21X1  g50(.A0(new_n29), .A1(new_n24), .B0(new_n68), .Y(gt));
  NAND2X1  g51(.A(new_n29), .B(new_n24), .Y(new_n72));
  AND2X1   g52(.A(new_n68), .B(new_n72), .Y(lt));
endmodule


