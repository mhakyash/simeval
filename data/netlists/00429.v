// Benchmark "shift_reg_32" written by ABC on Wed Jun 26 15:22:10 2024

module shift_reg_32 ( clock, 
    clk, p_load, \p_data[0] , \p_data[1] , \p_data[2] , \p_data[3] ,
    \p_data[4] , \p_data[5] , \p_data[6] , \p_data[7] , \p_data[8] ,
    \p_data[9] , \p_data[10] , \p_data[11] , \p_data[12] , \p_data[13] ,
    \p_data[14] , \p_data[15] , \p_data[16] , \p_data[17] , \p_data[18] ,
    \p_data[19] , \p_data[20] , \p_data[21] , \p_data[22] , \p_data[23] ,
    \p_data[24] , \p_data[25] , \p_data[26] , \p_data[27] , \p_data[28] ,
    \p_data[29] , \p_data[30] , \p_data[31] , s_in, shift_en,
    s_out  );
  input  clock;
  input  clk, p_load, \p_data[0] , \p_data[1] , \p_data[2] , \p_data[3] ,
    \p_data[4] , \p_data[5] , \p_data[6] , \p_data[7] , \p_data[8] ,
    \p_data[9] , \p_data[10] , \p_data[11] , \p_data[12] , \p_data[13] ,
    \p_data[14] , \p_data[15] , \p_data[16] , \p_data[17] , \p_data[18] ,
    \p_data[19] , \p_data[20] , \p_data[21] , \p_data[22] , \p_data[23] ,
    \p_data[24] , \p_data[25] , \p_data[26] , \p_data[27] , \p_data[28] ,
    \p_data[29] , \p_data[30] , \p_data[31] , s_in, shift_en;
  output s_out;
  reg \shreg[0] , \shreg[1] , \shreg[2] , \shreg[3] , \shreg[4] ,
    \shreg[5] , \shreg[6] , \shreg[7] , \shreg[8] , \shreg[9] ,
    \shreg[10] , \shreg[11] , \shreg[12] , \shreg[13] , \shreg[14] ,
    \shreg[15] , \shreg[16] , \shreg[17] , \shreg[18] , \shreg[19] ,
    \shreg[20] , \shreg[21] , \shreg[22] , \shreg[23] , \shreg[24] ,
    \shreg[25] , \shreg[26] , \shreg[27] , \shreg[28] , \shreg[29] ,
    \shreg[30] , \shreg[31] ;
  wire new_n134, new_n136_1, new_n138, new_n140, new_n142, new_n144,
    new_n146_1, new_n148, new_n150, new_n152, new_n154, new_n156_1,
    new_n158, new_n160, new_n162, new_n164, new_n166_1, new_n168, new_n170,
    new_n172, new_n174, new_n176_1, new_n178, new_n180, new_n182, new_n184,
    new_n186_1, new_n188, new_n190, new_n192, new_n194, new_n196_1, n76,
    n81, n86, n91, n96, n101, n106, n111, n116, n121, n126, n131, n136,
    n141, n146, n151, n156, n161, n166, n171, n176, n181, n186, n191, n196,
    n201, n206, n211, n216, n221, n226, n231;
  MX2X1    g00(.A(\shreg[0] ), .B(s_in), .S0(shift_en), .Y(new_n134));
  MX2X1    g01(.A(new_n134), .B(\p_data[0] ), .S0(p_load), .Y(n76));
  MX2X1    g02(.A(\shreg[1] ), .B(\shreg[0] ), .S0(shift_en), .Y(new_n136_1));
  MX2X1    g03(.A(new_n136_1), .B(\p_data[1] ), .S0(p_load), .Y(n81));
  MX2X1    g04(.A(\shreg[2] ), .B(\shreg[1] ), .S0(shift_en), .Y(new_n138));
  MX2X1    g05(.A(new_n138), .B(\p_data[2] ), .S0(p_load), .Y(n86));
  MX2X1    g06(.A(\shreg[3] ), .B(\shreg[2] ), .S0(shift_en), .Y(new_n140));
  MX2X1    g07(.A(new_n140), .B(\p_data[3] ), .S0(p_load), .Y(n91));
  MX2X1    g08(.A(\shreg[4] ), .B(\shreg[3] ), .S0(shift_en), .Y(new_n142));
  MX2X1    g09(.A(new_n142), .B(\p_data[4] ), .S0(p_load), .Y(n96));
  MX2X1    g10(.A(\shreg[5] ), .B(\shreg[4] ), .S0(shift_en), .Y(new_n144));
  MX2X1    g11(.A(new_n144), .B(\p_data[5] ), .S0(p_load), .Y(n101));
  MX2X1    g12(.A(\shreg[6] ), .B(\shreg[5] ), .S0(shift_en), .Y(new_n146_1));
  MX2X1    g13(.A(new_n146_1), .B(\p_data[6] ), .S0(p_load), .Y(n106));
  MX2X1    g14(.A(\shreg[7] ), .B(\shreg[6] ), .S0(shift_en), .Y(new_n148));
  MX2X1    g15(.A(new_n148), .B(\p_data[7] ), .S0(p_load), .Y(n111));
  MX2X1    g16(.A(\shreg[8] ), .B(\shreg[7] ), .S0(shift_en), .Y(new_n150));
  MX2X1    g17(.A(new_n150), .B(\p_data[8] ), .S0(p_load), .Y(n116));
  MX2X1    g18(.A(\shreg[9] ), .B(\shreg[8] ), .S0(shift_en), .Y(new_n152));
  MX2X1    g19(.A(new_n152), .B(\p_data[9] ), .S0(p_load), .Y(n121));
  MX2X1    g20(.A(\shreg[10] ), .B(\shreg[9] ), .S0(shift_en), .Y(new_n154));
  MX2X1    g21(.A(new_n154), .B(\p_data[10] ), .S0(p_load), .Y(n126));
  MX2X1    g22(.A(\shreg[11] ), .B(\shreg[10] ), .S0(shift_en), .Y(new_n156_1));
  MX2X1    g23(.A(new_n156_1), .B(\p_data[11] ), .S0(p_load), .Y(n131));
  MX2X1    g24(.A(\shreg[12] ), .B(\shreg[11] ), .S0(shift_en), .Y(new_n158));
  MX2X1    g25(.A(new_n158), .B(\p_data[12] ), .S0(p_load), .Y(n136));
  MX2X1    g26(.A(\shreg[13] ), .B(\shreg[12] ), .S0(shift_en), .Y(new_n160));
  MX2X1    g27(.A(new_n160), .B(\p_data[13] ), .S0(p_load), .Y(n141));
  MX2X1    g28(.A(\shreg[14] ), .B(\shreg[13] ), .S0(shift_en), .Y(new_n162));
  MX2X1    g29(.A(new_n162), .B(\p_data[14] ), .S0(p_load), .Y(n146));
  MX2X1    g30(.A(\shreg[15] ), .B(\shreg[14] ), .S0(shift_en), .Y(new_n164));
  MX2X1    g31(.A(new_n164), .B(\p_data[15] ), .S0(p_load), .Y(n151));
  MX2X1    g32(.A(\shreg[16] ), .B(\shreg[15] ), .S0(shift_en), .Y(new_n166_1));
  MX2X1    g33(.A(new_n166_1), .B(\p_data[16] ), .S0(p_load), .Y(n156));
  MX2X1    g34(.A(\shreg[17] ), .B(\shreg[16] ), .S0(shift_en), .Y(new_n168));
  MX2X1    g35(.A(new_n168), .B(\p_data[17] ), .S0(p_load), .Y(n161));
  MX2X1    g36(.A(\shreg[18] ), .B(\shreg[17] ), .S0(shift_en), .Y(new_n170));
  MX2X1    g37(.A(new_n170), .B(\p_data[18] ), .S0(p_load), .Y(n166));
  MX2X1    g38(.A(\shreg[19] ), .B(\shreg[18] ), .S0(shift_en), .Y(new_n172));
  MX2X1    g39(.A(new_n172), .B(\p_data[19] ), .S0(p_load), .Y(n171));
  MX2X1    g40(.A(\shreg[20] ), .B(\shreg[19] ), .S0(shift_en), .Y(new_n174));
  MX2X1    g41(.A(new_n174), .B(\p_data[20] ), .S0(p_load), .Y(n176));
  MX2X1    g42(.A(\shreg[21] ), .B(\shreg[20] ), .S0(shift_en), .Y(new_n176_1));
  MX2X1    g43(.A(new_n176_1), .B(\p_data[21] ), .S0(p_load), .Y(n181));
  MX2X1    g44(.A(\shreg[22] ), .B(\shreg[21] ), .S0(shift_en), .Y(new_n178));
  MX2X1    g45(.A(new_n178), .B(\p_data[22] ), .S0(p_load), .Y(n186));
  MX2X1    g46(.A(\shreg[23] ), .B(\shreg[22] ), .S0(shift_en), .Y(new_n180));
  MX2X1    g47(.A(new_n180), .B(\p_data[23] ), .S0(p_load), .Y(n191));
  MX2X1    g48(.A(\shreg[24] ), .B(\shreg[23] ), .S0(shift_en), .Y(new_n182));
  MX2X1    g49(.A(new_n182), .B(\p_data[24] ), .S0(p_load), .Y(n196));
  MX2X1    g50(.A(\shreg[25] ), .B(\shreg[24] ), .S0(shift_en), .Y(new_n184));
  MX2X1    g51(.A(new_n184), .B(\p_data[25] ), .S0(p_load), .Y(n201));
  MX2X1    g52(.A(\shreg[26] ), .B(\shreg[25] ), .S0(shift_en), .Y(new_n186_1));
  MX2X1    g53(.A(new_n186_1), .B(\p_data[26] ), .S0(p_load), .Y(n206));
  MX2X1    g54(.A(\shreg[27] ), .B(\shreg[26] ), .S0(shift_en), .Y(new_n188));
  MX2X1    g55(.A(new_n188), .B(\p_data[27] ), .S0(p_load), .Y(n211));
  MX2X1    g56(.A(\shreg[28] ), .B(\shreg[27] ), .S0(shift_en), .Y(new_n190));
  MX2X1    g57(.A(new_n190), .B(\p_data[28] ), .S0(p_load), .Y(n216));
  MX2X1    g58(.A(\shreg[29] ), .B(\shreg[28] ), .S0(shift_en), .Y(new_n192));
  MX2X1    g59(.A(new_n192), .B(\p_data[29] ), .S0(p_load), .Y(n221));
  MX2X1    g60(.A(\shreg[30] ), .B(\shreg[29] ), .S0(shift_en), .Y(new_n194));
  MX2X1    g61(.A(new_n194), .B(\p_data[30] ), .S0(p_load), .Y(n226));
  MX2X1    g62(.A(\shreg[31] ), .B(\shreg[30] ), .S0(shift_en), .Y(new_n196_1));
  MX2X1    g63(.A(new_n196_1), .B(\p_data[31] ), .S0(p_load), .Y(n231));
  BUFX1    g64(.A(\shreg[31] ), .Y(s_out));
  always @ (posedge clock) begin
    \shreg[0]  <= n76;
    \shreg[1]  <= n81;
    \shreg[2]  <= n86;
    \shreg[3]  <= n91;
    \shreg[4]  <= n96;
    \shreg[5]  <= n101;
    \shreg[6]  <= n106;
    \shreg[7]  <= n111;
    \shreg[8]  <= n116;
    \shreg[9]  <= n121;
    \shreg[10]  <= n126;
    \shreg[11]  <= n131;
    \shreg[12]  <= n136;
    \shreg[13]  <= n141;
    \shreg[14]  <= n146;
    \shreg[15]  <= n151;
    \shreg[16]  <= n156;
    \shreg[17]  <= n161;
    \shreg[18]  <= n166;
    \shreg[19]  <= n171;
    \shreg[20]  <= n176;
    \shreg[21]  <= n181;
    \shreg[22]  <= n186;
    \shreg[23]  <= n191;
    \shreg[24]  <= n196;
    \shreg[25]  <= n201;
    \shreg[26]  <= n206;
    \shreg[27]  <= n211;
    \shreg[28]  <= n216;
    \shreg[29]  <= n221;
    \shreg[30]  <= n226;
    \shreg[31]  <= n231;
  end
endmodule


