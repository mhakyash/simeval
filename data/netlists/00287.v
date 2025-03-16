// Benchmark "bcd_code" written by ABC on Wed Jun 26 15:22:05 2024

module bcd_code ( 
    \A[0] , \A[1] , \A[2] , \A[3] ,
    \OUT1[0] , \OUT1[1] , \OUT1[2] , \OUT1[3] , \OUT2[0] , \OUT2[1] ,
    \OUT2[2] , \OUT2[3]   );
  input  \A[0] , \A[1] , \A[2] , \A[3] ;
  output \OUT1[0] , \OUT1[1] , \OUT1[2] , \OUT1[3] , \OUT2[0] , \OUT2[1] ,
    \OUT2[2] , \OUT2[3] ;
  wire new_n13, new_n14, new_n15, new_n16, new_n17, new_n18, new_n19,
    new_n20, new_n21, new_n22, new_n23, new_n24, new_n25, new_n26, new_n31,
    new_n32, new_n33, new_n34, new_n38;
  INVX1    g00(.A(\A[2] ), .Y(new_n13));
  OR2X1    g01(.A(\A[1] ), .B(\A[0] ), .Y(new_n14));
  NOR3X1   g02(.A(new_n14), .B(\A[3] ), .C(new_n13), .Y(new_n15));
  INVX1    g03(.A(\A[0] ), .Y(new_n16));
  NOR4X1   g04(.A(\A[3] ), .B(new_n13), .C(\A[1] ), .D(new_n16), .Y(new_n17));
  NAND2X1  g05(.A(\A[1] ), .B(\A[0] ), .Y(new_n18));
  NOR3X1   g06(.A(new_n18), .B(\A[3] ), .C(new_n13), .Y(new_n19));
  INVX1    g07(.A(\A[1] ), .Y(new_n20));
  NOR4X1   g08(.A(\A[3] ), .B(new_n13), .C(new_n20), .D(\A[0] ), .Y(new_n21));
  OR4X1    g09(.A(new_n21), .B(new_n19), .C(new_n17), .D(new_n15), .Y(new_n22));
  OR2X1    g10(.A(\A[1] ), .B(new_n16), .Y(new_n23));
  NAND2X1  g11(.A(\A[3] ), .B(new_n13), .Y(new_n24));
  AOI21X1  g12(.A0(new_n23), .A1(new_n14), .B0(new_n24), .Y(new_n25));
  OR2X1    g13(.A(new_n25), .B(new_n22), .Y(new_n26));
  AND2X1   g14(.A(new_n26), .B(new_n22), .Y(\OUT1[0] ));
  AND2X1   g15(.A(new_n26), .B(new_n25), .Y(\OUT1[1] ));
  OR2X1    g16(.A(\A[3] ), .B(new_n13), .Y(new_n31));
  OR2X1    g17(.A(\A[3] ), .B(\A[2] ), .Y(new_n32));
  AOI21X1  g18(.A0(new_n32), .A1(new_n31), .B0(new_n18), .Y(new_n33));
  AOI21X1  g19(.A0(\A[3] ), .A1(\A[2] ), .B0(new_n23), .Y(new_n34));
  OR2X1    g20(.A(new_n34), .B(new_n33), .Y(\OUT2[0] ));
  OR2X1    g21(.A(new_n20), .B(\A[0] ), .Y(new_n38));
  AOI22X1  g22(.A0(new_n32), .A1(new_n31), .B0(new_n38), .B1(new_n18), .Y(\OUT2[1] ));
  ZERO     g23(.Y(\OUT1[2] ));
  ZERO     g24(.Y(\OUT1[3] ));
  ZERO     g25(.Y(\OUT2[2] ));
  ZERO     g26(.Y(\OUT2[3] ));
endmodule


