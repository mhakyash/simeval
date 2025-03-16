// Benchmark "servo_control_block" written by ABC on Wed Jun 26 15:22:22 2024

module servo_control_block ( clock, 
    \ctrl[0] , \ctrl[1] , \ctrl[2] , \ctrl[3] , \ctrl[4] , \ctrl[5] ,
    \ctrl[6] , \ctrl[7] , clk,
    \pos[0] , \pos[1] , \pos[2] , \pos[3] , \pos[4] , \pos[5] , \pos[6] ,
    \pos[7] , \pos[8] , \pos[9] , \pos[10] , \pos[11] , \pos[12] ,
    \pos[13] , \pos[14] , \pos[15]   );
  input  clock;
  input  \ctrl[0] , \ctrl[1] , \ctrl[2] , \ctrl[3] , \ctrl[4] ,
    \ctrl[5] , \ctrl[6] , \ctrl[7] , clk;
  output \pos[0] , \pos[1] , \pos[2] , \pos[3] , \pos[4] , \pos[5] , \pos[6] ,
    \pos[7] , \pos[8] , \pos[9] , \pos[10] , \pos[11] , \pos[12] ,
    \pos[13] , \pos[14] , \pos[15] ;
  reg \pulse_width[0] , \pulse_width[1] , \pulse_width[2] ,
    \pulse_width[3] , \pulse_width[4] , \pulse_width[5] , \pulse_width[6] ,
    \pulse_width[7] , \pulse_width[8] , \pulse_width[9] ,
    \pulse_width[10] , \pulse_width[11] , \pulse_width[12] ,
    \pulse_width[13] , \pulse_width[14] , \pulse_width[15] , \pos[0] ,
    \count[0] , \count[1] , \count[2] , \count[3] , \count[4] , \count[5] ,
    \count[6] , \count[7] , \count[8] , \count[9] , \count[10] ,
    \count[11] , \count[12] , \count[13] , \count[14] , \count[15] ;
  wire new_n140, new_n141_1, new_n142, new_n143, new_n144, new_n148,
    new_n150, new_n152, new_n153, new_n155, new_n156_1, new_n158, new_n159,
    new_n160, new_n161_1, new_n163, new_n164, new_n166_1, new_n167,
    new_n168, new_n170, new_n171_1, new_n172, new_n174, new_n175,
    new_n181_1, new_n182, new_n183, new_n184, new_n185, new_n186_1,
    new_n187, new_n188, new_n189, new_n190, new_n191_1, new_n192, new_n193,
    new_n194, new_n195, new_n196_1, new_n197, new_n198, new_n199, new_n200,
    new_n201_1, new_n202, new_n203, new_n204, new_n205, new_n206_1,
    new_n207, new_n208, new_n209, new_n210, new_n211_1, new_n212, new_n213,
    new_n214, new_n215, new_n216, new_n217, new_n218, new_n219, new_n220,
    new_n221, new_n222, new_n223, new_n224, new_n225, new_n226, new_n227,
    new_n228, new_n229, new_n230, new_n231, new_n232, new_n233, new_n234,
    new_n235, new_n236, new_n237, new_n238, new_n239, new_n240, new_n241,
    new_n242, new_n244, new_n245, new_n246, new_n247, new_n248, new_n249,
    new_n250, new_n251, new_n252, new_n253, new_n254, new_n255, new_n256,
    new_n257, new_n258, new_n259, new_n260, new_n261, new_n262, new_n263,
    new_n265, new_n267, new_n268, new_n270, new_n271, new_n273, new_n274,
    new_n276, new_n277, new_n279, new_n280, new_n282, new_n283, new_n284,
    new_n286, new_n287, new_n289, new_n290, new_n292, new_n293, new_n294,
    new_n295, new_n297, new_n298, new_n300, new_n301, new_n303, new_n304,
    new_n305, new_n307, new_n308, new_n310, new_n311, n52, n57, n62, n67,
    n72, n77, n82, n87, n92, n97, n102, n107, n112, n117, n122, n127, n132,
    n136, n141, n146, n151, n156, n161, n166, n171, n176, n181, n186, n191,
    n196, n201, n206, n211;
  OR4X1    g000(.A(\count[9] ), .B(\count[8] ), .C(\count[5] ), .D(\count[4] ), .Y(new_n140));
  OR4X1    g001(.A(\count[13] ), .B(\count[12] ), .C(\count[7] ), .D(\count[6] ), .Y(new_n141_1));
  OR4X1    g002(.A(\count[3] ), .B(\count[2] ), .C(\count[1] ), .D(\count[0] ), .Y(new_n142));
  OR4X1    g003(.A(\count[15] ), .B(\count[14] ), .C(\count[11] ), .D(\count[10] ), .Y(new_n143));
  OR4X1    g004(.A(new_n143), .B(new_n142), .C(new_n141_1), .D(new_n140), .Y(new_n144));
  AND2X1   g005(.A(new_n144), .B(\pulse_width[0] ), .Y(n52));
  AND2X1   g006(.A(new_n144), .B(\pulse_width[1] ), .Y(n57));
  AND2X1   g007(.A(new_n144), .B(\pulse_width[2] ), .Y(n62));
  INVX1    g008(.A(\ctrl[0] ), .Y(new_n148));
  MX2X1    g009(.A(new_n148), .B(\pulse_width[3] ), .S0(new_n144), .Y(n67));
  XOR2X1   g010(.A(\ctrl[1] ), .B(\ctrl[0] ), .Y(new_n150));
  MX2X1    g011(.A(new_n150), .B(\pulse_width[4] ), .S0(new_n144), .Y(n72));
  NAND2X1  g012(.A(\ctrl[1] ), .B(\ctrl[0] ), .Y(new_n152));
  XOR2X1   g013(.A(new_n152), .B(\ctrl[2] ), .Y(new_n153));
  MX2X1    g014(.A(new_n153), .B(\pulse_width[5] ), .S0(new_n144), .Y(n77));
  AOI21X1  g015(.A0(\ctrl[1] ), .A1(\ctrl[0] ), .B0(\ctrl[2] ), .Y(new_n155));
  XOR2X1   g016(.A(new_n155), .B(\ctrl[3] ), .Y(new_n156_1));
  MX2X1    g017(.A(new_n156_1), .B(\pulse_width[6] ), .S0(new_n144), .Y(n82));
  INVX1    g018(.A(\ctrl[1] ), .Y(new_n158));
  NOR3X1   g019(.A(\ctrl[2] ), .B(new_n158), .C(new_n148), .Y(new_n159));
  NOR3X1   g020(.A(new_n159), .B(\ctrl[3] ), .C(\ctrl[2] ), .Y(new_n160));
  XOR2X1   g021(.A(new_n160), .B(\ctrl[4] ), .Y(new_n161_1));
  MX2X1    g022(.A(new_n161_1), .B(\pulse_width[7] ), .S0(new_n144), .Y(n87));
  NOR4X1   g023(.A(new_n159), .B(\ctrl[4] ), .C(\ctrl[3] ), .D(\ctrl[2] ), .Y(new_n163));
  XOR2X1   g024(.A(new_n163), .B(\ctrl[5] ), .Y(new_n164));
  MX2X1    g025(.A(new_n164), .B(\pulse_width[8] ), .S0(new_n144), .Y(n92));
  OR4X1    g026(.A(new_n159), .B(\ctrl[4] ), .C(\ctrl[3] ), .D(\ctrl[2] ), .Y(new_n166_1));
  NOR2X1   g027(.A(new_n166_1), .B(\ctrl[5] ), .Y(new_n167));
  XOR2X1   g028(.A(new_n167), .B(\ctrl[6] ), .Y(new_n168));
  MX2X1    g029(.A(new_n168), .B(\pulse_width[9] ), .S0(new_n144), .Y(n97));
  INVX1    g030(.A(\ctrl[7] ), .Y(new_n170));
  NOR3X1   g031(.A(new_n166_1), .B(\ctrl[6] ), .C(\ctrl[5] ), .Y(new_n171_1));
  XOR2X1   g032(.A(new_n171_1), .B(new_n170), .Y(new_n172));
  MX2X1    g033(.A(new_n172), .B(\pulse_width[10] ), .S0(new_n144), .Y(n102));
  OR2X1    g034(.A(new_n144), .B(new_n170), .Y(new_n174));
  NAND2X1  g035(.A(new_n144), .B(\pulse_width[11] ), .Y(new_n175));
  OAI21X1  g036(.A0(new_n174), .A1(new_n171_1), .B0(new_n175), .Y(n107));
  AND2X1   g037(.A(new_n144), .B(\pulse_width[12] ), .Y(n112));
  AND2X1   g038(.A(new_n144), .B(\pulse_width[13] ), .Y(n117));
  AND2X1   g039(.A(new_n144), .B(\pulse_width[14] ), .Y(n122));
  AND2X1   g040(.A(new_n144), .B(\pulse_width[15] ), .Y(n127));
  INVX1    g041(.A(\pulse_width[1] ), .Y(new_n181_1));
  AND2X1   g042(.A(\count[1] ), .B(new_n181_1), .Y(new_n182));
  INVX1    g043(.A(\count[0] ), .Y(new_n183));
  XOR2X1   g044(.A(\count[1] ), .B(\pulse_width[1] ), .Y(new_n184));
  AOI21X1  g045(.A0(new_n183), .A1(\pulse_width[0] ), .B0(new_n184), .Y(new_n185));
  XOR2X1   g046(.A(\count[3] ), .B(\pulse_width[3] ), .Y(new_n186_1));
  XOR2X1   g047(.A(\count[2] ), .B(\pulse_width[2] ), .Y(new_n187));
  NOR2X1   g048(.A(new_n187), .B(new_n186_1), .Y(new_n188));
  OAI21X1  g049(.A0(new_n185), .A1(new_n182), .B0(new_n188), .Y(new_n189));
  INVX1    g050(.A(\pulse_width[3] ), .Y(new_n190));
  INVX1    g051(.A(\count[2] ), .Y(new_n191_1));
  NOR3X1   g052(.A(new_n186_1), .B(new_n191_1), .C(\pulse_width[2] ), .Y(new_n192));
  AOI21X1  g053(.A0(\count[3] ), .A1(new_n190), .B0(new_n192), .Y(new_n193));
  XOR2X1   g054(.A(\count[7] ), .B(\pulse_width[7] ), .Y(new_n194));
  XOR2X1   g055(.A(\count[6] ), .B(\pulse_width[6] ), .Y(new_n195));
  XOR2X1   g056(.A(\count[5] ), .B(\pulse_width[5] ), .Y(new_n196_1));
  XOR2X1   g057(.A(\count[4] ), .B(\pulse_width[4] ), .Y(new_n197));
  OR4X1    g058(.A(new_n197), .B(new_n196_1), .C(new_n195), .D(new_n194), .Y(new_n198));
  AOI21X1  g059(.A0(new_n193), .A1(new_n189), .B0(new_n198), .Y(new_n199));
  OR2X1    g060(.A(new_n195), .B(new_n194), .Y(new_n200));
  INVX1    g061(.A(\pulse_width[5] ), .Y(new_n201_1));
  INVX1    g062(.A(\count[4] ), .Y(new_n202));
  NOR3X1   g063(.A(new_n196_1), .B(new_n202), .C(\pulse_width[4] ), .Y(new_n203));
  AOI21X1  g064(.A0(\count[5] ), .A1(new_n201_1), .B0(new_n203), .Y(new_n204));
  INVX1    g065(.A(\pulse_width[7] ), .Y(new_n205));
  INVX1    g066(.A(\count[6] ), .Y(new_n206_1));
  NOR3X1   g067(.A(new_n194), .B(new_n206_1), .C(\pulse_width[6] ), .Y(new_n207));
  AOI21X1  g068(.A0(\count[7] ), .A1(new_n205), .B0(new_n207), .Y(new_n208));
  OAI21X1  g069(.A0(new_n204), .A1(new_n200), .B0(new_n208), .Y(new_n209));
  XOR2X1   g070(.A(\count[15] ), .B(\pulse_width[15] ), .Y(new_n210));
  XOR2X1   g071(.A(\count[14] ), .B(\pulse_width[14] ), .Y(new_n211_1));
  XOR2X1   g072(.A(\count[13] ), .B(\pulse_width[13] ), .Y(new_n212));
  XOR2X1   g073(.A(\count[12] ), .B(\pulse_width[12] ), .Y(new_n213));
  NOR4X1   g074(.A(new_n213), .B(new_n212), .C(new_n211_1), .D(new_n210), .Y(new_n214));
  XOR2X1   g075(.A(\count[11] ), .B(\pulse_width[11] ), .Y(new_n215));
  XOR2X1   g076(.A(\count[10] ), .B(\pulse_width[10] ), .Y(new_n216));
  XOR2X1   g077(.A(\count[9] ), .B(\pulse_width[9] ), .Y(new_n217));
  XOR2X1   g078(.A(\count[8] ), .B(\pulse_width[8] ), .Y(new_n218));
  NOR4X1   g079(.A(new_n218), .B(new_n217), .C(new_n216), .D(new_n215), .Y(new_n219));
  AND2X1   g080(.A(new_n219), .B(new_n214), .Y(new_n220));
  OAI21X1  g081(.A0(new_n209), .A1(new_n199), .B0(new_n220), .Y(new_n221));
  OR2X1    g082(.A(new_n216), .B(new_n215), .Y(new_n222));
  INVX1    g083(.A(\pulse_width[9] ), .Y(new_n223));
  INVX1    g084(.A(\count[8] ), .Y(new_n224));
  NOR3X1   g085(.A(new_n217), .B(new_n224), .C(\pulse_width[8] ), .Y(new_n225));
  AOI21X1  g086(.A0(\count[9] ), .A1(new_n223), .B0(new_n225), .Y(new_n226));
  INVX1    g087(.A(\pulse_width[11] ), .Y(new_n227));
  INVX1    g088(.A(\count[10] ), .Y(new_n228));
  NOR3X1   g089(.A(new_n215), .B(new_n228), .C(\pulse_width[10] ), .Y(new_n229));
  AOI21X1  g090(.A0(\count[11] ), .A1(new_n227), .B0(new_n229), .Y(new_n230));
  OAI21X1  g091(.A0(new_n226), .A1(new_n222), .B0(new_n230), .Y(new_n231));
  OR2X1    g092(.A(new_n211_1), .B(new_n210), .Y(new_n232));
  INVX1    g093(.A(\pulse_width[13] ), .Y(new_n233));
  INVX1    g094(.A(\count[12] ), .Y(new_n234));
  NOR3X1   g095(.A(new_n212), .B(new_n234), .C(\pulse_width[12] ), .Y(new_n235));
  AOI21X1  g096(.A0(\count[13] ), .A1(new_n233), .B0(new_n235), .Y(new_n236));
  INVX1    g097(.A(\pulse_width[15] ), .Y(new_n237));
  INVX1    g098(.A(\count[14] ), .Y(new_n238));
  NOR3X1   g099(.A(new_n210), .B(new_n238), .C(\pulse_width[14] ), .Y(new_n239));
  AOI21X1  g100(.A0(\count[15] ), .A1(new_n237), .B0(new_n239), .Y(new_n240));
  OAI21X1  g101(.A0(new_n236), .A1(new_n232), .B0(new_n240), .Y(new_n241));
  AOI21X1  g102(.A0(new_n231), .A1(new_n214), .B0(new_n241), .Y(new_n242));
  AND2X1   g103(.A(new_n242), .B(new_n221), .Y(n132));
  OR4X1    g104(.A(\count[15] ), .B(new_n238), .C(\count[13] ), .D(\count[12] ), .Y(new_n244));
  INVX1    g105(.A(\count[9] ), .Y(new_n245));
  INVX1    g106(.A(\count[11] ), .Y(new_n246));
  OR4X1    g107(.A(new_n246), .B(new_n228), .C(new_n245), .D(\count[8] ), .Y(new_n247));
  OR2X1    g108(.A(new_n247), .B(new_n244), .Y(new_n248));
  INVX1    g109(.A(\count[5] ), .Y(new_n249));
  NOR4X1   g110(.A(\count[7] ), .B(\count[6] ), .C(new_n249), .D(\count[4] ), .Y(new_n250));
  INVX1    g111(.A(new_n250), .Y(new_n251));
  NOR3X1   g112(.A(new_n251), .B(new_n248), .C(new_n142), .Y(new_n252));
  NOR2X1   g113(.A(\count[3] ), .B(new_n191_1), .Y(new_n253));
  OR2X1    g114(.A(\count[3] ), .B(new_n191_1), .Y(new_n254));
  OAI21X1  g115(.A0(new_n254), .A1(new_n253), .B0(new_n250), .Y(new_n255));
  NAND2X1  g116(.A(\count[5] ), .B(\count[4] ), .Y(new_n256));
  INVX1    g117(.A(new_n256), .Y(new_n257));
  NOR3X1   g118(.A(new_n257), .B(\count[7] ), .C(\count[6] ), .Y(new_n258));
  AOI21X1  g119(.A0(new_n258), .A1(new_n255), .B0(new_n248), .Y(new_n259));
  NAND4X1  g120(.A(\count[11] ), .B(\count[10] ), .C(\count[9] ), .D(\count[8] ), .Y(new_n260));
  OR2X1    g121(.A(\count[13] ), .B(\count[12] ), .Y(new_n261));
  AOI21X1  g122(.A0(new_n261), .A1(\count[14] ), .B0(\count[15] ), .Y(new_n262));
  OAI21X1  g123(.A0(new_n260), .A1(new_n244), .B0(new_n262), .Y(new_n263));
  NOR4X1   g124(.A(new_n263), .B(new_n259), .C(new_n252), .D(\count[0] ), .Y(n136));
  XOR2X1   g125(.A(\count[1] ), .B(new_n183), .Y(new_n265));
  NOR4X1   g126(.A(new_n265), .B(new_n263), .C(new_n259), .D(new_n252), .Y(n141));
  AND2X1   g127(.A(\count[1] ), .B(\count[0] ), .Y(new_n267));
  XOR2X1   g128(.A(new_n267), .B(new_n191_1), .Y(new_n268));
  NOR4X1   g129(.A(new_n268), .B(new_n263), .C(new_n259), .D(new_n252), .Y(n146));
  NAND3X1  g130(.A(\count[2] ), .B(\count[1] ), .C(\count[0] ), .Y(new_n270));
  XOR2X1   g131(.A(new_n270), .B(\count[3] ), .Y(new_n271));
  NOR4X1   g132(.A(new_n271), .B(new_n263), .C(new_n259), .D(new_n252), .Y(n151));
  NAND4X1  g133(.A(\count[3] ), .B(\count[2] ), .C(\count[1] ), .D(\count[0] ), .Y(new_n273));
  XOR2X1   g134(.A(new_n273), .B(\count[4] ), .Y(new_n274));
  NOR4X1   g135(.A(new_n274), .B(new_n263), .C(new_n259), .D(new_n252), .Y(n156));
  NOR2X1   g136(.A(new_n273), .B(new_n202), .Y(new_n276));
  XOR2X1   g137(.A(new_n276), .B(new_n249), .Y(new_n277));
  NOR4X1   g138(.A(new_n277), .B(new_n263), .C(new_n259), .D(new_n252), .Y(n161));
  NOR2X1   g139(.A(new_n273), .B(new_n256), .Y(new_n279));
  XOR2X1   g140(.A(new_n279), .B(new_n206_1), .Y(new_n280));
  NOR4X1   g141(.A(new_n280), .B(new_n263), .C(new_n259), .D(new_n252), .Y(n166));
  INVX1    g142(.A(\count[7] ), .Y(new_n282));
  NOR3X1   g143(.A(new_n273), .B(new_n256), .C(new_n206_1), .Y(new_n283));
  XOR2X1   g144(.A(new_n283), .B(new_n282), .Y(new_n284));
  NOR4X1   g145(.A(new_n284), .B(new_n263), .C(new_n259), .D(new_n252), .Y(n171));
  NOR4X1   g146(.A(new_n273), .B(new_n256), .C(new_n282), .D(new_n206_1), .Y(new_n286));
  XOR2X1   g147(.A(new_n286), .B(new_n224), .Y(new_n287));
  NOR4X1   g148(.A(new_n287), .B(new_n263), .C(new_n259), .D(new_n252), .Y(n176));
  AND2X1   g149(.A(new_n286), .B(\count[8] ), .Y(new_n289));
  XOR2X1   g150(.A(new_n289), .B(new_n245), .Y(new_n290));
  NOR4X1   g151(.A(new_n290), .B(new_n263), .C(new_n259), .D(new_n252), .Y(n181));
  NAND2X1  g152(.A(\count[9] ), .B(\count[8] ), .Y(new_n292));
  OR4X1    g153(.A(new_n273), .B(new_n256), .C(new_n282), .D(new_n206_1), .Y(new_n293));
  NOR2X1   g154(.A(new_n293), .B(new_n292), .Y(new_n294));
  XOR2X1   g155(.A(new_n294), .B(new_n228), .Y(new_n295));
  NOR4X1   g156(.A(new_n295), .B(new_n263), .C(new_n259), .D(new_n252), .Y(n186));
  NOR3X1   g157(.A(new_n293), .B(new_n292), .C(new_n228), .Y(new_n297));
  XOR2X1   g158(.A(new_n297), .B(new_n246), .Y(new_n298));
  NOR4X1   g159(.A(new_n298), .B(new_n263), .C(new_n259), .D(new_n252), .Y(n191));
  NOR2X1   g160(.A(new_n293), .B(new_n260), .Y(new_n300));
  XOR2X1   g161(.A(new_n300), .B(new_n234), .Y(new_n301));
  NOR4X1   g162(.A(new_n301), .B(new_n263), .C(new_n259), .D(new_n252), .Y(n196));
  INVX1    g163(.A(\count[13] ), .Y(new_n303));
  NOR3X1   g164(.A(new_n293), .B(new_n260), .C(new_n234), .Y(new_n304));
  XOR2X1   g165(.A(new_n304), .B(new_n303), .Y(new_n305));
  NOR4X1   g166(.A(new_n305), .B(new_n263), .C(new_n259), .D(new_n252), .Y(n201));
  NOR4X1   g167(.A(new_n293), .B(new_n260), .C(new_n303), .D(new_n234), .Y(new_n307));
  XOR2X1   g168(.A(new_n307), .B(new_n238), .Y(new_n308));
  NOR4X1   g169(.A(new_n308), .B(new_n263), .C(new_n259), .D(new_n252), .Y(n206));
  NAND2X1  g170(.A(new_n307), .B(\count[14] ), .Y(new_n310));
  XOR2X1   g171(.A(new_n310), .B(\count[15] ), .Y(new_n311));
  NOR4X1   g172(.A(new_n311), .B(new_n263), .C(new_n259), .D(new_n252), .Y(n211));
  ZERO     g173(.Y(\pos[1] ));
  ZERO     g174(.Y(\pos[2] ));
  ZERO     g175(.Y(\pos[3] ));
  ZERO     g176(.Y(\pos[4] ));
  ZERO     g177(.Y(\pos[5] ));
  ZERO     g178(.Y(\pos[6] ));
  ZERO     g179(.Y(\pos[7] ));
  ZERO     g180(.Y(\pos[8] ));
  ZERO     g181(.Y(\pos[9] ));
  ZERO     g182(.Y(\pos[10] ));
  ZERO     g183(.Y(\pos[11] ));
  ZERO     g184(.Y(\pos[12] ));
  ZERO     g185(.Y(\pos[13] ));
  ZERO     g186(.Y(\pos[14] ));
  ZERO     g187(.Y(\pos[15] ));
  always @ (posedge clock) begin
    \pulse_width[0]  <= n52;
    \pulse_width[1]  <= n57;
    \pulse_width[2]  <= n62;
    \pulse_width[3]  <= n67;
    \pulse_width[4]  <= n72;
    \pulse_width[5]  <= n77;
    \pulse_width[6]  <= n82;
    \pulse_width[7]  <= n87;
    \pulse_width[8]  <= n92;
    \pulse_width[9]  <= n97;
    \pulse_width[10]  <= n102;
    \pulse_width[11]  <= n107;
    \pulse_width[12]  <= n112;
    \pulse_width[13]  <= n117;
    \pulse_width[14]  <= n122;
    \pulse_width[15]  <= n127;
    \pos[0]  <= n132;
    \count[0]  <= n136;
    \count[1]  <= n141;
    \count[2]  <= n146;
    \count[3]  <= n151;
    \count[4]  <= n156;
    \count[5]  <= n161;
    \count[6]  <= n166;
    \count[7]  <= n171;
    \count[8]  <= n176;
    \count[9]  <= n181;
    \count[10]  <= n186;
    \count[11]  <= n191;
    \count[12]  <= n196;
    \count[13]  <= n201;
    \count[14]  <= n206;
    \count[15]  <= n211;
  end
  initial begin
    \pulse_width[0]  <= 1'b0;
    \pulse_width[1]  <= 1'b0;
    \pulse_width[2]  <= 1'b0;
    \pulse_width[3]  <= 1'b0;
    \pulse_width[4]  <= 1'b0;
    \pulse_width[5]  <= 1'b0;
    \pulse_width[6]  <= 1'b0;
    \pulse_width[7]  <= 1'b0;
    \pulse_width[8]  <= 1'b0;
    \pulse_width[9]  <= 1'b0;
    \pulse_width[10]  <= 1'b0;
    \pulse_width[11]  <= 1'b0;
    \pulse_width[12]  <= 1'b0;
    \pulse_width[13]  <= 1'b0;
    \pulse_width[14]  <= 1'b0;
    \pulse_width[15]  <= 1'b0;
    \count[0]  <= 1'b0;
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
  end
endmodule


