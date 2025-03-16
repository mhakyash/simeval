// Benchmark "barrel_shifter" written by ABC on Wed Jun 26 15:22:18 2024

module barrel_shifter ( clock, 
    \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] , \in[6] , \in[7] ,
    \in[8] , \in[9] , \in[10] , \in[11] , \in[12] , \in[13] , \in[14] ,
    \in[15] , \shift_amount[0] , \shift_amount[1] , \shift_amount[2] ,
    \shift_amount[3] ,
    \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] , \out[8] , \out[9] , \out[10] , \out[11] , \out[12] ,
    \out[13] , \out[14] , \out[15]   );
  input  clock;
  input  \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] , \in[6] ,
    \in[7] , \in[8] , \in[9] , \in[10] , \in[11] , \in[12] , \in[13] ,
    \in[14] , \in[15] , \shift_amount[0] , \shift_amount[1] ,
    \shift_amount[2] , \shift_amount[3] ;
  output \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] , \out[8] , \out[9] , \out[10] , \out[11] , \out[12] ,
    \out[13] , \out[14] , \out[15] ;
  reg \out_reg[0] , \out_reg[1] , \out_reg[2] , \out_reg[3] , \out_reg[4] ,
    \out_reg[5] , \out_reg[6] , \out_reg[7] , \out_reg[8] , \out_reg[9] ,
    \out_reg[10] , \out_reg[11] , \out_reg[12] , \out_reg[13] ,
    \out_reg[14] , \out_reg[15] , \shift_amount_reg[0] ,
    \shift_amount_reg[1] , \shift_amount_reg[2] , \shift_amount_reg[3] ,
    \in_reg[0] , \in_reg[1] , \in_reg[2] , \in_reg[3] , \in_reg[4] ,
    \in_reg[5] , \in_reg[6] , \in_reg[7] , \in_reg[8] , \in_reg[9] ,
    \in_reg[10] , \in_reg[11] , \in_reg[12] , \in_reg[13] , \in_reg[14] ,
    \in_reg[15] ;
  wire new_n145, new_n146, new_n147, new_n148, new_n149_1, new_n150,
    new_n151, new_n152, new_n153_1, new_n154, new_n155, new_n156,
    new_n157_1, new_n158, new_n159, new_n160, new_n161_1, new_n162,
    new_n163, new_n164, new_n165_1, new_n166, new_n167, new_n168,
    new_n169_1, new_n170, new_n171, new_n172, new_n173_1, new_n174,
    new_n175, new_n176, new_n177_1, new_n178, new_n179, new_n180,
    new_n181_1, new_n182, new_n183, new_n184, new_n185_1, new_n186,
    new_n187, new_n188, new_n189_1, new_n190, new_n191, new_n192,
    new_n193_1, new_n194, new_n195, new_n197_1, new_n198, new_n199,
    new_n200, new_n201_1, new_n202, new_n203, new_n204, new_n205_1,
    new_n206, new_n208, new_n209_1, new_n210, new_n211, new_n212,
    new_n213_1, new_n214, new_n215, new_n216, new_n217_1, new_n219,
    new_n220, new_n221_1, new_n222, new_n223, new_n224, new_n225_1,
    new_n226, new_n227, new_n228, new_n230, new_n231, new_n232, new_n233,
    new_n234, new_n235, new_n236, new_n237, new_n238, new_n239, new_n241,
    new_n242, new_n243, new_n244, new_n245, new_n246, new_n247, new_n248,
    new_n249, new_n250, new_n252, new_n253, new_n254, new_n255, new_n256,
    new_n257, new_n258, new_n259, new_n260, new_n261, new_n263, new_n264,
    new_n265, new_n266, new_n267, new_n268, new_n269, new_n270, new_n271,
    new_n272, new_n274, new_n275, new_n276, new_n277, new_n278, new_n279,
    new_n280, new_n281, new_n282, new_n283, new_n285, new_n286, new_n287,
    new_n288, new_n289, new_n290, new_n291, new_n292, new_n293, new_n294,
    new_n296, new_n297, new_n298, new_n299, new_n300, new_n301, new_n302,
    new_n303, new_n304, new_n305, new_n307, new_n308, new_n309, new_n310,
    new_n311, new_n312, new_n313, new_n314, new_n315, new_n316, new_n318,
    new_n319, new_n320, new_n321, new_n322, new_n323, new_n324, new_n325,
    new_n326, new_n327, new_n329, new_n330, new_n331, new_n332, new_n333,
    new_n334, new_n335, new_n336, new_n337, new_n338, new_n340, new_n341,
    new_n342, new_n343, new_n344, new_n345, new_n346, new_n347, new_n348,
    new_n349, new_n351, new_n352, new_n353, new_n354, new_n355, new_n356,
    new_n357, new_n358, new_n359, new_n360, n74, n79, n84, n89, n94, n99,
    n104, n109, n114, n119, n124, n129, n134, n139, n144, n149, n153, n157,
    n161, n165, n169, n173, n177, n181, n185, n189, n193, n197, n201, n205,
    n209, n213, n217, n221, n225, n229;
  INVX1    g000(.A(\in_reg[5] ), .Y(new_n145));
  INVX1    g001(.A(\in_reg[6] ), .Y(new_n146));
  INVX1    g002(.A(\shift_amount_reg[0] ), .Y(new_n147));
  INVX1    g003(.A(\shift_amount_reg[1] ), .Y(new_n148));
  INVX1    g004(.A(\shift_amount_reg[3] ), .Y(new_n149_1));
  OR4X1    g005(.A(new_n149_1), .B(\shift_amount_reg[2] ), .C(new_n148), .D(new_n147), .Y(new_n150));
  OR4X1    g006(.A(new_n149_1), .B(\shift_amount_reg[2] ), .C(new_n148), .D(\shift_amount_reg[0] ), .Y(new_n151));
  OAI22X1  g007(.A0(new_n151), .A1(new_n146), .B0(new_n150), .B1(new_n145), .Y(new_n152));
  INVX1    g008(.A(\in_reg[7] ), .Y(new_n153_1));
  INVX1    g009(.A(\in_reg[8] ), .Y(new_n154));
  OR4X1    g010(.A(new_n149_1), .B(\shift_amount_reg[2] ), .C(\shift_amount_reg[1] ), .D(new_n147), .Y(new_n155));
  OR4X1    g011(.A(new_n149_1), .B(\shift_amount_reg[2] ), .C(\shift_amount_reg[1] ), .D(\shift_amount_reg[0] ), .Y(new_n156));
  OAI22X1  g012(.A0(new_n156), .A1(new_n154), .B0(new_n155), .B1(new_n153_1), .Y(new_n157_1));
  INVX1    g013(.A(\in_reg[1] ), .Y(new_n158));
  INVX1    g014(.A(\in_reg[2] ), .Y(new_n159));
  NAND4X1  g015(.A(\shift_amount_reg[3] ), .B(\shift_amount_reg[2] ), .C(\shift_amount_reg[1] ), .D(\shift_amount_reg[0] ), .Y(new_n160));
  INVX1    g016(.A(\shift_amount_reg[2] ), .Y(new_n161_1));
  OR4X1    g017(.A(new_n149_1), .B(new_n161_1), .C(new_n148), .D(\shift_amount_reg[0] ), .Y(new_n162));
  OAI22X1  g018(.A0(new_n162), .A1(new_n159), .B0(new_n160), .B1(new_n158), .Y(new_n163));
  INVX1    g019(.A(\in_reg[3] ), .Y(new_n164));
  INVX1    g020(.A(\in_reg[4] ), .Y(new_n165_1));
  OR4X1    g021(.A(new_n149_1), .B(new_n161_1), .C(\shift_amount_reg[1] ), .D(new_n147), .Y(new_n166));
  OR4X1    g022(.A(new_n149_1), .B(new_n161_1), .C(\shift_amount_reg[1] ), .D(\shift_amount_reg[0] ), .Y(new_n167));
  OAI22X1  g023(.A0(new_n167), .A1(new_n165_1), .B0(new_n166), .B1(new_n164), .Y(new_n168));
  NOR4X1   g024(.A(new_n168), .B(new_n163), .C(new_n157_1), .D(new_n152), .Y(new_n169_1));
  INVX1    g025(.A(\in_reg[13] ), .Y(new_n170));
  INVX1    g026(.A(\in_reg[14] ), .Y(new_n171));
  OR4X1    g027(.A(\shift_amount_reg[3] ), .B(\shift_amount_reg[2] ), .C(new_n148), .D(new_n147), .Y(new_n172));
  OR4X1    g028(.A(\shift_amount_reg[3] ), .B(\shift_amount_reg[2] ), .C(new_n148), .D(\shift_amount_reg[0] ), .Y(new_n173_1));
  OAI22X1  g029(.A0(new_n173_1), .A1(new_n171), .B0(new_n172), .B1(new_n170), .Y(new_n174));
  INVX1    g030(.A(\in_reg[0] ), .Y(new_n175));
  INVX1    g031(.A(\in_reg[15] ), .Y(new_n176));
  OR4X1    g032(.A(\shift_amount_reg[3] ), .B(\shift_amount_reg[2] ), .C(\shift_amount_reg[1] ), .D(new_n147), .Y(new_n177_1));
  OR4X1    g033(.A(\shift_amount_reg[3] ), .B(\shift_amount_reg[2] ), .C(\shift_amount_reg[1] ), .D(\shift_amount_reg[0] ), .Y(new_n178));
  OAI22X1  g034(.A0(new_n178), .A1(new_n175), .B0(new_n177_1), .B1(new_n176), .Y(new_n179));
  INVX1    g035(.A(\in_reg[9] ), .Y(new_n180));
  INVX1    g036(.A(\in_reg[10] ), .Y(new_n181_1));
  OR4X1    g037(.A(\shift_amount_reg[3] ), .B(new_n161_1), .C(new_n148), .D(new_n147), .Y(new_n182));
  OR4X1    g038(.A(\shift_amount_reg[3] ), .B(new_n161_1), .C(new_n148), .D(\shift_amount_reg[0] ), .Y(new_n183));
  OAI22X1  g039(.A0(new_n183), .A1(new_n181_1), .B0(new_n182), .B1(new_n180), .Y(new_n184));
  INVX1    g040(.A(\in_reg[11] ), .Y(new_n185_1));
  INVX1    g041(.A(\in_reg[12] ), .Y(new_n186));
  OR4X1    g042(.A(\shift_amount_reg[3] ), .B(new_n161_1), .C(\shift_amount_reg[1] ), .D(new_n147), .Y(new_n187));
  OR4X1    g043(.A(\shift_amount_reg[3] ), .B(new_n161_1), .C(\shift_amount_reg[1] ), .D(\shift_amount_reg[0] ), .Y(new_n188));
  OAI22X1  g044(.A0(new_n188), .A1(new_n186), .B0(new_n187), .B1(new_n185_1), .Y(new_n189_1));
  NOR4X1   g045(.A(new_n189_1), .B(new_n184), .C(new_n179), .D(new_n174), .Y(new_n190));
  NAND4X1  g046(.A(new_n156), .B(new_n155), .C(new_n151), .D(new_n150), .Y(new_n191));
  NAND4X1  g047(.A(new_n167), .B(new_n166), .C(new_n162), .D(new_n160), .Y(new_n192));
  NAND4X1  g048(.A(new_n178), .B(new_n177_1), .C(new_n173_1), .D(new_n172), .Y(new_n193_1));
  NAND4X1  g049(.A(new_n188), .B(new_n187), .C(new_n183), .D(new_n182), .Y(new_n194));
  NOR4X1   g050(.A(new_n194), .B(new_n193_1), .C(new_n192), .D(new_n191), .Y(new_n195));
  AOI21X1  g051(.A0(new_n190), .A1(new_n169_1), .B0(new_n195), .Y(n74));
  OAI22X1  g052(.A0(new_n151), .A1(new_n153_1), .B0(new_n150), .B1(new_n146), .Y(new_n197_1));
  OAI22X1  g053(.A0(new_n156), .A1(new_n180), .B0(new_n155), .B1(new_n154), .Y(new_n198));
  OAI22X1  g054(.A0(new_n162), .A1(new_n164), .B0(new_n160), .B1(new_n159), .Y(new_n199));
  OAI22X1  g055(.A0(new_n167), .A1(new_n145), .B0(new_n166), .B1(new_n165_1), .Y(new_n200));
  NOR4X1   g056(.A(new_n200), .B(new_n199), .C(new_n198), .D(new_n197_1), .Y(new_n201_1));
  OAI22X1  g057(.A0(new_n173_1), .A1(new_n176), .B0(new_n172), .B1(new_n171), .Y(new_n202));
  OAI22X1  g058(.A0(new_n178), .A1(new_n158), .B0(new_n177_1), .B1(new_n175), .Y(new_n203));
  OAI22X1  g059(.A0(new_n183), .A1(new_n185_1), .B0(new_n182), .B1(new_n181_1), .Y(new_n204));
  OAI22X1  g060(.A0(new_n188), .A1(new_n170), .B0(new_n187), .B1(new_n186), .Y(new_n205_1));
  NOR4X1   g061(.A(new_n205_1), .B(new_n204), .C(new_n203), .D(new_n202), .Y(new_n206));
  AOI21X1  g062(.A0(new_n206), .A1(new_n201_1), .B0(new_n195), .Y(n79));
  OAI22X1  g063(.A0(new_n151), .A1(new_n154), .B0(new_n150), .B1(new_n153_1), .Y(new_n208));
  OAI22X1  g064(.A0(new_n156), .A1(new_n181_1), .B0(new_n155), .B1(new_n180), .Y(new_n209_1));
  OAI22X1  g065(.A0(new_n162), .A1(new_n165_1), .B0(new_n160), .B1(new_n164), .Y(new_n210));
  OAI22X1  g066(.A0(new_n167), .A1(new_n146), .B0(new_n166), .B1(new_n145), .Y(new_n211));
  NOR4X1   g067(.A(new_n211), .B(new_n210), .C(new_n209_1), .D(new_n208), .Y(new_n212));
  OAI22X1  g068(.A0(new_n173_1), .A1(new_n175), .B0(new_n172), .B1(new_n176), .Y(new_n213_1));
  OAI22X1  g069(.A0(new_n178), .A1(new_n159), .B0(new_n177_1), .B1(new_n158), .Y(new_n214));
  OAI22X1  g070(.A0(new_n183), .A1(new_n186), .B0(new_n182), .B1(new_n185_1), .Y(new_n215));
  OAI22X1  g071(.A0(new_n188), .A1(new_n171), .B0(new_n187), .B1(new_n170), .Y(new_n216));
  NOR4X1   g072(.A(new_n216), .B(new_n215), .C(new_n214), .D(new_n213_1), .Y(new_n217_1));
  AOI21X1  g073(.A0(new_n217_1), .A1(new_n212), .B0(new_n195), .Y(n84));
  OAI22X1  g074(.A0(new_n151), .A1(new_n180), .B0(new_n150), .B1(new_n154), .Y(new_n219));
  OAI22X1  g075(.A0(new_n156), .A1(new_n185_1), .B0(new_n155), .B1(new_n181_1), .Y(new_n220));
  OAI22X1  g076(.A0(new_n162), .A1(new_n145), .B0(new_n160), .B1(new_n165_1), .Y(new_n221_1));
  OAI22X1  g077(.A0(new_n167), .A1(new_n153_1), .B0(new_n166), .B1(new_n146), .Y(new_n222));
  NOR4X1   g078(.A(new_n222), .B(new_n221_1), .C(new_n220), .D(new_n219), .Y(new_n223));
  OAI22X1  g079(.A0(new_n173_1), .A1(new_n158), .B0(new_n172), .B1(new_n175), .Y(new_n224));
  OAI22X1  g080(.A0(new_n178), .A1(new_n164), .B0(new_n177_1), .B1(new_n159), .Y(new_n225_1));
  OAI22X1  g081(.A0(new_n183), .A1(new_n170), .B0(new_n182), .B1(new_n186), .Y(new_n226));
  OAI22X1  g082(.A0(new_n188), .A1(new_n176), .B0(new_n187), .B1(new_n171), .Y(new_n227));
  NOR4X1   g083(.A(new_n227), .B(new_n226), .C(new_n225_1), .D(new_n224), .Y(new_n228));
  AOI21X1  g084(.A0(new_n228), .A1(new_n223), .B0(new_n195), .Y(n89));
  OAI22X1  g085(.A0(new_n151), .A1(new_n181_1), .B0(new_n150), .B1(new_n180), .Y(new_n230));
  OAI22X1  g086(.A0(new_n156), .A1(new_n186), .B0(new_n155), .B1(new_n185_1), .Y(new_n231));
  OAI22X1  g087(.A0(new_n162), .A1(new_n146), .B0(new_n160), .B1(new_n145), .Y(new_n232));
  OAI22X1  g088(.A0(new_n167), .A1(new_n154), .B0(new_n166), .B1(new_n153_1), .Y(new_n233));
  NOR4X1   g089(.A(new_n233), .B(new_n232), .C(new_n231), .D(new_n230), .Y(new_n234));
  OAI22X1  g090(.A0(new_n173_1), .A1(new_n159), .B0(new_n172), .B1(new_n158), .Y(new_n235));
  OAI22X1  g091(.A0(new_n178), .A1(new_n165_1), .B0(new_n177_1), .B1(new_n164), .Y(new_n236));
  OAI22X1  g092(.A0(new_n183), .A1(new_n171), .B0(new_n182), .B1(new_n170), .Y(new_n237));
  OAI22X1  g093(.A0(new_n188), .A1(new_n175), .B0(new_n187), .B1(new_n176), .Y(new_n238));
  NOR4X1   g094(.A(new_n238), .B(new_n237), .C(new_n236), .D(new_n235), .Y(new_n239));
  AOI21X1  g095(.A0(new_n239), .A1(new_n234), .B0(new_n195), .Y(n94));
  OAI22X1  g096(.A0(new_n151), .A1(new_n185_1), .B0(new_n150), .B1(new_n181_1), .Y(new_n241));
  OAI22X1  g097(.A0(new_n156), .A1(new_n170), .B0(new_n155), .B1(new_n186), .Y(new_n242));
  OAI22X1  g098(.A0(new_n162), .A1(new_n153_1), .B0(new_n160), .B1(new_n146), .Y(new_n243));
  OAI22X1  g099(.A0(new_n167), .A1(new_n180), .B0(new_n166), .B1(new_n154), .Y(new_n244));
  NOR4X1   g100(.A(new_n244), .B(new_n243), .C(new_n242), .D(new_n241), .Y(new_n245));
  OAI22X1  g101(.A0(new_n173_1), .A1(new_n164), .B0(new_n172), .B1(new_n159), .Y(new_n246));
  OAI22X1  g102(.A0(new_n178), .A1(new_n145), .B0(new_n177_1), .B1(new_n165_1), .Y(new_n247));
  OAI22X1  g103(.A0(new_n183), .A1(new_n176), .B0(new_n182), .B1(new_n171), .Y(new_n248));
  OAI22X1  g104(.A0(new_n188), .A1(new_n158), .B0(new_n187), .B1(new_n175), .Y(new_n249));
  NOR4X1   g105(.A(new_n249), .B(new_n248), .C(new_n247), .D(new_n246), .Y(new_n250));
  AOI21X1  g106(.A0(new_n250), .A1(new_n245), .B0(new_n195), .Y(n99));
  OAI22X1  g107(.A0(new_n151), .A1(new_n186), .B0(new_n150), .B1(new_n185_1), .Y(new_n252));
  OAI22X1  g108(.A0(new_n156), .A1(new_n171), .B0(new_n155), .B1(new_n170), .Y(new_n253));
  OAI22X1  g109(.A0(new_n162), .A1(new_n154), .B0(new_n160), .B1(new_n153_1), .Y(new_n254));
  OAI22X1  g110(.A0(new_n167), .A1(new_n181_1), .B0(new_n166), .B1(new_n180), .Y(new_n255));
  NOR4X1   g111(.A(new_n255), .B(new_n254), .C(new_n253), .D(new_n252), .Y(new_n256));
  OAI22X1  g112(.A0(new_n173_1), .A1(new_n165_1), .B0(new_n172), .B1(new_n164), .Y(new_n257));
  OAI22X1  g113(.A0(new_n178), .A1(new_n146), .B0(new_n177_1), .B1(new_n145), .Y(new_n258));
  OAI22X1  g114(.A0(new_n183), .A1(new_n175), .B0(new_n182), .B1(new_n176), .Y(new_n259));
  OAI22X1  g115(.A0(new_n188), .A1(new_n159), .B0(new_n187), .B1(new_n158), .Y(new_n260));
  NOR4X1   g116(.A(new_n260), .B(new_n259), .C(new_n258), .D(new_n257), .Y(new_n261));
  AOI21X1  g117(.A0(new_n261), .A1(new_n256), .B0(new_n195), .Y(n104));
  OAI22X1  g118(.A0(new_n151), .A1(new_n170), .B0(new_n150), .B1(new_n186), .Y(new_n263));
  OAI22X1  g119(.A0(new_n156), .A1(new_n176), .B0(new_n155), .B1(new_n171), .Y(new_n264));
  OAI22X1  g120(.A0(new_n162), .A1(new_n180), .B0(new_n160), .B1(new_n154), .Y(new_n265));
  OAI22X1  g121(.A0(new_n167), .A1(new_n185_1), .B0(new_n166), .B1(new_n181_1), .Y(new_n266));
  NOR4X1   g122(.A(new_n266), .B(new_n265), .C(new_n264), .D(new_n263), .Y(new_n267));
  OAI22X1  g123(.A0(new_n173_1), .A1(new_n145), .B0(new_n172), .B1(new_n165_1), .Y(new_n268));
  OAI22X1  g124(.A0(new_n178), .A1(new_n153_1), .B0(new_n177_1), .B1(new_n146), .Y(new_n269));
  OAI22X1  g125(.A0(new_n183), .A1(new_n158), .B0(new_n182), .B1(new_n175), .Y(new_n270));
  OAI22X1  g126(.A0(new_n188), .A1(new_n164), .B0(new_n187), .B1(new_n159), .Y(new_n271));
  NOR4X1   g127(.A(new_n271), .B(new_n270), .C(new_n269), .D(new_n268), .Y(new_n272));
  AOI21X1  g128(.A0(new_n272), .A1(new_n267), .B0(new_n195), .Y(n109));
  OAI22X1  g129(.A0(new_n151), .A1(new_n171), .B0(new_n150), .B1(new_n170), .Y(new_n274));
  OAI22X1  g130(.A0(new_n156), .A1(new_n175), .B0(new_n155), .B1(new_n176), .Y(new_n275));
  OAI22X1  g131(.A0(new_n162), .A1(new_n181_1), .B0(new_n160), .B1(new_n180), .Y(new_n276));
  OAI22X1  g132(.A0(new_n167), .A1(new_n186), .B0(new_n166), .B1(new_n185_1), .Y(new_n277));
  NOR4X1   g133(.A(new_n277), .B(new_n276), .C(new_n275), .D(new_n274), .Y(new_n278));
  OAI22X1  g134(.A0(new_n173_1), .A1(new_n146), .B0(new_n172), .B1(new_n145), .Y(new_n279));
  OAI22X1  g135(.A0(new_n178), .A1(new_n154), .B0(new_n177_1), .B1(new_n153_1), .Y(new_n280));
  OAI22X1  g136(.A0(new_n183), .A1(new_n159), .B0(new_n182), .B1(new_n158), .Y(new_n281));
  OAI22X1  g137(.A0(new_n188), .A1(new_n165_1), .B0(new_n187), .B1(new_n164), .Y(new_n282));
  NOR4X1   g138(.A(new_n282), .B(new_n281), .C(new_n280), .D(new_n279), .Y(new_n283));
  AOI21X1  g139(.A0(new_n283), .A1(new_n278), .B0(new_n195), .Y(n114));
  OAI22X1  g140(.A0(new_n151), .A1(new_n176), .B0(new_n150), .B1(new_n171), .Y(new_n285));
  OAI22X1  g141(.A0(new_n156), .A1(new_n158), .B0(new_n155), .B1(new_n175), .Y(new_n286));
  OAI22X1  g142(.A0(new_n162), .A1(new_n185_1), .B0(new_n160), .B1(new_n181_1), .Y(new_n287));
  OAI22X1  g143(.A0(new_n167), .A1(new_n170), .B0(new_n166), .B1(new_n186), .Y(new_n288));
  NOR4X1   g144(.A(new_n288), .B(new_n287), .C(new_n286), .D(new_n285), .Y(new_n289));
  OAI22X1  g145(.A0(new_n173_1), .A1(new_n153_1), .B0(new_n172), .B1(new_n146), .Y(new_n290));
  OAI22X1  g146(.A0(new_n178), .A1(new_n180), .B0(new_n177_1), .B1(new_n154), .Y(new_n291));
  OAI22X1  g147(.A0(new_n183), .A1(new_n164), .B0(new_n182), .B1(new_n159), .Y(new_n292));
  OAI22X1  g148(.A0(new_n188), .A1(new_n145), .B0(new_n187), .B1(new_n165_1), .Y(new_n293));
  NOR4X1   g149(.A(new_n293), .B(new_n292), .C(new_n291), .D(new_n290), .Y(new_n294));
  AOI21X1  g150(.A0(new_n294), .A1(new_n289), .B0(new_n195), .Y(n119));
  OAI22X1  g151(.A0(new_n151), .A1(new_n175), .B0(new_n150), .B1(new_n176), .Y(new_n296));
  OAI22X1  g152(.A0(new_n156), .A1(new_n159), .B0(new_n155), .B1(new_n158), .Y(new_n297));
  OAI22X1  g153(.A0(new_n162), .A1(new_n186), .B0(new_n160), .B1(new_n185_1), .Y(new_n298));
  OAI22X1  g154(.A0(new_n167), .A1(new_n171), .B0(new_n166), .B1(new_n170), .Y(new_n299));
  NOR4X1   g155(.A(new_n299), .B(new_n298), .C(new_n297), .D(new_n296), .Y(new_n300));
  OAI22X1  g156(.A0(new_n173_1), .A1(new_n154), .B0(new_n172), .B1(new_n153_1), .Y(new_n301));
  OAI22X1  g157(.A0(new_n178), .A1(new_n181_1), .B0(new_n177_1), .B1(new_n180), .Y(new_n302));
  OAI22X1  g158(.A0(new_n183), .A1(new_n165_1), .B0(new_n182), .B1(new_n164), .Y(new_n303));
  OAI22X1  g159(.A0(new_n188), .A1(new_n146), .B0(new_n187), .B1(new_n145), .Y(new_n304));
  NOR4X1   g160(.A(new_n304), .B(new_n303), .C(new_n302), .D(new_n301), .Y(new_n305));
  AOI21X1  g161(.A0(new_n305), .A1(new_n300), .B0(new_n195), .Y(n124));
  OAI22X1  g162(.A0(new_n151), .A1(new_n158), .B0(new_n150), .B1(new_n175), .Y(new_n307));
  OAI22X1  g163(.A0(new_n156), .A1(new_n164), .B0(new_n155), .B1(new_n159), .Y(new_n308));
  OAI22X1  g164(.A0(new_n162), .A1(new_n170), .B0(new_n160), .B1(new_n186), .Y(new_n309));
  OAI22X1  g165(.A0(new_n167), .A1(new_n176), .B0(new_n166), .B1(new_n171), .Y(new_n310));
  NOR4X1   g166(.A(new_n310), .B(new_n309), .C(new_n308), .D(new_n307), .Y(new_n311));
  OAI22X1  g167(.A0(new_n173_1), .A1(new_n180), .B0(new_n172), .B1(new_n154), .Y(new_n312));
  OAI22X1  g168(.A0(new_n178), .A1(new_n185_1), .B0(new_n177_1), .B1(new_n181_1), .Y(new_n313));
  OAI22X1  g169(.A0(new_n183), .A1(new_n145), .B0(new_n182), .B1(new_n165_1), .Y(new_n314));
  OAI22X1  g170(.A0(new_n188), .A1(new_n153_1), .B0(new_n187), .B1(new_n146), .Y(new_n315));
  NOR4X1   g171(.A(new_n315), .B(new_n314), .C(new_n313), .D(new_n312), .Y(new_n316));
  AOI21X1  g172(.A0(new_n316), .A1(new_n311), .B0(new_n195), .Y(n129));
  OAI22X1  g173(.A0(new_n151), .A1(new_n159), .B0(new_n150), .B1(new_n158), .Y(new_n318));
  OAI22X1  g174(.A0(new_n156), .A1(new_n165_1), .B0(new_n155), .B1(new_n164), .Y(new_n319));
  OAI22X1  g175(.A0(new_n162), .A1(new_n171), .B0(new_n160), .B1(new_n170), .Y(new_n320));
  OAI22X1  g176(.A0(new_n167), .A1(new_n175), .B0(new_n166), .B1(new_n176), .Y(new_n321));
  NOR4X1   g177(.A(new_n321), .B(new_n320), .C(new_n319), .D(new_n318), .Y(new_n322));
  OAI22X1  g178(.A0(new_n173_1), .A1(new_n181_1), .B0(new_n172), .B1(new_n180), .Y(new_n323));
  OAI22X1  g179(.A0(new_n178), .A1(new_n186), .B0(new_n177_1), .B1(new_n185_1), .Y(new_n324));
  OAI22X1  g180(.A0(new_n183), .A1(new_n146), .B0(new_n182), .B1(new_n145), .Y(new_n325));
  OAI22X1  g181(.A0(new_n188), .A1(new_n154), .B0(new_n187), .B1(new_n153_1), .Y(new_n326));
  NOR4X1   g182(.A(new_n326), .B(new_n325), .C(new_n324), .D(new_n323), .Y(new_n327));
  AOI21X1  g183(.A0(new_n327), .A1(new_n322), .B0(new_n195), .Y(n134));
  OAI22X1  g184(.A0(new_n151), .A1(new_n164), .B0(new_n150), .B1(new_n159), .Y(new_n329));
  OAI22X1  g185(.A0(new_n156), .A1(new_n145), .B0(new_n155), .B1(new_n165_1), .Y(new_n330));
  OAI22X1  g186(.A0(new_n162), .A1(new_n176), .B0(new_n160), .B1(new_n171), .Y(new_n331));
  OAI22X1  g187(.A0(new_n167), .A1(new_n158), .B0(new_n166), .B1(new_n175), .Y(new_n332));
  NOR4X1   g188(.A(new_n332), .B(new_n331), .C(new_n330), .D(new_n329), .Y(new_n333));
  OAI22X1  g189(.A0(new_n173_1), .A1(new_n185_1), .B0(new_n172), .B1(new_n181_1), .Y(new_n334));
  OAI22X1  g190(.A0(new_n178), .A1(new_n170), .B0(new_n177_1), .B1(new_n186), .Y(new_n335));
  OAI22X1  g191(.A0(new_n183), .A1(new_n153_1), .B0(new_n182), .B1(new_n146), .Y(new_n336));
  OAI22X1  g192(.A0(new_n188), .A1(new_n180), .B0(new_n187), .B1(new_n154), .Y(new_n337));
  NOR4X1   g193(.A(new_n337), .B(new_n336), .C(new_n335), .D(new_n334), .Y(new_n338));
  AOI21X1  g194(.A0(new_n338), .A1(new_n333), .B0(new_n195), .Y(n139));
  OAI22X1  g195(.A0(new_n151), .A1(new_n165_1), .B0(new_n150), .B1(new_n164), .Y(new_n340));
  OAI22X1  g196(.A0(new_n156), .A1(new_n146), .B0(new_n155), .B1(new_n145), .Y(new_n341));
  OAI22X1  g197(.A0(new_n162), .A1(new_n175), .B0(new_n160), .B1(new_n176), .Y(new_n342));
  OAI22X1  g198(.A0(new_n167), .A1(new_n159), .B0(new_n166), .B1(new_n158), .Y(new_n343));
  NOR4X1   g199(.A(new_n343), .B(new_n342), .C(new_n341), .D(new_n340), .Y(new_n344));
  OAI22X1  g200(.A0(new_n173_1), .A1(new_n186), .B0(new_n172), .B1(new_n185_1), .Y(new_n345));
  OAI22X1  g201(.A0(new_n178), .A1(new_n171), .B0(new_n177_1), .B1(new_n170), .Y(new_n346));
  OAI22X1  g202(.A0(new_n183), .A1(new_n154), .B0(new_n182), .B1(new_n153_1), .Y(new_n347));
  OAI22X1  g203(.A0(new_n188), .A1(new_n181_1), .B0(new_n187), .B1(new_n180), .Y(new_n348));
  NOR4X1   g204(.A(new_n348), .B(new_n347), .C(new_n346), .D(new_n345), .Y(new_n349));
  AOI21X1  g205(.A0(new_n349), .A1(new_n344), .B0(new_n195), .Y(n144));
  OAI22X1  g206(.A0(new_n151), .A1(new_n145), .B0(new_n150), .B1(new_n165_1), .Y(new_n351));
  OAI22X1  g207(.A0(new_n156), .A1(new_n153_1), .B0(new_n155), .B1(new_n146), .Y(new_n352));
  OAI22X1  g208(.A0(new_n162), .A1(new_n158), .B0(new_n160), .B1(new_n175), .Y(new_n353));
  OAI22X1  g209(.A0(new_n167), .A1(new_n164), .B0(new_n166), .B1(new_n159), .Y(new_n354));
  NOR4X1   g210(.A(new_n354), .B(new_n353), .C(new_n352), .D(new_n351), .Y(new_n355));
  OAI22X1  g211(.A0(new_n173_1), .A1(new_n170), .B0(new_n172), .B1(new_n186), .Y(new_n356));
  OAI22X1  g212(.A0(new_n178), .A1(new_n176), .B0(new_n177_1), .B1(new_n171), .Y(new_n357));
  OAI22X1  g213(.A0(new_n183), .A1(new_n180), .B0(new_n182), .B1(new_n154), .Y(new_n358));
  OAI22X1  g214(.A0(new_n188), .A1(new_n185_1), .B0(new_n187), .B1(new_n181_1), .Y(new_n359));
  NOR4X1   g215(.A(new_n359), .B(new_n358), .C(new_n357), .D(new_n356), .Y(new_n360));
  AOI21X1  g216(.A0(new_n360), .A1(new_n355), .B0(new_n195), .Y(n149));
  BUFX1    g217(.A(\out_reg[0] ), .Y(\out[0] ));
  BUFX1    g218(.A(\out_reg[1] ), .Y(\out[1] ));
  BUFX1    g219(.A(\out_reg[2] ), .Y(\out[2] ));
  BUFX1    g220(.A(\out_reg[3] ), .Y(\out[3] ));
  BUFX1    g221(.A(\out_reg[4] ), .Y(\out[4] ));
  BUFX1    g222(.A(\out_reg[5] ), .Y(\out[5] ));
  BUFX1    g223(.A(\out_reg[6] ), .Y(\out[6] ));
  BUFX1    g224(.A(\out_reg[7] ), .Y(\out[7] ));
  BUFX1    g225(.A(\out_reg[8] ), .Y(\out[8] ));
  BUFX1    g226(.A(\out_reg[9] ), .Y(\out[9] ));
  BUFX1    g227(.A(\out_reg[10] ), .Y(\out[10] ));
  BUFX1    g228(.A(\out_reg[11] ), .Y(\out[11] ));
  BUFX1    g229(.A(\out_reg[12] ), .Y(\out[12] ));
  BUFX1    g230(.A(\out_reg[13] ), .Y(\out[13] ));
  BUFX1    g231(.A(\out_reg[14] ), .Y(\out[14] ));
  BUFX1    g232(.A(\out_reg[15] ), .Y(\out[15] ));
  BUFX1    g233(.A(\shift_amount[0] ), .Y(n153));
  BUFX1    g234(.A(\shift_amount[1] ), .Y(n157));
  BUFX1    g235(.A(\shift_amount[2] ), .Y(n161));
  BUFX1    g236(.A(\shift_amount[3] ), .Y(n165));
  BUFX1    g237(.A(\in[0] ), .Y(n169));
  BUFX1    g238(.A(\in[1] ), .Y(n173));
  BUFX1    g239(.A(\in[2] ), .Y(n177));
  BUFX1    g240(.A(\in[3] ), .Y(n181));
  BUFX1    g241(.A(\in[4] ), .Y(n185));
  BUFX1    g242(.A(\in[5] ), .Y(n189));
  BUFX1    g243(.A(\in[6] ), .Y(n193));
  BUFX1    g244(.A(\in[7] ), .Y(n197));
  BUFX1    g245(.A(\in[8] ), .Y(n201));
  BUFX1    g246(.A(\in[9] ), .Y(n205));
  BUFX1    g247(.A(\in[10] ), .Y(n209));
  BUFX1    g248(.A(\in[11] ), .Y(n213));
  BUFX1    g249(.A(\in[12] ), .Y(n217));
  BUFX1    g250(.A(\in[13] ), .Y(n221));
  BUFX1    g251(.A(\in[14] ), .Y(n225));
  BUFX1    g252(.A(\in[15] ), .Y(n229));
  always @ (posedge clock) begin
    \out_reg[0]  <= n74;
    \out_reg[1]  <= n79;
    \out_reg[2]  <= n84;
    \out_reg[3]  <= n89;
    \out_reg[4]  <= n94;
    \out_reg[5]  <= n99;
    \out_reg[6]  <= n104;
    \out_reg[7]  <= n109;
    \out_reg[8]  <= n114;
    \out_reg[9]  <= n119;
    \out_reg[10]  <= n124;
    \out_reg[11]  <= n129;
    \out_reg[12]  <= n134;
    \out_reg[13]  <= n139;
    \out_reg[14]  <= n144;
    \out_reg[15]  <= n149;
    \shift_amount_reg[0]  <= n153;
    \shift_amount_reg[1]  <= n157;
    \shift_amount_reg[2]  <= n161;
    \shift_amount_reg[3]  <= n165;
    \in_reg[0]  <= n169;
    \in_reg[1]  <= n173;
    \in_reg[2]  <= n177;
    \in_reg[3]  <= n181;
    \in_reg[4]  <= n185;
    \in_reg[5]  <= n189;
    \in_reg[6]  <= n193;
    \in_reg[7]  <= n197;
    \in_reg[8]  <= n201;
    \in_reg[9]  <= n205;
    \in_reg[10]  <= n209;
    \in_reg[11]  <= n213;
    \in_reg[12]  <= n217;
    \in_reg[13]  <= n221;
    \in_reg[14]  <= n225;
    \in_reg[15]  <= n229;
  end
endmodule


