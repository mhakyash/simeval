// Benchmark "mag_comparator" written by ABC on Wed Jun 26 15:22:14 2024

module mag_comparator ( 
    \A[0] , \A[1] , \A[2] , \B[0] , \B[1] , \B[2] ,
    \result[0] , \result[1]   );
  input  \A[0] , \A[1] , \A[2] , \B[0] , \B[1] , \B[2] ;
  output \result[0] , \result[1] ;
  wire new_n9, new_n10, new_n11, new_n12, new_n13, new_n14, new_n15, new_n16,
    new_n17, new_n18, new_n19, new_n20, new_n21, new_n22, new_n23, new_n24,
    new_n25, new_n26, new_n28;
  INVX1    g00(.A(\A[2] ), .Y(new_n9));
  OR2X1    g01(.A(\B[2] ), .B(new_n9), .Y(new_n10));
  XOR2X1   g02(.A(\B[2] ), .B(new_n9), .Y(new_n11));
  INVX1    g03(.A(\B[1] ), .Y(new_n12));
  AND2X1   g04(.A(new_n12), .B(\A[1] ), .Y(new_n13));
  INVX1    g05(.A(\A[0] ), .Y(new_n14));
  XOR2X1   g06(.A(\B[1] ), .B(\A[1] ), .Y(new_n15));
  AOI21X1  g07(.A0(\B[0] ), .A1(new_n14), .B0(new_n15), .Y(new_n16));
  OAI21X1  g08(.A0(new_n16), .A1(new_n13), .B0(new_n11), .Y(new_n17));
  XOR2X1   g09(.A(\B[2] ), .B(\A[2] ), .Y(new_n18));
  XOR2X1   g10(.A(\B[0] ), .B(\A[0] ), .Y(new_n19));
  NOR3X1   g11(.A(new_n19), .B(new_n15), .C(new_n18), .Y(new_n20));
  AOI21X1  g12(.A0(new_n17), .A1(new_n10), .B0(new_n20), .Y(new_n21));
  INVX1    g13(.A(\B[2] ), .Y(new_n22));
  AND2X1   g14(.A(new_n22), .B(\A[2] ), .Y(new_n23));
  XOR2X1   g15(.A(\B[0] ), .B(\A[0] ), .Y(new_n24));
  OAI22X1  g16(.A0(new_n22), .A1(\A[2] ), .B0(new_n12), .B1(\A[1] ), .Y(new_n25));
  OR4X1    g17(.A(new_n25), .B(new_n24), .C(new_n13), .D(new_n23), .Y(new_n26));
  AND2X1   g18(.A(new_n26), .B(new_n21), .Y(\result[0] ));
  NOR4X1   g19(.A(new_n25), .B(new_n24), .C(new_n13), .D(new_n23), .Y(new_n28));
  NOR2X1   g20(.A(new_n28), .B(new_n21), .Y(\result[1] ));
endmodule


