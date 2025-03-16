// Benchmark "add_sub" written by ABC on Wed Jun 26 15:22:26 2024

module add_sub ( 
    \A[0] , \A[1] , \A[2] , \B[0] , \B[1] , \B[2] , C,
    \Y[0] , \Y[1] , \Y[2]   );
  input  \A[0] , \A[1] , \A[2] , \B[0] , \B[1] , \B[2] , C;
  output \Y[0] , \Y[1] , \Y[2] ;
  wire new_n12, new_n13, new_n14, new_n15, new_n16, new_n17, new_n18,
    new_n20, new_n21, new_n22, new_n23, new_n24, new_n25, new_n26, new_n27,
    new_n28, new_n29, new_n30;
  XOR2X1   g00(.A(\B[0] ), .B(\A[0] ), .Y(\Y[0] ));
  INVX1    g01(.A(C), .Y(new_n12));
  XOR2X1   g02(.A(\B[1] ), .B(\A[1] ), .Y(new_n13));
  AND2X1   g03(.A(\B[0] ), .B(\A[0] ), .Y(new_n14));
  XOR2X1   g04(.A(new_n14), .B(new_n13), .Y(new_n15));
  XOR2X1   g05(.A(\B[1] ), .B(\B[0] ), .Y(new_n16));
  XOR2X1   g06(.A(new_n16), .B(\A[1] ), .Y(new_n17));
  XOR2X1   g07(.A(new_n17), .B(new_n14), .Y(new_n18));
  MX2X1    g08(.A(new_n18), .B(new_n15), .S0(new_n12), .Y(\Y[1] ));
  INVX1    g09(.A(\A[2] ), .Y(new_n20));
  XOR2X1   g10(.A(\B[2] ), .B(new_n20), .Y(new_n21));
  AND2X1   g11(.A(\B[1] ), .B(\A[1] ), .Y(new_n22));
  AOI21X1  g12(.A0(new_n14), .A1(new_n13), .B0(new_n22), .Y(new_n23));
  XOR2X1   g13(.A(new_n23), .B(new_n21), .Y(new_n24));
  NOR2X1   g14(.A(\B[1] ), .B(\B[0] ), .Y(new_n25));
  XOR2X1   g15(.A(new_n25), .B(\B[2] ), .Y(new_n26));
  XOR2X1   g16(.A(new_n26), .B(\A[2] ), .Y(new_n27));
  AND2X1   g17(.A(new_n16), .B(\A[1] ), .Y(new_n28));
  AOI21X1  g18(.A0(new_n17), .A1(new_n14), .B0(new_n28), .Y(new_n29));
  XOR2X1   g19(.A(new_n29), .B(new_n27), .Y(new_n30));
  MX2X1    g20(.A(new_n30), .B(new_n24), .S0(new_n12), .Y(\Y[2] ));
endmodule


