// Benchmark "comparator_4bit" written by ABC on Wed Jun 26 15:22:09 2024

module comparator_4bit ( clock, 
    clk, reset, \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] ,
    \B[3] ,
    greater, less, equal  );
  input  clock;
  input  clk, reset, \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] ,
    \B[2] , \B[3] ;
  output greater, less, equal;
  reg equal, greater, less;
  wire new_n23, new_n24, new_n25, new_n26, new_n27, new_n28_1, new_n29,
    new_n30, new_n31, new_n32_1, new_n33, new_n34, new_n35, new_n36_1,
    new_n37, new_n38, new_n39, new_n41, n28, n32, n36;
  XOR2X1   g00(.A(\B[3] ), .B(\A[3] ), .Y(new_n23));
  XOR2X1   g01(.A(\B[2] ), .B(\A[2] ), .Y(new_n24));
  NOR2X1   g02(.A(new_n24), .B(new_n23), .Y(new_n25));
  INVX1    g03(.A(\B[1] ), .Y(new_n26));
  AND2X1   g04(.A(new_n26), .B(\A[1] ), .Y(new_n27));
  INVX1    g05(.A(\A[0] ), .Y(new_n28_1));
  XOR2X1   g06(.A(\B[1] ), .B(\A[1] ), .Y(new_n29));
  AOI21X1  g07(.A0(\B[0] ), .A1(new_n28_1), .B0(new_n29), .Y(new_n30));
  OAI21X1  g08(.A0(new_n30), .A1(new_n27), .B0(new_n25), .Y(new_n31));
  INVX1    g09(.A(\B[3] ), .Y(new_n32_1));
  INVX1    g10(.A(\A[2] ), .Y(new_n33));
  NOR3X1   g11(.A(new_n23), .B(\B[2] ), .C(new_n33), .Y(new_n34));
  AOI21X1  g12(.A0(new_n32_1), .A1(\A[3] ), .B0(new_n34), .Y(new_n35));
  AND2X1   g13(.A(new_n35), .B(new_n31), .Y(new_n36_1));
  XOR2X1   g14(.A(\B[0] ), .B(\A[0] ), .Y(new_n37));
  NOR4X1   g15(.A(new_n37), .B(new_n29), .C(new_n24), .D(new_n23), .Y(new_n38));
  AOI21X1  g16(.A0(new_n35), .A1(new_n31), .B0(new_n38), .Y(new_n39));
  NOR3X1   g17(.A(new_n39), .B(new_n36_1), .C(reset), .Y(n28));
  INVX1    g18(.A(reset), .Y(new_n41));
  AND2X1   g19(.A(new_n39), .B(new_n41), .Y(n32));
  AND2X1   g20(.A(new_n36_1), .B(new_n41), .Y(n36));
  always @ (posedge clock) begin
    equal <= n28;
    greater <= n32;
    less <= n36;
  end
endmodule


