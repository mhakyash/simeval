// Benchmark "lfsr" written by ABC on Wed Jun 26 15:22:06 2024

module lfsr ( clock, 
    rst, clk, base,
    out  );
  input  clock;
  input  rst, clk, base;
  output out;
  reg \bb[5] , \bb[6] , \bb[7] , \bb[8] , \bb[9] , \bb[10] , \bb[11] ,
    \bb[12] , \bb[13] , \bb[14] , \bb[15] , \bb[16] , \bb[0] , \bb[1] ,
    \bb[2] , \bb[3] , \bb[4] ;
  wire new_n56, new_n57, new_n59, new_n61, new_n63, new_n65_1, new_n67,
    new_n69, new_n71, new_n73, new_n75_1, new_n77, new_n79, new_n81,
    new_n82, new_n83, new_n84, new_n85_1, new_n87, new_n89, new_n91,
    new_n93, n10, n15, n20, n25, n30, n35, n40, n45, n50, n55, n60, n65,
    n70, n75, n80, n85, n90;
  INVX1    g00(.A(rst), .Y(new_n56));
  MX2X1    g01(.A(\bb[5] ), .B(\bb[4] ), .S0(base), .Y(new_n57));
  AND2X1   g02(.A(new_n57), .B(new_n56), .Y(n10));
  MX2X1    g03(.A(\bb[6] ), .B(\bb[5] ), .S0(base), .Y(new_n59));
  AND2X1   g04(.A(new_n59), .B(new_n56), .Y(n15));
  MX2X1    g05(.A(\bb[7] ), .B(\bb[6] ), .S0(base), .Y(new_n61));
  AND2X1   g06(.A(new_n61), .B(new_n56), .Y(n20));
  MX2X1    g07(.A(\bb[8] ), .B(\bb[7] ), .S0(base), .Y(new_n63));
  AND2X1   g08(.A(new_n63), .B(new_n56), .Y(n25));
  MX2X1    g09(.A(\bb[9] ), .B(\bb[8] ), .S0(base), .Y(new_n65_1));
  AND2X1   g10(.A(new_n65_1), .B(new_n56), .Y(n30));
  MX2X1    g11(.A(\bb[10] ), .B(\bb[9] ), .S0(base), .Y(new_n67));
  AND2X1   g12(.A(new_n67), .B(new_n56), .Y(n35));
  MX2X1    g13(.A(\bb[11] ), .B(\bb[10] ), .S0(base), .Y(new_n69));
  AND2X1   g14(.A(new_n69), .B(new_n56), .Y(n40));
  MX2X1    g15(.A(\bb[12] ), .B(\bb[11] ), .S0(base), .Y(new_n71));
  AND2X1   g16(.A(new_n71), .B(new_n56), .Y(n45));
  MX2X1    g17(.A(\bb[13] ), .B(\bb[12] ), .S0(base), .Y(new_n73));
  AND2X1   g18(.A(new_n73), .B(new_n56), .Y(n50));
  MX2X1    g19(.A(\bb[14] ), .B(\bb[13] ), .S0(base), .Y(new_n75_1));
  AND2X1   g20(.A(new_n75_1), .B(new_n56), .Y(n55));
  MX2X1    g21(.A(\bb[15] ), .B(\bb[14] ), .S0(base), .Y(new_n77));
  AND2X1   g22(.A(new_n77), .B(new_n56), .Y(n60));
  MX2X1    g23(.A(\bb[16] ), .B(\bb[15] ), .S0(base), .Y(new_n79));
  AND2X1   g24(.A(new_n79), .B(new_n56), .Y(n65));
  INVX1    g25(.A(\bb[0] ), .Y(new_n81));
  INVX1    g26(.A(\bb[16] ), .Y(new_n82));
  AND2X1   g27(.A(new_n82), .B(\bb[13] ), .Y(new_n83));
  OAI21X1  g28(.A0(new_n82), .A1(\bb[13] ), .B0(base), .Y(new_n84));
  OAI22X1  g29(.A0(new_n84), .A1(new_n83), .B0(new_n81), .B1(base), .Y(new_n85_1));
  AND2X1   g30(.A(new_n85_1), .B(new_n56), .Y(n70));
  MX2X1    g31(.A(\bb[1] ), .B(\bb[0] ), .S0(base), .Y(new_n87));
  AND2X1   g32(.A(new_n87), .B(new_n56), .Y(n75));
  MX2X1    g33(.A(\bb[2] ), .B(\bb[1] ), .S0(base), .Y(new_n89));
  AND2X1   g34(.A(new_n89), .B(new_n56), .Y(n80));
  MX2X1    g35(.A(\bb[3] ), .B(\bb[2] ), .S0(base), .Y(new_n91));
  AND2X1   g36(.A(new_n91), .B(new_n56), .Y(n85));
  MX2X1    g37(.A(\bb[4] ), .B(\bb[3] ), .S0(base), .Y(new_n93));
  AND2X1   g38(.A(new_n93), .B(new_n56), .Y(n90));
  BUFX1    g39(.A(\bb[16] ), .Y(out));
  always @ (posedge clock) begin
    \bb[5]  <= n10;
    \bb[6]  <= n15;
    \bb[7]  <= n20;
    \bb[8]  <= n25;
    \bb[9]  <= n30;
    \bb[10]  <= n35;
    \bb[11]  <= n40;
    \bb[12]  <= n45;
    \bb[13]  <= n50;
    \bb[14]  <= n55;
    \bb[15]  <= n60;
    \bb[16]  <= n65;
    \bb[0]  <= n70;
    \bb[1]  <= n75;
    \bb[2]  <= n80;
    \bb[3]  <= n85;
    \bb[4]  <= n90;
  end
endmodule


