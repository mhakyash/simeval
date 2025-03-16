// Benchmark "twos_complement_adder" written by ABC on Wed Jun 26 15:22:25 2024

module twos_complement_adder ( 
    \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ,
    \C[0] , \C[1] , \C[2] , \C[3] , \C[4]   );
  input  \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ;
  output \C[0] , \C[1] , \C[2] , \C[3] , \C[4] ;
  wire new_n14, new_n15, new_n16, new_n17, new_n18, new_n19, new_n20,
    new_n21, new_n22, new_n23, new_n24, new_n25, new_n26, new_n27, new_n28,
    new_n29, new_n30, new_n31, new_n32, new_n33, new_n35, new_n36, new_n37,
    new_n38, new_n39, new_n40, new_n42, new_n43, new_n44, new_n45, new_n46,
    new_n48;
  INVX1    g00(.A(\B[3] ), .Y(new_n14));
  XOR2X1   g01(.A(\B[3] ), .B(\A[3] ), .Y(new_n15));
  NAND2X1  g02(.A(\B[2] ), .B(\A[2] ), .Y(new_n16));
  INVX1    g03(.A(\A[2] ), .Y(new_n17));
  XOR2X1   g04(.A(\B[2] ), .B(new_n17), .Y(new_n18));
  AND2X1   g05(.A(\B[1] ), .B(\A[1] ), .Y(new_n19));
  XOR2X1   g06(.A(\B[1] ), .B(\A[1] ), .Y(new_n20));
  AND2X1   g07(.A(\B[0] ), .B(\A[0] ), .Y(new_n21));
  AOI21X1  g08(.A0(new_n21), .A1(new_n20), .B0(new_n19), .Y(new_n22));
  OAI21X1  g09(.A0(new_n22), .A1(new_n18), .B0(new_n16), .Y(new_n23));
  XOR2X1   g10(.A(new_n23), .B(new_n15), .Y(new_n24));
  OAI21X1  g11(.A0(new_n23), .A1(\B[3] ), .B0(\A[3] ), .Y(new_n25));
  OAI21X1  g12(.A0(new_n24), .A1(new_n14), .B0(new_n25), .Y(new_n26));
  XOR2X1   g13(.A(\B[0] ), .B(\A[0] ), .Y(new_n27));
  INVX1    g14(.A(new_n24), .Y(new_n28));
  XOR2X1   g15(.A(new_n22), .B(new_n18), .Y(new_n29));
  XOR2X1   g16(.A(new_n21), .B(new_n20), .Y(new_n30));
  NAND4X1  g17(.A(new_n30), .B(new_n29), .C(new_n27), .D(new_n26), .Y(new_n31));
  XOR2X1   g18(.A(new_n31), .B(new_n28), .Y(new_n32));
  INVX1    g19(.A(new_n32), .Y(new_n33));
  XOR2X1   g20(.A(new_n27), .B(new_n26), .Y(\C[0] ));
  NAND2X1  g21(.A(new_n27), .B(new_n26), .Y(new_n35));
  XOR2X1   g22(.A(new_n35), .B(new_n30), .Y(new_n36));
  INVX1    g23(.A(new_n27), .Y(new_n37));
  XOR2X1   g24(.A(new_n37), .B(new_n26), .Y(new_n38));
  XOR2X1   g25(.A(new_n36), .B(new_n38), .Y(new_n39));
  NAND2X1  g26(.A(new_n39), .B(new_n32), .Y(new_n40));
  OAI21X1  g27(.A0(new_n36), .A1(new_n32), .B0(new_n40), .Y(\C[1] ));
  NAND3X1  g28(.A(new_n30), .B(new_n27), .C(new_n26), .Y(new_n42));
  XOR2X1   g29(.A(new_n42), .B(new_n29), .Y(new_n43));
  INVX1    g30(.A(new_n43), .Y(new_n44));
  AND2X1   g31(.A(new_n36), .B(new_n38), .Y(new_n45));
  XOR2X1   g32(.A(new_n45), .B(new_n43), .Y(new_n46));
  MX2X1    g33(.A(new_n46), .B(new_n44), .S0(new_n33), .Y(\C[2] ));
  AND2X1   g34(.A(new_n45), .B(new_n43), .Y(new_n48));
  AND2X1   g35(.A(new_n48), .B(new_n32), .Y(\C[3] ));
  XOR2X1   g36(.A(new_n31), .B(new_n28), .Y(\C[4] ));
endmodule


