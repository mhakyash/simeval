// Benchmark "flip_flop" written by ABC on Wed Jun 26 15:22:21 2024

module flip_flop ( clock, 
    clk, reset, \d[0] , \d[1] , \d[2] , \d[3] , \d[4] , \d[5] , \d[6] ,
    \d[7] , \d[8] , \d[9] , \d[10] , \d[11] , \d[12] , \d[13] , \d[14] ,
    \d[15] , \d[16] ,
    \q[0] , \q[1] , \q[2] , \q[3] , \q[4] , \q[5] , \q[6] , \q[7] , \q[8] ,
    \q[9] , \q[10] , \q[11] , \q[12] , \q[13] , \q[14] , \q[15] , \q[16]   );
  input  clock;
  input  clk, reset, \d[0] , \d[1] , \d[2] , \d[3] , \d[4] , \d[5] ,
    \d[6] , \d[7] , \d[8] , \d[9] , \d[10] , \d[11] , \d[12] , \d[13] ,
    \d[14] , \d[15] , \d[16] ;
  output \q[0] , \q[1] , \q[2] , \q[3] , \q[4] , \q[5] , \q[6] , \q[7] ,
    \q[8] , \q[9] , \q[10] , \q[11] , \q[12] , \q[13] , \q[14] , \q[15] ,
    \q[16] ;
  reg \q[0] , \q[1] , \q[2] , \q[3] , \q[4] , \q[5] , \q[6] , \q[7] ,
    \q[8] , \q[9] , \q[10] , \q[11] , \q[12] , \q[13] , \q[14] , \q[15] ,
    \q[16] ;
  wire n74, n78, n82, n86, n90, n94, n98, n102, n106, n110, n114, n118, n122,
    n126, n130, n134, n138;
  AND2X1   g00(.A(\d[0] ), .B(reset), .Y(n74));
  AND2X1   g01(.A(\d[1] ), .B(reset), .Y(n78));
  AND2X1   g02(.A(\d[2] ), .B(reset), .Y(n82));
  AND2X1   g03(.A(\d[3] ), .B(reset), .Y(n86));
  AND2X1   g04(.A(\d[4] ), .B(reset), .Y(n90));
  AND2X1   g05(.A(\d[5] ), .B(reset), .Y(n94));
  AND2X1   g06(.A(\d[6] ), .B(reset), .Y(n98));
  AND2X1   g07(.A(\d[7] ), .B(reset), .Y(n102));
  AND2X1   g08(.A(\d[8] ), .B(reset), .Y(n106));
  AND2X1   g09(.A(\d[9] ), .B(reset), .Y(n110));
  AND2X1   g10(.A(\d[10] ), .B(reset), .Y(n114));
  AND2X1   g11(.A(\d[11] ), .B(reset), .Y(n118));
  AND2X1   g12(.A(\d[12] ), .B(reset), .Y(n122));
  AND2X1   g13(.A(\d[13] ), .B(reset), .Y(n126));
  AND2X1   g14(.A(\d[14] ), .B(reset), .Y(n130));
  AND2X1   g15(.A(\d[15] ), .B(reset), .Y(n134));
  AND2X1   g16(.A(\d[16] ), .B(reset), .Y(n138));
  always @ (posedge clock) begin
    \q[0]  <= n74;
    \q[1]  <= n78;
    \q[2]  <= n82;
    \q[3]  <= n86;
    \q[4]  <= n90;
    \q[5]  <= n94;
    \q[6]  <= n98;
    \q[7]  <= n102;
    \q[8]  <= n106;
    \q[9]  <= n110;
    \q[10]  <= n114;
    \q[11]  <= n118;
    \q[12]  <= n122;
    \q[13]  <= n126;
    \q[14]  <= n130;
    \q[15]  <= n134;
    \q[16]  <= n138;
  end
endmodule


