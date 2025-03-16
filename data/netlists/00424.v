// Benchmark "adder" written by ABC on Wed Jun 26 15:22:10 2024

module adder ( 
    \A[0] , \A[1] , \A[2] , \A[3] , \A[4] , \A[5] , \A[6] , \A[7] , \B[0] ,
    \B[1] , \B[2] , \B[3] , \B[4] , \B[5] , \B[6] , \B[7] ,
    \sum[0] , \sum[1] , \sum[2] , \sum[3] , \sum[4] , \sum[5] , \sum[6] ,
    \sum[7]   );
  input  \A[0] , \A[1] , \A[2] , \A[3] , \A[4] , \A[5] , \A[6] , \A[7] ,
    \B[0] , \B[1] , \B[2] , \B[3] , \B[4] , \B[5] , \B[6] , \B[7] ;
  output \sum[0] , \sum[1] , \sum[2] , \sum[3] , \sum[4] , \sum[5] , \sum[6] ,
    \sum[7] ;
  wire new_n26, new_n27, new_n29, new_n30, new_n31, new_n32, new_n34,
    new_n35, new_n36, new_n37, new_n39, new_n40, new_n41, new_n42, new_n43,
    new_n45, new_n46, new_n47, new_n48, new_n50, new_n51, new_n52, new_n53,
    new_n54, new_n55, new_n56, new_n58, new_n59, new_n60;
  XOR2X1   g00(.A(\B[0] ), .B(\A[0] ), .Y(\sum[0] ));
  XOR2X1   g01(.A(\B[1] ), .B(\A[1] ), .Y(new_n26));
  AND2X1   g02(.A(\B[0] ), .B(\A[0] ), .Y(new_n27));
  XOR2X1   g03(.A(new_n27), .B(new_n26), .Y(\sum[1] ));
  XOR2X1   g04(.A(\B[2] ), .B(\A[2] ), .Y(new_n29));
  INVX1    g05(.A(new_n29), .Y(new_n30));
  AND2X1   g06(.A(\B[1] ), .B(\A[1] ), .Y(new_n31));
  AOI21X1  g07(.A0(new_n27), .A1(new_n26), .B0(new_n31), .Y(new_n32));
  XOR2X1   g08(.A(new_n32), .B(new_n30), .Y(\sum[2] ));
  XOR2X1   g09(.A(\B[3] ), .B(\A[3] ), .Y(new_n34));
  AND2X1   g10(.A(\B[2] ), .B(\A[2] ), .Y(new_n35));
  INVX1    g11(.A(new_n35), .Y(new_n36));
  OAI21X1  g12(.A0(new_n32), .A1(new_n30), .B0(new_n36), .Y(new_n37));
  XOR2X1   g13(.A(new_n37), .B(new_n34), .Y(\sum[3] ));
  XOR2X1   g14(.A(\B[4] ), .B(\A[4] ), .Y(new_n39));
  NAND2X1  g15(.A(new_n34), .B(new_n29), .Y(new_n40));
  AND2X1   g16(.A(\B[3] ), .B(\A[3] ), .Y(new_n41));
  AOI21X1  g17(.A0(new_n35), .A1(new_n34), .B0(new_n41), .Y(new_n42));
  OAI21X1  g18(.A0(new_n40), .A1(new_n32), .B0(new_n42), .Y(new_n43));
  XOR2X1   g19(.A(new_n43), .B(new_n39), .Y(\sum[4] ));
  XOR2X1   g20(.A(\B[5] ), .B(\A[5] ), .Y(new_n45));
  INVX1    g21(.A(new_n45), .Y(new_n46));
  AND2X1   g22(.A(\B[4] ), .B(\A[4] ), .Y(new_n47));
  AOI21X1  g23(.A0(new_n43), .A1(new_n39), .B0(new_n47), .Y(new_n48));
  XOR2X1   g24(.A(new_n48), .B(new_n46), .Y(\sum[5] ));
  INVX1    g25(.A(\A[6] ), .Y(new_n50));
  XOR2X1   g26(.A(\B[6] ), .B(new_n50), .Y(new_n51));
  AND2X1   g27(.A(new_n45), .B(new_n39), .Y(new_n52));
  AND2X1   g28(.A(\B[5] ), .B(\A[5] ), .Y(new_n53));
  AND2X1   g29(.A(new_n47), .B(new_n45), .Y(new_n54));
  OR2X1    g30(.A(new_n54), .B(new_n53), .Y(new_n55));
  AOI21X1  g31(.A0(new_n52), .A1(new_n43), .B0(new_n55), .Y(new_n56));
  XOR2X1   g32(.A(new_n56), .B(new_n51), .Y(\sum[6] ));
  XOR2X1   g33(.A(\B[7] ), .B(\A[7] ), .Y(new_n58));
  NAND2X1  g34(.A(\B[6] ), .B(\A[6] ), .Y(new_n59));
  OAI21X1  g35(.A0(new_n56), .A1(new_n51), .B0(new_n59), .Y(new_n60));
  XOR2X1   g36(.A(new_n60), .B(new_n58), .Y(\sum[7] ));
endmodule


