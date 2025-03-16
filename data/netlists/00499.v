// Benchmark "test" written by ABC on Wed Jun 26 15:22:12 2024

module test ( 
    rst, clk, \inst_in[0] , \inst_in[1] , \inst_in[2] , \inst_in[3] ,
    \inst_in[4] , \inst_in[5] , \inst_in[6] , \inst_in[7] , \inst_in[8] ,
    \inst_in[9] , \inst_in[10] , \inst_in[11] , \inst_in[12] ,
    \inst_in[13] , \inst_in[14] , \inst_in[15] , \inst_in[16] ,
    \inst_in[17] , \inst_in[18] , \inst_in[19] , \flg_in[0] , \flg_in[1] ,
    \flg_in[2] , \flg_in[3] , \sr_in[0] , \sr_in[1] , \sr_in[2] ,
    \sr_in[3] , \sr_in[4] , \sr_in[5] , \sr_in[6] , \sr_in[7] , \sr_in[8] ,
    \sr_in[9] , \sr_in[10] , \sr_in[11] , \sr_in[12] , \sr_in[13] ,
    \sr_in[14] , \sr_in[15] , \a_src[0] , \a_src[1] , \a_src[2] ,
    \a_src[3] , \a_src[4] , \a_src[5] , \a_src[6] , \a_src[7] , \a_src[8] ,
    \a_src[9] , \a_src[10] , \a_src[11] , \a_src[12] , \a_src[13] ,
    \a_src[14] , \a_src[15] , \ea1b[0] , \ea1b[1] , \ea1b[2] , \ea1b[3] ,
    \ea1b[4] , \ea1b[5] , \ea1b[6] , \ea1b[7] , \ea1b[8] , \ea1b[9] ,
    \ea1b[10] , \ea1b[11] , \ea1b[12] , \ea1b[13] , \ea1b[14] , \ea1b[15] ,
    \extw[0] , \extw[1] , \extw[2] , \extw[3] , \extw[4] , \extw[5] ,
    \extw[6] , \extw[7] , \extw[8] , \extw[9] , \extw[10] , \extw[11] ,
    \extw[12] , \extw[13] , \extw[14] , \extw[15] ,
    branch  );
  input  rst, clk, \inst_in[0] , \inst_in[1] , \inst_in[2] ,
    \inst_in[3] , \inst_in[4] , \inst_in[5] , \inst_in[6] , \inst_in[7] ,
    \inst_in[8] , \inst_in[9] , \inst_in[10] , \inst_in[11] ,
    \inst_in[12] , \inst_in[13] , \inst_in[14] , \inst_in[15] ,
    \inst_in[16] , \inst_in[17] , \inst_in[18] , \inst_in[19] ,
    \flg_in[0] , \flg_in[1] , \flg_in[2] , \flg_in[3] , \sr_in[0] ,
    \sr_in[1] , \sr_in[2] , \sr_in[3] , \sr_in[4] , \sr_in[5] , \sr_in[6] ,
    \sr_in[7] , \sr_in[8] , \sr_in[9] , \sr_in[10] , \sr_in[11] ,
    \sr_in[12] , \sr_in[13] , \sr_in[14] , \sr_in[15] , \a_src[0] ,
    \a_src[1] , \a_src[2] , \a_src[3] , \a_src[4] , \a_src[5] , \a_src[6] ,
    \a_src[7] , \a_src[8] , \a_src[9] , \a_src[10] , \a_src[11] ,
    \a_src[12] , \a_src[13] , \a_src[14] , \a_src[15] , \ea1b[0] ,
    \ea1b[1] , \ea1b[2] , \ea1b[3] , \ea1b[4] , \ea1b[5] , \ea1b[6] ,
    \ea1b[7] , \ea1b[8] , \ea1b[9] , \ea1b[10] , \ea1b[11] , \ea1b[12] ,
    \ea1b[13] , \ea1b[14] , \ea1b[15] , \extw[0] , \extw[1] , \extw[2] ,
    \extw[3] , \extw[4] , \extw[5] , \extw[6] , \extw[7] , \extw[8] ,
    \extw[9] , \extw[10] , \extw[11] , \extw[12] , \extw[13] , \extw[14] ,
    \extw[15] ;
  output branch;
  wire new_n92, new_n93, new_n94, new_n95, new_n96, new_n97, new_n98,
    new_n99, new_n100, new_n101, new_n102, new_n103, new_n104, new_n105,
    new_n106, new_n107, new_n108, new_n109, new_n110, new_n111, new_n112,
    new_n113, new_n114, new_n115, new_n116, new_n117, new_n118, new_n119,
    new_n120, new_n121, new_n122, new_n123, new_n124, new_n125, new_n126,
    new_n127, new_n128, new_n129, new_n130, new_n131, new_n132, new_n133,
    new_n134, new_n135, new_n136, new_n137, new_n138;
  INVX1    g00(.A(\inst_in[12] ), .Y(new_n92));
  INVX1    g01(.A(\inst_in[14] ), .Y(new_n93));
  INVX1    g02(.A(\inst_in[15] ), .Y(new_n94));
  OR4X1    g03(.A(new_n94), .B(new_n93), .C(\inst_in[13] ), .D(new_n92), .Y(new_n95));
  OR4X1    g04(.A(new_n94), .B(new_n93), .C(\inst_in[13] ), .D(\inst_in[12] ), .Y(new_n96));
  NAND2X1  g05(.A(new_n96), .B(new_n95), .Y(new_n97));
  INVX1    g06(.A(\inst_in[13] ), .Y(new_n98));
  OR4X1    g07(.A(new_n94), .B(\inst_in[14] ), .C(new_n98), .D(new_n92), .Y(new_n99));
  OR4X1    g08(.A(new_n94), .B(\inst_in[14] ), .C(new_n98), .D(\inst_in[12] ), .Y(new_n100));
  OR4X1    g09(.A(new_n94), .B(\inst_in[14] ), .C(\inst_in[13] ), .D(new_n92), .Y(new_n101));
  OR4X1    g10(.A(new_n94), .B(\inst_in[14] ), .C(\inst_in[13] ), .D(\inst_in[12] ), .Y(new_n102));
  NAND4X1  g11(.A(new_n102), .B(new_n101), .C(new_n100), .D(new_n99), .Y(new_n103));
  OR4X1    g12(.A(\inst_in[15] ), .B(\inst_in[14] ), .C(new_n98), .D(new_n92), .Y(new_n104));
  OR4X1    g13(.A(\inst_in[15] ), .B(\inst_in[14] ), .C(new_n98), .D(\inst_in[12] ), .Y(new_n105));
  OR4X1    g14(.A(\inst_in[15] ), .B(\inst_in[14] ), .C(\inst_in[13] ), .D(new_n92), .Y(new_n106));
  OR4X1    g15(.A(\inst_in[15] ), .B(\inst_in[14] ), .C(\inst_in[13] ), .D(\inst_in[12] ), .Y(new_n107));
  NAND4X1  g16(.A(new_n107), .B(new_n106), .C(new_n105), .D(new_n104), .Y(new_n108));
  OR4X1    g17(.A(\inst_in[15] ), .B(new_n93), .C(new_n98), .D(new_n92), .Y(new_n109));
  OR4X1    g18(.A(\inst_in[15] ), .B(new_n93), .C(new_n98), .D(\inst_in[12] ), .Y(new_n110));
  OR4X1    g19(.A(\inst_in[15] ), .B(new_n93), .C(\inst_in[13] ), .D(new_n92), .Y(new_n111));
  OR4X1    g20(.A(\inst_in[15] ), .B(new_n93), .C(\inst_in[13] ), .D(\inst_in[12] ), .Y(new_n112));
  NAND4X1  g21(.A(new_n112), .B(new_n111), .C(new_n110), .D(new_n109), .Y(new_n113));
  OR4X1    g22(.A(new_n113), .B(new_n108), .C(new_n103), .D(new_n97), .Y(new_n114));
  INVX1    g23(.A(\inst_in[11] ), .Y(new_n115));
  XOR2X1   g24(.A(\sr_in[15] ), .B(new_n115), .Y(new_n116));
  XOR2X1   g25(.A(\sr_in[13] ), .B(new_n115), .Y(new_n117));
  OAI22X1  g26(.A0(new_n117), .A1(new_n96), .B0(new_n116), .B1(new_n95), .Y(new_n118));
  XOR2X1   g27(.A(\sr_in[11] ), .B(new_n115), .Y(new_n119));
  XOR2X1   g28(.A(\sr_in[5] ), .B(new_n115), .Y(new_n120));
  OAI22X1  g29(.A0(new_n120), .A1(new_n100), .B0(new_n119), .B1(new_n99), .Y(new_n121));
  XOR2X1   g30(.A(\sr_in[3] ), .B(new_n115), .Y(new_n122));
  XOR2X1   g31(.A(\sr_in[1] ), .B(new_n115), .Y(new_n123));
  OAI22X1  g32(.A0(new_n123), .A1(new_n102), .B0(new_n122), .B1(new_n101), .Y(new_n124));
  NOR3X1   g33(.A(new_n124), .B(new_n121), .C(new_n118), .Y(new_n125));
  XOR2X1   g34(.A(\flg_in[3] ), .B(new_n115), .Y(new_n126));
  XOR2X1   g35(.A(\flg_in[2] ), .B(new_n115), .Y(new_n127));
  OAI22X1  g36(.A0(new_n127), .A1(new_n105), .B0(new_n126), .B1(new_n104), .Y(new_n128));
  XOR2X1   g37(.A(\flg_in[1] ), .B(new_n115), .Y(new_n129));
  XOR2X1   g38(.A(\sr_in[12] ), .B(new_n115), .Y(new_n130));
  OAI22X1  g39(.A0(new_n130), .A1(new_n107), .B0(new_n129), .B1(new_n106), .Y(new_n131));
  XOR2X1   g40(.A(\extw[11] ), .B(new_n115), .Y(new_n132));
  XOR2X1   g41(.A(\ea1b[7] ), .B(new_n115), .Y(new_n133));
  OAI22X1  g42(.A0(new_n133), .A1(new_n110), .B0(new_n132), .B1(new_n109), .Y(new_n134));
  XOR2X1   g43(.A(\ea1b[4] ), .B(new_n115), .Y(new_n135));
  XOR2X1   g44(.A(\a_src[0] ), .B(new_n115), .Y(new_n136));
  OAI22X1  g45(.A0(new_n136), .A1(new_n112), .B0(new_n135), .B1(new_n111), .Y(new_n137));
  NOR4X1   g46(.A(new_n137), .B(new_n134), .C(new_n131), .D(new_n128), .Y(new_n138));
  NAND3X1  g47(.A(new_n138), .B(new_n125), .C(new_n114), .Y(branch));
endmodule


