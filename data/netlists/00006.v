// Benchmark "Comparator" written by ABC on Wed Jun 26 15:21:58 2024

module Comparator ( 
    \a[0] , \a[1] , \a[2] , \a[3] , \a[4] , \a[5] , \a[6] , \a[7] , \b[0] ,
    \b[1] , \b[2] , \b[3] , \b[4] , \b[5] , \b[6] , \b[7] ,
    gt, eq, lt  );
  input  \a[0] , \a[1] , \a[2] , \a[3] , \a[4] , \a[5] , \a[6] , \a[7] ,
    \b[0] , \b[1] , \b[2] , \b[3] , \b[4] , \b[5] , \b[6] , \b[7] ;
  output gt, eq, lt;
  wire new_n20, new_n21, new_n22, new_n23, new_n24, new_n25, new_n26,
    new_n27, new_n28, new_n29, new_n30, new_n31, new_n32, new_n33, new_n34,
    new_n35, new_n36, new_n37, new_n38, new_n39, new_n40, new_n41, new_n42,
    new_n43, new_n44, new_n45, new_n46, new_n47, new_n48, new_n49, new_n50,
    new_n51, new_n52, new_n53, new_n54, new_n55, new_n57, new_n58, new_n59,
    new_n60, new_n61, new_n62, new_n63, new_n64, new_n65, new_n66, new_n67,
    new_n68, new_n69, new_n70, new_n71, new_n72, new_n73, new_n74;
  XOR2X1   g00(.A(\b[7] ), .B(\a[7] ), .Y(new_n20));
  XOR2X1   g01(.A(\b[6] ), .B(\a[6] ), .Y(new_n21));
  XOR2X1   g02(.A(\b[5] ), .B(\a[5] ), .Y(new_n22));
  XOR2X1   g03(.A(\b[4] ), .B(\a[4] ), .Y(new_n23));
  NOR4X1   g04(.A(new_n23), .B(new_n22), .C(new_n21), .D(new_n20), .Y(new_n24));
  XOR2X1   g05(.A(\b[3] ), .B(\a[3] ), .Y(new_n25));
  XOR2X1   g06(.A(\b[2] ), .B(\a[2] ), .Y(new_n26));
  OR2X1    g07(.A(new_n26), .B(new_n25), .Y(new_n27));
  INVX1    g08(.A(\a[1] ), .Y(new_n28));
  OR2X1    g09(.A(\b[1] ), .B(new_n28), .Y(new_n29));
  INVX1    g10(.A(\b[0] ), .Y(new_n30));
  AND2X1   g11(.A(\b[1] ), .B(\a[1] ), .Y(new_n31));
  NOR2X1   g12(.A(\b[1] ), .B(\a[1] ), .Y(new_n32));
  OAI22X1  g13(.A0(new_n32), .A1(new_n31), .B0(new_n30), .B1(\a[0] ), .Y(new_n33));
  AOI21X1  g14(.A0(new_n33), .A1(new_n29), .B0(new_n27), .Y(new_n34));
  INVX1    g15(.A(\b[3] ), .Y(new_n35));
  AND2X1   g16(.A(new_n35), .B(\a[3] ), .Y(new_n36));
  INVX1    g17(.A(\a[2] ), .Y(new_n37));
  NOR3X1   g18(.A(new_n25), .B(\b[2] ), .C(new_n37), .Y(new_n38));
  OR2X1    g19(.A(new_n38), .B(new_n36), .Y(new_n39));
  OAI21X1  g20(.A0(new_n39), .A1(new_n34), .B0(new_n24), .Y(new_n40));
  NOR2X1   g21(.A(new_n21), .B(new_n20), .Y(new_n41));
  INVX1    g22(.A(\b[5] ), .Y(new_n42));
  AND2X1   g23(.A(new_n42), .B(\a[5] ), .Y(new_n43));
  INVX1    g24(.A(\a[4] ), .Y(new_n44));
  NOR3X1   g25(.A(new_n22), .B(\b[4] ), .C(new_n44), .Y(new_n45));
  OAI21X1  g26(.A0(new_n45), .A1(new_n43), .B0(new_n41), .Y(new_n46));
  INVX1    g27(.A(\b[7] ), .Y(new_n47));
  AND2X1   g28(.A(new_n47), .B(\a[7] ), .Y(new_n48));
  INVX1    g29(.A(\a[6] ), .Y(new_n49));
  NOR3X1   g30(.A(new_n20), .B(\b[6] ), .C(new_n49), .Y(new_n50));
  NOR2X1   g31(.A(new_n50), .B(new_n48), .Y(new_n51));
  AND2X1   g32(.A(new_n51), .B(new_n46), .Y(new_n52));
  XOR2X1   g33(.A(\b[1] ), .B(\a[1] ), .Y(new_n53));
  XOR2X1   g34(.A(\b[0] ), .B(\a[0] ), .Y(new_n54));
  NOR4X1   g35(.A(new_n54), .B(new_n53), .C(new_n26), .D(new_n25), .Y(new_n55));
  AOI22X1  g36(.A0(new_n55), .A1(new_n24), .B0(new_n52), .B1(new_n40), .Y(gt));
  INVX1    g37(.A(\a[3] ), .Y(new_n57));
  OAI22X1  g38(.A0(\b[3] ), .A1(new_n57), .B0(\b[2] ), .B1(new_n37), .Y(new_n58));
  INVX1    g39(.A(\a[0] ), .Y(new_n59));
  OAI22X1  g40(.A0(\b[1] ), .A1(new_n28), .B0(\b[0] ), .B1(new_n59), .Y(new_n60));
  INVX1    g41(.A(\a[7] ), .Y(new_n61));
  OAI22X1  g42(.A0(\b[7] ), .A1(new_n61), .B0(\b[6] ), .B1(new_n49), .Y(new_n62));
  INVX1    g43(.A(\a[5] ), .Y(new_n63));
  OAI22X1  g44(.A0(\b[5] ), .A1(new_n63), .B0(\b[4] ), .B1(new_n44), .Y(new_n64));
  NOR4X1   g45(.A(new_n64), .B(new_n62), .C(new_n60), .D(new_n58), .Y(new_n65));
  INVX1    g46(.A(\b[4] ), .Y(new_n66));
  OAI22X1  g47(.A0(new_n42), .A1(\a[5] ), .B0(new_n66), .B1(\a[4] ), .Y(new_n67));
  INVX1    g48(.A(\b[6] ), .Y(new_n68));
  OAI22X1  g49(.A0(new_n47), .A1(\a[7] ), .B0(new_n68), .B1(\a[6] ), .Y(new_n69));
  INVX1    g50(.A(\b[1] ), .Y(new_n70));
  OAI22X1  g51(.A0(new_n70), .A1(\a[1] ), .B0(new_n30), .B1(\a[0] ), .Y(new_n71));
  INVX1    g52(.A(\b[2] ), .Y(new_n72));
  OAI22X1  g53(.A0(new_n35), .A1(\a[3] ), .B0(new_n72), .B1(\a[2] ), .Y(new_n73));
  NOR4X1   g54(.A(new_n73), .B(new_n71), .C(new_n69), .D(new_n67), .Y(new_n74));
  AND2X1   g55(.A(new_n74), .B(new_n65), .Y(eq));
  AND2X1   g56(.A(new_n52), .B(new_n40), .Y(lt));
endmodule


