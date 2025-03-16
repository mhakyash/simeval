// Benchmark "add_sub" written by ABC on Wed Jun 26 15:22:20 2024

module add_sub ( 
    \a[0] , \a[1] , \a[2] , \a[3] , \b[0] , \b[1] , \b[2] , \b[3] , enable,
    \sum[0] , \sum[1] , \sum[2] , \sum[3] , \diff[0] , \diff[1] ,
    \diff[2] , \diff[3]   );
  input  \a[0] , \a[1] , \a[2] , \a[3] , \b[0] , \b[1] , \b[2] , \b[3] ,
    enable;
  output \sum[0] , \sum[1] , \sum[2] , \sum[3] , \diff[0] , \diff[1] ,
    \diff[2] , \diff[3] ;
  wire new_n19, new_n20, new_n22, new_n23, new_n24, new_n25, new_n27,
    new_n28, new_n29, new_n31, new_n32, new_n34, new_n35, new_n36, new_n37,
    new_n39, new_n40, new_n41, new_n42, new_n43, new_n45, new_n46, new_n47,
    new_n48, new_n49, new_n50;
  XOR2X1   g00(.A(\b[0] ), .B(\a[0] ), .Y(\sum[0] ));
  XOR2X1   g01(.A(\b[1] ), .B(\a[1] ), .Y(new_n19));
  AND2X1   g02(.A(\b[0] ), .B(\a[0] ), .Y(new_n20));
  XOR2X1   g03(.A(new_n20), .B(new_n19), .Y(\sum[1] ));
  INVX1    g04(.A(\a[2] ), .Y(new_n22));
  XOR2X1   g05(.A(\b[2] ), .B(new_n22), .Y(new_n23));
  AND2X1   g06(.A(\b[1] ), .B(\a[1] ), .Y(new_n24));
  AOI21X1  g07(.A0(new_n20), .A1(new_n19), .B0(new_n24), .Y(new_n25));
  XOR2X1   g08(.A(new_n25), .B(new_n23), .Y(\sum[2] ));
  XOR2X1   g09(.A(\b[3] ), .B(\a[3] ), .Y(new_n27));
  NAND2X1  g10(.A(\b[2] ), .B(\a[2] ), .Y(new_n28));
  OAI21X1  g11(.A0(new_n25), .A1(new_n23), .B0(new_n28), .Y(new_n29));
  XOR2X1   g12(.A(new_n29), .B(new_n27), .Y(\sum[3] ));
  INVX1    g13(.A(\b[0] ), .Y(new_n31));
  INVX1    g14(.A(enable), .Y(new_n32));
  NOR3X1   g15(.A(new_n32), .B(new_n31), .C(\a[0] ), .Y(\diff[0] ));
  INVX1    g16(.A(\a[0] ), .Y(new_n34));
  INVX1    g17(.A(\a[1] ), .Y(new_n35));
  OAI22X1  g18(.A0(\b[1] ), .A1(new_n35), .B0(\b[0] ), .B1(new_n34), .Y(new_n36));
  XOR2X1   g19(.A(new_n36), .B(new_n19), .Y(new_n37));
  AND2X1   g20(.A(new_n37), .B(enable), .Y(\diff[1] ));
  INVX1    g21(.A(\b[1] ), .Y(new_n39));
  AOI22X1  g22(.A0(new_n39), .A1(\a[1] ), .B0(new_n31), .B1(\a[0] ), .Y(new_n40));
  NAND3X1  g23(.A(new_n40), .B(\b[2] ), .C(new_n22), .Y(new_n41));
  NOR2X1   g24(.A(\b[2] ), .B(new_n22), .Y(new_n42));
  OAI21X1  g25(.A0(new_n36), .A1(new_n42), .B0(new_n23), .Y(new_n43));
  AOI21X1  g26(.A0(new_n43), .A1(new_n41), .B0(new_n32), .Y(\diff[2] ));
  INVX1    g27(.A(\b[3] ), .Y(new_n45));
  OR4X1    g28(.A(new_n36), .B(new_n42), .C(new_n45), .D(\a[3] ), .Y(new_n46));
  INVX1    g29(.A(\a[3] ), .Y(new_n47));
  XOR2X1   g30(.A(\b[3] ), .B(new_n47), .Y(new_n48));
  OAI22X1  g31(.A0(\b[3] ), .A1(new_n47), .B0(\b[2] ), .B1(new_n22), .Y(new_n49));
  OAI21X1  g32(.A0(new_n49), .A1(new_n36), .B0(new_n48), .Y(new_n50));
  AOI21X1  g33(.A0(new_n50), .A1(new_n46), .B0(new_n32), .Y(\diff[3] ));
endmodule


