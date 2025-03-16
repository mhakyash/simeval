// Benchmark "cycloneive_n_cntr" written by ABC on Wed Jun 26 15:22:10 2024

module cycloneive_n_cntr ( clock, 
    clk, reset, enable, \modulus[0] , \modulus[1] , \modulus[2] ,
    \modulus[3] , \modulus[4] , \modulus[5] , \modulus[6] , \modulus[7] ,
    \modulus[8] , \modulus[9] , \modulus[10] , \modulus[11] ,
    \modulus[12] , \modulus[13] , \modulus[14] , \modulus[15] ,
    \modulus[16] , \modulus[17] , \modulus[18] , \modulus[19] ,
    \modulus[20] , \modulus[21] , \modulus[22] , \modulus[23] ,
    \modulus[24] , \modulus[25] , \modulus[26] , \modulus[27] ,
    \modulus[28] , \modulus[29] , \modulus[30] , \modulus[31] ,
    cout  );
  input  clock;
  input  clk, reset, enable, \modulus[0] , \modulus[1] , \modulus[2] ,
    \modulus[3] , \modulus[4] , \modulus[5] , \modulus[6] , \modulus[7] ,
    \modulus[8] , \modulus[9] , \modulus[10] , \modulus[11] ,
    \modulus[12] , \modulus[13] , \modulus[14] , \modulus[15] ,
    \modulus[16] , \modulus[17] , \modulus[18] , \modulus[19] ,
    \modulus[20] , \modulus[21] , \modulus[22] , \modulus[23] ,
    \modulus[24] , \modulus[25] , \modulus[26] , \modulus[27] ,
    \modulus[28] , \modulus[29] , \modulus[30] , \modulus[31] ;
  output cout;
  reg tmp_cout, first_rising_edge, \count[0] , \count[1] , \count[2] ,
    \count[3] , \count[4] , \count[5] , \count[6] , \count[7] , \count[8] ,
    \count[9] , \count[10] , \count[11] , \count[12] , \count[13] ,
    \count[14] , \count[15] , \count[16] , \count[17] , \count[18] ,
    \count[19] , \count[20] , \count[21] , \count[22] , \count[23] ,
    \count[24] , \count[25] , \count[26] , \count[27] , \count[28] ,
    \count[29] , \count[30] , \count[31] ;
  wire new_n141, new_n142, new_n143, new_n144_1, new_n145, new_n146,
    new_n147, new_n148, new_n149_1, new_n150, new_n151, new_n152, new_n153,
    new_n154_1, new_n155, new_n156, new_n157, new_n158, new_n159_1,
    new_n160, new_n161, new_n162, new_n163, new_n164_1, new_n165, new_n166,
    new_n167, new_n168, new_n169_1, new_n170, new_n171, new_n172, new_n173,
    new_n174_1, new_n175, new_n176, new_n177, new_n178, new_n179_1,
    new_n180, new_n181, new_n182, new_n183, new_n184_1, new_n185, new_n186,
    new_n187, new_n188, new_n189_1, new_n190, new_n191, new_n192, new_n193,
    new_n194_1, new_n195, new_n196, new_n197, new_n198, new_n199_1,
    new_n200, new_n201, new_n202, new_n203, new_n204_1, new_n205, new_n206,
    new_n207, new_n208, new_n209_1, new_n210, new_n211, new_n212, new_n213,
    new_n214_1, new_n215, new_n216, new_n217, new_n218, new_n219_1,
    new_n220, new_n221, new_n222, new_n223, new_n224_1, new_n225, new_n226,
    new_n227, new_n228, new_n229_1, new_n230, new_n231, new_n232, new_n233,
    new_n234_1, new_n235, new_n236, new_n237, new_n238, new_n239_1,
    new_n240, new_n241, new_n242, new_n243, new_n244, new_n245, new_n246,
    new_n247, new_n248, new_n249, new_n250, new_n251, new_n252, new_n253,
    new_n254, new_n255, new_n256, new_n257, new_n258, new_n259, new_n260,
    new_n261, new_n262, new_n263, new_n264, new_n265, new_n266, new_n267,
    new_n268, new_n270, new_n272, new_n273, new_n275, new_n276, new_n278,
    new_n279, new_n281, new_n282, new_n283, new_n285, new_n286, new_n288,
    new_n289, new_n291, new_n292, new_n293, new_n295, new_n296, new_n297,
    new_n299, new_n300, new_n302, new_n303, new_n305, new_n306, new_n307,
    new_n309, new_n310, new_n312, new_n313, new_n315, new_n316, new_n318,
    new_n319, new_n320, new_n322, new_n323, new_n324, new_n326, new_n327,
    new_n329, new_n330, new_n332, new_n333, new_n334, new_n336, new_n337,
    new_n338, new_n340, new_n341, new_n343, new_n344, new_n346, new_n347,
    new_n348, new_n349, new_n351, new_n352, new_n354, new_n355, new_n356,
    new_n358, new_n359, new_n360, new_n362, new_n363, new_n365, new_n366,
    new_n367, new_n369, new_n370, new_n371, new_n373, new_n374, n74, n79,
    n84, n89, n94, n99, n104, n109, n114, n119, n124, n129, n134, n139,
    n144, n149, n154, n159, n164, n169, n174, n179, n184, n189, n194, n199,
    n204, n209, n214, n219, n224, n229, n234, n239;
  NOR2X1   g000(.A(tmp_cout), .B(reset), .Y(n74));
  OR2X1    g001(.A(first_rising_edge), .B(reset), .Y(n79));
  INVX1    g002(.A(\count[0] ), .Y(new_n141));
  INVX1    g003(.A(\modulus[1] ), .Y(new_n142));
  AND2X1   g004(.A(\count[1] ), .B(new_n142), .Y(new_n143));
  XOR2X1   g005(.A(\count[1] ), .B(\modulus[1] ), .Y(new_n144_1));
  AOI21X1  g006(.A0(new_n141), .A1(\modulus[0] ), .B0(new_n144_1), .Y(new_n145));
  XOR2X1   g007(.A(\count[3] ), .B(\modulus[3] ), .Y(new_n146));
  XOR2X1   g008(.A(\count[2] ), .B(\modulus[2] ), .Y(new_n147));
  NOR2X1   g009(.A(new_n147), .B(new_n146), .Y(new_n148));
  OAI21X1  g010(.A0(new_n145), .A1(new_n143), .B0(new_n148), .Y(new_n149_1));
  INVX1    g011(.A(\modulus[3] ), .Y(new_n150));
  INVX1    g012(.A(\count[2] ), .Y(new_n151));
  NOR3X1   g013(.A(new_n146), .B(new_n151), .C(\modulus[2] ), .Y(new_n152));
  AOI21X1  g014(.A0(\count[3] ), .A1(new_n150), .B0(new_n152), .Y(new_n153));
  XOR2X1   g015(.A(\count[7] ), .B(\modulus[7] ), .Y(new_n154_1));
  XOR2X1   g016(.A(\count[6] ), .B(\modulus[6] ), .Y(new_n155));
  XOR2X1   g017(.A(\count[5] ), .B(\modulus[5] ), .Y(new_n156));
  XOR2X1   g018(.A(\count[4] ), .B(\modulus[4] ), .Y(new_n157));
  OR4X1    g019(.A(new_n157), .B(new_n156), .C(new_n155), .D(new_n154_1), .Y(new_n158));
  AOI21X1  g020(.A0(new_n153), .A1(new_n149_1), .B0(new_n158), .Y(new_n159_1));
  OR2X1    g021(.A(new_n155), .B(new_n154_1), .Y(new_n160));
  INVX1    g022(.A(\modulus[5] ), .Y(new_n161));
  INVX1    g023(.A(\count[4] ), .Y(new_n162));
  NOR3X1   g024(.A(new_n156), .B(new_n162), .C(\modulus[4] ), .Y(new_n163));
  AOI21X1  g025(.A0(\count[5] ), .A1(new_n161), .B0(new_n163), .Y(new_n164_1));
  INVX1    g026(.A(\modulus[7] ), .Y(new_n165));
  INVX1    g027(.A(\count[6] ), .Y(new_n166));
  NOR3X1   g028(.A(new_n154_1), .B(new_n166), .C(\modulus[6] ), .Y(new_n167));
  AOI21X1  g029(.A0(\count[7] ), .A1(new_n165), .B0(new_n167), .Y(new_n168));
  OAI21X1  g030(.A0(new_n164_1), .A1(new_n160), .B0(new_n168), .Y(new_n169_1));
  XOR2X1   g031(.A(\count[15] ), .B(\modulus[15] ), .Y(new_n170));
  XOR2X1   g032(.A(\count[14] ), .B(\modulus[14] ), .Y(new_n171));
  XOR2X1   g033(.A(\count[13] ), .B(\modulus[13] ), .Y(new_n172));
  XOR2X1   g034(.A(\count[12] ), .B(\modulus[12] ), .Y(new_n173));
  NOR4X1   g035(.A(new_n173), .B(new_n172), .C(new_n171), .D(new_n170), .Y(new_n174_1));
  XOR2X1   g036(.A(\count[11] ), .B(\modulus[11] ), .Y(new_n175));
  XOR2X1   g037(.A(\count[10] ), .B(\modulus[10] ), .Y(new_n176));
  XOR2X1   g038(.A(\count[9] ), .B(\modulus[9] ), .Y(new_n177));
  XOR2X1   g039(.A(\count[8] ), .B(\modulus[8] ), .Y(new_n178));
  NOR4X1   g040(.A(new_n178), .B(new_n177), .C(new_n176), .D(new_n175), .Y(new_n179_1));
  AND2X1   g041(.A(new_n179_1), .B(new_n174_1), .Y(new_n180));
  OAI21X1  g042(.A0(new_n169_1), .A1(new_n159_1), .B0(new_n180), .Y(new_n181));
  OR2X1    g043(.A(new_n176), .B(new_n175), .Y(new_n182));
  INVX1    g044(.A(\modulus[9] ), .Y(new_n183));
  INVX1    g045(.A(\count[8] ), .Y(new_n184_1));
  NOR3X1   g046(.A(new_n177), .B(new_n184_1), .C(\modulus[8] ), .Y(new_n185));
  AOI21X1  g047(.A0(\count[9] ), .A1(new_n183), .B0(new_n185), .Y(new_n186));
  INVX1    g048(.A(\modulus[11] ), .Y(new_n187));
  INVX1    g049(.A(\count[10] ), .Y(new_n188));
  NOR3X1   g050(.A(new_n175), .B(new_n188), .C(\modulus[10] ), .Y(new_n189_1));
  AOI21X1  g051(.A0(\count[11] ), .A1(new_n187), .B0(new_n189_1), .Y(new_n190));
  OAI21X1  g052(.A0(new_n186), .A1(new_n182), .B0(new_n190), .Y(new_n191));
  OR2X1    g053(.A(new_n171), .B(new_n170), .Y(new_n192));
  INVX1    g054(.A(\modulus[13] ), .Y(new_n193));
  INVX1    g055(.A(\count[12] ), .Y(new_n194_1));
  NOR3X1   g056(.A(new_n172), .B(new_n194_1), .C(\modulus[12] ), .Y(new_n195));
  AOI21X1  g057(.A0(\count[13] ), .A1(new_n193), .B0(new_n195), .Y(new_n196));
  INVX1    g058(.A(\modulus[15] ), .Y(new_n197));
  INVX1    g059(.A(\count[14] ), .Y(new_n198));
  NOR3X1   g060(.A(new_n170), .B(new_n198), .C(\modulus[14] ), .Y(new_n199_1));
  AOI21X1  g061(.A0(\count[15] ), .A1(new_n197), .B0(new_n199_1), .Y(new_n200));
  OAI21X1  g062(.A0(new_n196), .A1(new_n192), .B0(new_n200), .Y(new_n201));
  AOI21X1  g063(.A0(new_n191), .A1(new_n174_1), .B0(new_n201), .Y(new_n202));
  XOR2X1   g064(.A(\count[31] ), .B(\modulus[31] ), .Y(new_n203));
  XOR2X1   g065(.A(\count[30] ), .B(\modulus[30] ), .Y(new_n204_1));
  XOR2X1   g066(.A(\count[29] ), .B(\modulus[29] ), .Y(new_n205));
  XOR2X1   g067(.A(\count[28] ), .B(\modulus[28] ), .Y(new_n206));
  NOR4X1   g068(.A(new_n206), .B(new_n205), .C(new_n204_1), .D(new_n203), .Y(new_n207));
  XOR2X1   g069(.A(\count[27] ), .B(\modulus[27] ), .Y(new_n208));
  XOR2X1   g070(.A(\count[26] ), .B(\modulus[26] ), .Y(new_n209_1));
  XOR2X1   g071(.A(\count[25] ), .B(\modulus[25] ), .Y(new_n210));
  XOR2X1   g072(.A(\count[24] ), .B(\modulus[24] ), .Y(new_n211));
  NOR4X1   g073(.A(new_n211), .B(new_n210), .C(new_n209_1), .D(new_n208), .Y(new_n212));
  XOR2X1   g074(.A(\count[23] ), .B(\modulus[23] ), .Y(new_n213));
  XOR2X1   g075(.A(\count[22] ), .B(\modulus[22] ), .Y(new_n214_1));
  XOR2X1   g076(.A(\count[21] ), .B(\modulus[21] ), .Y(new_n215));
  XOR2X1   g077(.A(\count[20] ), .B(\modulus[20] ), .Y(new_n216));
  NOR4X1   g078(.A(new_n216), .B(new_n215), .C(new_n214_1), .D(new_n213), .Y(new_n217));
  XOR2X1   g079(.A(\count[19] ), .B(\modulus[19] ), .Y(new_n218));
  XOR2X1   g080(.A(\count[18] ), .B(\modulus[18] ), .Y(new_n219_1));
  XOR2X1   g081(.A(\count[17] ), .B(\modulus[17] ), .Y(new_n220));
  XOR2X1   g082(.A(\count[16] ), .B(\modulus[16] ), .Y(new_n221));
  NOR4X1   g083(.A(new_n221), .B(new_n220), .C(new_n219_1), .D(new_n218), .Y(new_n222));
  NAND4X1  g084(.A(new_n222), .B(new_n217), .C(new_n212), .D(new_n207), .Y(new_n223));
  AOI21X1  g085(.A0(new_n202), .A1(new_n181), .B0(new_n223), .Y(new_n224_1));
  NAND2X1  g086(.A(new_n212), .B(new_n207), .Y(new_n225));
  OR2X1    g087(.A(new_n219_1), .B(new_n218), .Y(new_n226));
  INVX1    g088(.A(\modulus[17] ), .Y(new_n227));
  INVX1    g089(.A(\count[16] ), .Y(new_n228));
  NOR3X1   g090(.A(new_n220), .B(new_n228), .C(\modulus[16] ), .Y(new_n229_1));
  AOI21X1  g091(.A0(\count[17] ), .A1(new_n227), .B0(new_n229_1), .Y(new_n230));
  INVX1    g092(.A(\modulus[19] ), .Y(new_n231));
  INVX1    g093(.A(\count[18] ), .Y(new_n232));
  NOR3X1   g094(.A(new_n218), .B(new_n232), .C(\modulus[18] ), .Y(new_n233));
  AOI21X1  g095(.A0(\count[19] ), .A1(new_n231), .B0(new_n233), .Y(new_n234_1));
  OAI21X1  g096(.A0(new_n230), .A1(new_n226), .B0(new_n234_1), .Y(new_n235));
  OR2X1    g097(.A(new_n214_1), .B(new_n213), .Y(new_n236));
  INVX1    g098(.A(\modulus[21] ), .Y(new_n237));
  INVX1    g099(.A(\count[20] ), .Y(new_n238));
  NOR3X1   g100(.A(new_n215), .B(new_n238), .C(\modulus[20] ), .Y(new_n239_1));
  AOI21X1  g101(.A0(\count[21] ), .A1(new_n237), .B0(new_n239_1), .Y(new_n240));
  INVX1    g102(.A(\modulus[23] ), .Y(new_n241));
  INVX1    g103(.A(\count[22] ), .Y(new_n242));
  NOR3X1   g104(.A(new_n213), .B(new_n242), .C(\modulus[22] ), .Y(new_n243));
  AOI21X1  g105(.A0(\count[23] ), .A1(new_n241), .B0(new_n243), .Y(new_n244));
  OAI21X1  g106(.A0(new_n240), .A1(new_n236), .B0(new_n244), .Y(new_n245));
  AOI21X1  g107(.A0(new_n235), .A1(new_n217), .B0(new_n245), .Y(new_n246));
  OR2X1    g108(.A(new_n209_1), .B(new_n208), .Y(new_n247));
  INVX1    g109(.A(\modulus[25] ), .Y(new_n248));
  INVX1    g110(.A(\count[24] ), .Y(new_n249));
  NOR3X1   g111(.A(new_n210), .B(new_n249), .C(\modulus[24] ), .Y(new_n250));
  AOI21X1  g112(.A0(\count[25] ), .A1(new_n248), .B0(new_n250), .Y(new_n251));
  INVX1    g113(.A(\modulus[27] ), .Y(new_n252));
  INVX1    g114(.A(\count[26] ), .Y(new_n253));
  NOR3X1   g115(.A(new_n208), .B(new_n253), .C(\modulus[26] ), .Y(new_n254));
  AOI21X1  g116(.A0(\count[27] ), .A1(new_n252), .B0(new_n254), .Y(new_n255));
  OAI21X1  g117(.A0(new_n251), .A1(new_n247), .B0(new_n255), .Y(new_n256));
  OR2X1    g118(.A(new_n204_1), .B(new_n203), .Y(new_n257));
  INVX1    g119(.A(\modulus[29] ), .Y(new_n258));
  INVX1    g120(.A(\count[28] ), .Y(new_n259));
  NOR3X1   g121(.A(new_n205), .B(new_n259), .C(\modulus[28] ), .Y(new_n260));
  AOI21X1  g122(.A0(\count[29] ), .A1(new_n258), .B0(new_n260), .Y(new_n261));
  INVX1    g123(.A(\modulus[31] ), .Y(new_n262));
  INVX1    g124(.A(\count[30] ), .Y(new_n263));
  NOR3X1   g125(.A(new_n203), .B(new_n263), .C(\modulus[30] ), .Y(new_n264));
  AOI21X1  g126(.A0(\count[31] ), .A1(new_n262), .B0(new_n264), .Y(new_n265));
  OAI21X1  g127(.A0(new_n261), .A1(new_n257), .B0(new_n265), .Y(new_n266));
  AOI21X1  g128(.A0(new_n256), .A1(new_n207), .B0(new_n266), .Y(new_n267));
  OAI21X1  g129(.A0(new_n246), .A1(new_n225), .B0(new_n267), .Y(new_n268));
  OR4X1    g130(.A(new_n268), .B(new_n224_1), .C(new_n141), .D(reset), .Y(n84));
  XOR2X1   g131(.A(\count[1] ), .B(new_n141), .Y(new_n270));
  NOR4X1   g132(.A(new_n270), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n89));
  AND2X1   g133(.A(\count[1] ), .B(\count[0] ), .Y(new_n272));
  XOR2X1   g134(.A(new_n272), .B(new_n151), .Y(new_n273));
  NOR4X1   g135(.A(new_n273), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n94));
  NAND3X1  g136(.A(\count[2] ), .B(\count[1] ), .C(\count[0] ), .Y(new_n275));
  XOR2X1   g137(.A(new_n275), .B(\count[3] ), .Y(new_n276));
  NOR4X1   g138(.A(new_n276), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n99));
  NAND4X1  g139(.A(\count[3] ), .B(\count[2] ), .C(\count[1] ), .D(\count[0] ), .Y(new_n278));
  XOR2X1   g140(.A(new_n278), .B(\count[4] ), .Y(new_n279));
  NOR4X1   g141(.A(new_n279), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n104));
  INVX1    g142(.A(\count[5] ), .Y(new_n281));
  NOR2X1   g143(.A(new_n278), .B(new_n162), .Y(new_n282));
  XOR2X1   g144(.A(new_n282), .B(new_n281), .Y(new_n283));
  NOR4X1   g145(.A(new_n283), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n109));
  NOR3X1   g146(.A(new_n278), .B(new_n281), .C(new_n162), .Y(new_n285));
  XOR2X1   g147(.A(new_n285), .B(new_n166), .Y(new_n286));
  NOR4X1   g148(.A(new_n286), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n114));
  OR4X1    g149(.A(new_n278), .B(new_n166), .C(new_n281), .D(new_n162), .Y(new_n288));
  XOR2X1   g150(.A(new_n288), .B(\count[7] ), .Y(new_n289));
  NOR4X1   g151(.A(new_n289), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n119));
  NAND4X1  g152(.A(\count[7] ), .B(\count[6] ), .C(\count[5] ), .D(\count[4] ), .Y(new_n291));
  NOR2X1   g153(.A(new_n291), .B(new_n278), .Y(new_n292));
  XOR2X1   g154(.A(new_n292), .B(new_n184_1), .Y(new_n293));
  NOR4X1   g155(.A(new_n293), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n124));
  INVX1    g156(.A(\count[9] ), .Y(new_n295));
  NOR3X1   g157(.A(new_n291), .B(new_n278), .C(new_n184_1), .Y(new_n296));
  XOR2X1   g158(.A(new_n296), .B(new_n295), .Y(new_n297));
  NOR4X1   g159(.A(new_n297), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n129));
  NOR4X1   g160(.A(new_n291), .B(new_n278), .C(new_n295), .D(new_n184_1), .Y(new_n299));
  XOR2X1   g161(.A(new_n299), .B(new_n188), .Y(new_n300));
  NOR4X1   g162(.A(new_n300), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n134));
  NAND2X1  g163(.A(new_n299), .B(\count[10] ), .Y(new_n302));
  XOR2X1   g164(.A(new_n302), .B(\count[11] ), .Y(new_n303));
  NOR4X1   g165(.A(new_n303), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n139));
  NAND4X1  g166(.A(\count[11] ), .B(\count[10] ), .C(\count[9] ), .D(\count[8] ), .Y(new_n305));
  NOR3X1   g167(.A(new_n305), .B(new_n291), .C(new_n278), .Y(new_n306));
  XOR2X1   g168(.A(new_n306), .B(new_n194_1), .Y(new_n307));
  NOR4X1   g169(.A(new_n307), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n144));
  OR4X1    g170(.A(new_n305), .B(new_n291), .C(new_n278), .D(new_n194_1), .Y(new_n309));
  XOR2X1   g171(.A(new_n309), .B(\count[13] ), .Y(new_n310));
  NOR4X1   g172(.A(new_n310), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n149));
  NAND3X1  g173(.A(new_n306), .B(\count[13] ), .C(\count[12] ), .Y(new_n312));
  XOR2X1   g174(.A(new_n312), .B(\count[14] ), .Y(new_n313));
  NOR4X1   g175(.A(new_n313), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n154));
  NAND4X1  g176(.A(new_n306), .B(\count[14] ), .C(\count[13] ), .D(\count[12] ), .Y(new_n315));
  XOR2X1   g177(.A(new_n315), .B(\count[15] ), .Y(new_n316));
  NOR4X1   g178(.A(new_n316), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n159));
  NAND4X1  g179(.A(\count[15] ), .B(\count[14] ), .C(\count[13] ), .D(\count[12] ), .Y(new_n318));
  OR4X1    g180(.A(new_n318), .B(new_n305), .C(new_n291), .D(new_n278), .Y(new_n319));
  XOR2X1   g181(.A(new_n319), .B(\count[16] ), .Y(new_n320));
  NOR4X1   g182(.A(new_n320), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n164));
  INVX1    g183(.A(\count[17] ), .Y(new_n322));
  NOR2X1   g184(.A(new_n319), .B(new_n228), .Y(new_n323));
  XOR2X1   g185(.A(new_n323), .B(new_n322), .Y(new_n324));
  NOR4X1   g186(.A(new_n324), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n169));
  NOR3X1   g187(.A(new_n319), .B(new_n322), .C(new_n228), .Y(new_n326));
  XOR2X1   g188(.A(new_n326), .B(new_n232), .Y(new_n327));
  NOR4X1   g189(.A(new_n327), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n174));
  OR4X1    g190(.A(new_n319), .B(new_n232), .C(new_n322), .D(new_n228), .Y(new_n329));
  XOR2X1   g191(.A(new_n329), .B(\count[19] ), .Y(new_n330));
  NOR4X1   g192(.A(new_n330), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n179));
  NAND4X1  g193(.A(\count[19] ), .B(\count[18] ), .C(\count[17] ), .D(\count[16] ), .Y(new_n332));
  NOR2X1   g194(.A(new_n332), .B(new_n319), .Y(new_n333));
  XOR2X1   g195(.A(new_n333), .B(new_n238), .Y(new_n334));
  NOR4X1   g196(.A(new_n334), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n184));
  INVX1    g197(.A(\count[21] ), .Y(new_n336));
  NOR3X1   g198(.A(new_n332), .B(new_n319), .C(new_n238), .Y(new_n337));
  XOR2X1   g199(.A(new_n337), .B(new_n336), .Y(new_n338));
  NOR4X1   g200(.A(new_n338), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n189));
  NOR4X1   g201(.A(new_n332), .B(new_n319), .C(new_n336), .D(new_n238), .Y(new_n340));
  XOR2X1   g202(.A(new_n340), .B(new_n242), .Y(new_n341));
  NOR4X1   g203(.A(new_n341), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n194));
  NAND2X1  g204(.A(new_n340), .B(\count[22] ), .Y(new_n343));
  XOR2X1   g205(.A(new_n343), .B(\count[23] ), .Y(new_n344));
  NOR4X1   g206(.A(new_n344), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n199));
  NAND4X1  g207(.A(\count[23] ), .B(\count[22] ), .C(\count[21] ), .D(\count[20] ), .Y(new_n346));
  OR2X1    g208(.A(new_n346), .B(new_n332), .Y(new_n347));
  OR2X1    g209(.A(new_n347), .B(new_n319), .Y(new_n348));
  XOR2X1   g210(.A(new_n348), .B(\count[24] ), .Y(new_n349));
  NOR4X1   g211(.A(new_n349), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n204));
  OR4X1    g212(.A(new_n346), .B(new_n332), .C(new_n319), .D(new_n249), .Y(new_n351));
  XOR2X1   g213(.A(new_n351), .B(\count[25] ), .Y(new_n352));
  NOR4X1   g214(.A(new_n352), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n209));
  NAND2X1  g215(.A(\count[25] ), .B(\count[24] ), .Y(new_n354));
  NOR3X1   g216(.A(new_n354), .B(new_n347), .C(new_n319), .Y(new_n355));
  XOR2X1   g217(.A(new_n355), .B(new_n253), .Y(new_n356));
  NOR4X1   g218(.A(new_n356), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n214));
  INVX1    g219(.A(\count[27] ), .Y(new_n358));
  NOR4X1   g220(.A(new_n354), .B(new_n347), .C(new_n319), .D(new_n253), .Y(new_n359));
  XOR2X1   g221(.A(new_n359), .B(new_n358), .Y(new_n360));
  NOR4X1   g222(.A(new_n360), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n219));
  NOR4X1   g223(.A(new_n354), .B(new_n348), .C(new_n358), .D(new_n253), .Y(new_n362));
  XOR2X1   g224(.A(new_n362), .B(new_n259), .Y(new_n363));
  NOR4X1   g225(.A(new_n363), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n224));
  INVX1    g226(.A(\count[29] ), .Y(new_n365));
  AND2X1   g227(.A(new_n362), .B(\count[28] ), .Y(new_n366));
  XOR2X1   g228(.A(new_n366), .B(new_n365), .Y(new_n367));
  NOR4X1   g229(.A(new_n367), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n229));
  OR4X1    g230(.A(new_n354), .B(new_n348), .C(new_n358), .D(new_n253), .Y(new_n369));
  NOR3X1   g231(.A(new_n369), .B(new_n365), .C(new_n259), .Y(new_n370));
  XOR2X1   g232(.A(new_n370), .B(new_n263), .Y(new_n371));
  NOR4X1   g233(.A(new_n371), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n234));
  OR4X1    g234(.A(new_n369), .B(new_n263), .C(new_n365), .D(new_n259), .Y(new_n373));
  XOR2X1   g235(.A(new_n373), .B(\count[31] ), .Y(new_n374));
  NOR4X1   g236(.A(new_n374), .B(new_n268), .C(new_n224_1), .D(reset), .Y(n239));
  BUFX1    g237(.A(tmp_cout), .Y(cout));
  always @ (posedge clock) begin
    tmp_cout <= n74;
    first_rising_edge <= n79;
    \count[0]  <= n84;
    \count[1]  <= n89;
    \count[2]  <= n94;
    \count[3]  <= n99;
    \count[4]  <= n104;
    \count[5]  <= n109;
    \count[6]  <= n114;
    \count[7]  <= n119;
    \count[8]  <= n124;
    \count[9]  <= n129;
    \count[10]  <= n134;
    \count[11]  <= n139;
    \count[12]  <= n144;
    \count[13]  <= n149;
    \count[14]  <= n154;
    \count[15]  <= n159;
    \count[16]  <= n164;
    \count[17]  <= n169;
    \count[18]  <= n174;
    \count[19]  <= n179;
    \count[20]  <= n184;
    \count[21]  <= n189;
    \count[22]  <= n194;
    \count[23]  <= n199;
    \count[24]  <= n204;
    \count[25]  <= n209;
    \count[26]  <= n214;
    \count[27]  <= n219;
    \count[28]  <= n224;
    \count[29]  <= n229;
    \count[30]  <= n234;
    \count[31]  <= n239;
  end
  initial begin
    first_rising_edge <= 1'b1;
    \count[0]  <= 1'b1;
    \count[1]  <= 1'b0;
    \count[2]  <= 1'b0;
    \count[3]  <= 1'b0;
    \count[4]  <= 1'b0;
    \count[5]  <= 1'b0;
    \count[6]  <= 1'b0;
    \count[7]  <= 1'b0;
    \count[8]  <= 1'b0;
    \count[9]  <= 1'b0;
    \count[10]  <= 1'b0;
    \count[11]  <= 1'b0;
    \count[12]  <= 1'b0;
    \count[13]  <= 1'b0;
    \count[14]  <= 1'b0;
    \count[15]  <= 1'b0;
    \count[16]  <= 1'b0;
    \count[17]  <= 1'b0;
    \count[18]  <= 1'b0;
    \count[19]  <= 1'b0;
    \count[20]  <= 1'b0;
    \count[21]  <= 1'b0;
    \count[22]  <= 1'b0;
    \count[23]  <= 1'b0;
    \count[24]  <= 1'b0;
    \count[25]  <= 1'b0;
    \count[26]  <= 1'b0;
    \count[27]  <= 1'b0;
    \count[28]  <= 1'b0;
    \count[29]  <= 1'b0;
    \count[30]  <= 1'b0;
    \count[31]  <= 1'b0;
  end
endmodule


