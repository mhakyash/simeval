// Benchmark "magnitude_comparator_4bit" written by ABC on Wed Jun 26 15:22:02 2024

module magnitude_comparator_4bit ( 
    \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ,
    EQ, GT, LT  );
  input  \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ;
  output EQ, GT, LT;
  wire new_n12, new_n13, new_n14, new_n15, new_n16, new_n17, new_n18,
    new_n19, new_n20, new_n21, new_n22, new_n23, new_n24, new_n25, new_n26,
    new_n28, new_n29, new_n30, new_n31, new_n32, new_n33, new_n34, new_n35,
    new_n36, new_n38;
  NOR3X1   g00(.A(\B[2] ), .B(\B[1] ), .C(\B[0] ), .Y(new_n12));
  XOR2X1   g01(.A(new_n12), .B(\B[3] ), .Y(new_n13));
  XOR2X1   g02(.A(new_n13), .B(\A[3] ), .Y(new_n14));
  INVX1    g03(.A(\A[2] ), .Y(new_n15));
  NOR2X1   g04(.A(\B[1] ), .B(\B[0] ), .Y(new_n16));
  XOR2X1   g05(.A(new_n16), .B(\B[2] ), .Y(new_n17));
  NOR2X1   g06(.A(new_n17), .B(new_n15), .Y(new_n18));
  XOR2X1   g07(.A(new_n17), .B(new_n15), .Y(new_n19));
  XOR2X1   g08(.A(\B[1] ), .B(\B[0] ), .Y(new_n20));
  NAND2X1  g09(.A(new_n20), .B(\A[1] ), .Y(new_n21));
  INVX1    g10(.A(\A[1] ), .Y(new_n22));
  XOR2X1   g11(.A(new_n20), .B(new_n22), .Y(new_n23));
  NAND2X1  g12(.A(\B[0] ), .B(\A[0] ), .Y(new_n24));
  OAI21X1  g13(.A0(new_n24), .A1(new_n23), .B0(new_n21), .Y(new_n25));
  AOI21X1  g14(.A0(new_n25), .A1(new_n19), .B0(new_n18), .Y(new_n26));
  XOR2X1   g15(.A(new_n26), .B(new_n14), .Y(LT));
  AND2X1   g16(.A(new_n20), .B(\A[1] ), .Y(new_n28));
  XOR2X1   g17(.A(new_n20), .B(\A[1] ), .Y(new_n29));
  AND2X1   g18(.A(\B[0] ), .B(\A[0] ), .Y(new_n30));
  AOI21X1  g19(.A0(new_n30), .A1(new_n29), .B0(new_n28), .Y(new_n31));
  NOR2X1   g20(.A(new_n31), .B(new_n19), .Y(new_n32));
  AND2X1   g21(.A(new_n31), .B(new_n19), .Y(new_n33));
  XOR2X1   g22(.A(\B[0] ), .B(\A[0] ), .Y(new_n34));
  AOI21X1  g23(.A0(new_n24), .A1(new_n29), .B0(new_n34), .Y(new_n35));
  OAI21X1  g24(.A0(new_n24), .A1(new_n29), .B0(new_n35), .Y(new_n36));
  NOR4X1   g25(.A(new_n36), .B(new_n33), .C(new_n32), .D(LT), .Y(EQ));
  NOR3X1   g26(.A(new_n36), .B(new_n33), .C(new_n32), .Y(new_n38));
  NOR2X1   g27(.A(new_n38), .B(LT), .Y(GT));
endmodule


