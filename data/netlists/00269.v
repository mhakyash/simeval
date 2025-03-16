// Benchmark "addsub" written by ABC on Wed Jun 26 15:22:05 2024

module addsub ( 
    \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] , C,
    \R[0] , \R[1] , \R[2] , \R[3] , Cout  );
  input  \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ,
    C;
  output \R[0] , \R[1] , \R[2] , \R[3] , Cout;
  wire new_n16, new_n17, new_n18, new_n19, new_n20, new_n21, new_n22,
    new_n23, new_n25, new_n26, new_n27, new_n28, new_n29, new_n30, new_n31,
    new_n32, new_n33, new_n34, new_n36, new_n37, new_n38, new_n39, new_n40,
    new_n41, new_n42, new_n43, new_n45, new_n46, new_n47, new_n48, new_n49;
  XOR2X1   g00(.A(\B[0] ), .B(\A[0] ), .Y(\R[0] ));
  INVX1    g01(.A(C), .Y(new_n16));
  AND2X1   g02(.A(\B[0] ), .B(\A[0] ), .Y(new_n17));
  XOR2X1   g03(.A(\B[1] ), .B(\A[1] ), .Y(new_n18));
  XOR2X1   g04(.A(new_n18), .B(new_n17), .Y(new_n19));
  XOR2X1   g05(.A(\B[1] ), .B(\A[1] ), .Y(new_n20));
  INVX1    g06(.A(\A[0] ), .Y(new_n21));
  AND2X1   g07(.A(\B[0] ), .B(new_n21), .Y(new_n22));
  XOR2X1   g08(.A(new_n22), .B(new_n20), .Y(new_n23));
  MX2X1    g09(.A(new_n23), .B(new_n19), .S0(new_n16), .Y(\R[1] ));
  INVX1    g10(.A(\A[2] ), .Y(new_n25));
  XOR2X1   g11(.A(\B[2] ), .B(new_n25), .Y(new_n26));
  AND2X1   g12(.A(\B[1] ), .B(\A[1] ), .Y(new_n27));
  AOI21X1  g13(.A0(new_n18), .A1(new_n17), .B0(new_n27), .Y(new_n28));
  XOR2X1   g14(.A(new_n28), .B(new_n26), .Y(new_n29));
  XOR2X1   g15(.A(\B[2] ), .B(new_n25), .Y(new_n30));
  INVX1    g16(.A(\A[1] ), .Y(new_n31));
  OR2X1    g17(.A(\B[1] ), .B(new_n31), .Y(new_n32));
  OAI21X1  g18(.A0(new_n22), .A1(new_n20), .B0(new_n32), .Y(new_n33));
  XOR2X1   g19(.A(new_n33), .B(new_n30), .Y(new_n34));
  MX2X1    g20(.A(new_n34), .B(new_n29), .S0(new_n16), .Y(\R[2] ));
  XOR2X1   g21(.A(\B[3] ), .B(\A[3] ), .Y(new_n36));
  NAND2X1  g22(.A(\B[2] ), .B(\A[2] ), .Y(new_n37));
  OAI21X1  g23(.A0(new_n28), .A1(new_n26), .B0(new_n37), .Y(new_n38));
  XOR2X1   g24(.A(new_n38), .B(new_n36), .Y(new_n39));
  XOR2X1   g25(.A(\B[3] ), .B(\A[3] ), .Y(new_n40));
  NOR2X1   g26(.A(\B[2] ), .B(new_n25), .Y(new_n41));
  AOI21X1  g27(.A0(new_n33), .A1(new_n30), .B0(new_n41), .Y(new_n42));
  XOR2X1   g28(.A(new_n42), .B(new_n40), .Y(new_n43));
  MX2X1    g29(.A(new_n43), .B(new_n39), .S0(new_n16), .Y(\R[3] ));
  INVX1    g30(.A(new_n40), .Y(new_n45));
  NAND3X1  g31(.A(new_n45), .B(new_n33), .C(new_n30), .Y(new_n46));
  INVX1    g32(.A(\A[3] ), .Y(new_n47));
  NOR2X1   g33(.A(\B[3] ), .B(new_n47), .Y(new_n48));
  AOI21X1  g34(.A0(new_n45), .A1(new_n41), .B0(new_n48), .Y(new_n49));
  AOI21X1  g35(.A0(new_n49), .A1(new_n46), .B0(new_n16), .Y(Cout));
endmodule


