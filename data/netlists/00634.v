// Benchmark "up_down_counter_3bit" written by ABC on Wed Jun 26 15:22:16 2024

module up_down_counter_3bit ( clock, 
    CLK, UP_DOWN,
    \Q[0] , \Q[1] , \Q[2]   );
  input  clock;
  input  CLK, UP_DOWN;
  output \Q[0] , \Q[1] , \Q[2] ;
  reg \Q[0] , \Q[1] , \Q[2] ;
  wire new_n15, new_n16_1, new_n17, new_n19, new_n20_1, new_n21, new_n22,
    new_n24, new_n25, new_n26, new_n27, new_n28, new_n29, new_n30, n12,
    n16, n20;
  NOR2X1   g00(.A(\Q[0] ), .B(UP_DOWN), .Y(new_n15));
  INVX1    g01(.A(\Q[0] ), .Y(new_n16_1));
  AND2X1   g02(.A(new_n16_1), .B(UP_DOWN), .Y(new_n17));
  OR2X1    g03(.A(new_n17), .B(new_n15), .Y(n12));
  XOR2X1   g04(.A(\Q[1] ), .B(\Q[0] ), .Y(new_n19));
  XOR2X1   g05(.A(\Q[1] ), .B(new_n16_1), .Y(new_n20_1));
  NAND3X1  g06(.A(\Q[2] ), .B(\Q[1] ), .C(\Q[0] ), .Y(new_n21));
  NAND2X1  g07(.A(new_n21), .B(UP_DOWN), .Y(new_n22));
  OAI22X1  g08(.A0(new_n22), .A1(new_n20_1), .B0(new_n19), .B1(UP_DOWN), .Y(n16));
  NOR3X1   g09(.A(\Q[2] ), .B(\Q[1] ), .C(\Q[0] ), .Y(new_n24));
  INVX1    g10(.A(\Q[1] ), .Y(new_n25));
  INVX1    g11(.A(\Q[2] ), .Y(new_n26));
  AOI21X1  g12(.A0(new_n25), .A1(new_n16_1), .B0(new_n26), .Y(new_n27));
  NOR2X1   g13(.A(new_n27), .B(new_n24), .Y(new_n28));
  AND2X1   g14(.A(\Q[1] ), .B(\Q[0] ), .Y(new_n29));
  XOR2X1   g15(.A(new_n29), .B(new_n26), .Y(new_n30));
  OAI22X1  g16(.A0(new_n30), .A1(new_n22), .B0(new_n28), .B1(UP_DOWN), .Y(n20));
  always @ (posedge clock) begin
    \Q[0]  <= n12;
    \Q[1]  <= n16;
    \Q[2]  <= n20;
  end
endmodule


