// Benchmark "magnitude_comparison" written by ABC on Wed Jun 26 15:22:17 2024

module magnitude_comparison ( 
    \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ,
    eq, gt  );
  input  \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ;
  output eq, gt;
  wire new_n11, new_n12, new_n13, new_n14, new_n16, new_n17, new_n18,
    new_n19, new_n20, new_n21, new_n22, new_n23, new_n24, new_n25, new_n26,
    new_n27, new_n28, new_n29, new_n30, new_n31, new_n32;
  XOR2X1   g00(.A(\B[2] ), .B(\A[2] ), .Y(new_n11));
  XOR2X1   g01(.A(\B[3] ), .B(\A[3] ), .Y(new_n12));
  XOR2X1   g02(.A(\B[0] ), .B(\A[0] ), .Y(new_n13));
  XOR2X1   g03(.A(\B[1] ), .B(\A[1] ), .Y(new_n14));
  NOR4X1   g04(.A(new_n14), .B(new_n13), .C(new_n12), .D(new_n11), .Y(eq));
  INVX1    g05(.A(\B[1] ), .Y(new_n16));
  AND2X1   g06(.A(new_n16), .B(\A[1] ), .Y(new_n17));
  XOR2X1   g07(.A(\B[3] ), .B(\A[3] ), .Y(new_n18));
  XOR2X1   g08(.A(\B[2] ), .B(\A[2] ), .Y(new_n19));
  NOR2X1   g09(.A(new_n19), .B(new_n18), .Y(new_n20));
  INVX1    g10(.A(\A[0] ), .Y(new_n21));
  XOR2X1   g11(.A(\B[1] ), .B(\A[1] ), .Y(new_n22));
  AOI21X1  g12(.A0(\B[0] ), .A1(new_n21), .B0(new_n22), .Y(new_n23));
  OAI21X1  g13(.A0(new_n23), .A1(new_n17), .B0(new_n20), .Y(new_n24));
  INVX1    g14(.A(\B[2] ), .Y(new_n25));
  AND2X1   g15(.A(new_n25), .B(\A[2] ), .Y(new_n26));
  INVX1    g16(.A(\A[3] ), .Y(new_n27));
  NOR2X1   g17(.A(\B[3] ), .B(new_n27), .Y(new_n28));
  XOR2X1   g18(.A(\B[3] ), .B(new_n27), .Y(new_n29));
  AOI21X1  g19(.A0(new_n29), .A1(new_n26), .B0(new_n28), .Y(new_n30));
  XOR2X1   g20(.A(\B[0] ), .B(\A[0] ), .Y(new_n31));
  NOR4X1   g21(.A(new_n31), .B(new_n22), .C(new_n19), .D(new_n18), .Y(new_n32));
  AOI21X1  g22(.A0(new_n30), .A1(new_n24), .B0(new_n32), .Y(gt));
endmodule


