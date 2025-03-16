// Benchmark "comparator" written by ABC on Wed Jun 26 15:22:22 2024

module comparator ( 
    \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ,
    EQ, GT, LT  );
  input  \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ;
  output EQ, GT, LT;
  wire new_n12, new_n13, new_n14, new_n15, new_n17, new_n18, new_n19,
    new_n20, new_n21, new_n22, new_n23, new_n24, new_n25, new_n26, new_n27,
    new_n28, new_n29, new_n30, new_n31, new_n32, new_n33, new_n34, new_n35;
  XOR2X1   g00(.A(\B[2] ), .B(\A[2] ), .Y(new_n12));
  XOR2X1   g01(.A(\B[3] ), .B(\A[3] ), .Y(new_n13));
  XOR2X1   g02(.A(\B[0] ), .B(\A[0] ), .Y(new_n14));
  XOR2X1   g03(.A(\B[1] ), .B(\A[1] ), .Y(new_n15));
  NOR4X1   g04(.A(new_n15), .B(new_n14), .C(new_n13), .D(new_n12), .Y(EQ));
  INVX1    g05(.A(EQ), .Y(new_n17));
  INVX1    g06(.A(\B[1] ), .Y(new_n18));
  AND2X1   g07(.A(new_n18), .B(\A[1] ), .Y(new_n19));
  XOR2X1   g08(.A(\B[3] ), .B(\A[3] ), .Y(new_n20));
  XOR2X1   g09(.A(\B[2] ), .B(\A[2] ), .Y(new_n21));
  NOR2X1   g10(.A(new_n21), .B(new_n20), .Y(new_n22));
  INVX1    g11(.A(\A[0] ), .Y(new_n23));
  XOR2X1   g12(.A(\B[1] ), .B(\A[1] ), .Y(new_n24));
  AOI21X1  g13(.A0(\B[0] ), .A1(new_n23), .B0(new_n24), .Y(new_n25));
  OAI21X1  g14(.A0(new_n25), .A1(new_n19), .B0(new_n22), .Y(new_n26));
  INVX1    g15(.A(\B[2] ), .Y(new_n27));
  AND2X1   g16(.A(new_n27), .B(\A[2] ), .Y(new_n28));
  INVX1    g17(.A(\A[3] ), .Y(new_n29));
  NOR2X1   g18(.A(\B[3] ), .B(new_n29), .Y(new_n30));
  XOR2X1   g19(.A(\B[3] ), .B(new_n29), .Y(new_n31));
  AOI21X1  g20(.A0(new_n31), .A1(new_n28), .B0(new_n30), .Y(new_n32));
  XOR2X1   g21(.A(\B[0] ), .B(\A[0] ), .Y(new_n33));
  NOR4X1   g22(.A(new_n33), .B(new_n24), .C(new_n21), .D(new_n20), .Y(new_n34));
  AOI21X1  g23(.A0(new_n32), .A1(new_n26), .B0(new_n34), .Y(new_n35));
  AND2X1   g24(.A(new_n35), .B(new_n17), .Y(GT));
  NOR2X1   g25(.A(new_n35), .B(EQ), .Y(LT));
endmodule


