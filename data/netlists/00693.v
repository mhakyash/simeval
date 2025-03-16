// Benchmark "cla_4bit_adder" written by ABC on Wed Jun 26 15:22:17 2024

module cla_4bit_adder ( 
    \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ,
    \Y[0] , \Y[1] , \Y[2] , \Y[3]   );
  input  \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ;
  output \Y[0] , \Y[1] , \Y[2] , \Y[3] ;
  wire new_n14, new_n15, new_n16, new_n17, new_n18, new_n19, new_n20,
    new_n22, new_n23, new_n24, new_n25, new_n26, new_n27, new_n28, new_n29,
    new_n30, new_n32, new_n33, new_n34, new_n35, new_n36, new_n37, new_n38,
    new_n39, new_n40, new_n41, new_n42, new_n43, new_n44, new_n45, new_n46;
  OR2X1    g00(.A(\B[0] ), .B(\A[0] ), .Y(\Y[0] ));
  XOR2X1   g01(.A(\B[1] ), .B(\A[1] ), .Y(new_n14));
  AND2X1   g02(.A(\B[1] ), .B(\A[1] ), .Y(new_n15));
  AND2X1   g03(.A(\B[0] ), .B(\A[0] ), .Y(new_n16));
  NAND2X1  g04(.A(new_n14), .B(new_n16), .Y(new_n17));
  XOR2X1   g05(.A(new_n17), .B(new_n15), .Y(new_n18));
  NAND2X1  g06(.A(new_n14), .B(new_n16), .Y(new_n19));
  NAND2X1  g07(.A(new_n19), .B(new_n18), .Y(new_n20));
  XOR2X1   g08(.A(new_n20), .B(new_n14), .Y(\Y[1] ));
  XOR2X1   g09(.A(\B[2] ), .B(\A[2] ), .Y(new_n22));
  INVX1    g10(.A(new_n22), .Y(new_n23));
  AND2X1   g11(.A(\B[2] ), .B(\A[2] ), .Y(new_n24));
  NAND2X1  g12(.A(new_n22), .B(new_n15), .Y(new_n25));
  XOR2X1   g13(.A(new_n25), .B(new_n24), .Y(new_n26));
  NAND3X1  g14(.A(new_n22), .B(new_n14), .C(new_n16), .Y(new_n27));
  XOR2X1   g15(.A(new_n27), .B(new_n26), .Y(new_n28));
  AOI22X1  g16(.A0(new_n27), .A1(new_n25), .B0(new_n19), .B1(new_n18), .Y(new_n29));
  NOR2X1   g17(.A(new_n29), .B(new_n28), .Y(new_n30));
  XOR2X1   g18(.A(new_n30), .B(new_n23), .Y(\Y[2] ));
  XOR2X1   g19(.A(\B[3] ), .B(\A[3] ), .Y(new_n32));
  NAND2X1  g20(.A(\B[3] ), .B(\A[3] ), .Y(new_n33));
  NAND2X1  g21(.A(new_n32), .B(new_n24), .Y(new_n34));
  XOR2X1   g22(.A(new_n34), .B(new_n33), .Y(new_n35));
  NAND3X1  g23(.A(new_n32), .B(new_n22), .C(new_n15), .Y(new_n36));
  XOR2X1   g24(.A(new_n36), .B(new_n35), .Y(new_n37));
  NAND4X1  g25(.A(new_n32), .B(new_n22), .C(new_n14), .D(new_n16), .Y(new_n38));
  XOR2X1   g26(.A(new_n38), .B(new_n37), .Y(new_n39));
  NAND2X1  g27(.A(new_n27), .B(new_n25), .Y(new_n40));
  NAND3X1  g28(.A(new_n38), .B(new_n36), .C(new_n34), .Y(new_n41));
  NAND2X1  g29(.A(new_n41), .B(new_n40), .Y(new_n42));
  NOR2X1   g30(.A(new_n42), .B(new_n19), .Y(new_n43));
  AND2X1   g31(.A(new_n41), .B(new_n28), .Y(new_n44));
  NOR2X1   g32(.A(new_n42), .B(new_n18), .Y(new_n45));
  OR4X1    g33(.A(new_n45), .B(new_n44), .C(new_n43), .D(new_n39), .Y(new_n46));
  XOR2X1   g34(.A(new_n46), .B(new_n32), .Y(\Y[3] ));
endmodule


