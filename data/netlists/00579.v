// Benchmark "adder_with_multiplexer" written by ABC on Wed Jun 26 15:22:14 2024

module adder_with_multiplexer ( 
    \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] , sel,
    \sum[0] , \sum[1] , \sum[2] , \sum[3] , carry_out, greater_than_7  );
  input  \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ,
    sel;
  output \sum[0] , \sum[1] , \sum[2] , \sum[3] , carry_out, greater_than_7;
  wire new_n16, new_n18, new_n19, new_n22, new_n23, new_n24, new_n25,
    new_n26, new_n28, new_n29, new_n30, new_n31, new_n33, new_n34, new_n35,
    new_n36, new_n37;
  MX2X1    g00(.A(\A[0] ), .B(\B[0] ), .S0(sel), .Y(new_n16));
  XOR2X1   g01(.A(new_n16), .B(\A[0] ), .Y(\sum[0] ));
  MX2X1    g02(.A(\A[1] ), .B(\B[1] ), .S0(sel), .Y(new_n18));
  XOR2X1   g03(.A(new_n18), .B(\A[1] ), .Y(new_n19));
  AND2X1   g04(.A(new_n16), .B(\A[0] ), .Y(greater_than_7));
  XOR2X1   g05(.A(greater_than_7), .B(new_n19), .Y(\sum[1] ));
  INVX1    g06(.A(\A[2] ), .Y(new_n22));
  MX2X1    g07(.A(\A[2] ), .B(\B[2] ), .S0(sel), .Y(new_n23));
  XOR2X1   g08(.A(new_n23), .B(new_n22), .Y(new_n24));
  AND2X1   g09(.A(new_n18), .B(\A[1] ), .Y(new_n25));
  AOI21X1  g10(.A0(greater_than_7), .A1(new_n19), .B0(new_n25), .Y(new_n26));
  XOR2X1   g11(.A(new_n26), .B(new_n24), .Y(\sum[2] ));
  MX2X1    g12(.A(\A[3] ), .B(\B[3] ), .S0(sel), .Y(new_n28));
  XOR2X1   g13(.A(new_n28), .B(\A[3] ), .Y(new_n29));
  NAND2X1  g14(.A(new_n23), .B(\A[2] ), .Y(new_n30));
  OAI21X1  g15(.A0(new_n26), .A1(new_n24), .B0(new_n30), .Y(new_n31));
  XOR2X1   g16(.A(new_n31), .B(new_n29), .Y(\sum[3] ));
  XOR2X1   g17(.A(new_n23), .B(\A[2] ), .Y(new_n33));
  NAND2X1  g18(.A(new_n29), .B(new_n33), .Y(new_n34));
  AND2X1   g19(.A(new_n23), .B(\A[2] ), .Y(new_n35));
  AND2X1   g20(.A(new_n28), .B(\A[3] ), .Y(new_n36));
  AOI21X1  g21(.A0(new_n35), .A1(new_n29), .B0(new_n36), .Y(new_n37));
  OAI21X1  g22(.A0(new_n34), .A1(new_n26), .B0(new_n37), .Y(carry_out));
endmodule


