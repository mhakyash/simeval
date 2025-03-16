// Benchmark "longest_sequence_detection" written by ABC on Wed Jun 26 15:22:09 2024

module longest_sequence_detection ( clock, 
    clk, reset, \data[0] , \data[1] , \data[2] , \data[3] , \data[4] ,
    \data[5] , \data[6] , \data[7] , \data[8] , \data[9] , \data[10] ,
    \data[11] , \data[12] , \data[13] , \data[14] , \data[15] ,
    \length[0] , \length[1] , \length[2] , \length[3] , \start_index[0] ,
    \start_index[1] , \start_index[2] , \start_index[3]   );
  input  clock;
  input  clk, reset, \data[0] , \data[1] , \data[2] , \data[3] ,
    \data[4] , \data[5] , \data[6] , \data[7] , \data[8] , \data[9] ,
    \data[10] , \data[11] , \data[12] , \data[13] , \data[14] , \data[15] ;
  output \length[0] , \length[1] , \length[2] , \length[3] , \start_index[0] ,
    \start_index[1] , \start_index[2] , \start_index[3] ;
  reg \max_count[0] , \max_count[1] , \max_count[2] , \max_count[3] ,
    \index[0] , \index[1] , \index[2] , \index[3] , \max_index[0] ,
    \max_index[1] , \max_index[2] , \max_index[3] , \count[0] , \count[1] ,
    \count[2] , \count[3] ;
  wire new_n75, new_n76, new_n77, new_n78, new_n79_1, new_n80, new_n81,
    new_n82, new_n83, new_n84_1, new_n85, new_n86, new_n87, new_n88,
    new_n89_1, new_n90, new_n91, new_n92, new_n93, new_n94_1, new_n95,
    new_n96, new_n97, new_n98, new_n99_1, new_n100, new_n101, new_n102,
    new_n103, new_n105, new_n106, new_n108, new_n109_1, new_n111, new_n112,
    new_n114_1, new_n115, new_n116, new_n117, new_n118, new_n120, new_n121,
    new_n122, new_n123, new_n124_1, new_n125, new_n126, new_n128,
    new_n129_1, new_n130, new_n131, new_n132, new_n133, new_n134, new_n135,
    new_n137, new_n138, new_n139, new_n140, new_n141, new_n142, new_n143,
    new_n144, new_n146, new_n147, new_n149, new_n150, new_n152, new_n153,
    new_n155, new_n156, new_n158, new_n159, new_n161, new_n163, new_n164,
    new_n166, new_n167, n54, n59, n64, n69, n74, n79, n84, n89, n94, n99,
    n104, n109, n114, n119, n124, n129;
  XOR2X1   g000(.A(\count[3] ), .B(\max_count[3] ), .Y(new_n75));
  XOR2X1   g001(.A(\count[2] ), .B(\max_count[2] ), .Y(new_n76));
  NOR2X1   g002(.A(new_n76), .B(new_n75), .Y(new_n77));
  INVX1    g003(.A(\max_count[1] ), .Y(new_n78));
  AND2X1   g004(.A(\count[1] ), .B(new_n78), .Y(new_n79_1));
  INVX1    g005(.A(\count[0] ), .Y(new_n80));
  XOR2X1   g006(.A(\count[1] ), .B(\max_count[1] ), .Y(new_n81));
  AOI21X1  g007(.A0(new_n80), .A1(\max_count[0] ), .B0(new_n81), .Y(new_n82));
  OAI21X1  g008(.A0(new_n82), .A1(new_n79_1), .B0(new_n77), .Y(new_n83));
  INVX1    g009(.A(\max_count[3] ), .Y(new_n84_1));
  INVX1    g010(.A(\count[2] ), .Y(new_n85));
  NOR3X1   g011(.A(new_n75), .B(new_n85), .C(\max_count[2] ), .Y(new_n86));
  AOI21X1  g012(.A0(\count[3] ), .A1(new_n84_1), .B0(new_n86), .Y(new_n87));
  XOR2X1   g013(.A(\count[0] ), .B(\max_count[0] ), .Y(new_n88));
  NOR4X1   g014(.A(new_n88), .B(new_n81), .C(new_n76), .D(new_n75), .Y(new_n89_1));
  AOI21X1  g015(.A0(new_n87), .A1(new_n83), .B0(new_n89_1), .Y(new_n90));
  MX2X1    g016(.A(\max_count[0] ), .B(\count[0] ), .S0(new_n90), .Y(new_n91));
  MX2X1    g017(.A(new_n91), .B(\max_count[0] ), .S0(\data[0] ), .Y(new_n92));
  NAND4X1  g018(.A(\data[7] ), .B(\data[6] ), .C(\data[5] ), .D(\data[4] ), .Y(new_n93));
  NAND4X1  g019(.A(\data[3] ), .B(\data[2] ), .C(\data[1] ), .D(\data[0] ), .Y(new_n94_1));
  NAND4X1  g020(.A(\data[15] ), .B(\data[14] ), .C(\data[13] ), .D(\data[12] ), .Y(new_n95));
  NAND4X1  g021(.A(\data[11] ), .B(\data[10] ), .C(\data[9] ), .D(\data[8] ), .Y(new_n96));
  NOR4X1   g022(.A(new_n96), .B(new_n95), .C(new_n94_1), .D(new_n93), .Y(new_n97));
  OR4X1    g023(.A(\data[7] ), .B(\data[6] ), .C(\data[5] ), .D(\data[4] ), .Y(new_n98));
  OR4X1    g024(.A(\data[3] ), .B(\data[2] ), .C(\data[1] ), .D(\data[0] ), .Y(new_n99_1));
  OR4X1    g025(.A(\data[15] ), .B(\data[14] ), .C(\data[13] ), .D(\data[12] ), .Y(new_n100));
  OR4X1    g026(.A(\data[11] ), .B(\data[10] ), .C(\data[9] ), .D(\data[8] ), .Y(new_n101));
  NOR4X1   g027(.A(new_n101), .B(new_n100), .C(new_n99_1), .D(new_n98), .Y(new_n102));
  NOR3X1   g028(.A(new_n102), .B(new_n97), .C(reset), .Y(new_n103));
  AND2X1   g029(.A(new_n103), .B(new_n92), .Y(n54));
  MX2X1    g030(.A(\max_count[1] ), .B(\count[1] ), .S0(new_n90), .Y(new_n105));
  MX2X1    g031(.A(new_n105), .B(\max_count[1] ), .S0(\data[0] ), .Y(new_n106));
  AND2X1   g032(.A(new_n106), .B(new_n103), .Y(n59));
  MX2X1    g033(.A(\max_count[2] ), .B(\count[2] ), .S0(new_n90), .Y(new_n108));
  MX2X1    g034(.A(new_n108), .B(\max_count[2] ), .S0(\data[0] ), .Y(new_n109_1));
  AND2X1   g035(.A(new_n109_1), .B(new_n103), .Y(n64));
  MX2X1    g036(.A(\max_count[3] ), .B(\count[3] ), .S0(new_n90), .Y(new_n111));
  MX2X1    g037(.A(new_n111), .B(\max_count[3] ), .S0(\data[0] ), .Y(new_n112));
  AND2X1   g038(.A(new_n112), .B(new_n103), .Y(n69));
  XOR2X1   g039(.A(\count[0] ), .B(\index[0] ), .Y(new_n114_1));
  OR2X1    g040(.A(new_n114_1), .B(\data[0] ), .Y(new_n115));
  OR4X1    g041(.A(\count[3] ), .B(\count[2] ), .C(\count[1] ), .D(\count[0] ), .Y(new_n116));
  NAND3X1  g042(.A(new_n116), .B(\index[0] ), .C(\data[0] ), .Y(new_n117));
  AND2X1   g043(.A(new_n117), .B(new_n115), .Y(new_n118));
  NOR4X1   g044(.A(new_n118), .B(new_n102), .C(new_n97), .D(reset), .Y(n74));
  XOR2X1   g045(.A(new_n80), .B(\index[0] ), .Y(new_n120));
  XOR2X1   g046(.A(\count[1] ), .B(\index[1] ), .Y(new_n121));
  AND2X1   g047(.A(\count[0] ), .B(\index[0] ), .Y(new_n122));
  XOR2X1   g048(.A(new_n122), .B(new_n121), .Y(new_n123));
  XOR2X1   g049(.A(new_n123), .B(new_n120), .Y(new_n124_1));
  NAND3X1  g050(.A(new_n116), .B(\index[1] ), .C(\data[0] ), .Y(new_n125));
  OAI21X1  g051(.A0(new_n124_1), .A1(\data[0] ), .B0(new_n125), .Y(new_n126));
  AND2X1   g052(.A(new_n126), .B(new_n103), .Y(n79));
  XOR2X1   g053(.A(new_n85), .B(\index[2] ), .Y(new_n128));
  AND2X1   g054(.A(\count[1] ), .B(\index[1] ), .Y(new_n129_1));
  AOI21X1  g055(.A0(new_n122), .A1(new_n121), .B0(new_n129_1), .Y(new_n130));
  XOR2X1   g056(.A(new_n130), .B(new_n128), .Y(new_n131));
  NAND2X1  g057(.A(new_n123), .B(new_n114_1), .Y(new_n132));
  XOR2X1   g058(.A(new_n132), .B(new_n131), .Y(new_n133));
  NAND3X1  g059(.A(new_n116), .B(\index[2] ), .C(\data[0] ), .Y(new_n134));
  OAI21X1  g060(.A0(new_n133), .A1(\data[0] ), .B0(new_n134), .Y(new_n135));
  AND2X1   g061(.A(new_n135), .B(new_n103), .Y(n84));
  XOR2X1   g062(.A(\count[3] ), .B(\index[3] ), .Y(new_n137));
  NAND2X1  g063(.A(\count[2] ), .B(\index[2] ), .Y(new_n138));
  OAI21X1  g064(.A0(new_n130), .A1(new_n128), .B0(new_n138), .Y(new_n139));
  XOR2X1   g065(.A(new_n139), .B(new_n137), .Y(new_n140));
  NAND3X1  g066(.A(new_n131), .B(new_n123), .C(new_n114_1), .Y(new_n141));
  XOR2X1   g067(.A(new_n141), .B(new_n140), .Y(new_n142));
  NAND3X1  g068(.A(new_n116), .B(\index[3] ), .C(\data[0] ), .Y(new_n143));
  OAI21X1  g069(.A0(new_n142), .A1(\data[0] ), .B0(new_n143), .Y(new_n144));
  AND2X1   g070(.A(new_n144), .B(new_n103), .Y(n89));
  MX2X1    g071(.A(\max_index[0] ), .B(\index[0] ), .S0(new_n90), .Y(new_n146));
  MX2X1    g072(.A(new_n146), .B(\max_index[0] ), .S0(\data[0] ), .Y(new_n147));
  AND2X1   g073(.A(new_n147), .B(new_n103), .Y(n94));
  MX2X1    g074(.A(\max_index[1] ), .B(\index[1] ), .S0(new_n90), .Y(new_n149));
  MX2X1    g075(.A(new_n149), .B(\max_index[1] ), .S0(\data[0] ), .Y(new_n150));
  AND2X1   g076(.A(new_n150), .B(new_n103), .Y(n99));
  MX2X1    g077(.A(\max_index[2] ), .B(\index[2] ), .S0(new_n90), .Y(new_n152));
  MX2X1    g078(.A(new_n152), .B(\max_index[2] ), .S0(\data[0] ), .Y(new_n153));
  AND2X1   g079(.A(new_n153), .B(new_n103), .Y(n104));
  MX2X1    g080(.A(\max_index[3] ), .B(\index[3] ), .S0(new_n90), .Y(new_n155));
  MX2X1    g081(.A(new_n155), .B(\max_index[3] ), .S0(\data[0] ), .Y(new_n156));
  AND2X1   g082(.A(new_n156), .B(new_n103), .Y(n109));
  INVX1    g083(.A(\data[0] ), .Y(new_n158));
  OR2X1    g084(.A(new_n158), .B(reset), .Y(new_n159));
  NOR4X1   g085(.A(new_n159), .B(new_n102), .C(new_n97), .D(\count[0] ), .Y(n114));
  XOR2X1   g086(.A(\count[1] ), .B(new_n80), .Y(new_n161));
  NOR4X1   g087(.A(new_n161), .B(new_n159), .C(new_n102), .D(new_n97), .Y(n119));
  AND2X1   g088(.A(\count[1] ), .B(\count[0] ), .Y(new_n163));
  XOR2X1   g089(.A(new_n163), .B(new_n85), .Y(new_n164));
  NOR4X1   g090(.A(new_n164), .B(new_n159), .C(new_n102), .D(new_n97), .Y(n124));
  NAND3X1  g091(.A(\count[2] ), .B(\count[1] ), .C(\count[0] ), .Y(new_n166));
  XOR2X1   g092(.A(new_n166), .B(\count[3] ), .Y(new_n167));
  NOR4X1   g093(.A(new_n167), .B(new_n159), .C(new_n102), .D(new_n97), .Y(n129));
  BUFX1    g094(.A(\max_count[0] ), .Y(\length[0] ));
  BUFX1    g095(.A(\max_count[1] ), .Y(\length[1] ));
  BUFX1    g096(.A(\max_count[2] ), .Y(\length[2] ));
  BUFX1    g097(.A(\max_count[3] ), .Y(\length[3] ));
  BUFX1    g098(.A(\max_index[0] ), .Y(\start_index[0] ));
  BUFX1    g099(.A(\max_index[1] ), .Y(\start_index[1] ));
  BUFX1    g100(.A(\max_index[2] ), .Y(\start_index[2] ));
  BUFX1    g101(.A(\max_index[3] ), .Y(\start_index[3] ));
  always @ (posedge clock) begin
    \max_count[0]  <= n54;
    \max_count[1]  <= n59;
    \max_count[2]  <= n64;
    \max_count[3]  <= n69;
    \index[0]  <= n74;
    \index[1]  <= n79;
    \index[2]  <= n84;
    \index[3]  <= n89;
    \max_index[0]  <= n94;
    \max_index[1]  <= n99;
    \max_index[2]  <= n104;
    \max_index[3]  <= n109;
    \count[0]  <= n114;
    \count[1]  <= n119;
    \count[2]  <= n124;
    \count[3]  <= n129;
  end
endmodule


