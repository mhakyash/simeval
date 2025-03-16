// Benchmark "ripple_addsub" written by ABC on Wed Jun 26 15:22:07 2024

module ripple_addsub ( 
    \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] , sub,
    \sum[0] , \sum[1] , \sum[2] , \sum[3] , carry  );
  input  \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ,
    sub;
  output \sum[0] , \sum[1] , \sum[2] , \sum[3] , carry;
  wire new_n16, new_n17, new_n18, new_n19, new_n20, new_n21, new_n22,
    new_n23, new_n25, new_n26, new_n27, new_n28, new_n29, new_n30, new_n31,
    new_n32, new_n33, new_n34, new_n35, new_n37, new_n38, new_n39, new_n40,
    new_n41, new_n42, new_n43, new_n44, new_n46, new_n47, new_n48, new_n49,
    new_n50, new_n51, new_n52, new_n53;
  XOR2X1   g00(.A(\B[0] ), .B(\A[0] ), .Y(\sum[0] ));
  INVX1    g01(.A(sub), .Y(new_n16));
  AND2X1   g02(.A(\B[0] ), .B(\A[0] ), .Y(new_n17));
  XOR2X1   g03(.A(\B[1] ), .B(\A[1] ), .Y(new_n18));
  XOR2X1   g04(.A(new_n18), .B(new_n17), .Y(new_n19));
  XOR2X1   g05(.A(\B[1] ), .B(\A[1] ), .Y(new_n20));
  INVX1    g06(.A(\A[0] ), .Y(new_n21));
  AND2X1   g07(.A(\B[0] ), .B(new_n21), .Y(new_n22));
  XOR2X1   g08(.A(new_n22), .B(new_n20), .Y(new_n23));
  MX2X1    g09(.A(new_n23), .B(new_n19), .S0(new_n16), .Y(\sum[1] ));
  INVX1    g10(.A(\A[2] ), .Y(new_n25));
  XOR2X1   g11(.A(\B[2] ), .B(new_n25), .Y(new_n26));
  AND2X1   g12(.A(\B[1] ), .B(\A[1] ), .Y(new_n27));
  AOI21X1  g13(.A0(new_n18), .A1(new_n17), .B0(new_n27), .Y(new_n28));
  XOR2X1   g14(.A(new_n28), .B(new_n26), .Y(new_n29));
  XOR2X1   g15(.A(\B[2] ), .B(\A[2] ), .Y(new_n30));
  INVX1    g16(.A(new_n30), .Y(new_n31));
  INVX1    g17(.A(\A[1] ), .Y(new_n32));
  OR2X1    g18(.A(\B[1] ), .B(new_n32), .Y(new_n33));
  OAI21X1  g19(.A0(new_n22), .A1(new_n20), .B0(new_n33), .Y(new_n34));
  XOR2X1   g20(.A(new_n34), .B(new_n31), .Y(new_n35));
  MX2X1    g21(.A(new_n35), .B(new_n29), .S0(new_n16), .Y(\sum[2] ));
  XOR2X1   g22(.A(\B[3] ), .B(\A[3] ), .Y(new_n37));
  NAND2X1  g23(.A(\B[2] ), .B(\A[2] ), .Y(new_n38));
  OAI21X1  g24(.A0(new_n28), .A1(new_n26), .B0(new_n38), .Y(new_n39));
  XOR2X1   g25(.A(new_n39), .B(new_n37), .Y(new_n40));
  XOR2X1   g26(.A(\B[3] ), .B(\A[3] ), .Y(new_n41));
  NOR2X1   g27(.A(\B[2] ), .B(new_n25), .Y(new_n42));
  AOI21X1  g28(.A0(new_n34), .A1(new_n31), .B0(new_n42), .Y(new_n43));
  XOR2X1   g29(.A(new_n43), .B(new_n41), .Y(new_n44));
  MX2X1    g30(.A(new_n44), .B(new_n40), .S0(new_n16), .Y(\sum[3] ));
  INVX1    g31(.A(\A[3] ), .Y(new_n46));
  OR2X1    g32(.A(\B[3] ), .B(new_n46), .Y(new_n47));
  XOR2X1   g33(.A(\B[0] ), .B(\A[0] ), .Y(new_n48));
  OR4X1    g34(.A(new_n41), .B(new_n30), .C(new_n20), .D(new_n48), .Y(new_n49));
  INVX1    g35(.A(new_n41), .Y(new_n50));
  NAND3X1  g36(.A(new_n50), .B(new_n34), .C(new_n31), .Y(new_n51));
  NAND2X1  g37(.A(new_n50), .B(new_n42), .Y(new_n52));
  NAND4X1  g38(.A(new_n52), .B(new_n51), .C(new_n49), .D(new_n47), .Y(new_n53));
  MX2X1    g39(.A(new_n53), .B(new_n40), .S0(new_n16), .Y(carry));
endmodule


