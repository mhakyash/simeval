// Benchmark "up_counter" written by ABC on Wed Jun 26 15:22:01 2024

module up_counter ( clock, 
    clk, reset, select,
    \count_out[0] , \count_out[1] , \count_out[2] , \count_out[3]   );
  input  clock;
  input  clk, reset, select;
  output \count_out[0] , \count_out[1] , \count_out[2] , \count_out[3] ;
  reg \up_counter|count_reg[0] , \up_counter|count_reg[1] ,
    \up_counter|count_reg[2] , \up_counter|count_reg[3] ,
    \up_counter|count_reg[4] , \up_counter|count_reg[5] ,
    \up_counter|count_reg[6] , \up_counter|count_reg[7] ,
    \up_counter|count_reg[8] , \up_counter|count_reg[9] ,
    \up_counter|count_reg[10] , \up_counter|count_reg[11] ,
    \up_counter|count_reg[12] , \up_counter|count_reg[13] ,
    \up_counter|count_reg[14] , \up_counter|count_reg[15] , \count_out[0] ,
    \count_out[1] , \count_out[2] , \count_out[3] ;
  wire new_n69_1, new_n70_1, new_n72_1, new_n73_1, new_n75_1, new_n76_1,
    new_n78_1, new_n79_1, new_n80, new_n82_1, new_n83, new_n85_1, new_n86,
    new_n87_1, new_n89, new_n90_1, new_n91_1, new_n93_1, new_n94_1,
    new_n95, new_n97_1, new_n98, new_n99_1, new_n101, new_n102_1,
    new_n103_1, new_n105_1, new_n106_1, new_n107, new_n109_1, new_n110,
    new_n111_1, new_n113, new_n114_1, new_n115_1, new_n117_1, new_n118_1,
    new_n119, new_n121_1, new_n122, new_n123_1, new_n124_1, new_n125,
    new_n127_1, new_n129, new_n131, new_n133, n69, n72, n75, n78, n81, n84,
    n87, n90, n93, n96, n99, n102, n105, n108, n111, n114, n117, n120,
    n123, n126;
  NOR2X1   g00(.A(\up_counter|count_reg[0] ), .B(reset), .Y(n69));
  INVX1    g01(.A(reset), .Y(new_n69_1));
  XOR2X1   g02(.A(\up_counter|count_reg[1] ), .B(\up_counter|count_reg[0] ), .Y(new_n70_1));
  AND2X1   g03(.A(new_n70_1), .B(new_n69_1), .Y(n72));
  AND2X1   g04(.A(\up_counter|count_reg[1] ), .B(\up_counter|count_reg[0] ), .Y(new_n72_1));
  XOR2X1   g05(.A(new_n72_1), .B(\up_counter|count_reg[2] ), .Y(new_n73_1));
  AND2X1   g06(.A(new_n73_1), .B(new_n69_1), .Y(n75));
  NAND3X1  g07(.A(\up_counter|count_reg[2] ), .B(\up_counter|count_reg[1] ), .C(\up_counter|count_reg[0] ), .Y(new_n75_1));
  XOR2X1   g08(.A(new_n75_1), .B(\up_counter|count_reg[3] ), .Y(new_n76_1));
  NOR2X1   g09(.A(new_n76_1), .B(reset), .Y(n78));
  INVX1    g10(.A(\up_counter|count_reg[4] ), .Y(new_n78_1));
  NAND4X1  g11(.A(\up_counter|count_reg[3] ), .B(\up_counter|count_reg[2] ), .C(\up_counter|count_reg[1] ), .D(\up_counter|count_reg[0] ), .Y(new_n79_1));
  XOR2X1   g12(.A(new_n79_1), .B(new_n78_1), .Y(new_n80));
  AND2X1   g13(.A(new_n80), .B(new_n69_1), .Y(n81));
  NOR2X1   g14(.A(new_n79_1), .B(new_n78_1), .Y(new_n82_1));
  XOR2X1   g15(.A(new_n82_1), .B(\up_counter|count_reg[5] ), .Y(new_n83));
  AND2X1   g16(.A(new_n83), .B(new_n69_1), .Y(n84));
  INVX1    g17(.A(\up_counter|count_reg[5] ), .Y(new_n85_1));
  NOR3X1   g18(.A(new_n79_1), .B(new_n85_1), .C(new_n78_1), .Y(new_n86));
  XOR2X1   g19(.A(new_n86), .B(\up_counter|count_reg[6] ), .Y(new_n87_1));
  AND2X1   g20(.A(new_n87_1), .B(new_n69_1), .Y(n87));
  INVX1    g21(.A(\up_counter|count_reg[6] ), .Y(new_n89));
  NOR4X1   g22(.A(new_n79_1), .B(new_n89), .C(new_n85_1), .D(new_n78_1), .Y(new_n90_1));
  XOR2X1   g23(.A(new_n90_1), .B(\up_counter|count_reg[7] ), .Y(new_n91_1));
  AND2X1   g24(.A(new_n91_1), .B(new_n69_1), .Y(n90));
  NAND4X1  g25(.A(\up_counter|count_reg[7] ), .B(\up_counter|count_reg[6] ), .C(\up_counter|count_reg[5] ), .D(\up_counter|count_reg[4] ), .Y(new_n93_1));
  NOR2X1   g26(.A(new_n93_1), .B(new_n79_1), .Y(new_n94_1));
  XOR2X1   g27(.A(new_n94_1), .B(\up_counter|count_reg[8] ), .Y(new_n95));
  AND2X1   g28(.A(new_n95), .B(new_n69_1), .Y(n93));
  INVX1    g29(.A(\up_counter|count_reg[8] ), .Y(new_n97_1));
  NOR3X1   g30(.A(new_n93_1), .B(new_n79_1), .C(new_n97_1), .Y(new_n98));
  XOR2X1   g31(.A(new_n98), .B(\up_counter|count_reg[9] ), .Y(new_n99_1));
  AND2X1   g32(.A(new_n99_1), .B(new_n69_1), .Y(n96));
  NAND2X1  g33(.A(\up_counter|count_reg[9] ), .B(\up_counter|count_reg[8] ), .Y(new_n101));
  NOR3X1   g34(.A(new_n101), .B(new_n93_1), .C(new_n79_1), .Y(new_n102_1));
  XOR2X1   g35(.A(new_n102_1), .B(\up_counter|count_reg[10] ), .Y(new_n103_1));
  AND2X1   g36(.A(new_n103_1), .B(new_n69_1), .Y(n99));
  INVX1    g37(.A(\up_counter|count_reg[10] ), .Y(new_n105_1));
  NOR4X1   g38(.A(new_n101), .B(new_n93_1), .C(new_n79_1), .D(new_n105_1), .Y(new_n106_1));
  XOR2X1   g39(.A(new_n106_1), .B(\up_counter|count_reg[11] ), .Y(new_n107));
  AND2X1   g40(.A(new_n107), .B(new_n69_1), .Y(n102));
  NAND4X1  g41(.A(\up_counter|count_reg[11] ), .B(\up_counter|count_reg[10] ), .C(\up_counter|count_reg[9] ), .D(\up_counter|count_reg[8] ), .Y(new_n109_1));
  NOR3X1   g42(.A(new_n109_1), .B(new_n93_1), .C(new_n79_1), .Y(new_n110));
  XOR2X1   g43(.A(new_n110), .B(\up_counter|count_reg[12] ), .Y(new_n111_1));
  AND2X1   g44(.A(new_n111_1), .B(new_n69_1), .Y(n105));
  INVX1    g45(.A(\up_counter|count_reg[12] ), .Y(new_n113));
  NOR4X1   g46(.A(new_n109_1), .B(new_n93_1), .C(new_n79_1), .D(new_n113), .Y(new_n114_1));
  XOR2X1   g47(.A(new_n114_1), .B(\up_counter|count_reg[13] ), .Y(new_n115_1));
  AND2X1   g48(.A(new_n115_1), .B(new_n69_1), .Y(n108));
  NAND2X1  g49(.A(\up_counter|count_reg[13] ), .B(\up_counter|count_reg[12] ), .Y(new_n117_1));
  NOR4X1   g50(.A(new_n117_1), .B(new_n109_1), .C(new_n93_1), .D(new_n79_1), .Y(new_n118_1));
  XOR2X1   g51(.A(new_n118_1), .B(\up_counter|count_reg[14] ), .Y(new_n119));
  AND2X1   g52(.A(new_n119), .B(new_n69_1), .Y(n111));
  INVX1    g53(.A(\up_counter|count_reg[14] ), .Y(new_n121_1));
  OR4X1    g54(.A(new_n117_1), .B(new_n109_1), .C(new_n93_1), .D(new_n79_1), .Y(new_n122));
  OAI21X1  g55(.A0(new_n122), .A1(new_n121_1), .B0(\up_counter|count_reg[15] ), .Y(new_n123_1));
  INVX1    g56(.A(\up_counter|count_reg[15] ), .Y(new_n124_1));
  NAND3X1  g57(.A(new_n118_1), .B(new_n124_1), .C(\up_counter|count_reg[14] ), .Y(new_n125));
  AOI21X1  g58(.A0(new_n125), .A1(new_n123_1), .B0(reset), .Y(n114));
  XOR2X1   g59(.A(\up_counter|count_reg[0] ), .B(select), .Y(new_n127_1));
  AND2X1   g60(.A(new_n127_1), .B(new_n69_1), .Y(n117));
  XOR2X1   g61(.A(\up_counter|count_reg[1] ), .B(select), .Y(new_n129));
  AND2X1   g62(.A(new_n129), .B(new_n69_1), .Y(n120));
  XOR2X1   g63(.A(\up_counter|count_reg[2] ), .B(select), .Y(new_n131));
  AND2X1   g64(.A(new_n131), .B(new_n69_1), .Y(n123));
  XOR2X1   g65(.A(\up_counter|count_reg[3] ), .B(select), .Y(new_n133));
  AND2X1   g66(.A(new_n133), .B(new_n69_1), .Y(n126));
  always @ (posedge clock) begin
    \up_counter|count_reg[0]  <= n69;
    \up_counter|count_reg[1]  <= n72;
    \up_counter|count_reg[2]  <= n75;
    \up_counter|count_reg[3]  <= n78;
    \up_counter|count_reg[4]  <= n81;
    \up_counter|count_reg[5]  <= n84;
    \up_counter|count_reg[6]  <= n87;
    \up_counter|count_reg[7]  <= n90;
    \up_counter|count_reg[8]  <= n93;
    \up_counter|count_reg[9]  <= n96;
    \up_counter|count_reg[10]  <= n99;
    \up_counter|count_reg[11]  <= n102;
    \up_counter|count_reg[12]  <= n105;
    \up_counter|count_reg[13]  <= n108;
    \up_counter|count_reg[14]  <= n111;
    \up_counter|count_reg[15]  <= n114;
    \count_out[0]  <= n117;
    \count_out[1]  <= n120;
    \count_out[2]  <= n123;
    \count_out[3]  <= n126;
  end
endmodule


