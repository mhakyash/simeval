// Benchmark "m26_rx_ch" written by ABC on Wed Jun 26 15:21:58 2024

module m26_rx_ch ( clock, 
    RST, CLK_RX, MKD_RX, DATA_RX,
    WRITE, FRAME_START, \DATA[0] , \DATA[1] , \DATA[2] , \DATA[3] ,
    \DATA[4] , \DATA[5] , \DATA[6] , \DATA[7] , \DATA[8] , \DATA[9] ,
    \DATA[10] , \DATA[11] , \DATA[12] , \DATA[13] , \DATA[14] , \DATA[15]   );
  input  clock;
  input  RST, CLK_RX, MKD_RX, DATA_RX;
  output WRITE, FRAME_START, \DATA[0] , \DATA[1] , \DATA[2] , \DATA[3] ,
    \DATA[4] , \DATA[5] , \DATA[6] , \DATA[7] , \DATA[8] , \DATA[9] ,
    \DATA[10] , \DATA[11] , \DATA[12] , \DATA[13] , \DATA[14] , \DATA[15] ;
  reg \data_len[0] , \data_len[1] , \data_len[2] , \data_len[3] ,
    \data_len[4] , \data_len[5] , \data_len[6] , \data_len[7] ,
    \data_len[8] , \data_len[9] , \data_len[10] , \data_len[11] ,
    \data_len[12] , \data_len[13] , \data_len[14] , \data_len[15] ,
    \data_cnt[0] , \data_cnt[1] , \data_cnt[2] , \data_cnt[3] ,
    \data_cnt[4] , \data_cnt[5] , \data_cnt[6] , \data_cnt[7] ,
    \data_cnt[8] , \data_cnt[9] , \data_cnt[10] , \data_cnt[11] ,
    \data_cnt[12] , \data_cnt[13] , \data_cnt[14] , \data_cnt[15] ,
    \data_sr[0] , \data_sr[1] , \data_sr[2] , \data_sr[3] , \data_sr[4] ,
    \data_sr[5] , \data_sr[6] , \data_sr[7] , \data_sr[8] , \data_sr[9] ,
    \data_sr[10] , \data_sr[11] , \data_sr[12] , \data_sr[13] ,
    \data_sr[14] , \data_sr[15] , \mkd_sr[0] , \mkd_sr[1] , \mkd_sr[2] ,
    \mkd_sr[3] , \mkd_sr[4] , \mkd_sr[5] , \mkd_sr[6] , \mkd_sr[7] ,
    \mkd_sr[8] , \mkd_sr[9] , \mkd_sr[10] , \mkd_sr[11] , \mkd_sr[12] ,
    \mkd_sr[13] , \mkd_sr[14] , \mkd_sr[15] ;
  wire new_n215_1, new_n216, new_n217, new_n218, new_n219_1, new_n220,
    new_n221, new_n222, new_n223_1, new_n224, new_n225, new_n226,
    new_n227_1, new_n228, new_n229, new_n230, new_n231_1, new_n232,
    new_n233, new_n234, new_n235_1, new_n236, new_n237, new_n238,
    new_n239_1, new_n240, new_n241, new_n242, new_n243_1, new_n244,
    new_n245, new_n246, new_n247_1, new_n248, new_n249, new_n250,
    new_n251_1, new_n252, new_n253, new_n254, new_n255_1, new_n256,
    new_n257, new_n258, new_n259_1, new_n260, new_n261, new_n262,
    new_n263_1, new_n264, new_n265, new_n266_1, new_n267, new_n268,
    new_n269_1, new_n270, new_n271, new_n272, new_n273_1, new_n274,
    new_n275, new_n276, new_n277_1, new_n278, new_n279, new_n280,
    new_n281_1, new_n282, new_n283, new_n284, new_n285_1, new_n286,
    new_n287, new_n288, new_n289_1, new_n290, new_n291, new_n292,
    new_n293_1, new_n294, new_n295, new_n296, new_n297_1, new_n298,
    new_n299, new_n300, new_n301_1, new_n302, new_n303, new_n304,
    new_n305_1, new_n306, new_n307, new_n308, new_n309_1, new_n310,
    new_n311, new_n312, new_n313_1, new_n314, new_n315, new_n316,
    new_n317_1, new_n318, new_n320, new_n321_1, new_n322, new_n323,
    new_n325_1, new_n326, new_n328, new_n330, new_n332, new_n334, new_n336,
    new_n338, new_n340, new_n342, new_n344, new_n346, new_n348, new_n350,
    new_n352, new_n354, new_n356, new_n358, new_n359, new_n360, new_n361,
    new_n362, new_n363, new_n365, new_n366, new_n367, new_n369, new_n370,
    new_n371, new_n372, new_n374, new_n375, new_n376, new_n377, new_n379,
    new_n380, new_n382, new_n383, new_n384, new_n385, new_n387, new_n388,
    new_n389, new_n391, new_n392, new_n393, new_n395, new_n396, new_n397,
    new_n398, new_n400, new_n401, new_n402, new_n403, new_n405, new_n406,
    new_n407, new_n408, new_n410, new_n411, new_n412, new_n413, new_n415,
    new_n416, new_n417, new_n418, new_n420, new_n421, new_n422, new_n423,
    new_n425, new_n426, new_n427, new_n429, new_n430, new_n431, n46, n51,
    n56, n61, n66, n71, n76, n81, n86, n91, n96, n101, n106, n111, n116,
    n121, n126, n131, n136, n141, n146, n151, n156, n161, n166, n171, n176,
    n181, n186, n191, n196, n201, n206, n211, n215, n219, n223, n227, n231,
    n235, n239, n243, n247, n251, n255, n259, n263, n266, n269, n273, n277,
    n281, n285, n289, n293, n297, n301, n305, n309, n313, n317, n321, n325,
    n329;
  INVX1    g000(.A(\data_len[2] ), .Y(new_n215_1));
  INVX1    g001(.A(\data_len[3] ), .Y(new_n216));
  NOR2X1   g002(.A(\data_len[1] ), .B(\data_len[0] ), .Y(new_n217));
  NAND4X1  g003(.A(\data_len[7] ), .B(\data_len[6] ), .C(\data_len[5] ), .D(\data_len[4] ), .Y(new_n218));
  OR4X1    g004(.A(new_n218), .B(new_n217), .C(new_n216), .D(new_n215_1), .Y(new_n219_1));
  NAND4X1  g005(.A(\data_len[11] ), .B(\data_len[10] ), .C(\data_len[9] ), .D(\data_len[8] ), .Y(new_n220));
  NAND4X1  g006(.A(\data_len[15] ), .B(\data_len[14] ), .C(\data_len[13] ), .D(\data_len[12] ), .Y(new_n221));
  NOR3X1   g007(.A(new_n221), .B(new_n220), .C(new_n219_1), .Y(new_n222));
  INVX1    g008(.A(\data_len[12] ), .Y(new_n223_1));
  OR4X1    g009(.A(new_n220), .B(new_n219_1), .C(\data_len[13] ), .D(new_n223_1), .Y(new_n224));
  INVX1    g010(.A(\data_len[13] ), .Y(new_n225));
  NAND2X1  g011(.A(\data_len[3] ), .B(\data_len[2] ), .Y(new_n226));
  OR4X1    g012(.A(new_n220), .B(new_n218), .C(new_n226), .D(new_n217), .Y(new_n227_1));
  OR4X1    g013(.A(new_n227_1), .B(\data_len[14] ), .C(new_n225), .D(new_n223_1), .Y(new_n228));
  OAI21X1  g014(.A0(new_n227_1), .A1(new_n223_1), .B0(\data_len[13] ), .Y(new_n229));
  NAND3X1  g015(.A(new_n229), .B(new_n228), .C(new_n224), .Y(new_n230));
  INVX1    g016(.A(\data_len[14] ), .Y(new_n231_1));
  NAND2X1  g017(.A(\data_len[13] ), .B(\data_len[12] ), .Y(new_n232));
  NOR4X1   g018(.A(new_n227_1), .B(new_n232), .C(\data_len[15] ), .D(new_n231_1), .Y(new_n233));
  OR4X1    g019(.A(new_n227_1), .B(new_n231_1), .C(new_n225), .D(new_n223_1), .Y(new_n234));
  AND2X1   g020(.A(new_n234), .B(\data_len[15] ), .Y(new_n235_1));
  OAI21X1  g021(.A0(new_n227_1), .A1(new_n232), .B0(\data_len[14] ), .Y(new_n236));
  XOR2X1   g022(.A(new_n227_1), .B(\data_len[12] ), .Y(new_n237));
  NAND2X1  g023(.A(new_n237), .B(new_n236), .Y(new_n238));
  NOR4X1   g024(.A(new_n238), .B(new_n235_1), .C(new_n233), .D(new_n230), .Y(new_n239_1));
  INVX1    g025(.A(\data_len[8] ), .Y(new_n240));
  INVX1    g026(.A(\data_len[9] ), .Y(new_n241));
  INVX1    g027(.A(\data_len[10] ), .Y(new_n242));
  NOR4X1   g028(.A(new_n219_1), .B(new_n242), .C(new_n241), .D(new_n240), .Y(new_n243_1));
  XOR2X1   g029(.A(new_n243_1), .B(\data_len[11] ), .Y(new_n244));
  XOR2X1   g030(.A(new_n244), .B(\data_cnt[15] ), .Y(new_n245));
  NOR3X1   g031(.A(new_n219_1), .B(new_n241), .C(new_n240), .Y(new_n246));
  XOR2X1   g032(.A(new_n246), .B(\data_len[10] ), .Y(new_n247_1));
  XOR2X1   g033(.A(new_n247_1), .B(\data_cnt[14] ), .Y(new_n248));
  NOR4X1   g034(.A(new_n218), .B(new_n226), .C(new_n217), .D(new_n240), .Y(new_n249));
  XOR2X1   g035(.A(new_n249), .B(new_n241), .Y(new_n250));
  AND2X1   g036(.A(new_n250), .B(\data_cnt[13] ), .Y(new_n251_1));
  XOR2X1   g037(.A(new_n250), .B(\data_cnt[13] ), .Y(new_n252));
  XOR2X1   g038(.A(new_n219_1), .B(\data_len[8] ), .Y(new_n253));
  AND2X1   g039(.A(new_n253), .B(\data_cnt[12] ), .Y(new_n254));
  AOI21X1  g040(.A0(new_n254), .A1(new_n252), .B0(new_n251_1), .Y(new_n255_1));
  NOR3X1   g041(.A(new_n255_1), .B(new_n248), .C(new_n245), .Y(new_n256));
  INVX1    g042(.A(\data_cnt[15] ), .Y(new_n257));
  OR2X1    g043(.A(new_n244), .B(new_n257), .Y(new_n258));
  INVX1    g044(.A(\data_cnt[14] ), .Y(new_n259_1));
  OR2X1    g045(.A(new_n247_1), .B(new_n259_1), .Y(new_n260));
  OAI21X1  g046(.A0(new_n260), .A1(new_n245), .B0(new_n258), .Y(new_n261));
  OAI21X1  g047(.A0(new_n261), .A1(new_n256), .B0(new_n239_1), .Y(new_n262));
  OAI21X1  g048(.A0(\data_len[1] ), .A1(\data_len[0] ), .B0(\data_len[2] ), .Y(new_n263_1));
  XOR2X1   g049(.A(new_n263_1), .B(\data_len[3] ), .Y(new_n264));
  XOR2X1   g050(.A(new_n264), .B(\data_cnt[7] ), .Y(new_n265));
  XOR2X1   g051(.A(new_n217), .B(new_n215_1), .Y(new_n266_1));
  XOR2X1   g052(.A(new_n266_1), .B(\data_cnt[6] ), .Y(new_n267));
  XOR2X1   g053(.A(\data_len[1] ), .B(\data_len[0] ), .Y(new_n268));
  NAND2X1  g054(.A(new_n268), .B(\data_cnt[5] ), .Y(new_n269_1));
  XOR2X1   g055(.A(new_n268), .B(\data_cnt[5] ), .Y(new_n270));
  OAI21X1  g056(.A0(\data_cnt[4] ), .A1(\data_len[0] ), .B0(new_n270), .Y(new_n271));
  AOI21X1  g057(.A0(new_n271), .A1(new_n269_1), .B0(new_n267), .Y(new_n272));
  INVX1    g058(.A(\data_cnt[7] ), .Y(new_n273_1));
  XOR2X1   g059(.A(new_n264), .B(new_n273_1), .Y(new_n274));
  NAND2X1  g060(.A(new_n264), .B(\data_cnt[7] ), .Y(new_n275));
  INVX1    g061(.A(\data_cnt[6] ), .Y(new_n276));
  OR2X1    g062(.A(new_n266_1), .B(new_n276), .Y(new_n277_1));
  OAI21X1  g063(.A0(new_n277_1), .A1(new_n274), .B0(new_n275), .Y(new_n278));
  AOI21X1  g064(.A0(new_n272), .A1(new_n265), .B0(new_n278), .Y(new_n279));
  INVX1    g065(.A(\data_len[6] ), .Y(new_n280));
  NAND2X1  g066(.A(\data_len[5] ), .B(\data_len[4] ), .Y(new_n281_1));
  OR4X1    g067(.A(new_n281_1), .B(new_n226), .C(new_n217), .D(new_n280), .Y(new_n282));
  XOR2X1   g068(.A(new_n282), .B(\data_len[7] ), .Y(new_n283));
  XOR2X1   g069(.A(new_n283), .B(\data_cnt[11] ), .Y(new_n284));
  NOR3X1   g070(.A(new_n281_1), .B(new_n226), .C(new_n217), .Y(new_n285_1));
  XOR2X1   g071(.A(new_n285_1), .B(new_n280), .Y(new_n286));
  XOR2X1   g072(.A(new_n286), .B(\data_cnt[10] ), .Y(new_n287));
  INVX1    g073(.A(\data_len[4] ), .Y(new_n288));
  OR4X1    g074(.A(new_n217), .B(new_n288), .C(new_n216), .D(new_n215_1), .Y(new_n289_1));
  XOR2X1   g075(.A(new_n289_1), .B(\data_len[5] ), .Y(new_n290));
  XOR2X1   g076(.A(new_n290), .B(\data_cnt[9] ), .Y(new_n291));
  NOR2X1   g077(.A(new_n226), .B(new_n217), .Y(new_n292));
  XOR2X1   g078(.A(new_n292), .B(new_n288), .Y(new_n293_1));
  XOR2X1   g079(.A(new_n293_1), .B(\data_cnt[8] ), .Y(new_n294));
  NAND4X1  g080(.A(new_n294), .B(new_n291), .C(new_n287), .D(new_n284), .Y(new_n295));
  NOR2X1   g081(.A(new_n295), .B(new_n279), .Y(new_n296));
  NAND2X1  g082(.A(new_n287), .B(new_n284), .Y(new_n297_1));
  AND2X1   g083(.A(new_n290), .B(\data_cnt[9] ), .Y(new_n298));
  AND2X1   g084(.A(new_n293_1), .B(\data_cnt[8] ), .Y(new_n299));
  AOI21X1  g085(.A0(new_n299), .A1(new_n291), .B0(new_n298), .Y(new_n300));
  AND2X1   g086(.A(new_n283), .B(\data_cnt[11] ), .Y(new_n301_1));
  AND2X1   g087(.A(new_n286), .B(\data_cnt[10] ), .Y(new_n302));
  AOI21X1  g088(.A0(new_n302), .A1(new_n284), .B0(new_n301_1), .Y(new_n303));
  OAI21X1  g089(.A0(new_n300), .A1(new_n297_1), .B0(new_n303), .Y(new_n304));
  OR4X1    g090(.A(new_n238), .B(new_n235_1), .C(new_n233), .D(new_n230), .Y(new_n305_1));
  XOR2X1   g091(.A(new_n253), .B(\data_cnt[12] ), .Y(new_n306));
  NAND2X1  g092(.A(new_n306), .B(new_n252), .Y(new_n307));
  NOR4X1   g093(.A(new_n307), .B(new_n248), .C(new_n245), .D(new_n305_1), .Y(new_n308));
  OAI21X1  g094(.A0(new_n304), .A1(new_n296), .B0(new_n308), .Y(new_n309_1));
  AOI21X1  g095(.A0(new_n309_1), .A1(new_n262), .B0(new_n222), .Y(new_n310));
  NAND4X1  g096(.A(\data_cnt[3] ), .B(\data_cnt[2] ), .C(\data_cnt[1] ), .D(\data_cnt[0] ), .Y(new_n311));
  OR4X1    g097(.A(\data_cnt[15] ), .B(\data_cnt[14] ), .C(\data_cnt[13] ), .D(\data_cnt[12] ), .Y(new_n312));
  OR4X1    g098(.A(\data_cnt[11] ), .B(\data_cnt[10] ), .C(\data_cnt[9] ), .D(\data_cnt[8] ), .Y(new_n313_1));
  NAND4X1  g099(.A(\data_cnt[3] ), .B(\data_cnt[2] ), .C(\data_cnt[1] ), .D(\data_cnt[0] ), .Y(new_n314));
  INVX1    g100(.A(\data_cnt[4] ), .Y(new_n315));
  OR4X1    g101(.A(\data_cnt[7] ), .B(\data_cnt[6] ), .C(\data_cnt[5] ), .D(new_n315), .Y(new_n316));
  OR4X1    g102(.A(new_n316), .B(new_n314), .C(new_n313_1), .D(new_n312), .Y(new_n317_1));
  NAND4X1  g103(.A(\mkd_sr[15] ), .B(\mkd_sr[14] ), .C(\mkd_sr[13] ), .D(\mkd_sr[12] ), .Y(new_n318));
  INVX1    g104(.A(new_n318), .Y(FRAME_START));
  OR4X1    g105(.A(\data_cnt[7] ), .B(\data_cnt[6] ), .C(\data_cnt[5] ), .D(\data_cnt[4] ), .Y(new_n320));
  NOR4X1   g106(.A(new_n320), .B(new_n314), .C(new_n313_1), .D(new_n312), .Y(new_n321_1));
  NOR2X1   g107(.A(new_n321_1), .B(FRAME_START), .Y(new_n322));
  AND2X1   g108(.A(new_n322), .B(new_n317_1), .Y(new_n323));
  OAI21X1  g109(.A0(new_n311), .A1(new_n310), .B0(new_n323), .Y(WRITE));
  INVX1    g110(.A(RST), .Y(new_n325_1));
  MX2X1    g111(.A(\data_sr[0] ), .B(\data_len[0] ), .S0(new_n317_1), .Y(new_n326));
  AND2X1   g112(.A(new_n326), .B(new_n325_1), .Y(n46));
  MX2X1    g113(.A(\data_sr[1] ), .B(\data_len[1] ), .S0(new_n317_1), .Y(new_n328));
  AND2X1   g114(.A(new_n328), .B(new_n325_1), .Y(n51));
  MX2X1    g115(.A(\data_sr[2] ), .B(\data_len[2] ), .S0(new_n317_1), .Y(new_n330));
  AND2X1   g116(.A(new_n330), .B(new_n325_1), .Y(n56));
  MX2X1    g117(.A(\data_sr[3] ), .B(\data_len[3] ), .S0(new_n317_1), .Y(new_n332));
  AND2X1   g118(.A(new_n332), .B(new_n325_1), .Y(n61));
  MX2X1    g119(.A(\data_sr[4] ), .B(\data_len[4] ), .S0(new_n317_1), .Y(new_n334));
  AND2X1   g120(.A(new_n334), .B(new_n325_1), .Y(n66));
  MX2X1    g121(.A(\data_sr[5] ), .B(\data_len[5] ), .S0(new_n317_1), .Y(new_n336));
  AND2X1   g122(.A(new_n336), .B(new_n325_1), .Y(n71));
  MX2X1    g123(.A(\data_sr[6] ), .B(\data_len[6] ), .S0(new_n317_1), .Y(new_n338));
  AND2X1   g124(.A(new_n338), .B(new_n325_1), .Y(n76));
  MX2X1    g125(.A(\data_sr[7] ), .B(\data_len[7] ), .S0(new_n317_1), .Y(new_n340));
  AND2X1   g126(.A(new_n340), .B(new_n325_1), .Y(n81));
  MX2X1    g127(.A(\data_sr[8] ), .B(\data_len[8] ), .S0(new_n317_1), .Y(new_n342));
  AND2X1   g128(.A(new_n342), .B(new_n325_1), .Y(n86));
  MX2X1    g129(.A(\data_sr[9] ), .B(\data_len[9] ), .S0(new_n317_1), .Y(new_n344));
  AND2X1   g130(.A(new_n344), .B(new_n325_1), .Y(n91));
  MX2X1    g131(.A(\data_sr[10] ), .B(\data_len[10] ), .S0(new_n317_1), .Y(new_n346));
  AND2X1   g132(.A(new_n346), .B(new_n325_1), .Y(n96));
  MX2X1    g133(.A(\data_sr[11] ), .B(\data_len[11] ), .S0(new_n317_1), .Y(new_n348));
  AND2X1   g134(.A(new_n348), .B(new_n325_1), .Y(n101));
  MX2X1    g135(.A(\data_sr[12] ), .B(\data_len[12] ), .S0(new_n317_1), .Y(new_n350));
  AND2X1   g136(.A(new_n350), .B(new_n325_1), .Y(n106));
  MX2X1    g137(.A(\data_sr[13] ), .B(\data_len[13] ), .S0(new_n317_1), .Y(new_n352));
  AND2X1   g138(.A(new_n352), .B(new_n325_1), .Y(n111));
  MX2X1    g139(.A(\data_sr[14] ), .B(\data_len[14] ), .S0(new_n317_1), .Y(new_n354));
  AND2X1   g140(.A(new_n354), .B(new_n325_1), .Y(n116));
  MX2X1    g141(.A(\data_sr[15] ), .B(\data_len[15] ), .S0(new_n317_1), .Y(new_n356));
  AND2X1   g142(.A(new_n356), .B(new_n325_1), .Y(n121));
  NAND4X1  g143(.A(\data_cnt[7] ), .B(\data_cnt[6] ), .C(\data_cnt[5] ), .D(\data_cnt[4] ), .Y(new_n358));
  NAND4X1  g144(.A(\data_cnt[11] ), .B(\data_cnt[10] ), .C(\data_cnt[9] ), .D(\data_cnt[8] ), .Y(new_n359));
  NAND4X1  g145(.A(\data_cnt[15] ), .B(\data_cnt[14] ), .C(\data_cnt[13] ), .D(\data_cnt[12] ), .Y(new_n360));
  NOR4X1   g146(.A(new_n360), .B(new_n359), .C(new_n358), .D(new_n314), .Y(new_n361));
  XOR2X1   g147(.A(new_n361), .B(\data_cnt[0] ), .Y(new_n362));
  NAND2X1  g148(.A(new_n318), .B(new_n325_1), .Y(new_n363));
  OAI21X1  g149(.A0(new_n363), .A1(new_n362), .B0(new_n325_1), .Y(n126));
  INVX1    g150(.A(\data_cnt[1] ), .Y(new_n365));
  XOR2X1   g151(.A(new_n365), .B(\data_cnt[0] ), .Y(new_n366));
  MX2X1    g152(.A(new_n366), .B(new_n365), .S0(new_n361), .Y(new_n367));
  OAI21X1  g153(.A0(new_n367), .A1(new_n363), .B0(new_n325_1), .Y(n131));
  INVX1    g154(.A(\data_cnt[2] ), .Y(new_n369));
  AND2X1   g155(.A(\data_cnt[1] ), .B(\data_cnt[0] ), .Y(new_n370));
  XOR2X1   g156(.A(new_n370), .B(new_n369), .Y(new_n371));
  MX2X1    g157(.A(new_n371), .B(new_n369), .S0(new_n361), .Y(new_n372));
  OAI21X1  g158(.A0(new_n372), .A1(new_n363), .B0(new_n325_1), .Y(n136));
  INVX1    g159(.A(\data_cnt[3] ), .Y(new_n374));
  NAND3X1  g160(.A(\data_cnt[2] ), .B(\data_cnt[1] ), .C(\data_cnt[0] ), .Y(new_n375));
  XOR2X1   g161(.A(new_n375), .B(\data_cnt[3] ), .Y(new_n376));
  MX2X1    g162(.A(new_n376), .B(new_n374), .S0(new_n361), .Y(new_n377));
  OAI21X1  g163(.A0(new_n377), .A1(new_n363), .B0(new_n325_1), .Y(n141));
  XOR2X1   g164(.A(new_n314), .B(\data_cnt[4] ), .Y(new_n379));
  MX2X1    g165(.A(new_n379), .B(new_n315), .S0(new_n361), .Y(new_n380));
  OAI21X1  g166(.A0(new_n380), .A1(new_n363), .B0(new_n325_1), .Y(n146));
  INVX1    g167(.A(\data_cnt[5] ), .Y(new_n382));
  NOR2X1   g168(.A(new_n314), .B(new_n315), .Y(new_n383));
  XOR2X1   g169(.A(new_n383), .B(new_n382), .Y(new_n384));
  MX2X1    g170(.A(new_n384), .B(new_n382), .S0(new_n361), .Y(new_n385));
  OAI21X1  g171(.A0(new_n385), .A1(new_n363), .B0(new_n325_1), .Y(n151));
  NOR3X1   g172(.A(new_n314), .B(new_n382), .C(new_n315), .Y(new_n387));
  XOR2X1   g173(.A(new_n387), .B(new_n276), .Y(new_n388));
  MX2X1    g174(.A(new_n388), .B(new_n276), .S0(new_n361), .Y(new_n389));
  OAI21X1  g175(.A0(new_n389), .A1(new_n363), .B0(new_n325_1), .Y(n156));
  NOR4X1   g176(.A(new_n314), .B(new_n276), .C(new_n382), .D(new_n315), .Y(new_n391));
  XOR2X1   g177(.A(new_n391), .B(new_n273_1), .Y(new_n392));
  MX2X1    g178(.A(new_n392), .B(new_n273_1), .S0(new_n361), .Y(new_n393));
  OAI21X1  g179(.A0(new_n393), .A1(new_n363), .B0(new_n325_1), .Y(n161));
  INVX1    g180(.A(\data_cnt[8] ), .Y(new_n395));
  NOR2X1   g181(.A(new_n358), .B(new_n314), .Y(new_n396));
  XOR2X1   g182(.A(new_n396), .B(new_n395), .Y(new_n397));
  MX2X1    g183(.A(new_n397), .B(new_n395), .S0(new_n361), .Y(new_n398));
  OAI21X1  g184(.A0(new_n398), .A1(new_n363), .B0(new_n325_1), .Y(n166));
  INVX1    g185(.A(\data_cnt[9] ), .Y(new_n400));
  NOR3X1   g186(.A(new_n358), .B(new_n314), .C(new_n395), .Y(new_n401));
  XOR2X1   g187(.A(new_n401), .B(new_n400), .Y(new_n402));
  MX2X1    g188(.A(new_n402), .B(new_n400), .S0(new_n361), .Y(new_n403));
  OAI21X1  g189(.A0(new_n403), .A1(new_n363), .B0(new_n325_1), .Y(n171));
  INVX1    g190(.A(\data_cnt[10] ), .Y(new_n405));
  NOR4X1   g191(.A(new_n358), .B(new_n314), .C(new_n400), .D(new_n395), .Y(new_n406));
  XOR2X1   g192(.A(new_n406), .B(new_n405), .Y(new_n407));
  MX2X1    g193(.A(new_n407), .B(new_n405), .S0(new_n361), .Y(new_n408));
  OAI21X1  g194(.A0(new_n408), .A1(new_n363), .B0(new_n325_1), .Y(n176));
  INVX1    g195(.A(\data_cnt[11] ), .Y(new_n410));
  AND2X1   g196(.A(new_n406), .B(\data_cnt[10] ), .Y(new_n411));
  XOR2X1   g197(.A(new_n411), .B(new_n410), .Y(new_n412));
  MX2X1    g198(.A(new_n412), .B(new_n410), .S0(new_n361), .Y(new_n413));
  OAI21X1  g199(.A0(new_n413), .A1(new_n363), .B0(new_n325_1), .Y(n181));
  INVX1    g200(.A(\data_cnt[12] ), .Y(new_n415));
  NOR3X1   g201(.A(new_n359), .B(new_n358), .C(new_n314), .Y(new_n416));
  XOR2X1   g202(.A(new_n416), .B(new_n415), .Y(new_n417));
  MX2X1    g203(.A(new_n417), .B(new_n415), .S0(new_n361), .Y(new_n418));
  OAI21X1  g204(.A0(new_n418), .A1(new_n363), .B0(new_n325_1), .Y(n186));
  INVX1    g205(.A(\data_cnt[13] ), .Y(new_n420));
  NOR4X1   g206(.A(new_n359), .B(new_n358), .C(new_n314), .D(new_n415), .Y(new_n421));
  XOR2X1   g207(.A(new_n421), .B(new_n420), .Y(new_n422));
  MX2X1    g208(.A(new_n422), .B(new_n420), .S0(new_n361), .Y(new_n423));
  OAI21X1  g209(.A0(new_n423), .A1(new_n363), .B0(new_n325_1), .Y(n191));
  NAND3X1  g210(.A(new_n416), .B(\data_cnt[13] ), .C(\data_cnt[12] ), .Y(new_n425));
  XOR2X1   g211(.A(new_n425), .B(\data_cnt[14] ), .Y(new_n426));
  MX2X1    g212(.A(new_n426), .B(new_n259_1), .S0(new_n361), .Y(new_n427));
  OAI21X1  g213(.A0(new_n427), .A1(new_n363), .B0(new_n325_1), .Y(n196));
  NAND4X1  g214(.A(new_n416), .B(\data_cnt[14] ), .C(\data_cnt[13] ), .D(\data_cnt[12] ), .Y(new_n429));
  XOR2X1   g215(.A(new_n429), .B(\data_cnt[15] ), .Y(new_n430));
  MX2X1    g216(.A(new_n430), .B(new_n257), .S0(new_n361), .Y(new_n431));
  OAI21X1  g217(.A0(new_n431), .A1(new_n363), .B0(new_n325_1), .Y(n201));
  BUFX1    g218(.A(\data_sr[0] ), .Y(\DATA[0] ));
  BUFX1    g219(.A(\data_sr[1] ), .Y(\DATA[1] ));
  BUFX1    g220(.A(\data_sr[2] ), .Y(\DATA[2] ));
  BUFX1    g221(.A(\data_sr[3] ), .Y(\DATA[3] ));
  BUFX1    g222(.A(\data_sr[4] ), .Y(\DATA[4] ));
  BUFX1    g223(.A(\data_sr[5] ), .Y(\DATA[5] ));
  BUFX1    g224(.A(\data_sr[6] ), .Y(\DATA[6] ));
  BUFX1    g225(.A(\data_sr[7] ), .Y(\DATA[7] ));
  BUFX1    g226(.A(\data_sr[8] ), .Y(\DATA[8] ));
  BUFX1    g227(.A(\data_sr[9] ), .Y(\DATA[9] ));
  BUFX1    g228(.A(\data_sr[10] ), .Y(\DATA[10] ));
  BUFX1    g229(.A(\data_sr[11] ), .Y(\DATA[11] ));
  BUFX1    g230(.A(\data_sr[12] ), .Y(\DATA[12] ));
  BUFX1    g231(.A(\data_sr[13] ), .Y(\DATA[13] ));
  BUFX1    g232(.A(\data_sr[14] ), .Y(\DATA[14] ));
  BUFX1    g233(.A(\data_sr[15] ), .Y(\DATA[15] ));
  BUFX1    g234(.A(\data_sr[1] ), .Y(n206));
  BUFX1    g235(.A(\data_sr[2] ), .Y(n211));
  BUFX1    g236(.A(\data_sr[3] ), .Y(n215));
  BUFX1    g237(.A(\data_sr[4] ), .Y(n219));
  BUFX1    g238(.A(\data_sr[5] ), .Y(n223));
  BUFX1    g239(.A(\data_sr[6] ), .Y(n227));
  BUFX1    g240(.A(\data_sr[7] ), .Y(n231));
  BUFX1    g241(.A(\data_sr[8] ), .Y(n235));
  BUFX1    g242(.A(\data_sr[9] ), .Y(n239));
  BUFX1    g243(.A(\data_sr[10] ), .Y(n243));
  BUFX1    g244(.A(\data_sr[11] ), .Y(n247));
  BUFX1    g245(.A(\data_sr[12] ), .Y(n251));
  BUFX1    g246(.A(\data_sr[13] ), .Y(n255));
  BUFX1    g247(.A(\data_sr[14] ), .Y(n259));
  BUFX1    g248(.A(\data_sr[15] ), .Y(n263));
  BUFX1    g249(.A(DATA_RX), .Y(n266));
  BUFX1    g250(.A(MKD_RX), .Y(n269));
  BUFX1    g251(.A(\mkd_sr[0] ), .Y(n273));
  BUFX1    g252(.A(\mkd_sr[1] ), .Y(n277));
  BUFX1    g253(.A(\mkd_sr[2] ), .Y(n281));
  BUFX1    g254(.A(\mkd_sr[3] ), .Y(n285));
  BUFX1    g255(.A(\mkd_sr[4] ), .Y(n289));
  BUFX1    g256(.A(\mkd_sr[5] ), .Y(n293));
  BUFX1    g257(.A(\mkd_sr[6] ), .Y(n297));
  BUFX1    g258(.A(\mkd_sr[7] ), .Y(n301));
  BUFX1    g259(.A(\mkd_sr[8] ), .Y(n305));
  BUFX1    g260(.A(\mkd_sr[9] ), .Y(n309));
  BUFX1    g261(.A(\mkd_sr[10] ), .Y(n313));
  BUFX1    g262(.A(\mkd_sr[11] ), .Y(n317));
  BUFX1    g263(.A(\mkd_sr[12] ), .Y(n321));
  BUFX1    g264(.A(\mkd_sr[13] ), .Y(n325));
  BUFX1    g265(.A(\mkd_sr[14] ), .Y(n329));
  always @ (posedge clock) begin
    \data_len[0]  <= n46;
    \data_len[1]  <= n51;
    \data_len[2]  <= n56;
    \data_len[3]  <= n61;
    \data_len[4]  <= n66;
    \data_len[5]  <= n71;
    \data_len[6]  <= n76;
    \data_len[7]  <= n81;
    \data_len[8]  <= n86;
    \data_len[9]  <= n91;
    \data_len[10]  <= n96;
    \data_len[11]  <= n101;
    \data_len[12]  <= n106;
    \data_len[13]  <= n111;
    \data_len[14]  <= n116;
    \data_len[15]  <= n121;
    \data_cnt[0]  <= n126;
    \data_cnt[1]  <= n131;
    \data_cnt[2]  <= n136;
    \data_cnt[3]  <= n141;
    \data_cnt[4]  <= n146;
    \data_cnt[5]  <= n151;
    \data_cnt[6]  <= n156;
    \data_cnt[7]  <= n161;
    \data_cnt[8]  <= n166;
    \data_cnt[9]  <= n171;
    \data_cnt[10]  <= n176;
    \data_cnt[11]  <= n181;
    \data_cnt[12]  <= n186;
    \data_cnt[13]  <= n191;
    \data_cnt[14]  <= n196;
    \data_cnt[15]  <= n201;
    \data_sr[0]  <= n206;
    \data_sr[1]  <= n211;
    \data_sr[2]  <= n215;
    \data_sr[3]  <= n219;
    \data_sr[4]  <= n223;
    \data_sr[5]  <= n227;
    \data_sr[6]  <= n231;
    \data_sr[7]  <= n235;
    \data_sr[8]  <= n239;
    \data_sr[9]  <= n243;
    \data_sr[10]  <= n247;
    \data_sr[11]  <= n251;
    \data_sr[12]  <= n255;
    \data_sr[13]  <= n259;
    \data_sr[14]  <= n263;
    \data_sr[15]  <= n266;
    \mkd_sr[0]  <= n269;
    \mkd_sr[1]  <= n273;
    \mkd_sr[2]  <= n277;
    \mkd_sr[3]  <= n281;
    \mkd_sr[4]  <= n285;
    \mkd_sr[5]  <= n289;
    \mkd_sr[6]  <= n293;
    \mkd_sr[7]  <= n297;
    \mkd_sr[8]  <= n301;
    \mkd_sr[9]  <= n305;
    \mkd_sr[10]  <= n309;
    \mkd_sr[11]  <= n313;
    \mkd_sr[12]  <= n317;
    \mkd_sr[13]  <= n321;
    \mkd_sr[14]  <= n325;
    \mkd_sr[15]  <= n329;
  end
endmodule


