// Benchmark "RingOscillatorInterface" written by ABC on Wed Jun 26 15:22:03 2024

module RingOscillatorInterface ( clock, 
    out  );
  input  clock;
  output out;
  reg \counter[0] , \counter[1] , \counter[2] , \counter[3] , \counter[4] ,
    \counter[5] , \counter[6] , \counter[7] , \counter[8] , \counter[9] ,
    \counter[10] , \counter[11] , \counter[12] , \counter[13] ,
    \counter[14] , \counter[15] , \counter[16] , \counter[17] ,
    \counter[18] , \counter[19] , \counter[20] , \counter[21] ,
    \counter[22] , \counter[23] , \counter[24] , \counter[25] ,
    \counter[26] , \counter[27] , \counter[28] , \counter[29] ,
    \counter[30] , \counter[31] ;
  wire new_n100, new_n102, new_n104_1, new_n105, new_n107, new_n109_1,
    new_n110, new_n112, new_n114_1, new_n115, new_n117, new_n118, new_n120,
    new_n121, new_n123, new_n125, new_n126, new_n128, new_n130, new_n131,
    new_n133, new_n135, new_n136, new_n137, new_n139_1, new_n141, new_n142,
    new_n144_1, new_n146, new_n147, new_n149_1, new_n150, new_n152,
    new_n153, new_n155, new_n157, new_n158, new_n159_1, new_n161, new_n163,
    new_n164, new_n166, new_n168, new_n169, new_n170, new_n172, new_n174,
    new_n175, new_n177, new_n178, n4, n9, n14, n19, n24, n29, n34, n39,
    n44, n49, n54, n59, n64, n69, n74, n79, n84, n89, n94, n99, n104, n109,
    n114, n119, n124, n129, n134, n139, n144, n149, n154, n159;
  INVX1    g00(.A(\counter[0] ), .Y(n4));
  XOR2X1   g01(.A(\counter[1] ), .B(\counter[0] ), .Y(n9));
  AND2X1   g02(.A(\counter[1] ), .B(\counter[0] ), .Y(new_n100));
  XOR2X1   g03(.A(new_n100), .B(\counter[2] ), .Y(n14));
  AND2X1   g04(.A(new_n100), .B(\counter[2] ), .Y(new_n102));
  XOR2X1   g05(.A(new_n102), .B(\counter[3] ), .Y(n19));
  INVX1    g06(.A(\counter[4] ), .Y(new_n104_1));
  NAND4X1  g07(.A(\counter[3] ), .B(\counter[2] ), .C(\counter[1] ), .D(\counter[0] ), .Y(new_n105));
  XOR2X1   g08(.A(new_n105), .B(new_n104_1), .Y(n24));
  NOR2X1   g09(.A(new_n105), .B(new_n104_1), .Y(new_n107));
  XOR2X1   g10(.A(new_n107), .B(\counter[5] ), .Y(n29));
  NAND2X1  g11(.A(\counter[5] ), .B(\counter[4] ), .Y(new_n109_1));
  NOR2X1   g12(.A(new_n109_1), .B(new_n105), .Y(new_n110));
  XOR2X1   g13(.A(new_n110), .B(\counter[6] ), .Y(n34));
  AND2X1   g14(.A(new_n110), .B(\counter[6] ), .Y(new_n112));
  XOR2X1   g15(.A(new_n112), .B(\counter[7] ), .Y(n39));
  NAND4X1  g16(.A(\counter[7] ), .B(\counter[6] ), .C(\counter[5] ), .D(\counter[4] ), .Y(new_n114_1));
  NOR2X1   g17(.A(new_n114_1), .B(new_n105), .Y(new_n115));
  XOR2X1   g18(.A(new_n115), .B(\counter[8] ), .Y(n44));
  INVX1    g19(.A(\counter[8] ), .Y(new_n117));
  NOR3X1   g20(.A(new_n114_1), .B(new_n105), .C(new_n117), .Y(new_n118));
  XOR2X1   g21(.A(new_n118), .B(\counter[9] ), .Y(n49));
  NAND2X1  g22(.A(\counter[9] ), .B(\counter[8] ), .Y(new_n120));
  NOR3X1   g23(.A(new_n120), .B(new_n114_1), .C(new_n105), .Y(new_n121));
  XOR2X1   g24(.A(new_n121), .B(\counter[10] ), .Y(n54));
  AND2X1   g25(.A(new_n121), .B(\counter[10] ), .Y(new_n123));
  XOR2X1   g26(.A(new_n123), .B(\counter[11] ), .Y(n59));
  NAND4X1  g27(.A(\counter[11] ), .B(\counter[10] ), .C(\counter[9] ), .D(\counter[8] ), .Y(new_n125));
  NOR3X1   g28(.A(new_n125), .B(new_n114_1), .C(new_n105), .Y(new_n126));
  XOR2X1   g29(.A(new_n126), .B(\counter[12] ), .Y(n64));
  AND2X1   g30(.A(new_n126), .B(\counter[12] ), .Y(new_n128));
  XOR2X1   g31(.A(new_n128), .B(\counter[13] ), .Y(n69));
  NAND2X1  g32(.A(\counter[13] ), .B(\counter[12] ), .Y(new_n130));
  NOR4X1   g33(.A(new_n130), .B(new_n125), .C(new_n114_1), .D(new_n105), .Y(new_n131));
  XOR2X1   g34(.A(new_n131), .B(\counter[14] ), .Y(n74));
  AND2X1   g35(.A(new_n131), .B(\counter[14] ), .Y(new_n133));
  XOR2X1   g36(.A(new_n133), .B(\counter[15] ), .Y(n79));
  INVX1    g37(.A(\counter[16] ), .Y(new_n135));
  NAND4X1  g38(.A(\counter[15] ), .B(\counter[14] ), .C(\counter[13] ), .D(\counter[12] ), .Y(new_n136));
  OR4X1    g39(.A(new_n136), .B(new_n125), .C(new_n114_1), .D(new_n105), .Y(new_n137));
  XOR2X1   g40(.A(new_n137), .B(new_n135), .Y(n84));
  NOR2X1   g41(.A(new_n137), .B(new_n135), .Y(new_n139_1));
  XOR2X1   g42(.A(new_n139_1), .B(\counter[17] ), .Y(n89));
  NAND2X1  g43(.A(\counter[17] ), .B(\counter[16] ), .Y(new_n141));
  NOR2X1   g44(.A(new_n141), .B(new_n137), .Y(new_n142));
  XOR2X1   g45(.A(new_n142), .B(\counter[18] ), .Y(n94));
  AND2X1   g46(.A(new_n142), .B(\counter[18] ), .Y(new_n144_1));
  XOR2X1   g47(.A(new_n144_1), .B(\counter[19] ), .Y(n99));
  NAND4X1  g48(.A(\counter[19] ), .B(\counter[18] ), .C(\counter[17] ), .D(\counter[16] ), .Y(new_n146));
  NOR2X1   g49(.A(new_n146), .B(new_n137), .Y(new_n147));
  XOR2X1   g50(.A(new_n147), .B(\counter[20] ), .Y(n104));
  INVX1    g51(.A(\counter[20] ), .Y(new_n149_1));
  NOR3X1   g52(.A(new_n146), .B(new_n137), .C(new_n149_1), .Y(new_n150));
  XOR2X1   g53(.A(new_n150), .B(\counter[21] ), .Y(n109));
  NAND2X1  g54(.A(\counter[21] ), .B(\counter[20] ), .Y(new_n152));
  NOR3X1   g55(.A(new_n152), .B(new_n146), .C(new_n137), .Y(new_n153));
  XOR2X1   g56(.A(new_n153), .B(\counter[22] ), .Y(n114));
  AND2X1   g57(.A(new_n153), .B(\counter[22] ), .Y(new_n155));
  XOR2X1   g58(.A(new_n155), .B(\counter[23] ), .Y(n119));
  NAND4X1  g59(.A(\counter[23] ), .B(\counter[22] ), .C(\counter[21] ), .D(\counter[20] ), .Y(new_n157));
  OR2X1    g60(.A(new_n157), .B(new_n146), .Y(new_n158));
  NOR2X1   g61(.A(new_n158), .B(new_n137), .Y(new_n159_1));
  XOR2X1   g62(.A(new_n159_1), .B(\counter[24] ), .Y(n124));
  AND2X1   g63(.A(new_n159_1), .B(\counter[24] ), .Y(new_n161));
  XOR2X1   g64(.A(new_n161), .B(\counter[25] ), .Y(n129));
  NAND2X1  g65(.A(\counter[25] ), .B(\counter[24] ), .Y(new_n163));
  NOR3X1   g66(.A(new_n163), .B(new_n158), .C(new_n137), .Y(new_n164));
  XOR2X1   g67(.A(new_n164), .B(\counter[26] ), .Y(n134));
  AND2X1   g68(.A(new_n164), .B(\counter[26] ), .Y(new_n166));
  XOR2X1   g69(.A(new_n166), .B(\counter[27] ), .Y(n139));
  INVX1    g70(.A(\counter[28] ), .Y(new_n168));
  NAND4X1  g71(.A(\counter[27] ), .B(\counter[26] ), .C(\counter[25] ), .D(\counter[24] ), .Y(new_n169));
  OR4X1    g72(.A(new_n169), .B(new_n157), .C(new_n146), .D(new_n137), .Y(new_n170));
  XOR2X1   g73(.A(new_n170), .B(new_n168), .Y(n144));
  NOR4X1   g74(.A(new_n169), .B(new_n158), .C(new_n137), .D(new_n168), .Y(new_n172));
  XOR2X1   g75(.A(new_n172), .B(\counter[29] ), .Y(n149));
  INVX1    g76(.A(\counter[29] ), .Y(new_n174));
  NOR3X1   g77(.A(new_n170), .B(new_n174), .C(new_n168), .Y(new_n175));
  XOR2X1   g78(.A(new_n175), .B(\counter[30] ), .Y(n154));
  INVX1    g79(.A(\counter[30] ), .Y(new_n177));
  NOR4X1   g80(.A(new_n170), .B(new_n177), .C(new_n174), .D(new_n168), .Y(new_n178));
  XOR2X1   g81(.A(new_n178), .B(\counter[31] ), .Y(n159));
  BUFX1    g82(.A(\counter[31] ), .Y(out));
  always @ (posedge clock) begin
    \counter[0]  <= n4;
    \counter[1]  <= n9;
    \counter[2]  <= n14;
    \counter[3]  <= n19;
    \counter[4]  <= n24;
    \counter[5]  <= n29;
    \counter[6]  <= n34;
    \counter[7]  <= n39;
    \counter[8]  <= n44;
    \counter[9]  <= n49;
    \counter[10]  <= n54;
    \counter[11]  <= n59;
    \counter[12]  <= n64;
    \counter[13]  <= n69;
    \counter[14]  <= n74;
    \counter[15]  <= n79;
    \counter[16]  <= n84;
    \counter[17]  <= n89;
    \counter[18]  <= n94;
    \counter[19]  <= n99;
    \counter[20]  <= n104;
    \counter[21]  <= n109;
    \counter[22]  <= n114;
    \counter[23]  <= n119;
    \counter[24]  <= n124;
    \counter[25]  <= n129;
    \counter[26]  <= n134;
    \counter[27]  <= n139;
    \counter[28]  <= n144;
    \counter[29]  <= n149;
    \counter[30]  <= n154;
    \counter[31]  <= n159;
  end
endmodule


