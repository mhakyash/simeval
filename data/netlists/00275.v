// Benchmark "data_extract" written by ABC on Wed Jun 26 15:22:05 2024

module data_extract ( clock, 
    clk, reset, \data_in[0] , \data_in[1] , \data_in[2] , \data_in[3] ,
    \data_in[4] , \data_in[5] , \data_in[6] , \data_in[7] , \data_in[8] ,
    \data_in[9] , \data_in[10] , \data_in[11] , \data_in[12] ,
    \data_in[13] , \data_in[14] , \data_in[15] , \data_in[16] ,
    \data_in[17] , \data_in[18] , \data_in[19] , \data_in[20] ,
    \data_in[21] , \data_in[22] , \data_in[23] , \data_in[24] ,
    \data_in[25] , \data_in[26] , \data_in[27] , \data_in[28] ,
    \data_in[29] , \data_in[30] , \data_in[31] ,
    \data_out[0] , \data_out[1] , \data_out[2] , \data_out[3] ,
    \data_out[4] , \data_out[5] , \data_out[6] , \data_out[7] ,
    \data_out[8] , \data_out[9] , \data_out[10] , \data_out[11] ,
    \data_out[12] , \data_out[13] , \data_out[14] , \data_out[15]   );
  input  clock;
  input  clk, reset, \data_in[0] , \data_in[1] , \data_in[2] ,
    \data_in[3] , \data_in[4] , \data_in[5] , \data_in[6] , \data_in[7] ,
    \data_in[8] , \data_in[9] , \data_in[10] , \data_in[11] ,
    \data_in[12] , \data_in[13] , \data_in[14] , \data_in[15] ,
    \data_in[16] , \data_in[17] , \data_in[18] , \data_in[19] ,
    \data_in[20] , \data_in[21] , \data_in[22] , \data_in[23] ,
    \data_in[24] , \data_in[25] , \data_in[26] , \data_in[27] ,
    \data_in[28] , \data_in[29] , \data_in[30] , \data_in[31] ;
  output \data_out[0] , \data_out[1] , \data_out[2] , \data_out[3] ,
    \data_out[4] , \data_out[5] , \data_out[6] , \data_out[7] ,
    \data_out[8] , \data_out[9] , \data_out[10] , \data_out[11] ,
    \data_out[12] , \data_out[13] , \data_out[14] , \data_out[15] ;
  reg \data_out[0] , \data_out[1] , \data_out[2] , \data_out[3] ,
    \data_out[4] , \data_out[5] , \data_out[6] , \data_out[7] ,
    \data_out[8] , \data_out[9] , \data_out[10] , \data_out[11] ,
    \data_out[12] , \data_out[13] , \data_out[14] , \data_out[15] ;
  wire new_n99, n102, n106, n110, n114, n118, n122, n126, n130, n134, n138,
    n142, n146, n150, n154, n158, n162;
  INVX1    g00(.A(reset), .Y(new_n99));
  AND2X1   g01(.A(\data_in[0] ), .B(new_n99), .Y(n102));
  AND2X1   g02(.A(\data_in[1] ), .B(new_n99), .Y(n106));
  AND2X1   g03(.A(\data_in[2] ), .B(new_n99), .Y(n110));
  AND2X1   g04(.A(\data_in[3] ), .B(new_n99), .Y(n114));
  AND2X1   g05(.A(\data_in[4] ), .B(new_n99), .Y(n118));
  AND2X1   g06(.A(\data_in[5] ), .B(new_n99), .Y(n122));
  AND2X1   g07(.A(\data_in[6] ), .B(new_n99), .Y(n126));
  AND2X1   g08(.A(\data_in[7] ), .B(new_n99), .Y(n130));
  AND2X1   g09(.A(\data_in[8] ), .B(new_n99), .Y(n134));
  AND2X1   g10(.A(\data_in[9] ), .B(new_n99), .Y(n138));
  AND2X1   g11(.A(\data_in[10] ), .B(new_n99), .Y(n142));
  AND2X1   g12(.A(\data_in[11] ), .B(new_n99), .Y(n146));
  AND2X1   g13(.A(\data_in[12] ), .B(new_n99), .Y(n150));
  AND2X1   g14(.A(\data_in[13] ), .B(new_n99), .Y(n154));
  AND2X1   g15(.A(\data_in[14] ), .B(new_n99), .Y(n158));
  AND2X1   g16(.A(\data_in[15] ), .B(new_n99), .Y(n162));
  always @ (posedge clock) begin
    \data_out[0]  <= n102;
    \data_out[1]  <= n106;
    \data_out[2]  <= n110;
    \data_out[3]  <= n114;
    \data_out[4]  <= n118;
    \data_out[5]  <= n122;
    \data_out[6]  <= n126;
    \data_out[7]  <= n130;
    \data_out[8]  <= n134;
    \data_out[9]  <= n138;
    \data_out[10]  <= n142;
    \data_out[11]  <= n146;
    \data_out[12]  <= n150;
    \data_out[13]  <= n154;
    \data_out[14]  <= n158;
    \data_out[15]  <= n162;
  end
endmodule


