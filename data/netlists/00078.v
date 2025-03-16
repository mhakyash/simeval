// Benchmark "ad_jesd_align" written by ABC on Wed Jun 26 15:21:59 2024

module ad_jesd_align ( clock, 
    rx_clk, \rx_ip_sof[0] , \rx_ip_sof[1] , \rx_ip_sof[2] , \rx_ip_sof[3] ,
    \rx_ip_data[0] , \rx_ip_data[1] , \rx_ip_data[2] , \rx_ip_data[3] ,
    \rx_ip_data[4] , \rx_ip_data[5] , \rx_ip_data[6] , \rx_ip_data[7] ,
    \rx_ip_data[8] , \rx_ip_data[9] , \rx_ip_data[10] , \rx_ip_data[11] ,
    \rx_ip_data[12] , \rx_ip_data[13] , \rx_ip_data[14] , \rx_ip_data[15] ,
    \rx_ip_data[16] , \rx_ip_data[17] , \rx_ip_data[18] , \rx_ip_data[19] ,
    \rx_ip_data[20] , \rx_ip_data[21] , \rx_ip_data[22] , \rx_ip_data[23] ,
    \rx_ip_data[24] , \rx_ip_data[25] , \rx_ip_data[26] , \rx_ip_data[27] ,
    \rx_ip_data[28] , \rx_ip_data[29] , \rx_ip_data[30] , \rx_ip_data[31] ,
    rx_sof, \rx_data[0] , \rx_data[1] , \rx_data[2] , \rx_data[3] ,
    \rx_data[4] , \rx_data[5] , \rx_data[6] , \rx_data[7] , \rx_data[8] ,
    \rx_data[9] , \rx_data[10] , \rx_data[11] , \rx_data[12] ,
    \rx_data[13] , \rx_data[14] , \rx_data[15] , \rx_data[16] ,
    \rx_data[17] , \rx_data[18] , \rx_data[19] , \rx_data[20] ,
    \rx_data[21] , \rx_data[22] , \rx_data[23] , \rx_data[24] ,
    \rx_data[25] , \rx_data[26] , \rx_data[27] , \rx_data[28] ,
    \rx_data[29] , \rx_data[30] , \rx_data[31]   );
  input  clock;
  input  rx_clk, \rx_ip_sof[0] , \rx_ip_sof[1] , \rx_ip_sof[2] ,
    \rx_ip_sof[3] , \rx_ip_data[0] , \rx_ip_data[1] , \rx_ip_data[2] ,
    \rx_ip_data[3] , \rx_ip_data[4] , \rx_ip_data[5] , \rx_ip_data[6] ,
    \rx_ip_data[7] , \rx_ip_data[8] , \rx_ip_data[9] , \rx_ip_data[10] ,
    \rx_ip_data[11] , \rx_ip_data[12] , \rx_ip_data[13] , \rx_ip_data[14] ,
    \rx_ip_data[15] , \rx_ip_data[16] , \rx_ip_data[17] , \rx_ip_data[18] ,
    \rx_ip_data[19] , \rx_ip_data[20] , \rx_ip_data[21] , \rx_ip_data[22] ,
    \rx_ip_data[23] , \rx_ip_data[24] , \rx_ip_data[25] , \rx_ip_data[26] ,
    \rx_ip_data[27] , \rx_ip_data[28] , \rx_ip_data[29] , \rx_ip_data[30] ,
    \rx_ip_data[31] ;
  output rx_sof, \rx_data[0] , \rx_data[1] , \rx_data[2] , \rx_data[3] ,
    \rx_data[4] , \rx_data[5] , \rx_data[6] , \rx_data[7] , \rx_data[8] ,
    \rx_data[9] , \rx_data[10] , \rx_data[11] , \rx_data[12] ,
    \rx_data[13] , \rx_data[14] , \rx_data[15] , \rx_data[16] ,
    \rx_data[17] , \rx_data[18] , \rx_data[19] , \rx_data[20] ,
    \rx_data[21] , \rx_data[22] , \rx_data[23] , \rx_data[24] ,
    \rx_data[25] , \rx_data[26] , \rx_data[27] , \rx_data[28] ,
    \rx_data[29] , \rx_data[30] , \rx_data[31] ;
  reg \rx_ip_sof_hold[0] , \rx_ip_sof_hold[1] , \rx_ip_sof_hold[2] ,
    \rx_ip_sof_hold[3] , rx_ip_sof_d, \rx_data[0] , \rx_data[1] ,
    \rx_data[2] , \rx_data[3] , \rx_data[4] , \rx_data[5] , \rx_data[6] ,
    \rx_data[7] , \rx_data[8] , \rx_data[9] , \rx_data[10] , \rx_data[11] ,
    \rx_data[12] , \rx_data[13] , \rx_data[14] , \rx_data[15] ,
    \rx_data[16] , \rx_data[17] , \rx_data[18] , \rx_data[19] ,
    \rx_data[20] , \rx_data[21] , \rx_data[22] , \rx_data[23] ,
    \rx_data[24] , \rx_data[25] , \rx_data[26] , \rx_data[27] ,
    \rx_data[28] , \rx_data[29] , \rx_data[30] , \rx_data[31] ,
    \rx_ip_data_d[8] , \rx_ip_data_d[9] , \rx_ip_data_d[10] ,
    \rx_ip_data_d[11] , \rx_ip_data_d[12] , \rx_ip_data_d[13] ,
    \rx_ip_data_d[14] , \rx_ip_data_d[15] , \rx_ip_data_d[16] ,
    \rx_ip_data_d[17] , \rx_ip_data_d[18] , \rx_ip_data_d[19] ,
    \rx_ip_data_d[20] , \rx_ip_data_d[21] , \rx_ip_data_d[22] ,
    \rx_ip_data_d[23] , \rx_ip_data_d[24] , \rx_ip_data_d[25] ,
    \rx_ip_data_d[26] , \rx_ip_data_d[27] , \rx_ip_data_d[28] ,
    \rx_ip_data_d[29] , \rx_ip_data_d[30] , \rx_ip_data_d[31] , rx_sof;
  wire new_n257, new_n262_1, new_n263, new_n264, new_n265, new_n266_1,
    new_n267, new_n269, new_n270_1, new_n271, new_n272, new_n274_1,
    new_n275, new_n276, new_n277, new_n279, new_n280, new_n281, new_n282_1,
    new_n284, new_n285, new_n286_1, new_n287, new_n289, new_n290_1,
    new_n291, new_n292, new_n294, new_n295, new_n296, new_n297_1, new_n299,
    new_n300, new_n301_1, new_n302, new_n304, new_n305_1, new_n306,
    new_n308, new_n309_1, new_n310, new_n312, new_n313_1, new_n314,
    new_n316, new_n317_1, new_n318, new_n320, new_n321_1, new_n322,
    new_n324, new_n325_1, new_n326, new_n328, new_n329_1, new_n330,
    new_n332, new_n333_1, new_n334, new_n336, new_n337_1, new_n338,
    new_n339, new_n341_1, new_n342, new_n343, new_n344, new_n346, new_n347,
    new_n348, new_n349_1, new_n351, new_n352, new_n353_1, new_n354,
    new_n356, new_n357_1, new_n358, new_n359, new_n361_1, new_n362,
    new_n363, new_n364, new_n366, new_n367, new_n368, new_n369_1, new_n371,
    new_n372, new_n373_1, new_n374, new_n376, new_n377_1, new_n378,
    new_n379, new_n381_1, new_n382, new_n383, new_n384, new_n386, new_n387,
    new_n388, new_n389_1, new_n391, new_n392, new_n393, new_n394, new_n396,
    new_n397, new_n398, new_n399, new_n401, new_n402, new_n403, new_n404,
    new_n406, new_n407, new_n408, new_n409, new_n411, new_n412, new_n413,
    new_n414, n142, n147, n152, n157, n161, n166, n170, n174, n178, n182,
    n186, n190, n194, n198, n202, n206, n210, n214, n218, n222, n226, n230,
    n234, n238, n242, n246, n250, n254, n258, n262, n266, n270, n274, n278,
    n282, n286, n290, n293, n297, n301, n305, n309, n313, n317, n321, n325,
    n329, n333, n337, n341, n345, n349, n353, n357, n361, n365, n369, n373,
    n377, n381, n385, n389;
  OR4X1    g000(.A(\rx_ip_sof[3] ), .B(\rx_ip_sof[2] ), .C(\rx_ip_sof[1] ), .D(\rx_ip_sof[0] ), .Y(new_n257));
  MX2X1    g001(.A(\rx_ip_sof_hold[0] ), .B(\rx_ip_sof[0] ), .S0(new_n257), .Y(n142));
  MX2X1    g002(.A(\rx_ip_sof_hold[1] ), .B(\rx_ip_sof[1] ), .S0(new_n257), .Y(n147));
  MX2X1    g003(.A(\rx_ip_sof_hold[2] ), .B(\rx_ip_sof[2] ), .S0(new_n257), .Y(n152));
  MX2X1    g004(.A(\rx_ip_sof_hold[3] ), .B(\rx_ip_sof[3] ), .S0(new_n257), .Y(n157));
  INVX1    g005(.A(\rx_ip_data_d[24] ), .Y(new_n262_1));
  INVX1    g006(.A(\rx_ip_sof_hold[2] ), .Y(new_n263));
  NAND2X1  g007(.A(\rx_ip_sof_hold[3] ), .B(new_n263), .Y(new_n264));
  NAND2X1  g008(.A(\rx_ip_data_d[16] ), .B(\rx_ip_sof_hold[2] ), .Y(new_n265));
  OAI21X1  g009(.A0(new_n264), .A1(new_n262_1), .B0(new_n265), .Y(new_n266_1));
  MX2X1    g010(.A(new_n266_1), .B(\rx_ip_data_d[8] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n267));
  MX2X1    g011(.A(new_n267), .B(\rx_ip_data[0] ), .S0(\rx_ip_sof_hold[0] ), .Y(n166));
  INVX1    g012(.A(\rx_ip_data_d[25] ), .Y(new_n269));
  NAND2X1  g013(.A(\rx_ip_data_d[17] ), .B(\rx_ip_sof_hold[2] ), .Y(new_n270_1));
  OAI21X1  g014(.A0(new_n264), .A1(new_n269), .B0(new_n270_1), .Y(new_n271));
  MX2X1    g015(.A(new_n271), .B(\rx_ip_data_d[9] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n272));
  MX2X1    g016(.A(new_n272), .B(\rx_ip_data[1] ), .S0(\rx_ip_sof_hold[0] ), .Y(n170));
  INVX1    g017(.A(\rx_ip_data_d[26] ), .Y(new_n274_1));
  NAND2X1  g018(.A(\rx_ip_data_d[18] ), .B(\rx_ip_sof_hold[2] ), .Y(new_n275));
  OAI21X1  g019(.A0(new_n264), .A1(new_n274_1), .B0(new_n275), .Y(new_n276));
  MX2X1    g020(.A(new_n276), .B(\rx_ip_data_d[10] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n277));
  MX2X1    g021(.A(new_n277), .B(\rx_ip_data[2] ), .S0(\rx_ip_sof_hold[0] ), .Y(n174));
  INVX1    g022(.A(\rx_ip_data_d[27] ), .Y(new_n279));
  NAND2X1  g023(.A(\rx_ip_data_d[19] ), .B(\rx_ip_sof_hold[2] ), .Y(new_n280));
  OAI21X1  g024(.A0(new_n264), .A1(new_n279), .B0(new_n280), .Y(new_n281));
  MX2X1    g025(.A(new_n281), .B(\rx_ip_data_d[11] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n282_1));
  MX2X1    g026(.A(new_n282_1), .B(\rx_ip_data[3] ), .S0(\rx_ip_sof_hold[0] ), .Y(n178));
  INVX1    g027(.A(\rx_ip_data_d[28] ), .Y(new_n284));
  NAND2X1  g028(.A(\rx_ip_data_d[20] ), .B(\rx_ip_sof_hold[2] ), .Y(new_n285));
  OAI21X1  g029(.A0(new_n264), .A1(new_n284), .B0(new_n285), .Y(new_n286_1));
  MX2X1    g030(.A(new_n286_1), .B(\rx_ip_data_d[12] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n287));
  MX2X1    g031(.A(new_n287), .B(\rx_ip_data[4] ), .S0(\rx_ip_sof_hold[0] ), .Y(n182));
  INVX1    g032(.A(\rx_ip_data_d[29] ), .Y(new_n289));
  NAND2X1  g033(.A(\rx_ip_data_d[21] ), .B(\rx_ip_sof_hold[2] ), .Y(new_n290_1));
  OAI21X1  g034(.A0(new_n264), .A1(new_n289), .B0(new_n290_1), .Y(new_n291));
  MX2X1    g035(.A(new_n291), .B(\rx_ip_data_d[13] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n292));
  MX2X1    g036(.A(new_n292), .B(\rx_ip_data[5] ), .S0(\rx_ip_sof_hold[0] ), .Y(n186));
  INVX1    g037(.A(\rx_ip_data_d[30] ), .Y(new_n294));
  NAND2X1  g038(.A(\rx_ip_data_d[22] ), .B(\rx_ip_sof_hold[2] ), .Y(new_n295));
  OAI21X1  g039(.A0(new_n264), .A1(new_n294), .B0(new_n295), .Y(new_n296));
  MX2X1    g040(.A(new_n296), .B(\rx_ip_data_d[14] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n297_1));
  MX2X1    g041(.A(new_n297_1), .B(\rx_ip_data[6] ), .S0(\rx_ip_sof_hold[0] ), .Y(n190));
  INVX1    g042(.A(\rx_ip_data_d[31] ), .Y(new_n299));
  NAND2X1  g043(.A(\rx_ip_data_d[23] ), .B(\rx_ip_sof_hold[2] ), .Y(new_n300));
  OAI21X1  g044(.A0(new_n264), .A1(new_n299), .B0(new_n300), .Y(new_n301_1));
  MX2X1    g045(.A(new_n301_1), .B(\rx_ip_data_d[15] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n302));
  MX2X1    g046(.A(new_n302), .B(\rx_ip_data[7] ), .S0(\rx_ip_sof_hold[0] ), .Y(n194));
  NAND3X1  g047(.A(\rx_ip_sof_hold[3] ), .B(new_n263), .C(\rx_ip_data[0] ), .Y(new_n304));
  OAI21X1  g048(.A0(new_n262_1), .A1(new_n263), .B0(new_n304), .Y(new_n305_1));
  MX2X1    g049(.A(new_n305_1), .B(\rx_ip_data_d[16] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n306));
  MX2X1    g050(.A(new_n306), .B(\rx_ip_data[8] ), .S0(\rx_ip_sof_hold[0] ), .Y(n198));
  NAND3X1  g051(.A(\rx_ip_sof_hold[3] ), .B(new_n263), .C(\rx_ip_data[1] ), .Y(new_n308));
  OAI21X1  g052(.A0(new_n269), .A1(new_n263), .B0(new_n308), .Y(new_n309_1));
  MX2X1    g053(.A(new_n309_1), .B(\rx_ip_data_d[17] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n310));
  MX2X1    g054(.A(new_n310), .B(\rx_ip_data[9] ), .S0(\rx_ip_sof_hold[0] ), .Y(n202));
  NAND3X1  g055(.A(\rx_ip_sof_hold[3] ), .B(new_n263), .C(\rx_ip_data[2] ), .Y(new_n312));
  OAI21X1  g056(.A0(new_n274_1), .A1(new_n263), .B0(new_n312), .Y(new_n313_1));
  MX2X1    g057(.A(new_n313_1), .B(\rx_ip_data_d[18] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n314));
  MX2X1    g058(.A(new_n314), .B(\rx_ip_data[10] ), .S0(\rx_ip_sof_hold[0] ), .Y(n206));
  NAND3X1  g059(.A(\rx_ip_sof_hold[3] ), .B(new_n263), .C(\rx_ip_data[3] ), .Y(new_n316));
  OAI21X1  g060(.A0(new_n279), .A1(new_n263), .B0(new_n316), .Y(new_n317_1));
  MX2X1    g061(.A(new_n317_1), .B(\rx_ip_data_d[19] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n318));
  MX2X1    g062(.A(new_n318), .B(\rx_ip_data[11] ), .S0(\rx_ip_sof_hold[0] ), .Y(n210));
  NAND3X1  g063(.A(\rx_ip_sof_hold[3] ), .B(new_n263), .C(\rx_ip_data[4] ), .Y(new_n320));
  OAI21X1  g064(.A0(new_n284), .A1(new_n263), .B0(new_n320), .Y(new_n321_1));
  MX2X1    g065(.A(new_n321_1), .B(\rx_ip_data_d[20] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n322));
  MX2X1    g066(.A(new_n322), .B(\rx_ip_data[12] ), .S0(\rx_ip_sof_hold[0] ), .Y(n214));
  NAND3X1  g067(.A(\rx_ip_sof_hold[3] ), .B(new_n263), .C(\rx_ip_data[5] ), .Y(new_n324));
  OAI21X1  g068(.A0(new_n289), .A1(new_n263), .B0(new_n324), .Y(new_n325_1));
  MX2X1    g069(.A(new_n325_1), .B(\rx_ip_data_d[21] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n326));
  MX2X1    g070(.A(new_n326), .B(\rx_ip_data[13] ), .S0(\rx_ip_sof_hold[0] ), .Y(n218));
  NAND3X1  g071(.A(\rx_ip_sof_hold[3] ), .B(new_n263), .C(\rx_ip_data[6] ), .Y(new_n328));
  OAI21X1  g072(.A0(new_n294), .A1(new_n263), .B0(new_n328), .Y(new_n329_1));
  MX2X1    g073(.A(new_n329_1), .B(\rx_ip_data_d[22] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n330));
  MX2X1    g074(.A(new_n330), .B(\rx_ip_data[14] ), .S0(\rx_ip_sof_hold[0] ), .Y(n222));
  NAND3X1  g075(.A(\rx_ip_sof_hold[3] ), .B(new_n263), .C(\rx_ip_data[7] ), .Y(new_n332));
  OAI21X1  g076(.A0(new_n299), .A1(new_n263), .B0(new_n332), .Y(new_n333_1));
  MX2X1    g077(.A(new_n333_1), .B(\rx_ip_data_d[23] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n334));
  MX2X1    g078(.A(new_n334), .B(\rx_ip_data[15] ), .S0(\rx_ip_sof_hold[0] ), .Y(n226));
  NAND3X1  g079(.A(\rx_ip_sof_hold[3] ), .B(new_n263), .C(\rx_ip_data[8] ), .Y(new_n336));
  NAND2X1  g080(.A(\rx_ip_sof_hold[2] ), .B(\rx_ip_data[0] ), .Y(new_n337_1));
  NAND2X1  g081(.A(new_n337_1), .B(new_n336), .Y(new_n338));
  MX2X1    g082(.A(new_n338), .B(\rx_ip_data_d[24] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n339));
  MX2X1    g083(.A(new_n339), .B(\rx_ip_data[16] ), .S0(\rx_ip_sof_hold[0] ), .Y(n230));
  NAND3X1  g084(.A(\rx_ip_sof_hold[3] ), .B(new_n263), .C(\rx_ip_data[9] ), .Y(new_n341_1));
  NAND2X1  g085(.A(\rx_ip_sof_hold[2] ), .B(\rx_ip_data[1] ), .Y(new_n342));
  NAND2X1  g086(.A(new_n342), .B(new_n341_1), .Y(new_n343));
  MX2X1    g087(.A(new_n343), .B(\rx_ip_data_d[25] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n344));
  MX2X1    g088(.A(new_n344), .B(\rx_ip_data[17] ), .S0(\rx_ip_sof_hold[0] ), .Y(n234));
  NAND3X1  g089(.A(\rx_ip_sof_hold[3] ), .B(new_n263), .C(\rx_ip_data[10] ), .Y(new_n346));
  NAND2X1  g090(.A(\rx_ip_sof_hold[2] ), .B(\rx_ip_data[2] ), .Y(new_n347));
  NAND2X1  g091(.A(new_n347), .B(new_n346), .Y(new_n348));
  MX2X1    g092(.A(new_n348), .B(\rx_ip_data_d[26] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n349_1));
  MX2X1    g093(.A(new_n349_1), .B(\rx_ip_data[18] ), .S0(\rx_ip_sof_hold[0] ), .Y(n238));
  NAND3X1  g094(.A(\rx_ip_sof_hold[3] ), .B(new_n263), .C(\rx_ip_data[11] ), .Y(new_n351));
  NAND2X1  g095(.A(\rx_ip_sof_hold[2] ), .B(\rx_ip_data[3] ), .Y(new_n352));
  NAND2X1  g096(.A(new_n352), .B(new_n351), .Y(new_n353_1));
  MX2X1    g097(.A(new_n353_1), .B(\rx_ip_data_d[27] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n354));
  MX2X1    g098(.A(new_n354), .B(\rx_ip_data[19] ), .S0(\rx_ip_sof_hold[0] ), .Y(n242));
  NAND3X1  g099(.A(\rx_ip_sof_hold[3] ), .B(new_n263), .C(\rx_ip_data[12] ), .Y(new_n356));
  NAND2X1  g100(.A(\rx_ip_sof_hold[2] ), .B(\rx_ip_data[4] ), .Y(new_n357_1));
  NAND2X1  g101(.A(new_n357_1), .B(new_n356), .Y(new_n358));
  MX2X1    g102(.A(new_n358), .B(\rx_ip_data_d[28] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n359));
  MX2X1    g103(.A(new_n359), .B(\rx_ip_data[20] ), .S0(\rx_ip_sof_hold[0] ), .Y(n246));
  NAND3X1  g104(.A(\rx_ip_sof_hold[3] ), .B(new_n263), .C(\rx_ip_data[13] ), .Y(new_n361_1));
  NAND2X1  g105(.A(\rx_ip_sof_hold[2] ), .B(\rx_ip_data[5] ), .Y(new_n362));
  NAND2X1  g106(.A(new_n362), .B(new_n361_1), .Y(new_n363));
  MX2X1    g107(.A(new_n363), .B(\rx_ip_data_d[29] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n364));
  MX2X1    g108(.A(new_n364), .B(\rx_ip_data[21] ), .S0(\rx_ip_sof_hold[0] ), .Y(n250));
  NAND3X1  g109(.A(\rx_ip_sof_hold[3] ), .B(new_n263), .C(\rx_ip_data[14] ), .Y(new_n366));
  NAND2X1  g110(.A(\rx_ip_sof_hold[2] ), .B(\rx_ip_data[6] ), .Y(new_n367));
  NAND2X1  g111(.A(new_n367), .B(new_n366), .Y(new_n368));
  MX2X1    g112(.A(new_n368), .B(\rx_ip_data_d[30] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n369_1));
  MX2X1    g113(.A(new_n369_1), .B(\rx_ip_data[22] ), .S0(\rx_ip_sof_hold[0] ), .Y(n254));
  NAND3X1  g114(.A(\rx_ip_sof_hold[3] ), .B(new_n263), .C(\rx_ip_data[15] ), .Y(new_n371));
  NAND2X1  g115(.A(\rx_ip_sof_hold[2] ), .B(\rx_ip_data[7] ), .Y(new_n372));
  NAND2X1  g116(.A(new_n372), .B(new_n371), .Y(new_n373_1));
  MX2X1    g117(.A(new_n373_1), .B(\rx_ip_data_d[31] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n374));
  MX2X1    g118(.A(new_n374), .B(\rx_ip_data[23] ), .S0(\rx_ip_sof_hold[0] ), .Y(n258));
  NAND3X1  g119(.A(\rx_ip_sof_hold[3] ), .B(new_n263), .C(\rx_ip_data[16] ), .Y(new_n376));
  NAND2X1  g120(.A(\rx_ip_sof_hold[2] ), .B(\rx_ip_data[8] ), .Y(new_n377_1));
  NAND2X1  g121(.A(new_n377_1), .B(new_n376), .Y(new_n378));
  MX2X1    g122(.A(new_n378), .B(\rx_ip_data[0] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n379));
  MX2X1    g123(.A(new_n379), .B(\rx_ip_data[24] ), .S0(\rx_ip_sof_hold[0] ), .Y(n262));
  NAND3X1  g124(.A(\rx_ip_sof_hold[3] ), .B(new_n263), .C(\rx_ip_data[17] ), .Y(new_n381_1));
  NAND2X1  g125(.A(\rx_ip_sof_hold[2] ), .B(\rx_ip_data[9] ), .Y(new_n382));
  NAND2X1  g126(.A(new_n382), .B(new_n381_1), .Y(new_n383));
  MX2X1    g127(.A(new_n383), .B(\rx_ip_data[1] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n384));
  MX2X1    g128(.A(new_n384), .B(\rx_ip_data[25] ), .S0(\rx_ip_sof_hold[0] ), .Y(n266));
  NAND3X1  g129(.A(\rx_ip_sof_hold[3] ), .B(new_n263), .C(\rx_ip_data[18] ), .Y(new_n386));
  NAND2X1  g130(.A(\rx_ip_sof_hold[2] ), .B(\rx_ip_data[10] ), .Y(new_n387));
  NAND2X1  g131(.A(new_n387), .B(new_n386), .Y(new_n388));
  MX2X1    g132(.A(new_n388), .B(\rx_ip_data[2] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n389_1));
  MX2X1    g133(.A(new_n389_1), .B(\rx_ip_data[26] ), .S0(\rx_ip_sof_hold[0] ), .Y(n270));
  NAND3X1  g134(.A(\rx_ip_sof_hold[3] ), .B(new_n263), .C(\rx_ip_data[19] ), .Y(new_n391));
  NAND2X1  g135(.A(\rx_ip_sof_hold[2] ), .B(\rx_ip_data[11] ), .Y(new_n392));
  NAND2X1  g136(.A(new_n392), .B(new_n391), .Y(new_n393));
  MX2X1    g137(.A(new_n393), .B(\rx_ip_data[3] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n394));
  MX2X1    g138(.A(new_n394), .B(\rx_ip_data[27] ), .S0(\rx_ip_sof_hold[0] ), .Y(n274));
  NAND3X1  g139(.A(\rx_ip_sof_hold[3] ), .B(new_n263), .C(\rx_ip_data[20] ), .Y(new_n396));
  NAND2X1  g140(.A(\rx_ip_sof_hold[2] ), .B(\rx_ip_data[12] ), .Y(new_n397));
  NAND2X1  g141(.A(new_n397), .B(new_n396), .Y(new_n398));
  MX2X1    g142(.A(new_n398), .B(\rx_ip_data[4] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n399));
  MX2X1    g143(.A(new_n399), .B(\rx_ip_data[28] ), .S0(\rx_ip_sof_hold[0] ), .Y(n278));
  NAND3X1  g144(.A(\rx_ip_sof_hold[3] ), .B(new_n263), .C(\rx_ip_data[21] ), .Y(new_n401));
  NAND2X1  g145(.A(\rx_ip_sof_hold[2] ), .B(\rx_ip_data[13] ), .Y(new_n402));
  NAND2X1  g146(.A(new_n402), .B(new_n401), .Y(new_n403));
  MX2X1    g147(.A(new_n403), .B(\rx_ip_data[5] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n404));
  MX2X1    g148(.A(new_n404), .B(\rx_ip_data[29] ), .S0(\rx_ip_sof_hold[0] ), .Y(n282));
  NAND3X1  g149(.A(\rx_ip_sof_hold[3] ), .B(new_n263), .C(\rx_ip_data[22] ), .Y(new_n406));
  NAND2X1  g150(.A(\rx_ip_sof_hold[2] ), .B(\rx_ip_data[14] ), .Y(new_n407));
  NAND2X1  g151(.A(new_n407), .B(new_n406), .Y(new_n408));
  MX2X1    g152(.A(new_n408), .B(\rx_ip_data[6] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n409));
  MX2X1    g153(.A(new_n409), .B(\rx_ip_data[30] ), .S0(\rx_ip_sof_hold[0] ), .Y(n286));
  NAND3X1  g154(.A(\rx_ip_sof_hold[3] ), .B(new_n263), .C(\rx_ip_data[23] ), .Y(new_n411));
  NAND2X1  g155(.A(\rx_ip_sof_hold[2] ), .B(\rx_ip_data[15] ), .Y(new_n412));
  NAND2X1  g156(.A(new_n412), .B(new_n411), .Y(new_n413));
  MX2X1    g157(.A(new_n413), .B(\rx_ip_data[7] ), .S0(\rx_ip_sof_hold[1] ), .Y(new_n414));
  MX2X1    g158(.A(new_n414), .B(\rx_ip_data[31] ), .S0(\rx_ip_sof_hold[0] ), .Y(n290));
  BUFX1    g159(.A(\rx_ip_sof[0] ), .Y(n161));
  BUFX1    g160(.A(\rx_ip_data[8] ), .Y(n293));
  BUFX1    g161(.A(\rx_ip_data[9] ), .Y(n297));
  BUFX1    g162(.A(\rx_ip_data[10] ), .Y(n301));
  BUFX1    g163(.A(\rx_ip_data[11] ), .Y(n305));
  BUFX1    g164(.A(\rx_ip_data[12] ), .Y(n309));
  BUFX1    g165(.A(\rx_ip_data[13] ), .Y(n313));
  BUFX1    g166(.A(\rx_ip_data[14] ), .Y(n317));
  BUFX1    g167(.A(\rx_ip_data[15] ), .Y(n321));
  BUFX1    g168(.A(\rx_ip_data[16] ), .Y(n325));
  BUFX1    g169(.A(\rx_ip_data[17] ), .Y(n329));
  BUFX1    g170(.A(\rx_ip_data[18] ), .Y(n333));
  BUFX1    g171(.A(\rx_ip_data[19] ), .Y(n337));
  BUFX1    g172(.A(\rx_ip_data[20] ), .Y(n341));
  BUFX1    g173(.A(\rx_ip_data[21] ), .Y(n345));
  BUFX1    g174(.A(\rx_ip_data[22] ), .Y(n349));
  BUFX1    g175(.A(\rx_ip_data[23] ), .Y(n353));
  BUFX1    g176(.A(\rx_ip_data[24] ), .Y(n357));
  BUFX1    g177(.A(\rx_ip_data[25] ), .Y(n361));
  BUFX1    g178(.A(\rx_ip_data[26] ), .Y(n365));
  BUFX1    g179(.A(\rx_ip_data[27] ), .Y(n369));
  BUFX1    g180(.A(\rx_ip_data[28] ), .Y(n373));
  BUFX1    g181(.A(\rx_ip_data[29] ), .Y(n377));
  BUFX1    g182(.A(\rx_ip_data[30] ), .Y(n381));
  BUFX1    g183(.A(\rx_ip_data[31] ), .Y(n385));
  BUFX1    g184(.A(rx_ip_sof_d), .Y(n389));
  always @ (posedge clock) begin
    \rx_ip_sof_hold[0]  <= n142;
    \rx_ip_sof_hold[1]  <= n147;
    \rx_ip_sof_hold[2]  <= n152;
    \rx_ip_sof_hold[3]  <= n157;
    rx_ip_sof_d <= n161;
    \rx_data[0]  <= n166;
    \rx_data[1]  <= n170;
    \rx_data[2]  <= n174;
    \rx_data[3]  <= n178;
    \rx_data[4]  <= n182;
    \rx_data[5]  <= n186;
    \rx_data[6]  <= n190;
    \rx_data[7]  <= n194;
    \rx_data[8]  <= n198;
    \rx_data[9]  <= n202;
    \rx_data[10]  <= n206;
    \rx_data[11]  <= n210;
    \rx_data[12]  <= n214;
    \rx_data[13]  <= n218;
    \rx_data[14]  <= n222;
    \rx_data[15]  <= n226;
    \rx_data[16]  <= n230;
    \rx_data[17]  <= n234;
    \rx_data[18]  <= n238;
    \rx_data[19]  <= n242;
    \rx_data[20]  <= n246;
    \rx_data[21]  <= n250;
    \rx_data[22]  <= n254;
    \rx_data[23]  <= n258;
    \rx_data[24]  <= n262;
    \rx_data[25]  <= n266;
    \rx_data[26]  <= n270;
    \rx_data[27]  <= n274;
    \rx_data[28]  <= n278;
    \rx_data[29]  <= n282;
    \rx_data[30]  <= n286;
    \rx_data[31]  <= n290;
    \rx_ip_data_d[8]  <= n293;
    \rx_ip_data_d[9]  <= n297;
    \rx_ip_data_d[10]  <= n301;
    \rx_ip_data_d[11]  <= n305;
    \rx_ip_data_d[12]  <= n309;
    \rx_ip_data_d[13]  <= n313;
    \rx_ip_data_d[14]  <= n317;
    \rx_ip_data_d[15]  <= n321;
    \rx_ip_data_d[16]  <= n325;
    \rx_ip_data_d[17]  <= n329;
    \rx_ip_data_d[18]  <= n333;
    \rx_ip_data_d[19]  <= n337;
    \rx_ip_data_d[20]  <= n341;
    \rx_ip_data_d[21]  <= n345;
    \rx_ip_data_d[22]  <= n349;
    \rx_ip_data_d[23]  <= n353;
    \rx_ip_data_d[24]  <= n357;
    \rx_ip_data_d[25]  <= n361;
    \rx_ip_data_d[26]  <= n365;
    \rx_ip_data_d[27]  <= n369;
    \rx_ip_data_d[28]  <= n373;
    \rx_ip_data_d[29]  <= n377;
    \rx_ip_data_d[30]  <= n381;
    \rx_ip_data_d[31]  <= n385;
    rx_sof <= n389;
  end
  initial begin
    \rx_ip_sof_hold[0]  <= 1'b0;
    \rx_ip_sof_hold[1]  <= 1'b0;
    \rx_ip_sof_hold[2]  <= 1'b0;
    \rx_ip_sof_hold[3]  <= 1'b0;
    rx_ip_sof_d <= 1'b0;
    \rx_data[0]  <= 1'b0;
    \rx_data[1]  <= 1'b0;
    \rx_data[2]  <= 1'b0;
    \rx_data[3]  <= 1'b0;
    \rx_data[4]  <= 1'b0;
    \rx_data[5]  <= 1'b0;
    \rx_data[6]  <= 1'b0;
    \rx_data[7]  <= 1'b0;
    \rx_data[8]  <= 1'b0;
    \rx_data[9]  <= 1'b0;
    \rx_data[10]  <= 1'b0;
    \rx_data[11]  <= 1'b0;
    \rx_data[12]  <= 1'b0;
    \rx_data[13]  <= 1'b0;
    \rx_data[14]  <= 1'b0;
    \rx_data[15]  <= 1'b0;
    \rx_data[16]  <= 1'b0;
    \rx_data[17]  <= 1'b0;
    \rx_data[18]  <= 1'b0;
    \rx_data[19]  <= 1'b0;
    \rx_data[20]  <= 1'b0;
    \rx_data[21]  <= 1'b0;
    \rx_data[22]  <= 1'b0;
    \rx_data[23]  <= 1'b0;
    \rx_data[24]  <= 1'b0;
    \rx_data[25]  <= 1'b0;
    \rx_data[26]  <= 1'b0;
    \rx_data[27]  <= 1'b0;
    \rx_data[28]  <= 1'b0;
    \rx_data[29]  <= 1'b0;
    \rx_data[30]  <= 1'b0;
    \rx_data[31]  <= 1'b0;
    \rx_ip_data_d[8]  <= 1'b0;
    \rx_ip_data_d[9]  <= 1'b0;
    \rx_ip_data_d[10]  <= 1'b0;
    \rx_ip_data_d[11]  <= 1'b0;
    \rx_ip_data_d[12]  <= 1'b0;
    \rx_ip_data_d[13]  <= 1'b0;
    \rx_ip_data_d[14]  <= 1'b0;
    \rx_ip_data_d[15]  <= 1'b0;
    \rx_ip_data_d[16]  <= 1'b0;
    \rx_ip_data_d[17]  <= 1'b0;
    \rx_ip_data_d[18]  <= 1'b0;
    \rx_ip_data_d[19]  <= 1'b0;
    \rx_ip_data_d[20]  <= 1'b0;
    \rx_ip_data_d[21]  <= 1'b0;
    \rx_ip_data_d[22]  <= 1'b0;
    \rx_ip_data_d[23]  <= 1'b0;
    \rx_ip_data_d[24]  <= 1'b0;
    \rx_ip_data_d[25]  <= 1'b0;
    \rx_ip_data_d[26]  <= 1'b0;
    \rx_ip_data_d[27]  <= 1'b0;
    \rx_ip_data_d[28]  <= 1'b0;
    \rx_ip_data_d[29]  <= 1'b0;
    \rx_ip_data_d[30]  <= 1'b0;
    \rx_ip_data_d[31]  <= 1'b0;
    rx_sof <= 1'b0;
  end
endmodule


