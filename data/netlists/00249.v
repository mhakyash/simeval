// Benchmark "top_module" written by ABC on Wed Jun 26 15:22:04 2024

module top_module ( clock, 
    clk, reset, \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] ,
    \in[6] , \in[7] , \in[8] , \in[9] , \in[10] , \in[11] , \in[12] ,
    \in[13] , \in[14] , \in[15] , \in[16] , \in[17] , \in[18] , \in[19] ,
    \in[20] , \in[21] , \in[22] , \in[23] , \in[24] , \in[25] , \in[26] ,
    \in[27] , \in[28] , \in[29] , \in[30] , \in[31] , \in[32] , \in[33] ,
    \in[34] , \in[35] , \in[36] , \in[37] , \in[38] , \in[39] , \in[40] ,
    \in[41] , \in[42] , \in[43] , \in[44] , \in[45] , \in[46] , \in[47] ,
    \in[48] , \in[49] , \in[50] , \in[51] , \in[52] , \in[53] , \in[54] ,
    \in[55] , \in[56] , \in[57] , \in[58] , \in[59] , \in[60] , \in[61] ,
    \in[62] , \in[63] , \in[64] , \in[65] , \in[66] , \in[67] , \in[68] ,
    \in[69] , \in[70] , \in[71] , \in[72] , \in[73] , \in[74] , \in[75] ,
    \in[76] , \in[77] , \in[78] , \in[79] , \in[80] , \in[81] , \in[82] ,
    \in[83] , \in[84] , \in[85] , \in[86] , \in[87] , \in[88] , \in[89] ,
    \in[90] , \in[91] , \in[92] , \in[93] , \in[94] , \in[95] , \in[96] ,
    \in[97] , \in[98] , \in[99] ,
    out_and, out_or, out_xor, \Q[0] , \Q[1] , \Q[2] , \Q[3] , \out_sum[0] ,
    \out_sum[1] , \out_sum[2] , \out_sum[3]   );
  input  clock;
  input  clk, reset, \in[0] , \in[1] , \in[2] , \in[3] , \in[4] ,
    \in[5] , \in[6] , \in[7] , \in[8] , \in[9] , \in[10] , \in[11] ,
    \in[12] , \in[13] , \in[14] , \in[15] , \in[16] , \in[17] , \in[18] ,
    \in[19] , \in[20] , \in[21] , \in[22] , \in[23] , \in[24] , \in[25] ,
    \in[26] , \in[27] , \in[28] , \in[29] , \in[30] , \in[31] , \in[32] ,
    \in[33] , \in[34] , \in[35] , \in[36] , \in[37] , \in[38] , \in[39] ,
    \in[40] , \in[41] , \in[42] , \in[43] , \in[44] , \in[45] , \in[46] ,
    \in[47] , \in[48] , \in[49] , \in[50] , \in[51] , \in[52] , \in[53] ,
    \in[54] , \in[55] , \in[56] , \in[57] , \in[58] , \in[59] , \in[60] ,
    \in[61] , \in[62] , \in[63] , \in[64] , \in[65] , \in[66] , \in[67] ,
    \in[68] , \in[69] , \in[70] , \in[71] , \in[72] , \in[73] , \in[74] ,
    \in[75] , \in[76] , \in[77] , \in[78] , \in[79] , \in[80] , \in[81] ,
    \in[82] , \in[83] , \in[84] , \in[85] , \in[86] , \in[87] , \in[88] ,
    \in[89] , \in[90] , \in[91] , \in[92] , \in[93] , \in[94] , \in[95] ,
    \in[96] , \in[97] , \in[98] , \in[99] ;
  output out_and, out_or, out_xor, \Q[0] , \Q[1] , \Q[2] , \Q[3] ,
    \out_sum[0] , \out_sum[1] , \out_sum[2] , \out_sum[3] ;
  reg \top_module|johnson_counter[0] , \top_module|johnson_counter[1] ,
    \top_module|johnson_counter[2] , \top_module|johnson_counter[3] ;
  wire new_n129, new_n130, new_n131, new_n132, new_n133, new_n134, new_n135,
    new_n136, new_n137, new_n138, new_n139, new_n140, new_n141, new_n142,
    new_n143, new_n144, new_n145, new_n146, new_n147, new_n148, new_n149,
    new_n150, new_n151, new_n152, new_n154, new_n155, new_n156, new_n158,
    new_n159, new_n160, new_n162, new_n163, new_n165, new_n166, new_n167,
    new_n168, new_n170, new_n171, new_n172, new_n174, new_n175, new_n176,
    new_n178, new_n179, new_n180, n241, n244, n247, n250;
  OR2X1    g00(.A(\in[1] ), .B(\in[0] ), .Y(out_or));
  XOR2X1   g01(.A(\in[1] ), .B(\in[0] ), .Y(out_xor));
  INVX1    g02(.A(\in[0] ), .Y(new_n129));
  XOR2X1   g03(.A(\in[1] ), .B(new_n129), .Y(new_n130));
  INVX1    g04(.A(\top_module|johnson_counter[0] ), .Y(new_n131));
  NOR4X1   g05(.A(\top_module|johnson_counter[3] ), .B(\top_module|johnson_counter[2] ), .C(\top_module|johnson_counter[1] ), .D(new_n131), .Y(new_n132));
  INVX1    g06(.A(\top_module|johnson_counter[1] ), .Y(new_n133));
  INVX1    g07(.A(\top_module|johnson_counter[2] ), .Y(new_n134));
  INVX1    g08(.A(\top_module|johnson_counter[3] ), .Y(new_n135));
  NOR4X1   g09(.A(new_n135), .B(new_n134), .C(new_n133), .D(\top_module|johnson_counter[0] ), .Y(new_n136));
  NOR4X1   g10(.A(new_n135), .B(new_n134), .C(new_n133), .D(new_n131), .Y(new_n137));
  MX2X1    g11(.A(new_n137), .B(new_n136), .S0(out_xor), .Y(new_n138));
  AOI21X1  g12(.A0(new_n132), .A1(new_n130), .B0(new_n138), .Y(new_n139));
  NOR4X1   g13(.A(\top_module|johnson_counter[3] ), .B(new_n134), .C(new_n133), .D(new_n131), .Y(new_n140));
  NOR4X1   g14(.A(\top_module|johnson_counter[3] ), .B(\top_module|johnson_counter[2] ), .C(new_n133), .D(new_n131), .Y(new_n141));
  OAI21X1  g15(.A0(new_n141), .A1(new_n140), .B0(new_n130), .Y(new_n142));
  NOR4X1   g16(.A(new_n135), .B(\top_module|johnson_counter[2] ), .C(\top_module|johnson_counter[1] ), .D(\top_module|johnson_counter[0] ), .Y(new_n143));
  NOR4X1   g17(.A(new_n135), .B(new_n134), .C(\top_module|johnson_counter[1] ), .D(\top_module|johnson_counter[0] ), .Y(new_n144));
  OAI21X1  g18(.A0(new_n144), .A1(new_n143), .B0(out_xor), .Y(new_n145));
  AND2X1   g19(.A(new_n145), .B(new_n142), .Y(new_n146));
  OR4X1    g20(.A(new_n144), .B(new_n143), .C(new_n137), .D(new_n136), .Y(new_n147));
  OR4X1    g21(.A(\top_module|johnson_counter[3] ), .B(\top_module|johnson_counter[2] ), .C(\top_module|johnson_counter[1] ), .D(new_n131), .Y(new_n148));
  OR4X1    g22(.A(\top_module|johnson_counter[3] ), .B(new_n134), .C(new_n133), .D(new_n131), .Y(new_n149));
  OR4X1    g23(.A(\top_module|johnson_counter[3] ), .B(\top_module|johnson_counter[2] ), .C(new_n133), .D(new_n131), .Y(new_n150));
  NAND3X1  g24(.A(new_n150), .B(new_n149), .C(new_n148), .Y(new_n151));
  NOR2X1   g25(.A(new_n151), .B(new_n147), .Y(new_n152));
  AOI21X1  g26(.A0(new_n146), .A1(new_n139), .B0(new_n152), .Y(\out_sum[0] ));
  AOI21X1  g27(.A0(new_n137), .A1(new_n130), .B0(new_n136), .Y(new_n154));
  NAND2X1  g28(.A(new_n132), .B(out_xor), .Y(new_n155));
  AND2X1   g29(.A(new_n155), .B(new_n142), .Y(new_n156));
  AOI21X1  g30(.A0(new_n156), .A1(new_n154), .B0(new_n152), .Y(\out_sum[1] ));
  NAND2X1  g31(.A(new_n141), .B(out_xor), .Y(new_n158));
  AOI21X1  g32(.A0(new_n140), .A1(new_n130), .B0(new_n144), .Y(new_n159));
  AND2X1   g33(.A(new_n159), .B(new_n158), .Y(new_n160));
  AOI21X1  g34(.A0(new_n160), .A1(new_n154), .B0(new_n152), .Y(\out_sum[2] ));
  OR2X1    g35(.A(new_n144), .B(new_n143), .Y(new_n162));
  AOI21X1  g36(.A0(new_n140), .A1(out_xor), .B0(new_n162), .Y(new_n163));
  AOI21X1  g37(.A0(new_n163), .A1(new_n154), .B0(new_n152), .Y(\out_sum[3] ));
  NOR4X1   g38(.A(new_n144), .B(new_n143), .C(new_n137), .D(new_n136), .Y(new_n165));
  NOR4X1   g39(.A(\top_module|johnson_counter[3] ), .B(\top_module|johnson_counter[2] ), .C(\top_module|johnson_counter[1] ), .D(\top_module|johnson_counter[0] ), .Y(new_n166));
  OR4X1    g40(.A(new_n166), .B(new_n141), .C(new_n140), .D(new_n132), .Y(new_n167));
  AOI21X1  g41(.A0(new_n165), .A1(\top_module|johnson_counter[0] ), .B0(new_n167), .Y(new_n168));
  NOR2X1   g42(.A(new_n168), .B(reset), .Y(n241));
  NOR4X1   g43(.A(new_n166), .B(new_n141), .C(new_n140), .D(new_n132), .Y(new_n170));
  NAND3X1  g44(.A(new_n170), .B(new_n165), .C(\top_module|johnson_counter[1] ), .Y(new_n171));
  OAI22X1  g45(.A0(new_n167), .A1(new_n147), .B0(new_n151), .B1(new_n137), .Y(new_n172));
  AOI21X1  g46(.A0(new_n172), .A1(new_n171), .B0(reset), .Y(n244));
  NAND3X1  g47(.A(new_n170), .B(new_n165), .C(\top_module|johnson_counter[2] ), .Y(new_n174));
  OR4X1    g48(.A(new_n141), .B(new_n140), .C(new_n137), .D(new_n136), .Y(new_n175));
  OAI21X1  g49(.A0(new_n167), .A1(new_n147), .B0(new_n175), .Y(new_n176));
  AOI21X1  g50(.A0(new_n176), .A1(new_n174), .B0(reset), .Y(n247));
  NAND3X1  g51(.A(new_n170), .B(new_n165), .C(\top_module|johnson_counter[3] ), .Y(new_n178));
  OR4X1    g52(.A(new_n144), .B(new_n140), .C(new_n137), .D(new_n136), .Y(new_n179));
  OAI21X1  g53(.A0(new_n167), .A1(new_n147), .B0(new_n179), .Y(new_n180));
  AOI21X1  g54(.A0(new_n180), .A1(new_n178), .B0(reset), .Y(n250));
  ZERO     g55(.Y(out_and));
  BUFX1    g56(.A(\top_module|johnson_counter[0] ), .Y(\Q[0] ));
  BUFX1    g57(.A(\top_module|johnson_counter[1] ), .Y(\Q[1] ));
  BUFX1    g58(.A(\top_module|johnson_counter[2] ), .Y(\Q[2] ));
  BUFX1    g59(.A(\top_module|johnson_counter[3] ), .Y(\Q[3] ));
  always @ (posedge clock) begin
    \top_module|johnson_counter[0]  <= n241;
    \top_module|johnson_counter[1]  <= n244;
    \top_module|johnson_counter[2]  <= n247;
    \top_module|johnson_counter[3]  <= n250;
  end
  initial begin
    \top_module|johnson_counter[0]  <= 1'b0;
    \top_module|johnson_counter[1]  <= 1'b0;
    \top_module|johnson_counter[2]  <= 1'b0;
    \top_module|johnson_counter[3]  <= 1'b0;
  end
endmodule


