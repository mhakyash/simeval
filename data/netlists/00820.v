// Benchmark "mag_comparator" written by ABC on Wed Jun 26 15:22:21 2024

module mag_comparator ( 
    \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ,
    GT, EQ, LT  );
  input  \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ;
  output GT, EQ, LT;
  wire new_n12, new_n13, new_n14, new_n15, new_n16, new_n17, new_n18,
    new_n19, new_n20, new_n21, new_n22, new_n23, new_n24, new_n25, new_n26,
    new_n28, new_n29, new_n30, new_n31, new_n32, new_n33, new_n34, new_n35;
  XOR2X1   g00(.A(\B[3] ), .B(\A[3] ), .Y(new_n12));
  XOR2X1   g01(.A(\B[2] ), .B(\A[2] ), .Y(new_n13));
  NOR2X1   g02(.A(new_n13), .B(new_n12), .Y(new_n14));
  INVX1    g03(.A(\B[1] ), .Y(new_n15));
  AND2X1   g04(.A(new_n15), .B(\A[1] ), .Y(new_n16));
  INVX1    g05(.A(\A[0] ), .Y(new_n17));
  XOR2X1   g06(.A(\B[1] ), .B(\A[1] ), .Y(new_n18));
  AOI21X1  g07(.A0(\B[0] ), .A1(new_n17), .B0(new_n18), .Y(new_n19));
  OAI21X1  g08(.A0(new_n19), .A1(new_n16), .B0(new_n14), .Y(new_n20));
  INVX1    g09(.A(\B[3] ), .Y(new_n21));
  INVX1    g10(.A(\A[2] ), .Y(new_n22));
  NOR3X1   g11(.A(new_n12), .B(\B[2] ), .C(new_n22), .Y(new_n23));
  AOI21X1  g12(.A0(new_n21), .A1(\A[3] ), .B0(new_n23), .Y(new_n24));
  XOR2X1   g13(.A(\B[0] ), .B(\A[0] ), .Y(new_n25));
  NOR4X1   g14(.A(new_n25), .B(new_n18), .C(new_n13), .D(new_n12), .Y(new_n26));
  AOI21X1  g15(.A0(new_n24), .A1(new_n20), .B0(new_n26), .Y(GT));
  INVX1    g16(.A(\B[0] ), .Y(new_n28));
  OAI22X1  g17(.A0(new_n15), .A1(\A[1] ), .B0(new_n28), .B1(\A[0] ), .Y(new_n29));
  INVX1    g18(.A(\B[2] ), .Y(new_n30));
  OAI22X1  g19(.A0(new_n21), .A1(\A[3] ), .B0(new_n30), .B1(\A[2] ), .Y(new_n31));
  INVX1    g20(.A(\A[3] ), .Y(new_n32));
  OAI22X1  g21(.A0(\B[3] ), .A1(new_n32), .B0(\B[2] ), .B1(new_n22), .Y(new_n33));
  INVX1    g22(.A(\A[1] ), .Y(new_n34));
  OAI22X1  g23(.A0(\B[1] ), .A1(new_n34), .B0(\B[0] ), .B1(new_n17), .Y(new_n35));
  NOR4X1   g24(.A(new_n35), .B(new_n33), .C(new_n31), .D(new_n29), .Y(EQ));
  AND2X1   g25(.A(new_n24), .B(new_n20), .Y(LT));
endmodule


