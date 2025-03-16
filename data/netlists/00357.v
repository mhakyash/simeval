// Benchmark "uart_tx" written by ABC on Wed Jun 26 15:22:07 2024

module uart_tx ( clock, 
    clk, reset, \data_in[0] , \data_in[1] , \data_in[2] , \data_in[3] ,
    \data_in[4] , \data_in[5] , \data_in[6] , \data_in[7] , start,
    \baud_rate[0] , \baud_rate[1] , \baud_rate[2] , \baud_rate[3] ,
    \baud_rate[4] , \baud_rate[5] , \baud_rate[6] , \baud_rate[7] ,
    \baud_rate[8] , \baud_rate[9] , \baud_rate[10] , \baud_rate[11] ,
    \baud_rate[12] , \baud_rate[13] , \baud_rate[14] , \baud_rate[15] ,
    tx  );
  input  clock;
  input  clk, reset, \data_in[0] , \data_in[1] , \data_in[2] ,
    \data_in[3] , \data_in[4] , \data_in[5] , \data_in[6] , \data_in[7] ,
    start, \baud_rate[0] , \baud_rate[1] , \baud_rate[2] , \baud_rate[3] ,
    \baud_rate[4] , \baud_rate[5] , \baud_rate[6] , \baud_rate[7] ,
    \baud_rate[8] , \baud_rate[9] , \baud_rate[10] , \baud_rate[11] ,
    \baud_rate[12] , \baud_rate[13] , \baud_rate[14] , \baud_rate[15] ;
  output tx;
  reg \count[0] , \count[1] , \count[2] , \count[3] , tx, \baud_count[0] ,
    \baud_count[1] , \baud_count[2] , \baud_count[3] , \baud_count[4] ,
    \baud_count[5] , \baud_count[6] , \baud_count[7] , \baud_count[8] ,
    \baud_count[9] , \baud_count[10] , \baud_count[11] , \baud_count[12] ,
    \baud_count[13] , \baud_count[14] , \baud_count[15] ;
  wire new_n92_1, new_n93, new_n94, new_n95, new_n96, new_n97_1, new_n98,
    new_n99, new_n100, new_n101, new_n102_1, new_n103, new_n104, new_n105,
    new_n106, new_n107_1, new_n108, new_n109, new_n110, new_n111,
    new_n112_1, new_n113, new_n114, new_n115, new_n116, new_n117_1,
    new_n118, new_n119, new_n120, new_n121, new_n122_1, new_n123, new_n124,
    new_n125, new_n127_1, new_n128, new_n129, new_n130, new_n131,
    new_n132_1, new_n134, new_n135, new_n136, new_n137_1, new_n138,
    new_n139, new_n140, new_n142_1, new_n143, new_n144, new_n145, new_n146,
    new_n147_1, new_n149, new_n150, new_n151, new_n152_1, new_n153,
    new_n154, new_n156, new_n157_1, new_n158, new_n159, new_n160, new_n162,
    new_n163, new_n164, new_n165, new_n166, new_n167, new_n169, new_n170,
    new_n171, new_n172, new_n173, new_n174, new_n175, new_n177, new_n178,
    new_n179, new_n180, new_n181, new_n182, new_n183, new_n185, new_n186,
    new_n187, new_n188, new_n189, new_n190, new_n191, new_n193, new_n194,
    new_n195, new_n196, new_n197, new_n198, new_n199, new_n201, new_n202,
    new_n203, new_n204, new_n205, new_n206, new_n207, new_n209, new_n210,
    new_n211, new_n212, new_n213, new_n214, new_n215, new_n217, new_n218,
    new_n219, new_n220, new_n221, new_n222, new_n223, new_n224, new_n226,
    new_n227, new_n228, new_n229, new_n230, new_n231, new_n232, new_n233,
    new_n234, new_n235, new_n236, new_n238, new_n239, new_n240, new_n241,
    new_n242, new_n243, new_n244, new_n245, new_n246, new_n248, new_n249,
    new_n250, new_n251, new_n252, new_n253, new_n254, new_n255, new_n256,
    new_n258, new_n259, new_n260, new_n261, new_n262, new_n263, new_n264,
    new_n265, new_n266, new_n267, new_n268, new_n270, new_n271, new_n272,
    new_n273, new_n274, new_n275, new_n276, new_n277, new_n278, new_n280,
    new_n281, new_n282, new_n283, new_n284, new_n285, new_n286, new_n287,
    new_n289, new_n290, new_n291, new_n292, new_n293, new_n294, new_n295,
    new_n296, n58, n63, n68, n73, n78, n82, n87, n92, n97, n102, n107,
    n112, n117, n122, n127, n132, n137, n142, n147, n152, n157;
  XOR2X1   g000(.A(\baud_count[10] ), .B(\baud_rate[10] ), .Y(new_n92_1));
  XOR2X1   g001(.A(\baud_count[11] ), .B(\baud_rate[11] ), .Y(new_n93));
  XOR2X1   g002(.A(\baud_count[8] ), .B(\baud_rate[8] ), .Y(new_n94));
  XOR2X1   g003(.A(\baud_count[9] ), .B(\baud_rate[9] ), .Y(new_n95));
  OR4X1    g004(.A(new_n95), .B(new_n94), .C(new_n93), .D(new_n92_1), .Y(new_n96));
  XOR2X1   g005(.A(\baud_count[14] ), .B(\baud_rate[14] ), .Y(new_n97_1));
  XOR2X1   g006(.A(\baud_count[15] ), .B(\baud_rate[15] ), .Y(new_n98));
  XOR2X1   g007(.A(\baud_count[12] ), .B(\baud_rate[12] ), .Y(new_n99));
  XOR2X1   g008(.A(\baud_count[13] ), .B(\baud_rate[13] ), .Y(new_n100));
  OR4X1    g009(.A(new_n100), .B(new_n99), .C(new_n98), .D(new_n97_1), .Y(new_n101));
  XOR2X1   g010(.A(\baud_count[2] ), .B(\baud_rate[2] ), .Y(new_n102_1));
  XOR2X1   g011(.A(\baud_count[3] ), .B(\baud_rate[3] ), .Y(new_n103));
  XOR2X1   g012(.A(\baud_count[0] ), .B(\baud_rate[0] ), .Y(new_n104));
  XOR2X1   g013(.A(\baud_count[1] ), .B(\baud_rate[1] ), .Y(new_n105));
  OR4X1    g014(.A(new_n105), .B(new_n104), .C(new_n103), .D(new_n102_1), .Y(new_n106));
  XOR2X1   g015(.A(\baud_count[6] ), .B(\baud_rate[6] ), .Y(new_n107_1));
  XOR2X1   g016(.A(\baud_count[7] ), .B(\baud_rate[7] ), .Y(new_n108));
  XOR2X1   g017(.A(\baud_count[4] ), .B(\baud_rate[4] ), .Y(new_n109));
  XOR2X1   g018(.A(\baud_count[5] ), .B(\baud_rate[5] ), .Y(new_n110));
  OR4X1    g019(.A(new_n110), .B(new_n109), .C(new_n108), .D(new_n107_1), .Y(new_n111));
  OR4X1    g020(.A(new_n111), .B(new_n106), .C(new_n101), .D(new_n96), .Y(new_n112_1));
  XOR2X1   g021(.A(new_n112_1), .B(\count[0] ), .Y(new_n113));
  INVX1    g022(.A(\count[3] ), .Y(new_n114));
  OR2X1    g023(.A(new_n114), .B(\count[2] ), .Y(new_n115));
  NAND2X1  g024(.A(\count[3] ), .B(\count[2] ), .Y(new_n116));
  AND2X1   g025(.A(new_n116), .B(new_n115), .Y(new_n117_1));
  NOR4X1   g026(.A(new_n114), .B(\count[2] ), .C(\count[1] ), .D(\count[0] ), .Y(new_n118));
  INVX1    g027(.A(\count[0] ), .Y(new_n119));
  NOR4X1   g028(.A(new_n114), .B(\count[2] ), .C(\count[1] ), .D(new_n119), .Y(new_n120));
  INVX1    g029(.A(new_n120), .Y(new_n121));
  OAI21X1  g030(.A0(new_n121), .A1(new_n112_1), .B0(\count[0] ), .Y(new_n122_1));
  MX2X1    g031(.A(new_n122_1), .B(new_n113), .S0(new_n118), .Y(new_n123));
  MX2X1    g032(.A(new_n123), .B(new_n113), .S0(new_n117_1), .Y(new_n124));
  OR2X1    g033(.A(start), .B(reset), .Y(new_n125));
  NOR2X1   g034(.A(new_n125), .B(new_n124), .Y(n58));
  INVX1    g035(.A(\count[1] ), .Y(new_n127_1));
  XOR2X1   g036(.A(\count[1] ), .B(new_n119), .Y(new_n128));
  MX2X1    g037(.A(new_n128), .B(new_n127_1), .S0(new_n112_1), .Y(new_n129));
  OAI21X1  g038(.A0(new_n121), .A1(new_n112_1), .B0(\count[1] ), .Y(new_n130));
  MX2X1    g039(.A(new_n130), .B(new_n129), .S0(new_n118), .Y(new_n131));
  MX2X1    g040(.A(new_n131), .B(new_n129), .S0(new_n117_1), .Y(new_n132_1));
  NOR2X1   g041(.A(new_n132_1), .B(new_n125), .Y(n63));
  INVX1    g042(.A(\count[2] ), .Y(new_n134));
  AND2X1   g043(.A(\count[1] ), .B(\count[0] ), .Y(new_n135));
  XOR2X1   g044(.A(new_n135), .B(new_n134), .Y(new_n136));
  MX2X1    g045(.A(new_n136), .B(new_n134), .S0(new_n112_1), .Y(new_n137_1));
  OAI21X1  g046(.A0(new_n121), .A1(new_n112_1), .B0(\count[2] ), .Y(new_n138));
  MX2X1    g047(.A(new_n138), .B(new_n137_1), .S0(new_n118), .Y(new_n139));
  MX2X1    g048(.A(new_n139), .B(new_n137_1), .S0(new_n117_1), .Y(new_n140));
  NOR2X1   g049(.A(new_n140), .B(new_n125), .Y(n68));
  NAND3X1  g050(.A(\count[2] ), .B(\count[1] ), .C(\count[0] ), .Y(new_n142_1));
  XOR2X1   g051(.A(new_n142_1), .B(\count[3] ), .Y(new_n143));
  MX2X1    g052(.A(new_n143), .B(new_n114), .S0(new_n112_1), .Y(new_n144));
  OAI21X1  g053(.A0(new_n121), .A1(new_n112_1), .B0(\count[3] ), .Y(new_n145));
  MX2X1    g054(.A(new_n145), .B(new_n144), .S0(new_n118), .Y(new_n146));
  MX2X1    g055(.A(new_n146), .B(new_n144), .S0(new_n117_1), .Y(new_n147_1));
  NOR2X1   g056(.A(new_n147_1), .B(new_n125), .Y(n73));
  INVX1    g057(.A(reset), .Y(new_n149));
  INVX1    g058(.A(tx), .Y(new_n150));
  NOR4X1   g059(.A(new_n111), .B(new_n106), .C(new_n101), .D(new_n96), .Y(new_n151));
  AOI21X1  g060(.A0(new_n120), .A1(new_n151), .B0(tx), .Y(new_n152_1));
  MX2X1    g061(.A(new_n152_1), .B(new_n150), .S0(new_n118), .Y(new_n153));
  MX2X1    g062(.A(new_n153), .B(new_n150), .S0(new_n117_1), .Y(new_n154));
  OAI21X1  g063(.A0(new_n154), .A1(start), .B0(new_n149), .Y(n78));
  INVX1    g064(.A(\baud_count[0] ), .Y(new_n156));
  NAND2X1  g065(.A(new_n112_1), .B(new_n156), .Y(new_n157_1));
  MX2X1    g066(.A(new_n157_1), .B(new_n156), .S0(new_n121), .Y(new_n158));
  MX2X1    g067(.A(new_n158), .B(new_n157_1), .S0(new_n118), .Y(new_n159));
  MX2X1    g068(.A(new_n159), .B(new_n157_1), .S0(new_n117_1), .Y(new_n160));
  NOR2X1   g069(.A(new_n160), .B(new_n125), .Y(n82));
  XOR2X1   g070(.A(\baud_count[1] ), .B(\baud_count[0] ), .Y(new_n162));
  NAND2X1  g071(.A(new_n162), .B(new_n112_1), .Y(new_n163));
  INVX1    g072(.A(\baud_count[1] ), .Y(new_n164));
  MX2X1    g073(.A(new_n163), .B(new_n164), .S0(new_n121), .Y(new_n165));
  MX2X1    g074(.A(new_n165), .B(new_n163), .S0(new_n118), .Y(new_n166));
  MX2X1    g075(.A(new_n166), .B(new_n163), .S0(new_n117_1), .Y(new_n167));
  NOR2X1   g076(.A(new_n167), .B(new_n125), .Y(n87));
  AND2X1   g077(.A(\baud_count[1] ), .B(\baud_count[0] ), .Y(new_n169));
  XOR2X1   g078(.A(new_n169), .B(\baud_count[2] ), .Y(new_n170));
  NAND2X1  g079(.A(new_n170), .B(new_n112_1), .Y(new_n171));
  INVX1    g080(.A(\baud_count[2] ), .Y(new_n172));
  MX2X1    g081(.A(new_n171), .B(new_n172), .S0(new_n121), .Y(new_n173));
  MX2X1    g082(.A(new_n173), .B(new_n171), .S0(new_n118), .Y(new_n174));
  MX2X1    g083(.A(new_n174), .B(new_n171), .S0(new_n117_1), .Y(new_n175));
  NOR2X1   g084(.A(new_n175), .B(new_n125), .Y(n92));
  INVX1    g085(.A(\baud_count[3] ), .Y(new_n177));
  NAND3X1  g086(.A(\baud_count[2] ), .B(\baud_count[1] ), .C(\baud_count[0] ), .Y(new_n178));
  XOR2X1   g087(.A(new_n178), .B(new_n177), .Y(new_n179));
  NAND2X1  g088(.A(new_n179), .B(new_n112_1), .Y(new_n180));
  MX2X1    g089(.A(new_n180), .B(new_n177), .S0(new_n121), .Y(new_n181));
  MX2X1    g090(.A(new_n181), .B(new_n180), .S0(new_n118), .Y(new_n182));
  MX2X1    g091(.A(new_n182), .B(new_n180), .S0(new_n117_1), .Y(new_n183));
  NOR2X1   g092(.A(new_n183), .B(new_n125), .Y(n97));
  INVX1    g093(.A(\baud_count[4] ), .Y(new_n185));
  NAND4X1  g094(.A(\baud_count[3] ), .B(\baud_count[2] ), .C(\baud_count[1] ), .D(\baud_count[0] ), .Y(new_n186));
  XOR2X1   g095(.A(new_n186), .B(new_n185), .Y(new_n187));
  NAND2X1  g096(.A(new_n187), .B(new_n112_1), .Y(new_n188));
  MX2X1    g097(.A(new_n188), .B(new_n185), .S0(new_n121), .Y(new_n189));
  MX2X1    g098(.A(new_n189), .B(new_n188), .S0(new_n118), .Y(new_n190));
  MX2X1    g099(.A(new_n190), .B(new_n188), .S0(new_n117_1), .Y(new_n191));
  NOR2X1   g100(.A(new_n191), .B(new_n125), .Y(n102));
  NOR2X1   g101(.A(new_n186), .B(new_n185), .Y(new_n193));
  XOR2X1   g102(.A(new_n193), .B(\baud_count[5] ), .Y(new_n194));
  NAND2X1  g103(.A(new_n194), .B(new_n112_1), .Y(new_n195));
  INVX1    g104(.A(\baud_count[5] ), .Y(new_n196));
  MX2X1    g105(.A(new_n195), .B(new_n196), .S0(new_n121), .Y(new_n197));
  MX2X1    g106(.A(new_n197), .B(new_n195), .S0(new_n118), .Y(new_n198));
  MX2X1    g107(.A(new_n198), .B(new_n195), .S0(new_n117_1), .Y(new_n199));
  NOR2X1   g108(.A(new_n199), .B(new_n125), .Y(n107));
  NOR3X1   g109(.A(new_n186), .B(new_n196), .C(new_n185), .Y(new_n201));
  XOR2X1   g110(.A(new_n201), .B(\baud_count[6] ), .Y(new_n202));
  NAND2X1  g111(.A(new_n202), .B(new_n112_1), .Y(new_n203));
  INVX1    g112(.A(\baud_count[6] ), .Y(new_n204));
  MX2X1    g113(.A(new_n203), .B(new_n204), .S0(new_n121), .Y(new_n205));
  MX2X1    g114(.A(new_n205), .B(new_n203), .S0(new_n118), .Y(new_n206));
  MX2X1    g115(.A(new_n206), .B(new_n203), .S0(new_n117_1), .Y(new_n207));
  NOR2X1   g116(.A(new_n207), .B(new_n125), .Y(n112));
  NOR4X1   g117(.A(new_n186), .B(new_n204), .C(new_n196), .D(new_n185), .Y(new_n209));
  XOR2X1   g118(.A(new_n209), .B(\baud_count[7] ), .Y(new_n210));
  NAND2X1  g119(.A(new_n210), .B(new_n112_1), .Y(new_n211));
  INVX1    g120(.A(\baud_count[7] ), .Y(new_n212));
  MX2X1    g121(.A(new_n211), .B(new_n212), .S0(new_n121), .Y(new_n213));
  MX2X1    g122(.A(new_n213), .B(new_n211), .S0(new_n118), .Y(new_n214));
  MX2X1    g123(.A(new_n214), .B(new_n211), .S0(new_n117_1), .Y(new_n215));
  NOR2X1   g124(.A(new_n215), .B(new_n125), .Y(n117));
  NAND4X1  g125(.A(\baud_count[7] ), .B(\baud_count[6] ), .C(\baud_count[5] ), .D(\baud_count[4] ), .Y(new_n217));
  NOR2X1   g126(.A(new_n217), .B(new_n186), .Y(new_n218));
  XOR2X1   g127(.A(new_n218), .B(\baud_count[8] ), .Y(new_n219));
  NAND2X1  g128(.A(new_n219), .B(new_n112_1), .Y(new_n220));
  INVX1    g129(.A(\baud_count[8] ), .Y(new_n221));
  MX2X1    g130(.A(new_n220), .B(new_n221), .S0(new_n121), .Y(new_n222));
  MX2X1    g131(.A(new_n222), .B(new_n220), .S0(new_n118), .Y(new_n223));
  MX2X1    g132(.A(new_n223), .B(new_n220), .S0(new_n117_1), .Y(new_n224));
  NOR2X1   g133(.A(new_n224), .B(new_n125), .Y(n122));
  NOR3X1   g134(.A(new_n217), .B(new_n186), .C(new_n221), .Y(new_n226));
  XOR2X1   g135(.A(new_n226), .B(\baud_count[9] ), .Y(new_n227));
  NAND3X1  g136(.A(new_n227), .B(new_n117_1), .C(new_n112_1), .Y(new_n228));
  INVX1    g137(.A(new_n117_1), .Y(new_n229));
  AND2X1   g138(.A(new_n227), .B(new_n112_1), .Y(new_n230));
  AND2X1   g139(.A(new_n230), .B(new_n118), .Y(new_n231));
  NAND3X1  g140(.A(new_n227), .B(new_n120), .C(new_n112_1), .Y(new_n232));
  INVX1    g141(.A(\baud_count[9] ), .Y(new_n233));
  OR2X1    g142(.A(new_n120), .B(new_n233), .Y(new_n234));
  AOI21X1  g143(.A0(new_n234), .A1(new_n232), .B0(new_n118), .Y(new_n235));
  OAI21X1  g144(.A0(new_n235), .A1(new_n231), .B0(new_n229), .Y(new_n236));
  AOI21X1  g145(.A0(new_n236), .A1(new_n228), .B0(new_n125), .Y(n127));
  NOR4X1   g146(.A(new_n217), .B(new_n186), .C(new_n233), .D(new_n221), .Y(new_n238));
  XOR2X1   g147(.A(new_n238), .B(\baud_count[10] ), .Y(new_n239));
  NAND3X1  g148(.A(new_n239), .B(new_n117_1), .C(new_n112_1), .Y(new_n240));
  AND2X1   g149(.A(new_n239), .B(new_n112_1), .Y(new_n241));
  AND2X1   g150(.A(new_n241), .B(new_n118), .Y(new_n242));
  NAND3X1  g151(.A(new_n239), .B(new_n120), .C(new_n112_1), .Y(new_n243));
  NAND2X1  g152(.A(new_n121), .B(\baud_count[10] ), .Y(new_n244));
  AOI21X1  g153(.A0(new_n244), .A1(new_n243), .B0(new_n118), .Y(new_n245));
  OAI21X1  g154(.A0(new_n245), .A1(new_n242), .B0(new_n229), .Y(new_n246));
  AOI21X1  g155(.A0(new_n246), .A1(new_n240), .B0(new_n125), .Y(n132));
  AND2X1   g156(.A(new_n238), .B(\baud_count[10] ), .Y(new_n248));
  XOR2X1   g157(.A(new_n248), .B(\baud_count[11] ), .Y(new_n249));
  NAND3X1  g158(.A(new_n249), .B(new_n117_1), .C(new_n112_1), .Y(new_n250));
  AND2X1   g159(.A(new_n249), .B(new_n112_1), .Y(new_n251));
  AND2X1   g160(.A(new_n251), .B(new_n118), .Y(new_n252));
  NAND3X1  g161(.A(new_n249), .B(new_n120), .C(new_n112_1), .Y(new_n253));
  NAND2X1  g162(.A(new_n121), .B(\baud_count[11] ), .Y(new_n254));
  AOI21X1  g163(.A0(new_n254), .A1(new_n253), .B0(new_n118), .Y(new_n255));
  OAI21X1  g164(.A0(new_n255), .A1(new_n252), .B0(new_n229), .Y(new_n256));
  AOI21X1  g165(.A0(new_n256), .A1(new_n250), .B0(new_n125), .Y(n137));
  NAND4X1  g166(.A(\baud_count[11] ), .B(\baud_count[10] ), .C(\baud_count[9] ), .D(\baud_count[8] ), .Y(new_n258));
  NOR3X1   g167(.A(new_n258), .B(new_n217), .C(new_n186), .Y(new_n259));
  XOR2X1   g168(.A(new_n259), .B(\baud_count[12] ), .Y(new_n260));
  NAND3X1  g169(.A(new_n260), .B(new_n117_1), .C(new_n112_1), .Y(new_n261));
  AND2X1   g170(.A(new_n260), .B(new_n112_1), .Y(new_n262));
  AND2X1   g171(.A(new_n262), .B(new_n118), .Y(new_n263));
  NAND3X1  g172(.A(new_n260), .B(new_n120), .C(new_n112_1), .Y(new_n264));
  INVX1    g173(.A(\baud_count[12] ), .Y(new_n265));
  OR2X1    g174(.A(new_n120), .B(new_n265), .Y(new_n266));
  AOI21X1  g175(.A0(new_n266), .A1(new_n264), .B0(new_n118), .Y(new_n267));
  OAI21X1  g176(.A0(new_n267), .A1(new_n263), .B0(new_n229), .Y(new_n268));
  AOI21X1  g177(.A0(new_n268), .A1(new_n261), .B0(new_n125), .Y(n142));
  NOR4X1   g178(.A(new_n258), .B(new_n217), .C(new_n186), .D(new_n265), .Y(new_n270));
  XOR2X1   g179(.A(new_n270), .B(\baud_count[13] ), .Y(new_n271));
  NAND3X1  g180(.A(new_n271), .B(new_n117_1), .C(new_n112_1), .Y(new_n272));
  AND2X1   g181(.A(new_n271), .B(new_n112_1), .Y(new_n273));
  AND2X1   g182(.A(new_n273), .B(new_n118), .Y(new_n274));
  NAND3X1  g183(.A(new_n271), .B(new_n120), .C(new_n112_1), .Y(new_n275));
  NAND2X1  g184(.A(new_n121), .B(\baud_count[13] ), .Y(new_n276));
  AOI21X1  g185(.A0(new_n276), .A1(new_n275), .B0(new_n118), .Y(new_n277));
  OAI21X1  g186(.A0(new_n277), .A1(new_n274), .B0(new_n229), .Y(new_n278));
  AOI21X1  g187(.A0(new_n278), .A1(new_n272), .B0(new_n125), .Y(n147));
  NAND2X1  g188(.A(\baud_count[13] ), .B(\baud_count[12] ), .Y(new_n280));
  NOR4X1   g189(.A(new_n280), .B(new_n258), .C(new_n217), .D(new_n186), .Y(new_n281));
  XOR2X1   g190(.A(new_n281), .B(\baud_count[14] ), .Y(new_n282));
  NAND2X1  g191(.A(new_n282), .B(new_n112_1), .Y(new_n283));
  INVX1    g192(.A(\baud_count[14] ), .Y(new_n284));
  MX2X1    g193(.A(new_n283), .B(new_n284), .S0(new_n121), .Y(new_n285));
  MX2X1    g194(.A(new_n285), .B(new_n283), .S0(new_n118), .Y(new_n286));
  MX2X1    g195(.A(new_n286), .B(new_n283), .S0(new_n117_1), .Y(new_n287));
  NOR2X1   g196(.A(new_n287), .B(new_n125), .Y(n152));
  INVX1    g197(.A(\baud_count[15] ), .Y(new_n289));
  AOI21X1  g198(.A0(new_n281), .A1(\baud_count[14] ), .B0(new_n289), .Y(new_n290));
  OR4X1    g199(.A(new_n280), .B(new_n258), .C(new_n217), .D(new_n186), .Y(new_n291));
  NOR3X1   g200(.A(new_n291), .B(\baud_count[15] ), .C(new_n284), .Y(new_n292));
  OAI21X1  g201(.A0(new_n292), .A1(new_n290), .B0(new_n112_1), .Y(new_n293));
  MX2X1    g202(.A(new_n289), .B(new_n293), .S0(new_n120), .Y(new_n294));
  MX2X1    g203(.A(new_n294), .B(new_n293), .S0(new_n118), .Y(new_n295));
  MX2X1    g204(.A(new_n295), .B(new_n293), .S0(new_n117_1), .Y(new_n296));
  NOR2X1   g205(.A(new_n296), .B(new_n125), .Y(n157));
  always @ (posedge clock) begin
    \count[0]  <= n58;
    \count[1]  <= n63;
    \count[2]  <= n68;
    \count[3]  <= n73;
    tx <= n78;
    \baud_count[0]  <= n82;
    \baud_count[1]  <= n87;
    \baud_count[2]  <= n92;
    \baud_count[3]  <= n97;
    \baud_count[4]  <= n102;
    \baud_count[5]  <= n107;
    \baud_count[6]  <= n112;
    \baud_count[7]  <= n117;
    \baud_count[8]  <= n122;
    \baud_count[9]  <= n127;
    \baud_count[10]  <= n132;
    \baud_count[11]  <= n137;
    \baud_count[12]  <= n142;
    \baud_count[13]  <= n147;
    \baud_count[14]  <= n152;
    \baud_count[15]  <= n157;
  end
endmodule


