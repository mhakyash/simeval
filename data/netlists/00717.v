// Benchmark "Comparator" written by ABC on Wed Jun 26 15:22:18 2024

module Comparator ( 
    \a[0] , \a[1] , \a[2] , \a[3] , \a[4] , \a[5] , \a[6] , \a[7] , \b[0] ,
    \b[1] , \b[2] , \b[3] , \b[4] , \b[5] , \b[6] , \b[7] ,
    gt, lt, eq  );
  input  \a[0] , \a[1] , \a[2] , \a[3] , \a[4] , \a[5] , \a[6] , \a[7] ,
    \b[0] , \b[1] , \b[2] , \b[3] , \b[4] , \b[5] , \b[6] , \b[7] ;
  output gt, lt, eq;
  wire new_n20, new_n21, new_n22, new_n23, new_n24, new_n25, new_n26,
    new_n27, new_n28, new_n29, new_n31, new_n32, new_n33, new_n34, new_n35,
    new_n36, new_n37, new_n38, new_n39, new_n40, new_n41, new_n42, new_n43,
    new_n44, new_n45, new_n46, new_n47, new_n48, new_n49, new_n50, new_n52,
    new_n53;
  XOR2X1   g00(.A(\b[3] ), .B(\a[3] ), .Y(new_n20));
  XOR2X1   g01(.A(\b[2] ), .B(\a[2] ), .Y(new_n21));
  XOR2X1   g02(.A(\b[1] ), .B(\a[1] ), .Y(new_n22));
  XOR2X1   g03(.A(\b[0] ), .B(\a[0] ), .Y(new_n23));
  OR4X1    g04(.A(new_n23), .B(new_n22), .C(new_n21), .D(new_n20), .Y(new_n24));
  XOR2X1   g05(.A(\b[7] ), .B(\a[7] ), .Y(new_n25));
  XOR2X1   g06(.A(\b[6] ), .B(\a[6] ), .Y(new_n26));
  XOR2X1   g07(.A(\b[5] ), .B(\a[5] ), .Y(new_n27));
  XOR2X1   g08(.A(\b[4] ), .B(\a[4] ), .Y(new_n28));
  OR4X1    g09(.A(new_n28), .B(new_n27), .C(new_n26), .D(new_n25), .Y(new_n29));
  OR2X1    g10(.A(new_n29), .B(new_n24), .Y(gt));
  AND2X1   g11(.A(\b[3] ), .B(\a[3] ), .Y(new_n31));
  XOR2X1   g12(.A(\b[3] ), .B(\a[3] ), .Y(new_n32));
  AND2X1   g13(.A(\b[2] ), .B(\a[2] ), .Y(new_n33));
  XOR2X1   g14(.A(\b[2] ), .B(\a[2] ), .Y(new_n34));
  AOI22X1  g15(.A0(new_n34), .A1(new_n33), .B0(new_n32), .B1(new_n31), .Y(new_n35));
  AND2X1   g16(.A(\b[1] ), .B(\a[1] ), .Y(new_n36));
  XOR2X1   g17(.A(\b[1] ), .B(\a[1] ), .Y(new_n37));
  AND2X1   g18(.A(\b[0] ), .B(\a[0] ), .Y(new_n38));
  XOR2X1   g19(.A(\b[0] ), .B(\a[0] ), .Y(new_n39));
  AOI22X1  g20(.A0(new_n39), .A1(new_n38), .B0(new_n37), .B1(new_n36), .Y(new_n40));
  AND2X1   g21(.A(\b[7] ), .B(\a[7] ), .Y(new_n41));
  XOR2X1   g22(.A(\b[7] ), .B(\a[7] ), .Y(new_n42));
  AND2X1   g23(.A(\b[6] ), .B(\a[6] ), .Y(new_n43));
  XOR2X1   g24(.A(\b[6] ), .B(\a[6] ), .Y(new_n44));
  AOI22X1  g25(.A0(new_n44), .A1(new_n43), .B0(new_n42), .B1(new_n41), .Y(new_n45));
  AND2X1   g26(.A(\b[5] ), .B(\a[5] ), .Y(new_n46));
  XOR2X1   g27(.A(\b[5] ), .B(\a[5] ), .Y(new_n47));
  AND2X1   g28(.A(\b[4] ), .B(\a[4] ), .Y(new_n48));
  XOR2X1   g29(.A(\b[4] ), .B(\a[4] ), .Y(new_n49));
  AOI22X1  g30(.A0(new_n49), .A1(new_n48), .B0(new_n47), .B1(new_n46), .Y(new_n50));
  NAND4X1  g31(.A(new_n50), .B(new_n45), .C(new_n40), .D(new_n35), .Y(lt));
  NAND4X1  g32(.A(new_n39), .B(new_n37), .C(new_n34), .D(new_n32), .Y(new_n52));
  NAND4X1  g33(.A(new_n49), .B(new_n47), .C(new_n44), .D(new_n42), .Y(new_n53));
  OR2X1    g34(.A(new_n53), .B(new_n52), .Y(eq));
endmodule


