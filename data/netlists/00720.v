// Benchmark "mag_comparator_4bit" written by ABC on Wed Jun 26 15:22:18 2024

module mag_comparator_4bit ( clock, 
    \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ,
    LT  );
  input  clock;
  input  \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ;
  output LT;
  reg \B_reg[0] , \B_reg[1] , \B_reg[2] , \B_reg[3] , \stage[0] ,
    \stage[1] , LT, \A_reg[0] , \A_reg[1] , \A_reg[2] , \A_reg[3] ;
  wire new_n47, new_n48_1, new_n49, new_n50, new_n51, new_n52_1, new_n53,
    new_n54, new_n55, new_n56, new_n57_1, new_n58, new_n59, new_n60,
    new_n61, new_n62_1, new_n63, new_n64, n20, n25, n30, n35, n40, n44,
    n48, n52, n57, n62, n67;
  MX2X1    g00(.A(\B_reg[0] ), .B(\B[0] ), .S0(\stage[0] ), .Y(n20));
  MX2X1    g01(.A(\B_reg[1] ), .B(\B[1] ), .S0(\stage[0] ), .Y(n25));
  MX2X1    g02(.A(\B_reg[2] ), .B(\B[2] ), .S0(\stage[0] ), .Y(n30));
  MX2X1    g03(.A(\B_reg[3] ), .B(\B[3] ), .S0(\stage[0] ), .Y(n35));
  INVX1    g04(.A(\stage[1] ), .Y(new_n47));
  NAND2X1  g05(.A(LT), .B(new_n47), .Y(new_n48_1));
  XOR2X1   g06(.A(\A_reg[3] ), .B(\B_reg[3] ), .Y(new_n49));
  XOR2X1   g07(.A(\A_reg[2] ), .B(\B_reg[2] ), .Y(new_n50));
  NOR2X1   g08(.A(new_n50), .B(new_n49), .Y(new_n51));
  INVX1    g09(.A(\B_reg[1] ), .Y(new_n52_1));
  AND2X1   g10(.A(\A_reg[1] ), .B(new_n52_1), .Y(new_n53));
  INVX1    g11(.A(\A_reg[0] ), .Y(new_n54));
  XOR2X1   g12(.A(\A_reg[1] ), .B(\B_reg[1] ), .Y(new_n55));
  AOI21X1  g13(.A0(new_n54), .A1(\B_reg[0] ), .B0(new_n55), .Y(new_n56));
  OAI21X1  g14(.A0(new_n56), .A1(new_n53), .B0(new_n51), .Y(new_n57_1));
  INVX1    g15(.A(\B_reg[3] ), .Y(new_n58));
  INVX1    g16(.A(\A_reg[2] ), .Y(new_n59));
  NOR3X1   g17(.A(new_n49), .B(new_n59), .C(\B_reg[2] ), .Y(new_n60));
  AOI21X1  g18(.A0(\A_reg[3] ), .A1(new_n58), .B0(new_n60), .Y(new_n61));
  XOR2X1   g19(.A(\A_reg[0] ), .B(\B_reg[0] ), .Y(new_n62_1));
  NOR4X1   g20(.A(new_n62_1), .B(new_n55), .C(new_n50), .D(new_n49), .Y(new_n63));
  AOI21X1  g21(.A0(new_n61), .A1(new_n57_1), .B0(new_n63), .Y(new_n64));
  OAI21X1  g22(.A0(new_n64), .A1(new_n47), .B0(new_n48_1), .Y(n48));
  MX2X1    g23(.A(\A_reg[0] ), .B(\A[0] ), .S0(\stage[0] ), .Y(n52));
  MX2X1    g24(.A(\A_reg[1] ), .B(\A[1] ), .S0(\stage[0] ), .Y(n57));
  MX2X1    g25(.A(\A_reg[2] ), .B(\A[2] ), .S0(\stage[0] ), .Y(n62));
  MX2X1    g26(.A(\A_reg[3] ), .B(\A[3] ), .S0(\stage[0] ), .Y(n67));
  BUFX1    g27(.A(\stage[1] ), .Y(n40));
  BUFX1    g28(.A(\stage[0] ), .Y(n44));
  always @ (posedge clock) begin
    \B_reg[0]  <= n20;
    \B_reg[1]  <= n25;
    \B_reg[2]  <= n30;
    \B_reg[3]  <= n35;
    \stage[0]  <= n40;
    \stage[1]  <= n44;
    LT <= n48;
    \A_reg[0]  <= n52;
    \A_reg[1]  <= n57;
    \A_reg[2]  <= n62;
    \A_reg[3]  <= n67;
  end
endmodule


