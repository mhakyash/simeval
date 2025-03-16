// Benchmark "top_module" written by ABC on Wed Jun 26 15:22:21 2024

module top_module ( clock, 
    clk, reset, \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] ,
    \in[6] , \in[7] , \in2[0] , \in2[1] , \in2[2] , \in2[3] , \in2[4] ,
    \in2[5] , \in2[6] , \in2[7] , \in2[8] , \in2[9] , \in2[10] , \in2[11] ,
    \in2[12] , \in2[13] , \in2[14] , \in2[15] , \in2[16] , \in2[17] ,
    \in2[18] , \in2[19] , \in2[20] , \in2[21] , \in2[22] , \in2[23] ,
    \in2[24] , \in2[25] , \in2[26] , \in2[27] , \in2[28] , \in2[29] ,
    \in2[30] , \in2[31] ,
    final_output  );
  input  clock;
  input  clk, reset, \in[0] , \in[1] , \in[2] , \in[3] , \in[4] ,
    \in[5] , \in[6] , \in[7] , \in2[0] , \in2[1] , \in2[2] , \in2[3] ,
    \in2[4] , \in2[5] , \in2[6] , \in2[7] , \in2[8] , \in2[9] , \in2[10] ,
    \in2[11] , \in2[12] , \in2[13] , \in2[14] , \in2[15] , \in2[16] ,
    \in2[17] , \in2[18] , \in2[19] , \in2[20] , \in2[21] , \in2[22] ,
    \in2[23] , \in2[24] , \in2[25] , \in2[26] , \in2[27] , \in2[28] ,
    \in2[29] , \in2[30] , \in2[31] ;
  output final_output;
  reg \counter[0] , \counter[1] , \counter[2] , \counter[3] , \counter[4] ,
    \counter[5] , \counter[6] , \counter[7] , \counter[8] , \counter[9] ,
    \counter[10] , \counter[11] , \counter[12] , \counter[13] ,
    \counter[14] , \counter[15] , \counter[16] , \counter[17] ,
    \counter[18] , \counter[19] , \counter[20] , \counter[21] ,
    \counter[22] , \counter[23] , \counter[24] , \counter[25] ,
    \counter[26] , \counter[27] , \counter[28] , \counter[29] ,
    \counter[30] , \counter[31] ;
  wire new_n140, new_n141, new_n142, new_n143_1, new_n144, new_n145,
    new_n146, new_n147, new_n148_1, new_n149, new_n150, new_n151, new_n152,
    new_n153_1, new_n154, new_n155, new_n156, new_n157, new_n158_1,
    new_n159, new_n162, new_n163_1, new_n165, new_n166, new_n168_1,
    new_n169, new_n171, new_n172, new_n174, new_n175, new_n177, new_n178_1,
    new_n179, new_n181, new_n182, new_n184, new_n185, new_n187, new_n188_1,
    new_n189, new_n191, new_n192, new_n193_1, new_n195, new_n196,
    new_n198_1, new_n199, new_n201, new_n202, new_n204, new_n205, new_n206,
    new_n208_1, new_n209, new_n211, new_n212, new_n214, new_n215, new_n217,
    new_n218_1, new_n219, new_n221, new_n222, new_n223_1, new_n225,
    new_n226, new_n228_1, new_n229, new_n230, new_n232, new_n233_1,
    new_n234, new_n236, new_n237, new_n238_1, new_n240, new_n241,
    new_n243_1, new_n244, new_n245, new_n247, new_n248, new_n249, new_n251,
    new_n252, new_n253, new_n255, new_n256, new_n258, new_n259, new_n260,
    new_n262, new_n263, new_n265, new_n266, new_n267, new_n268, n88, n93,
    n98, n103, n108, n113, n118, n123, n128, n133, n138, n143, n148, n153,
    n158, n163, n168, n173, n178, n183, n188, n193, n198, n203, n208, n213,
    n218, n223, n228, n233, n238, n243;
  XOR2X1   g000(.A(\in[1] ), .B(\in[0] ), .Y(new_n140));
  XOR2X1   g001(.A(\in[3] ), .B(\in[2] ), .Y(new_n141));
  XOR2X1   g002(.A(new_n141), .B(new_n140), .Y(new_n142));
  XOR2X1   g003(.A(\in[5] ), .B(\in[4] ), .Y(new_n143_1));
  XOR2X1   g004(.A(\in[7] ), .B(\in[6] ), .Y(new_n144));
  XOR2X1   g005(.A(new_n144), .B(new_n143_1), .Y(new_n145));
  XOR2X1   g006(.A(new_n145), .B(new_n142), .Y(new_n146));
  NAND4X1  g007(.A(\counter[3] ), .B(\counter[2] ), .C(\counter[1] ), .D(\counter[0] ), .Y(new_n147));
  NAND4X1  g008(.A(\counter[7] ), .B(\counter[6] ), .C(\counter[5] ), .D(\counter[4] ), .Y(new_n148_1));
  NAND4X1  g009(.A(\counter[11] ), .B(\counter[10] ), .C(\counter[9] ), .D(\counter[8] ), .Y(new_n149));
  NAND4X1  g010(.A(\counter[15] ), .B(\counter[14] ), .C(\counter[13] ), .D(\counter[12] ), .Y(new_n150));
  OR4X1    g011(.A(new_n150), .B(new_n149), .C(new_n148_1), .D(new_n147), .Y(new_n151));
  NAND4X1  g012(.A(\counter[19] ), .B(\counter[18] ), .C(\counter[17] ), .D(\counter[16] ), .Y(new_n152));
  NAND4X1  g013(.A(\counter[23] ), .B(\counter[22] ), .C(\counter[21] ), .D(\counter[20] ), .Y(new_n153_1));
  OR2X1    g014(.A(new_n153_1), .B(new_n152), .Y(new_n154));
  INVX1    g015(.A(\counter[30] ), .Y(new_n155));
  NAND4X1  g016(.A(\counter[27] ), .B(\counter[26] ), .C(\counter[25] ), .D(\counter[24] ), .Y(new_n156));
  NAND2X1  g017(.A(\counter[29] ), .B(\counter[28] ), .Y(new_n157));
  OR4X1    g018(.A(new_n157), .B(new_n156), .C(\counter[31] ), .D(new_n155), .Y(new_n158_1));
  NOR3X1   g019(.A(new_n158_1), .B(new_n154), .C(new_n151), .Y(new_n159));
  XOR2X1   g020(.A(new_n159), .B(new_n146), .Y(final_output));
  NOR2X1   g021(.A(\counter[0] ), .B(reset), .Y(n88));
  INVX1    g022(.A(reset), .Y(new_n162));
  XOR2X1   g023(.A(\counter[1] ), .B(\counter[0] ), .Y(new_n163_1));
  AND2X1   g024(.A(new_n163_1), .B(new_n162), .Y(n93));
  AND2X1   g025(.A(\counter[1] ), .B(\counter[0] ), .Y(new_n165));
  XOR2X1   g026(.A(new_n165), .B(\counter[2] ), .Y(new_n166));
  AND2X1   g027(.A(new_n166), .B(new_n162), .Y(n98));
  NAND3X1  g028(.A(\counter[2] ), .B(\counter[1] ), .C(\counter[0] ), .Y(new_n168_1));
  XOR2X1   g029(.A(new_n168_1), .B(\counter[3] ), .Y(new_n169));
  NOR2X1   g030(.A(new_n169), .B(reset), .Y(n103));
  INVX1    g031(.A(\counter[4] ), .Y(new_n171));
  XOR2X1   g032(.A(new_n147), .B(new_n171), .Y(new_n172));
  AND2X1   g033(.A(new_n172), .B(new_n162), .Y(n108));
  NOR2X1   g034(.A(new_n147), .B(new_n171), .Y(new_n174));
  XOR2X1   g035(.A(new_n174), .B(\counter[5] ), .Y(new_n175));
  AND2X1   g036(.A(new_n175), .B(new_n162), .Y(n113));
  NAND2X1  g037(.A(\counter[5] ), .B(\counter[4] ), .Y(new_n177));
  NOR2X1   g038(.A(new_n177), .B(new_n147), .Y(new_n178_1));
  XOR2X1   g039(.A(new_n178_1), .B(\counter[6] ), .Y(new_n179));
  AND2X1   g040(.A(new_n179), .B(new_n162), .Y(n118));
  AND2X1   g041(.A(new_n178_1), .B(\counter[6] ), .Y(new_n181));
  XOR2X1   g042(.A(new_n181), .B(\counter[7] ), .Y(new_n182));
  AND2X1   g043(.A(new_n182), .B(new_n162), .Y(n123));
  NOR2X1   g044(.A(new_n148_1), .B(new_n147), .Y(new_n184));
  XOR2X1   g045(.A(new_n184), .B(\counter[8] ), .Y(new_n185));
  AND2X1   g046(.A(new_n185), .B(new_n162), .Y(n128));
  INVX1    g047(.A(\counter[8] ), .Y(new_n187));
  NOR3X1   g048(.A(new_n148_1), .B(new_n147), .C(new_n187), .Y(new_n188_1));
  XOR2X1   g049(.A(new_n188_1), .B(\counter[9] ), .Y(new_n189));
  AND2X1   g050(.A(new_n189), .B(new_n162), .Y(n133));
  NAND2X1  g051(.A(\counter[9] ), .B(\counter[8] ), .Y(new_n191));
  NOR3X1   g052(.A(new_n191), .B(new_n148_1), .C(new_n147), .Y(new_n192));
  XOR2X1   g053(.A(new_n192), .B(\counter[10] ), .Y(new_n193_1));
  AND2X1   g054(.A(new_n193_1), .B(new_n162), .Y(n138));
  AND2X1   g055(.A(new_n192), .B(\counter[10] ), .Y(new_n195));
  XOR2X1   g056(.A(new_n195), .B(\counter[11] ), .Y(new_n196));
  AND2X1   g057(.A(new_n196), .B(new_n162), .Y(n143));
  NOR3X1   g058(.A(new_n149), .B(new_n148_1), .C(new_n147), .Y(new_n198_1));
  XOR2X1   g059(.A(new_n198_1), .B(\counter[12] ), .Y(new_n199));
  AND2X1   g060(.A(new_n199), .B(new_n162), .Y(n148));
  AND2X1   g061(.A(new_n198_1), .B(\counter[12] ), .Y(new_n201));
  XOR2X1   g062(.A(new_n201), .B(\counter[13] ), .Y(new_n202));
  AND2X1   g063(.A(new_n202), .B(new_n162), .Y(n153));
  NAND2X1  g064(.A(\counter[13] ), .B(\counter[12] ), .Y(new_n204));
  NOR4X1   g065(.A(new_n204), .B(new_n149), .C(new_n148_1), .D(new_n147), .Y(new_n205));
  XOR2X1   g066(.A(new_n205), .B(\counter[14] ), .Y(new_n206));
  AND2X1   g067(.A(new_n206), .B(new_n162), .Y(n158));
  AND2X1   g068(.A(new_n205), .B(\counter[14] ), .Y(new_n208_1));
  XOR2X1   g069(.A(new_n208_1), .B(\counter[15] ), .Y(new_n209));
  AND2X1   g070(.A(new_n209), .B(new_n162), .Y(n163));
  INVX1    g071(.A(\counter[16] ), .Y(new_n211));
  XOR2X1   g072(.A(new_n151), .B(new_n211), .Y(new_n212));
  AND2X1   g073(.A(new_n212), .B(new_n162), .Y(n168));
  NOR2X1   g074(.A(new_n151), .B(new_n211), .Y(new_n214));
  XOR2X1   g075(.A(new_n214), .B(\counter[17] ), .Y(new_n215));
  AND2X1   g076(.A(new_n215), .B(new_n162), .Y(n173));
  INVX1    g077(.A(\counter[17] ), .Y(new_n217));
  NOR3X1   g078(.A(new_n151), .B(new_n217), .C(new_n211), .Y(new_n218_1));
  XOR2X1   g079(.A(new_n218_1), .B(\counter[18] ), .Y(new_n219));
  AND2X1   g080(.A(new_n219), .B(new_n162), .Y(n178));
  INVX1    g081(.A(\counter[18] ), .Y(new_n221));
  NOR4X1   g082(.A(new_n151), .B(new_n221), .C(new_n217), .D(new_n211), .Y(new_n222));
  XOR2X1   g083(.A(new_n222), .B(\counter[19] ), .Y(new_n223_1));
  AND2X1   g084(.A(new_n223_1), .B(new_n162), .Y(n183));
  NOR2X1   g085(.A(new_n152), .B(new_n151), .Y(new_n225));
  XOR2X1   g086(.A(new_n225), .B(\counter[20] ), .Y(new_n226));
  AND2X1   g087(.A(new_n226), .B(new_n162), .Y(n188));
  INVX1    g088(.A(\counter[20] ), .Y(new_n228_1));
  NOR3X1   g089(.A(new_n152), .B(new_n151), .C(new_n228_1), .Y(new_n229));
  XOR2X1   g090(.A(new_n229), .B(\counter[21] ), .Y(new_n230));
  AND2X1   g091(.A(new_n230), .B(new_n162), .Y(n193));
  NAND2X1  g092(.A(\counter[21] ), .B(\counter[20] ), .Y(new_n232));
  NOR3X1   g093(.A(new_n232), .B(new_n152), .C(new_n151), .Y(new_n233_1));
  XOR2X1   g094(.A(new_n233_1), .B(\counter[22] ), .Y(new_n234));
  AND2X1   g095(.A(new_n234), .B(new_n162), .Y(n198));
  INVX1    g096(.A(\counter[22] ), .Y(new_n236));
  NOR4X1   g097(.A(new_n232), .B(new_n152), .C(new_n151), .D(new_n236), .Y(new_n237));
  XOR2X1   g098(.A(new_n237), .B(\counter[23] ), .Y(new_n238_1));
  AND2X1   g099(.A(new_n238_1), .B(new_n162), .Y(n203));
  OAI21X1  g100(.A0(new_n154), .A1(new_n151), .B0(\counter[24] ), .Y(new_n240));
  OR4X1    g101(.A(new_n153_1), .B(new_n152), .C(new_n151), .D(\counter[24] ), .Y(new_n241));
  AOI21X1  g102(.A0(new_n241), .A1(new_n240), .B0(reset), .Y(n208));
  INVX1    g103(.A(\counter[24] ), .Y(new_n243_1));
  NOR3X1   g104(.A(new_n154), .B(new_n151), .C(new_n243_1), .Y(new_n244));
  XOR2X1   g105(.A(new_n244), .B(\counter[25] ), .Y(new_n245));
  AND2X1   g106(.A(new_n245), .B(new_n162), .Y(n213));
  NAND2X1  g107(.A(\counter[25] ), .B(\counter[24] ), .Y(new_n247));
  NOR3X1   g108(.A(new_n247), .B(new_n154), .C(new_n151), .Y(new_n248));
  XOR2X1   g109(.A(new_n248), .B(\counter[26] ), .Y(new_n249));
  AND2X1   g110(.A(new_n249), .B(new_n162), .Y(n218));
  INVX1    g111(.A(\counter[26] ), .Y(new_n251));
  NOR4X1   g112(.A(new_n247), .B(new_n154), .C(new_n151), .D(new_n251), .Y(new_n252));
  XOR2X1   g113(.A(new_n252), .B(\counter[27] ), .Y(new_n253));
  AND2X1   g114(.A(new_n253), .B(new_n162), .Y(n223));
  NOR3X1   g115(.A(new_n156), .B(new_n154), .C(new_n151), .Y(new_n255));
  XOR2X1   g116(.A(new_n255), .B(\counter[28] ), .Y(new_n256));
  AND2X1   g117(.A(new_n256), .B(new_n162), .Y(n228));
  INVX1    g118(.A(\counter[28] ), .Y(new_n258));
  NOR4X1   g119(.A(new_n156), .B(new_n154), .C(new_n151), .D(new_n258), .Y(new_n259));
  XOR2X1   g120(.A(new_n259), .B(\counter[29] ), .Y(new_n260));
  AND2X1   g121(.A(new_n260), .B(new_n162), .Y(n233));
  NOR4X1   g122(.A(new_n157), .B(new_n156), .C(new_n154), .D(new_n151), .Y(new_n262));
  XOR2X1   g123(.A(new_n262), .B(\counter[30] ), .Y(new_n263));
  AND2X1   g124(.A(new_n263), .B(new_n162), .Y(n238));
  OR4X1    g125(.A(new_n157), .B(new_n156), .C(new_n154), .D(new_n151), .Y(new_n265));
  OAI21X1  g126(.A0(new_n265), .A1(new_n155), .B0(\counter[31] ), .Y(new_n266));
  INVX1    g127(.A(\counter[31] ), .Y(new_n267));
  NAND3X1  g128(.A(new_n262), .B(new_n267), .C(\counter[30] ), .Y(new_n268));
  AOI21X1  g129(.A0(new_n268), .A1(new_n266), .B0(reset), .Y(n243));
  always @ (posedge clock) begin
    \counter[0]  <= n88;
    \counter[1]  <= n93;
    \counter[2]  <= n98;
    \counter[3]  <= n103;
    \counter[4]  <= n108;
    \counter[5]  <= n113;
    \counter[6]  <= n118;
    \counter[7]  <= n123;
    \counter[8]  <= n128;
    \counter[9]  <= n133;
    \counter[10]  <= n138;
    \counter[11]  <= n143;
    \counter[12]  <= n148;
    \counter[13]  <= n153;
    \counter[14]  <= n158;
    \counter[15]  <= n163;
    \counter[16]  <= n168;
    \counter[17]  <= n173;
    \counter[18]  <= n178;
    \counter[19]  <= n183;
    \counter[20]  <= n188;
    \counter[21]  <= n193;
    \counter[22]  <= n198;
    \counter[23]  <= n203;
    \counter[24]  <= n208;
    \counter[25]  <= n213;
    \counter[26]  <= n218;
    \counter[27]  <= n223;
    \counter[28]  <= n228;
    \counter[29]  <= n233;
    \counter[30]  <= n238;
    \counter[31]  <= n243;
  end
endmodule


