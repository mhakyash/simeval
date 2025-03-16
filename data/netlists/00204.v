// Benchmark "servo_control" written by ABC on Wed Jun 26 15:22:03 2024

module servo_control ( clock, 
    clk, rst, \pwm_in[0] , \pwm_in[1] , \pwm_in[2] , \pwm_in[3] ,
    \pwm_in[4] , \pwm_in[5] , \pwm_in[6] , \pwm_in[7] , \pwm_in[8] ,
    \pwm_in[9] , \pwm_in[10] , \pwm_in[11] , \pwm_in[12] , \pwm_in[13] ,
    \pwm_in[14] , \pwm_in[15] ,
    \pwm_out[0] , \pwm_out[1] , \pwm_out[2] , \pwm_out[3] , \pwm_out[4] ,
    \pwm_out[5] , \pwm_out[6] , \pwm_out[7] , \pwm_out[8] , \pwm_out[9] ,
    \pwm_out[10] , \pwm_out[11] , \pwm_out[12] , \pwm_out[13] ,
    \pwm_out[14] , \pwm_out[15]   );
  input  clock;
  input  clk, rst, \pwm_in[0] , \pwm_in[1] , \pwm_in[2] , \pwm_in[3] ,
    \pwm_in[4] , \pwm_in[5] , \pwm_in[6] , \pwm_in[7] , \pwm_in[8] ,
    \pwm_in[9] , \pwm_in[10] , \pwm_in[11] , \pwm_in[12] , \pwm_in[13] ,
    \pwm_in[14] , \pwm_in[15] ;
  output \pwm_out[0] , \pwm_out[1] , \pwm_out[2] , \pwm_out[3] , \pwm_out[4] ,
    \pwm_out[5] , \pwm_out[6] , \pwm_out[7] , \pwm_out[8] , \pwm_out[9] ,
    \pwm_out[10] , \pwm_out[11] , \pwm_out[12] , \pwm_out[13] ,
    \pwm_out[14] , \pwm_out[15] ;
  reg \counter[0] , \counter[1] , \counter[2] , \counter[3] , \counter[4] ,
    \counter[5] , \counter[6] , \counter[7] , \counter[8] , \counter[9] ,
    \counter[10] , \counter[11] , \counter[12] , \counter[13] ,
    \counter[14] , \counter[15] , \threshold[0] , \threshold[1] ,
    \threshold[2] , \threshold[3] , \threshold[4] , \threshold[5] ,
    \threshold[6] , \threshold[7] , \threshold[8] , \threshold[9] ,
    \threshold[10] , \threshold[11] , \threshold[12] , \threshold[13] ,
    \threshold[14] , \threshold[15] , \pwm_out[5] , \pwm_out[10] ;
  wire new_n149, new_n150_1, new_n151, new_n152, new_n153, new_n154,
    new_n156, new_n157, new_n159, new_n160_1, new_n162, new_n163,
    new_n165_1, new_n166, new_n168, new_n169, new_n170_1, new_n172,
    new_n173, new_n174, new_n176, new_n177, new_n178, new_n180_1, new_n181,
    new_n182, new_n183, new_n185_1, new_n186, new_n187, new_n189,
    new_n190_1, new_n191, new_n193, new_n194, new_n195_1, new_n197,
    new_n198, new_n199, new_n200_1, new_n202, new_n203, new_n204, new_n206,
    new_n207, new_n208, new_n209, new_n211, new_n212, new_n214, new_n215_1,
    new_n217, new_n219, new_n221, new_n223, new_n225_1, new_n227, new_n229,
    new_n231, new_n233, new_n235, new_n237, new_n239, new_n241, new_n243,
    new_n245, new_n247, new_n248, new_n249, new_n250, new_n251, new_n252,
    new_n253, new_n254, new_n255, new_n256, new_n257, new_n258, new_n259,
    new_n260, new_n261, new_n262, new_n263, new_n264, new_n265, new_n266,
    new_n267, new_n268, new_n269, new_n270, new_n271, new_n272, new_n273,
    new_n274, new_n275, new_n276, new_n277, new_n278, new_n279, new_n280,
    new_n281, new_n282, new_n283, new_n284, new_n285, new_n286, new_n287,
    new_n288, new_n289, new_n290, new_n291, new_n292, new_n293, new_n294,
    new_n295, new_n296, new_n297, new_n298, new_n299, new_n300, new_n301,
    new_n302, new_n303, new_n304, new_n305, new_n306, n70, n75, n80, n85,
    n90, n95, n100, n105, n110, n115, n120, n125, n130, n135, n140, n145,
    n150, n155, n160, n165, n170, n175, n180, n185, n190, n195, n200, n205,
    n210, n215, n220, n225, n230, n234;
  INVX1    g000(.A(\counter[4] ), .Y(new_n149));
  OR4X1    g001(.A(\counter[7] ), .B(\counter[6] ), .C(\counter[5] ), .D(new_n149), .Y(new_n150_1));
  OR4X1    g002(.A(\counter[3] ), .B(\counter[2] ), .C(\counter[1] ), .D(\counter[0] ), .Y(new_n151));
  OR4X1    g003(.A(\counter[15] ), .B(\counter[14] ), .C(\counter[13] ), .D(\counter[12] ), .Y(new_n152));
  OR4X1    g004(.A(\counter[11] ), .B(\counter[10] ), .C(\counter[9] ), .D(\counter[8] ), .Y(new_n153));
  NOR4X1   g005(.A(new_n153), .B(new_n152), .C(new_n151), .D(new_n150_1), .Y(new_n154));
  NOR3X1   g006(.A(new_n154), .B(\counter[0] ), .C(rst), .Y(n70));
  INVX1    g007(.A(\counter[1] ), .Y(new_n156));
  XOR2X1   g008(.A(new_n156), .B(\counter[0] ), .Y(new_n157));
  NOR3X1   g009(.A(new_n157), .B(new_n154), .C(rst), .Y(n75));
  NAND2X1  g010(.A(\counter[1] ), .B(\counter[0] ), .Y(new_n159));
  XOR2X1   g011(.A(new_n159), .B(\counter[2] ), .Y(new_n160_1));
  NOR3X1   g012(.A(new_n160_1), .B(new_n154), .C(rst), .Y(n80));
  NAND3X1  g013(.A(\counter[2] ), .B(\counter[1] ), .C(\counter[0] ), .Y(new_n162));
  XOR2X1   g014(.A(new_n162), .B(\counter[3] ), .Y(new_n163));
  NOR3X1   g015(.A(new_n163), .B(new_n154), .C(rst), .Y(n85));
  NAND4X1  g016(.A(\counter[3] ), .B(\counter[2] ), .C(\counter[1] ), .D(\counter[0] ), .Y(new_n165_1));
  XOR2X1   g017(.A(new_n165_1), .B(\counter[4] ), .Y(new_n166));
  NOR3X1   g018(.A(new_n166), .B(new_n154), .C(rst), .Y(n90));
  INVX1    g019(.A(\counter[5] ), .Y(new_n168));
  NOR2X1   g020(.A(new_n165_1), .B(new_n149), .Y(new_n169));
  XOR2X1   g021(.A(new_n169), .B(new_n168), .Y(new_n170_1));
  NOR3X1   g022(.A(new_n170_1), .B(new_n154), .C(rst), .Y(n95));
  INVX1    g023(.A(\counter[6] ), .Y(new_n172));
  NOR3X1   g024(.A(new_n165_1), .B(new_n168), .C(new_n149), .Y(new_n173));
  XOR2X1   g025(.A(new_n173), .B(new_n172), .Y(new_n174));
  NOR3X1   g026(.A(new_n174), .B(new_n154), .C(rst), .Y(n100));
  INVX1    g027(.A(\counter[7] ), .Y(new_n176));
  NOR4X1   g028(.A(new_n165_1), .B(new_n172), .C(new_n168), .D(new_n149), .Y(new_n177));
  XOR2X1   g029(.A(new_n177), .B(new_n176), .Y(new_n178));
  NOR3X1   g030(.A(new_n178), .B(new_n154), .C(rst), .Y(n105));
  INVX1    g031(.A(\counter[8] ), .Y(new_n180_1));
  NAND4X1  g032(.A(\counter[7] ), .B(\counter[6] ), .C(\counter[5] ), .D(\counter[4] ), .Y(new_n181));
  NOR2X1   g033(.A(new_n181), .B(new_n165_1), .Y(new_n182));
  XOR2X1   g034(.A(new_n182), .B(new_n180_1), .Y(new_n183));
  NOR3X1   g035(.A(new_n183), .B(new_n154), .C(rst), .Y(n110));
  INVX1    g036(.A(\counter[9] ), .Y(new_n185_1));
  NOR3X1   g037(.A(new_n181), .B(new_n165_1), .C(new_n180_1), .Y(new_n186));
  XOR2X1   g038(.A(new_n186), .B(new_n185_1), .Y(new_n187));
  NOR3X1   g039(.A(new_n187), .B(new_n154), .C(rst), .Y(n115));
  INVX1    g040(.A(\counter[10] ), .Y(new_n189));
  NOR4X1   g041(.A(new_n181), .B(new_n165_1), .C(new_n185_1), .D(new_n180_1), .Y(new_n190_1));
  XOR2X1   g042(.A(new_n190_1), .B(new_n189), .Y(new_n191));
  NOR3X1   g043(.A(new_n191), .B(new_n154), .C(rst), .Y(n120));
  INVX1    g044(.A(\counter[11] ), .Y(new_n193));
  AND2X1   g045(.A(new_n190_1), .B(\counter[10] ), .Y(new_n194));
  XOR2X1   g046(.A(new_n194), .B(new_n193), .Y(new_n195_1));
  NOR3X1   g047(.A(new_n195_1), .B(new_n154), .C(rst), .Y(n125));
  INVX1    g048(.A(\counter[12] ), .Y(new_n197));
  NAND4X1  g049(.A(\counter[11] ), .B(\counter[10] ), .C(\counter[9] ), .D(\counter[8] ), .Y(new_n198));
  NOR3X1   g050(.A(new_n198), .B(new_n181), .C(new_n165_1), .Y(new_n199));
  XOR2X1   g051(.A(new_n199), .B(new_n197), .Y(new_n200_1));
  NOR3X1   g052(.A(new_n200_1), .B(new_n154), .C(rst), .Y(n130));
  INVX1    g053(.A(\counter[13] ), .Y(new_n202));
  NOR4X1   g054(.A(new_n198), .B(new_n181), .C(new_n165_1), .D(new_n197), .Y(new_n203));
  XOR2X1   g055(.A(new_n203), .B(new_n202), .Y(new_n204));
  NOR3X1   g056(.A(new_n204), .B(new_n154), .C(rst), .Y(n135));
  INVX1    g057(.A(\counter[14] ), .Y(new_n206));
  NAND2X1  g058(.A(\counter[13] ), .B(\counter[12] ), .Y(new_n207));
  NOR4X1   g059(.A(new_n207), .B(new_n198), .C(new_n181), .D(new_n165_1), .Y(new_n208));
  XOR2X1   g060(.A(new_n208), .B(new_n206), .Y(new_n209));
  NOR3X1   g061(.A(new_n209), .B(new_n154), .C(rst), .Y(n140));
  NAND2X1  g062(.A(new_n208), .B(\counter[14] ), .Y(new_n211));
  XOR2X1   g063(.A(new_n211), .B(\counter[15] ), .Y(new_n212));
  NOR3X1   g064(.A(new_n212), .B(new_n154), .C(rst), .Y(n145));
  INVX1    g065(.A(rst), .Y(new_n214));
  MX2X1    g066(.A(\threshold[0] ), .B(\pwm_in[0] ), .S0(new_n154), .Y(new_n215_1));
  AND2X1   g067(.A(new_n215_1), .B(new_n214), .Y(n150));
  MX2X1    g068(.A(\threshold[1] ), .B(\pwm_in[1] ), .S0(new_n154), .Y(new_n217));
  AND2X1   g069(.A(new_n217), .B(new_n214), .Y(n155));
  MX2X1    g070(.A(\threshold[2] ), .B(\pwm_in[2] ), .S0(new_n154), .Y(new_n219));
  AND2X1   g071(.A(new_n219), .B(new_n214), .Y(n160));
  MX2X1    g072(.A(\threshold[3] ), .B(\pwm_in[3] ), .S0(new_n154), .Y(new_n221));
  AND2X1   g073(.A(new_n221), .B(new_n214), .Y(n165));
  MX2X1    g074(.A(\threshold[4] ), .B(\pwm_in[4] ), .S0(new_n154), .Y(new_n223));
  AND2X1   g075(.A(new_n223), .B(new_n214), .Y(n170));
  MX2X1    g076(.A(\threshold[5] ), .B(\pwm_in[5] ), .S0(new_n154), .Y(new_n225_1));
  AND2X1   g077(.A(new_n225_1), .B(new_n214), .Y(n175));
  MX2X1    g078(.A(\threshold[6] ), .B(\pwm_in[6] ), .S0(new_n154), .Y(new_n227));
  AND2X1   g079(.A(new_n227), .B(new_n214), .Y(n180));
  MX2X1    g080(.A(\threshold[7] ), .B(\pwm_in[7] ), .S0(new_n154), .Y(new_n229));
  AND2X1   g081(.A(new_n229), .B(new_n214), .Y(n185));
  MX2X1    g082(.A(\threshold[8] ), .B(\pwm_in[8] ), .S0(new_n154), .Y(new_n231));
  AND2X1   g083(.A(new_n231), .B(new_n214), .Y(n190));
  MX2X1    g084(.A(\threshold[9] ), .B(\pwm_in[9] ), .S0(new_n154), .Y(new_n233));
  AND2X1   g085(.A(new_n233), .B(new_n214), .Y(n195));
  MX2X1    g086(.A(\threshold[10] ), .B(\pwm_in[10] ), .S0(new_n154), .Y(new_n235));
  AND2X1   g087(.A(new_n235), .B(new_n214), .Y(n200));
  MX2X1    g088(.A(\threshold[11] ), .B(\pwm_in[11] ), .S0(new_n154), .Y(new_n237));
  AND2X1   g089(.A(new_n237), .B(new_n214), .Y(n205));
  MX2X1    g090(.A(\threshold[12] ), .B(\pwm_in[12] ), .S0(new_n154), .Y(new_n239));
  AND2X1   g091(.A(new_n239), .B(new_n214), .Y(n210));
  MX2X1    g092(.A(\threshold[13] ), .B(\pwm_in[13] ), .S0(new_n154), .Y(new_n241));
  AND2X1   g093(.A(new_n241), .B(new_n214), .Y(n215));
  MX2X1    g094(.A(\threshold[14] ), .B(\pwm_in[14] ), .S0(new_n154), .Y(new_n243));
  AND2X1   g095(.A(new_n243), .B(new_n214), .Y(n220));
  MX2X1    g096(.A(\threshold[15] ), .B(\pwm_in[15] ), .S0(new_n154), .Y(new_n245));
  AND2X1   g097(.A(new_n245), .B(new_n214), .Y(n225));
  XOR2X1   g098(.A(\threshold[15] ), .B(\counter[15] ), .Y(new_n247));
  XOR2X1   g099(.A(\threshold[14] ), .B(\counter[14] ), .Y(new_n248));
  XOR2X1   g100(.A(\threshold[13] ), .B(\counter[13] ), .Y(new_n249));
  XOR2X1   g101(.A(\threshold[12] ), .B(\counter[12] ), .Y(new_n250));
  NOR4X1   g102(.A(new_n250), .B(new_n249), .C(new_n248), .D(new_n247), .Y(new_n251));
  XOR2X1   g103(.A(\threshold[11] ), .B(\counter[11] ), .Y(new_n252));
  XOR2X1   g104(.A(\threshold[10] ), .B(\counter[10] ), .Y(new_n253));
  XOR2X1   g105(.A(\threshold[9] ), .B(\counter[9] ), .Y(new_n254));
  XOR2X1   g106(.A(\threshold[8] ), .B(\counter[8] ), .Y(new_n255));
  NOR4X1   g107(.A(new_n255), .B(new_n254), .C(new_n253), .D(new_n252), .Y(new_n256));
  AND2X1   g108(.A(new_n256), .B(new_n251), .Y(new_n257));
  XOR2X1   g109(.A(\threshold[7] ), .B(\counter[7] ), .Y(new_n258));
  XOR2X1   g110(.A(\threshold[6] ), .B(\counter[6] ), .Y(new_n259));
  XOR2X1   g111(.A(\threshold[5] ), .B(\counter[5] ), .Y(new_n260));
  XOR2X1   g112(.A(\threshold[4] ), .B(\counter[4] ), .Y(new_n261));
  OR4X1    g113(.A(new_n261), .B(new_n260), .C(new_n259), .D(new_n258), .Y(new_n262));
  XOR2X1   g114(.A(\threshold[3] ), .B(\counter[3] ), .Y(new_n263));
  XOR2X1   g115(.A(\threshold[2] ), .B(\counter[2] ), .Y(new_n264));
  NOR2X1   g116(.A(new_n264), .B(new_n263), .Y(new_n265));
  AND2X1   g117(.A(\threshold[1] ), .B(new_n156), .Y(new_n266));
  INVX1    g118(.A(\threshold[0] ), .Y(new_n267));
  XOR2X1   g119(.A(\threshold[1] ), .B(\counter[1] ), .Y(new_n268));
  AOI21X1  g120(.A0(new_n267), .A1(\counter[0] ), .B0(new_n268), .Y(new_n269));
  OAI21X1  g121(.A0(new_n269), .A1(new_n266), .B0(new_n265), .Y(new_n270));
  INVX1    g122(.A(\counter[3] ), .Y(new_n271));
  INVX1    g123(.A(\threshold[2] ), .Y(new_n272));
  NOR3X1   g124(.A(new_n263), .B(new_n272), .C(\counter[2] ), .Y(new_n273));
  AOI21X1  g125(.A0(\threshold[3] ), .A1(new_n271), .B0(new_n273), .Y(new_n274));
  AOI21X1  g126(.A0(new_n274), .A1(new_n270), .B0(new_n262), .Y(new_n275));
  OR2X1    g127(.A(new_n259), .B(new_n258), .Y(new_n276));
  INVX1    g128(.A(\threshold[4] ), .Y(new_n277));
  NOR3X1   g129(.A(new_n260), .B(new_n277), .C(\counter[4] ), .Y(new_n278));
  AOI21X1  g130(.A0(\threshold[5] ), .A1(new_n168), .B0(new_n278), .Y(new_n279));
  INVX1    g131(.A(\threshold[6] ), .Y(new_n280));
  NOR3X1   g132(.A(new_n258), .B(new_n280), .C(\counter[6] ), .Y(new_n281));
  AOI21X1  g133(.A0(\threshold[7] ), .A1(new_n176), .B0(new_n281), .Y(new_n282));
  OAI21X1  g134(.A0(new_n279), .A1(new_n276), .B0(new_n282), .Y(new_n283));
  OAI21X1  g135(.A0(new_n283), .A1(new_n275), .B0(new_n257), .Y(new_n284));
  OR2X1    g136(.A(new_n253), .B(new_n252), .Y(new_n285));
  INVX1    g137(.A(\threshold[8] ), .Y(new_n286));
  NOR3X1   g138(.A(new_n254), .B(new_n286), .C(\counter[8] ), .Y(new_n287));
  AOI21X1  g139(.A0(\threshold[9] ), .A1(new_n185_1), .B0(new_n287), .Y(new_n288));
  INVX1    g140(.A(\threshold[10] ), .Y(new_n289));
  NOR3X1   g141(.A(new_n252), .B(new_n289), .C(\counter[10] ), .Y(new_n290));
  AOI21X1  g142(.A0(\threshold[11] ), .A1(new_n193), .B0(new_n290), .Y(new_n291));
  OAI21X1  g143(.A0(new_n288), .A1(new_n285), .B0(new_n291), .Y(new_n292));
  OR2X1    g144(.A(new_n248), .B(new_n247), .Y(new_n293));
  INVX1    g145(.A(\threshold[12] ), .Y(new_n294));
  NOR3X1   g146(.A(new_n249), .B(new_n294), .C(\counter[12] ), .Y(new_n295));
  AOI21X1  g147(.A0(\threshold[13] ), .A1(new_n202), .B0(new_n295), .Y(new_n296));
  INVX1    g148(.A(\counter[15] ), .Y(new_n297));
  INVX1    g149(.A(\threshold[14] ), .Y(new_n298));
  NOR3X1   g150(.A(new_n247), .B(new_n298), .C(\counter[14] ), .Y(new_n299));
  AOI21X1  g151(.A0(\threshold[15] ), .A1(new_n297), .B0(new_n299), .Y(new_n300));
  OAI21X1  g152(.A0(new_n296), .A1(new_n293), .B0(new_n300), .Y(new_n301));
  AOI21X1  g153(.A0(new_n292), .A1(new_n251), .B0(new_n301), .Y(new_n302));
  XOR2X1   g154(.A(\threshold[0] ), .B(\counter[0] ), .Y(new_n303));
  OR4X1    g155(.A(new_n303), .B(new_n268), .C(new_n264), .D(new_n263), .Y(new_n304));
  NOR2X1   g156(.A(new_n304), .B(new_n262), .Y(new_n305));
  AOI22X1  g157(.A0(new_n305), .A1(new_n257), .B0(new_n302), .B1(new_n284), .Y(new_n306));
  NAND2X1  g158(.A(new_n306), .B(new_n214), .Y(n230));
  AND2X1   g159(.A(new_n306), .B(new_n214), .Y(n234));
  ZERO     g160(.Y(\pwm_out[0] ));
  ZERO     g161(.Y(\pwm_out[1] ));
  ZERO     g162(.Y(\pwm_out[2] ));
  ONE      g163(.Y(\pwm_out[6] ));
  ONE      g164(.Y(\pwm_out[7] ));
  ONE      g165(.Y(\pwm_out[8] ));
  ONE      g166(.Y(\pwm_out[9] ));
  ZERO     g167(.Y(\pwm_out[11] ));
  ZERO     g168(.Y(\pwm_out[12] ));
  ZERO     g169(.Y(\pwm_out[13] ));
  ZERO     g170(.Y(\pwm_out[14] ));
  ZERO     g171(.Y(\pwm_out[15] ));
  BUFX1    g172(.A(\pwm_out[5] ), .Y(\pwm_out[3] ));
  BUFX1    g173(.A(\pwm_out[10] ), .Y(\pwm_out[4] ));
  always @ (posedge clock) begin
    \counter[0]  <= n70;
    \counter[1]  <= n75;
    \counter[2]  <= n80;
    \counter[3]  <= n85;
    \counter[4]  <= n90;
    \counter[5]  <= n95;
    \counter[6]  <= n100;
    \counter[7]  <= n105;
    \counter[8]  <= n110;
    \counter[9]  <= n115;
    \counter[10]  <= n120;
    \counter[11]  <= n125;
    \counter[12]  <= n130;
    \counter[13]  <= n135;
    \counter[14]  <= n140;
    \counter[15]  <= n145;
    \threshold[0]  <= n150;
    \threshold[1]  <= n155;
    \threshold[2]  <= n160;
    \threshold[3]  <= n165;
    \threshold[4]  <= n170;
    \threshold[5]  <= n175;
    \threshold[6]  <= n180;
    \threshold[7]  <= n185;
    \threshold[8]  <= n190;
    \threshold[9]  <= n195;
    \threshold[10]  <= n200;
    \threshold[11]  <= n205;
    \threshold[12]  <= n210;
    \threshold[13]  <= n215;
    \threshold[14]  <= n220;
    \threshold[15]  <= n225;
    \pwm_out[5]  <= n230;
    \pwm_out[10]  <= n234;
  end
  initial begin
    \counter[0]  <= 1'b0;
    \counter[1]  <= 1'b0;
    \counter[2]  <= 1'b0;
    \counter[3]  <= 1'b0;
    \counter[4]  <= 1'b0;
    \counter[5]  <= 1'b0;
    \counter[6]  <= 1'b0;
    \counter[7]  <= 1'b0;
    \counter[8]  <= 1'b0;
    \counter[9]  <= 1'b0;
    \counter[10]  <= 1'b0;
    \counter[11]  <= 1'b0;
    \counter[12]  <= 1'b0;
    \counter[13]  <= 1'b0;
    \counter[14]  <= 1'b0;
    \counter[15]  <= 1'b0;
    \threshold[0]  <= 1'b0;
    \threshold[1]  <= 1'b0;
    \threshold[2]  <= 1'b0;
    \threshold[3]  <= 1'b0;
    \threshold[4]  <= 1'b0;
    \threshold[5]  <= 1'b0;
    \threshold[6]  <= 1'b0;
    \threshold[7]  <= 1'b0;
    \threshold[8]  <= 1'b0;
    \threshold[9]  <= 1'b0;
    \threshold[10]  <= 1'b0;
    \threshold[11]  <= 1'b0;
    \threshold[12]  <= 1'b0;
    \threshold[13]  <= 1'b0;
    \threshold[14]  <= 1'b0;
    \threshold[15]  <= 1'b0;
  end
endmodule


