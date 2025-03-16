// Benchmark "count_signal" written by ABC on Wed Jun 26 15:22:04 2024

module count_signal ( clock, 
    clk, signal, \period[0] , \period[1] , \period[2] , \period[3] ,
    \period[4] , \period[5] , \period[6] , \period[7] , \period[8] ,
    \period[9] , \period[10] , \period[11] , \period[12] , \period[13] ,
    \period[14] , \period[15] , \period[16] , \period[17] , \period[18] ,
    \period[19] , \period[20] , \period[21] , \period[22] , \period[23] ,
    \period[24] , \period[25] , \period[26] , \period[27] , \period[28] ,
    \period[29] , \period[30] , \period[31] ,
    \count[0] , \count[1] , \count[2] , \count[3] , \count[4] , \count[5] ,
    \count[6] , \count[7] , \count[8] , \count[9] , \count[10] ,
    \count[11] , \count[12] , \count[13] , \count[14] , \count[15] ,
    \count[16] , \count[17] , \count[18] , \count[19] , \count[20] ,
    \count[21] , \count[22] , \count[23] , \count[24] , \count[25] ,
    \count[26] , \count[27] , \count[28] , \count[29] , \count[30] ,
    \count[31]   );
  input  clock;
  input  clk, signal, \period[0] , \period[1] , \period[2] , \period[3] ,
    \period[4] , \period[5] , \period[6] , \period[7] , \period[8] ,
    \period[9] , \period[10] , \period[11] , \period[12] , \period[13] ,
    \period[14] , \period[15] , \period[16] , \period[17] , \period[18] ,
    \period[19] , \period[20] , \period[21] , \period[22] , \period[23] ,
    \period[24] , \period[25] , \period[26] , \period[27] , \period[28] ,
    \period[29] , \period[30] , \period[31] ;
  output \count[0] , \count[1] , \count[2] , \count[3] , \count[4] ,
    \count[5] , \count[6] , \count[7] , \count[8] , \count[9] ,
    \count[10] , \count[11] , \count[12] , \count[13] , \count[14] ,
    \count[15] , \count[16] , \count[17] , \count[18] , \count[19] ,
    \count[20] , \count[21] , \count[22] , \count[23] , \count[24] ,
    \count[25] , \count[26] , \count[27] , \count[28] , \count[29] ,
    \count[30] , \count[31] ;
  reg signal_prev, \counter[0] , \counter[1] , \counter[2] , \counter[3] ,
    \counter[4] , \counter[5] , \counter[6] , \counter[7] , \counter[8] ,
    \counter[9] , \counter[10] , \counter[11] , \counter[12] ,
    \counter[13] , \counter[14] , \counter[15] , \counter[16] ,
    \counter[17] , \counter[18] , \counter[19] , \counter[20] ,
    \counter[21] , \counter[22] , \counter[23] , \counter[24] ,
    \counter[25] , \counter[26] , \counter[27] , \counter[28] ,
    \counter[29] , \counter[30] , \counter[31] , \count[0] , \count[1] ,
    \count[2] , \count[3] , \count[4] , \count[5] , \count[6] , \count[7] ,
    \count[8] , \count[9] , \count[10] , \count[11] , \count[12] ,
    \count[13] , \count[14] , \count[15] , \count[16] , \count[17] ,
    \count[18] , \count[19] , \count[20] , \count[21] , \count[22] ,
    \count[23] , \count[24] , \count[25] , \count[26] , \count[27] ,
    \count[28] , \count[29] , \count[30] , \count[31] ;
  wire new_n262, new_n263_1, new_n264, new_n265, new_n266, new_n267,
    new_n268_1, new_n269, new_n270, new_n271, new_n272, new_n273_1,
    new_n274, new_n275, new_n276, new_n277, new_n278_1, new_n279, new_n280,
    new_n281, new_n282, new_n283_1, new_n284, new_n285, new_n286, new_n287,
    new_n288_1, new_n289, new_n290, new_n291, new_n292, new_n293_1,
    new_n294, new_n295, new_n296, new_n297, new_n298_1, new_n299, new_n300,
    new_n301, new_n302_1, new_n303, new_n304, new_n305, new_n306_1,
    new_n307, new_n308, new_n309, new_n310_1, new_n311, new_n312, new_n313,
    new_n314_1, new_n315, new_n316, new_n317, new_n318_1, new_n319,
    new_n320, new_n321, new_n322_1, new_n323, new_n324, new_n325,
    new_n326_1, new_n327, new_n328, new_n329, new_n330_1, new_n331,
    new_n332, new_n333, new_n334_1, new_n335, new_n336, new_n337,
    new_n338_1, new_n339, new_n340, new_n341, new_n342_1, new_n343,
    new_n344, new_n345, new_n346_1, new_n347, new_n348, new_n349,
    new_n350_1, new_n351, new_n352, new_n353, new_n354_1, new_n355,
    new_n356, new_n357, new_n358_1, new_n359, new_n360, new_n361,
    new_n362_1, new_n363, new_n364, new_n365, new_n366_1, new_n367,
    new_n368, new_n369, new_n370_1, new_n371, new_n372, new_n373,
    new_n374_1, new_n375, new_n376, new_n377, new_n378_1, new_n379,
    new_n380, new_n381, new_n382_1, new_n383, new_n384, new_n385,
    new_n386_1, new_n387, new_n388, new_n389, new_n390_1, new_n391,
    new_n392, new_n393, new_n394_1, new_n395, new_n396, new_n397,
    new_n398_1, new_n399, new_n400, new_n401, new_n402_1, new_n403,
    new_n404, new_n405, new_n406_1, new_n407, new_n408, new_n409,
    new_n410_1, new_n411, new_n412, new_n413, new_n414_1, new_n415,
    new_n416, new_n417, new_n418_1, new_n419, new_n420, new_n421,
    new_n422_1, new_n423, new_n424, new_n425, new_n426, new_n427, new_n428,
    new_n429, new_n430, new_n431, new_n432, new_n433, new_n434, new_n435,
    new_n436, new_n437, new_n438, new_n439, new_n440, new_n441, new_n442,
    new_n443, new_n444, new_n445, new_n446, new_n447, new_n448, new_n449,
    new_n450, new_n451, new_n452, new_n453, new_n454, new_n455, new_n456,
    new_n457, new_n458, new_n459, new_n460, new_n461, new_n462, new_n463,
    new_n465, new_n466, new_n468, new_n469, new_n470, new_n472, new_n473,
    new_n475, new_n476, new_n478, new_n479, new_n480, new_n481, new_n483,
    new_n484, new_n486, new_n487, new_n489, new_n490, new_n491, new_n493,
    new_n494, new_n495, new_n497, new_n498, new_n500, new_n501, new_n502,
    new_n504, new_n505, new_n506, new_n508, new_n509, new_n511, new_n512,
    new_n514, new_n515, new_n517, new_n518, new_n519, new_n521, new_n522,
    new_n524, new_n525, new_n527, new_n528, new_n530, new_n531, new_n532,
    new_n533, new_n535, new_n536, new_n538, new_n539, new_n540, new_n542,
    new_n543, new_n545, new_n546, new_n547, new_n549, new_n550, new_n552,
    new_n553, new_n554, new_n556, new_n557, new_n558, new_n560, new_n561,
    new_n562, new_n563, new_n565, new_n566, new_n567, new_n569, new_n570,
    new_n572, new_n573, new_n575, new_n576, new_n577, new_n578, new_n579,
    new_n581, new_n582, new_n584, new_n585, new_n587, new_n588, new_n590,
    new_n591, new_n593, new_n594, new_n596, new_n597, new_n599, new_n600,
    new_n602, new_n603, new_n605, new_n606, new_n608, new_n609, new_n611,
    new_n612, new_n614, new_n615, new_n617, new_n618, new_n620, new_n621,
    new_n623, new_n624, new_n625, new_n627, new_n628, new_n630, new_n631,
    new_n633, new_n634, new_n636, new_n637, new_n639, new_n640, new_n642,
    new_n643, new_n645, new_n646, new_n648, new_n649, new_n651, new_n652,
    new_n654, new_n655, new_n657, new_n658, new_n660, new_n661, new_n663,
    new_n664, new_n666, new_n667, new_n669, new_n670, new_n672, new_n673,
    n133, n138, n143, n148, n153, n158, n163, n168, n173, n178, n183, n188,
    n193, n198, n203, n208, n213, n218, n223, n228, n233, n238, n243, n248,
    n253, n258, n263, n268, n273, n278, n283, n288, n293, n298, n302, n306,
    n310, n314, n318, n322, n326, n330, n334, n338, n342, n346, n350, n354,
    n358, n362, n366, n370, n374, n378, n382, n386, n390, n394, n398, n402,
    n406, n410, n414, n418, n422;
  NOR4X1   g000(.A(\period[11] ), .B(\period[10] ), .C(\period[9] ), .D(\period[8] ), .Y(new_n262));
  OR4X1    g001(.A(\period[3] ), .B(\period[2] ), .C(\period[1] ), .D(\period[0] ), .Y(new_n263_1));
  NOR4X1   g002(.A(\period[7] ), .B(\period[6] ), .C(\period[5] ), .D(\period[4] ), .Y(new_n264));
  OR4X1    g003(.A(\period[7] ), .B(\period[6] ), .C(\period[5] ), .D(\period[4] ), .Y(new_n265));
  AOI21X1  g004(.A0(new_n264), .A1(new_n263_1), .B0(new_n265), .Y(new_n266));
  OR4X1    g005(.A(\period[11] ), .B(\period[10] ), .C(\period[9] ), .D(\period[8] ), .Y(new_n267));
  OAI21X1  g006(.A0(new_n267), .A1(new_n266), .B0(new_n262), .Y(new_n268_1));
  OR4X1    g007(.A(new_n268_1), .B(\period[14] ), .C(\period[13] ), .D(\period[12] ), .Y(new_n269));
  XOR2X1   g008(.A(new_n269), .B(\period[15] ), .Y(new_n270));
  AND2X1   g009(.A(new_n270), .B(\counter[15] ), .Y(new_n271));
  INVX1    g010(.A(\counter[24] ), .Y(new_n272));
  OR4X1    g011(.A(\period[15] ), .B(\period[14] ), .C(\period[13] ), .D(\period[12] ), .Y(new_n273_1));
  OR2X1    g012(.A(new_n273_1), .B(new_n267), .Y(new_n274));
  OR4X1    g013(.A(\period[11] ), .B(\period[10] ), .C(\period[9] ), .D(\period[8] ), .Y(new_n275));
  NOR4X1   g014(.A(\period[15] ), .B(\period[14] ), .C(\period[13] ), .D(\period[12] ), .Y(new_n276));
  OR4X1    g015(.A(\period[15] ), .B(\period[14] ), .C(\period[13] ), .D(\period[12] ), .Y(new_n277));
  AOI21X1  g016(.A0(new_n276), .A1(new_n275), .B0(new_n277), .Y(new_n278_1));
  OAI21X1  g017(.A0(new_n274), .A1(new_n266), .B0(new_n278_1), .Y(new_n279));
  OR4X1    g018(.A(\period[19] ), .B(\period[18] ), .C(\period[17] ), .D(\period[16] ), .Y(new_n280));
  OR4X1    g019(.A(\period[23] ), .B(\period[22] ), .C(\period[21] ), .D(\period[20] ), .Y(new_n281));
  NOR2X1   g020(.A(new_n281), .B(new_n280), .Y(new_n282));
  NOR4X1   g021(.A(\period[19] ), .B(\period[18] ), .C(\period[17] ), .D(\period[16] ), .Y(new_n283_1));
  NOR4X1   g022(.A(\period[23] ), .B(\period[22] ), .C(\period[21] ), .D(\period[20] ), .Y(new_n284));
  OAI21X1  g023(.A0(new_n283_1), .A1(new_n281), .B0(new_n284), .Y(new_n285));
  AOI21X1  g024(.A0(new_n282), .A1(new_n279), .B0(new_n285), .Y(new_n286));
  XOR2X1   g025(.A(new_n286), .B(\period[24] ), .Y(new_n287));
  AND2X1   g026(.A(new_n287), .B(new_n272), .Y(new_n288_1));
  INVX1    g027(.A(\period[20] ), .Y(new_n289));
  INVX1    g028(.A(new_n280), .Y(new_n290));
  INVX1    g029(.A(new_n283_1), .Y(new_n291));
  AOI21X1  g030(.A0(new_n290), .A1(new_n279), .B0(new_n291), .Y(new_n292));
  XOR2X1   g031(.A(new_n292), .B(new_n289), .Y(new_n293_1));
  OAI22X1  g032(.A0(new_n293_1), .A1(\counter[20] ), .B0(new_n287), .B1(new_n272), .Y(new_n294));
  INVX1    g033(.A(\counter[19] ), .Y(new_n295));
  NOR4X1   g034(.A(new_n279), .B(\period[18] ), .C(\period[17] ), .D(\period[16] ), .Y(new_n296));
  XOR2X1   g035(.A(new_n296), .B(\period[19] ), .Y(new_n297));
  OAI22X1  g036(.A0(new_n297), .A1(new_n295), .B0(new_n270), .B1(\counter[15] ), .Y(new_n298_1));
  OR4X1    g037(.A(new_n298_1), .B(new_n294), .C(new_n288_1), .D(new_n271), .Y(new_n299));
  NOR4X1   g038(.A(\period[3] ), .B(\period[2] ), .C(\period[1] ), .D(\period[0] ), .Y(new_n300));
  OR4X1    g039(.A(\period[7] ), .B(\period[6] ), .C(\period[5] ), .D(\period[4] ), .Y(new_n301));
  NOR4X1   g040(.A(\period[7] ), .B(\period[6] ), .C(\period[5] ), .D(\period[4] ), .Y(new_n302_1));
  OAI21X1  g041(.A0(new_n301), .A1(new_n300), .B0(new_n302_1), .Y(new_n303));
  OR2X1    g042(.A(new_n303), .B(\period[8] ), .Y(new_n304));
  XOR2X1   g043(.A(new_n304), .B(\period[9] ), .Y(new_n305));
  XOR2X1   g044(.A(new_n305), .B(\counter[9] ), .Y(new_n306_1));
  INVX1    g045(.A(\counter[10] ), .Y(new_n307));
  NOR3X1   g046(.A(new_n303), .B(\period[9] ), .C(\period[8] ), .Y(new_n308));
  XOR2X1   g047(.A(new_n308), .B(\period[10] ), .Y(new_n309));
  XOR2X1   g048(.A(new_n309), .B(new_n307), .Y(new_n310_1));
  INVX1    g049(.A(\counter[6] ), .Y(new_n311));
  INVX1    g050(.A(\period[4] ), .Y(new_n312));
  INVX1    g051(.A(\period[5] ), .Y(new_n313));
  NAND3X1  g052(.A(new_n300), .B(new_n313), .C(new_n312), .Y(new_n314_1));
  XOR2X1   g053(.A(new_n314_1), .B(\period[6] ), .Y(new_n315));
  XOR2X1   g054(.A(new_n315), .B(new_n311), .Y(new_n316));
  INVX1    g055(.A(\counter[8] ), .Y(new_n317));
  XOR2X1   g056(.A(new_n303), .B(\period[8] ), .Y(new_n318_1));
  XOR2X1   g057(.A(new_n318_1), .B(new_n317), .Y(new_n319));
  INVX1    g058(.A(\counter[3] ), .Y(new_n320));
  NOR3X1   g059(.A(\period[2] ), .B(\period[1] ), .C(\period[0] ), .Y(new_n321));
  XOR2X1   g060(.A(new_n321), .B(\period[3] ), .Y(new_n322_1));
  NOR2X1   g061(.A(new_n322_1), .B(new_n320), .Y(new_n323));
  OR2X1    g062(.A(\period[1] ), .B(\period[0] ), .Y(new_n324));
  XOR2X1   g063(.A(new_n324), .B(\period[2] ), .Y(new_n325));
  NOR2X1   g064(.A(new_n325), .B(\counter[2] ), .Y(new_n326_1));
  AND2X1   g065(.A(new_n325), .B(\counter[2] ), .Y(new_n327));
  INVX1    g066(.A(\counter[1] ), .Y(new_n328));
  INVX1    g067(.A(\period[0] ), .Y(new_n329));
  XOR2X1   g068(.A(\period[1] ), .B(new_n329), .Y(new_n330_1));
  AND2X1   g069(.A(new_n330_1), .B(new_n328), .Y(new_n331));
  XOR2X1   g070(.A(\counter[0] ), .B(\period[0] ), .Y(new_n332));
  OAI21X1  g071(.A0(new_n330_1), .A1(new_n328), .B0(new_n332), .Y(new_n333));
  OR4X1    g072(.A(new_n333), .B(new_n331), .C(new_n327), .D(new_n326_1), .Y(new_n334_1));
  XOR2X1   g073(.A(new_n300), .B(new_n312), .Y(new_n335));
  AOI22X1  g074(.A0(new_n335), .A1(\counter[4] ), .B0(new_n322_1), .B1(new_n320), .Y(new_n336));
  OAI21X1  g075(.A0(new_n335), .A1(\counter[4] ), .B0(new_n336), .Y(new_n337));
  INVX1    g076(.A(\counter[5] ), .Y(new_n338_1));
  AND2X1   g077(.A(new_n300), .B(new_n312), .Y(new_n339));
  XOR2X1   g078(.A(new_n339), .B(new_n313), .Y(new_n340));
  XOR2X1   g079(.A(new_n340), .B(new_n338_1), .Y(new_n341));
  OR4X1    g080(.A(new_n341), .B(new_n337), .C(new_n334_1), .D(new_n323), .Y(new_n342_1));
  INVX1    g081(.A(\counter[7] ), .Y(new_n343));
  OR4X1    g082(.A(new_n263_1), .B(\period[6] ), .C(\period[5] ), .D(\period[4] ), .Y(new_n344));
  XOR2X1   g083(.A(new_n344), .B(\period[7] ), .Y(new_n345));
  XOR2X1   g084(.A(new_n345), .B(new_n343), .Y(new_n346_1));
  NOR4X1   g085(.A(new_n346_1), .B(new_n342_1), .C(new_n319), .D(new_n316), .Y(new_n347));
  NAND3X1  g086(.A(new_n347), .B(new_n310_1), .C(new_n306_1), .Y(new_n348));
  OR4X1    g087(.A(new_n303), .B(\period[10] ), .C(\period[9] ), .D(\period[8] ), .Y(new_n349));
  XOR2X1   g088(.A(new_n349), .B(\period[11] ), .Y(new_n350_1));
  AND2X1   g089(.A(new_n350_1), .B(\counter[11] ), .Y(new_n351));
  INVX1    g090(.A(\counter[12] ), .Y(new_n352));
  INVX1    g091(.A(\period[12] ), .Y(new_n353));
  NOR4X1   g092(.A(\period[11] ), .B(\period[10] ), .C(\period[9] ), .D(\period[8] ), .Y(new_n354_1));
  AOI21X1  g093(.A0(new_n354_1), .A1(new_n303), .B0(new_n275), .Y(new_n355));
  XOR2X1   g094(.A(new_n355), .B(new_n353), .Y(new_n356));
  XOR2X1   g095(.A(new_n356), .B(new_n352), .Y(new_n357));
  INVX1    g096(.A(\counter[16] ), .Y(new_n358_1));
  INVX1    g097(.A(\period[16] ), .Y(new_n359));
  NOR2X1   g098(.A(new_n273_1), .B(new_n267), .Y(new_n360));
  NOR4X1   g099(.A(\period[15] ), .B(\period[14] ), .C(\period[13] ), .D(\period[12] ), .Y(new_n361));
  OAI21X1  g100(.A0(new_n273_1), .A1(new_n262), .B0(new_n361), .Y(new_n362_1));
  AOI21X1  g101(.A0(new_n360), .A1(new_n303), .B0(new_n362_1), .Y(new_n363));
  XOR2X1   g102(.A(new_n363), .B(new_n359), .Y(new_n364));
  XOR2X1   g103(.A(new_n364), .B(new_n358_1), .Y(new_n365));
  INVX1    g104(.A(\counter[13] ), .Y(new_n366_1));
  AND2X1   g105(.A(new_n355), .B(new_n353), .Y(new_n367));
  XOR2X1   g106(.A(new_n367), .B(\period[13] ), .Y(new_n368));
  OAI22X1  g107(.A0(new_n368), .A1(new_n366_1), .B0(new_n350_1), .B1(\counter[11] ), .Y(new_n369));
  OR4X1    g108(.A(new_n369), .B(new_n365), .C(new_n357), .D(new_n351), .Y(new_n370_1));
  INVX1    g109(.A(\counter[17] ), .Y(new_n371));
  AND2X1   g110(.A(new_n363), .B(new_n359), .Y(new_n372));
  XOR2X1   g111(.A(new_n372), .B(\period[17] ), .Y(new_n373));
  INVX1    g112(.A(\period[18] ), .Y(new_n374_1));
  NOR3X1   g113(.A(new_n279), .B(\period[17] ), .C(\period[16] ), .Y(new_n375));
  XOR2X1   g114(.A(new_n375), .B(new_n374_1), .Y(new_n376));
  AOI22X1  g115(.A0(new_n376), .A1(\counter[18] ), .B0(new_n373), .B1(new_n371), .Y(new_n377));
  INVX1    g116(.A(\counter[18] ), .Y(new_n378_1));
  XOR2X1   g117(.A(new_n375), .B(\period[18] ), .Y(new_n379));
  AOI22X1  g118(.A0(new_n379), .A1(new_n378_1), .B0(new_n293_1), .B1(\counter[20] ), .Y(new_n380));
  INVX1    g119(.A(\period[14] ), .Y(new_n381));
  NOR3X1   g120(.A(new_n268_1), .B(\period[13] ), .C(\period[12] ), .Y(new_n382_1));
  XOR2X1   g121(.A(new_n382_1), .B(new_n381), .Y(new_n383));
  AOI22X1  g122(.A0(new_n383), .A1(\counter[14] ), .B0(new_n368), .B1(new_n366_1), .Y(new_n384));
  INVX1    g123(.A(\counter[14] ), .Y(new_n385));
  INVX1    g124(.A(\period[17] ), .Y(new_n386_1));
  XOR2X1   g125(.A(new_n372), .B(new_n386_1), .Y(new_n387));
  XOR2X1   g126(.A(new_n382_1), .B(\period[14] ), .Y(new_n388));
  AOI22X1  g127(.A0(new_n388), .A1(new_n385), .B0(new_n387), .B1(\counter[17] ), .Y(new_n389));
  NAND4X1  g128(.A(new_n389), .B(new_n384), .C(new_n380), .D(new_n377), .Y(new_n390_1));
  OR4X1    g129(.A(new_n390_1), .B(new_n370_1), .C(new_n348), .D(new_n299), .Y(new_n391));
  INVX1    g130(.A(\counter[25] ), .Y(new_n392));
  INVX1    g131(.A(\period[22] ), .Y(new_n393));
  OAI21X1  g132(.A0(new_n280), .A1(new_n363), .B0(new_n283_1), .Y(new_n394_1));
  NOR3X1   g133(.A(new_n394_1), .B(\period[21] ), .C(\period[20] ), .Y(new_n395));
  XOR2X1   g134(.A(new_n395), .B(new_n393), .Y(new_n396));
  OR2X1    g135(.A(new_n281), .B(new_n280), .Y(new_n397));
  OR2X1    g136(.A(new_n283_1), .B(new_n281), .Y(new_n398_1));
  AND2X1   g137(.A(new_n284), .B(new_n398_1), .Y(new_n399));
  OAI21X1  g138(.A0(new_n397), .A1(new_n363), .B0(new_n399), .Y(new_n400));
  NOR2X1   g139(.A(new_n400), .B(\period[24] ), .Y(new_n401));
  XOR2X1   g140(.A(new_n401), .B(\period[25] ), .Y(new_n402_1));
  OAI22X1  g141(.A0(new_n402_1), .A1(new_n392), .B0(new_n396), .B1(\counter[22] ), .Y(new_n403));
  INVX1    g142(.A(\counter[26] ), .Y(new_n404));
  INVX1    g143(.A(\period[25] ), .Y(new_n405));
  XOR2X1   g144(.A(new_n401), .B(new_n405), .Y(new_n406_1));
  NOR3X1   g145(.A(new_n400), .B(\period[25] ), .C(\period[24] ), .Y(new_n407));
  XOR2X1   g146(.A(new_n407), .B(\period[26] ), .Y(new_n408));
  OAI22X1  g147(.A0(new_n408), .A1(new_n404), .B0(new_n406_1), .B1(\counter[25] ), .Y(new_n409));
  INVX1    g148(.A(\counter[21] ), .Y(new_n410_1));
  INVX1    g149(.A(\period[19] ), .Y(new_n411));
  XOR2X1   g150(.A(new_n296), .B(new_n411), .Y(new_n412));
  AND2X1   g151(.A(new_n292), .B(new_n289), .Y(new_n413));
  XOR2X1   g152(.A(new_n413), .B(\period[21] ), .Y(new_n414_1));
  OAI22X1  g153(.A0(new_n414_1), .A1(new_n410_1), .B0(new_n412), .B1(\counter[19] ), .Y(new_n415));
  INVX1    g154(.A(\counter[22] ), .Y(new_n416));
  XOR2X1   g155(.A(new_n395), .B(\period[22] ), .Y(new_n417));
  INVX1    g156(.A(\period[21] ), .Y(new_n418_1));
  XOR2X1   g157(.A(new_n413), .B(new_n418_1), .Y(new_n419));
  OAI22X1  g158(.A0(new_n419), .A1(\counter[21] ), .B0(new_n417), .B1(new_n416), .Y(new_n420));
  OR4X1    g159(.A(new_n420), .B(new_n415), .C(new_n409), .D(new_n403), .Y(new_n421));
  INVX1    g160(.A(\counter[23] ), .Y(new_n422_1));
  NOR4X1   g161(.A(new_n394_1), .B(\period[22] ), .C(\period[21] ), .D(\period[20] ), .Y(new_n423));
  XOR2X1   g162(.A(new_n423), .B(\period[23] ), .Y(new_n424));
  NOR2X1   g163(.A(new_n424), .B(new_n422_1), .Y(new_n425));
  INVX1    g164(.A(\period[28] ), .Y(new_n426));
  NOR4X1   g165(.A(\period[27] ), .B(\period[26] ), .C(\period[25] ), .D(\period[24] ), .Y(new_n427));
  NOR4X1   g166(.A(\period[27] ), .B(\period[26] ), .C(\period[25] ), .D(\period[24] ), .Y(new_n428));
  INVX1    g167(.A(new_n428), .Y(new_n429));
  AOI21X1  g168(.A0(new_n427), .A1(new_n400), .B0(new_n429), .Y(new_n430));
  XOR2X1   g169(.A(new_n430), .B(new_n426), .Y(new_n431));
  AOI22X1  g170(.A0(new_n431), .A1(\counter[28] ), .B0(new_n408), .B1(new_n404), .Y(new_n432));
  OAI21X1  g171(.A0(new_n431), .A1(\counter[28] ), .B0(new_n432), .Y(new_n433));
  OR4X1    g172(.A(new_n433), .B(new_n425), .C(new_n421), .D(new_n391), .Y(new_n434));
  INVX1    g173(.A(\counter[30] ), .Y(new_n435));
  INVX1    g174(.A(new_n427), .Y(new_n436));
  OAI21X1  g175(.A0(new_n436), .A1(new_n286), .B0(new_n428), .Y(new_n437));
  NOR3X1   g176(.A(new_n437), .B(\period[29] ), .C(\period[28] ), .Y(new_n438));
  XOR2X1   g177(.A(new_n438), .B(\period[30] ), .Y(new_n439));
  AND2X1   g178(.A(new_n439), .B(new_n435), .Y(new_n440));
  INVX1    g179(.A(\period[29] ), .Y(new_n441));
  NAND3X1  g180(.A(new_n430), .B(new_n441), .C(new_n426), .Y(new_n442));
  OAI21X1  g181(.A0(new_n437), .A1(\period[28] ), .B0(\period[29] ), .Y(new_n443));
  AND2X1   g182(.A(new_n443), .B(new_n442), .Y(new_n444));
  OAI22X1  g183(.A0(new_n444), .A1(\counter[29] ), .B0(new_n439), .B1(new_n435), .Y(new_n445));
  OR4X1    g184(.A(new_n400), .B(\period[26] ), .C(\period[25] ), .D(\period[24] ), .Y(new_n446));
  XOR2X1   g185(.A(new_n446), .B(\period[27] ), .Y(new_n447));
  AOI22X1  g186(.A0(new_n447), .A1(\counter[27] ), .B0(new_n424), .B1(new_n422_1), .Y(new_n448));
  OR2X1    g187(.A(new_n447), .B(\counter[27] ), .Y(new_n449));
  NAND3X1  g188(.A(new_n443), .B(new_n442), .C(\counter[29] ), .Y(new_n450));
  NAND3X1  g189(.A(new_n450), .B(new_n449), .C(new_n448), .Y(new_n451));
  INVX1    g190(.A(\counter[31] ), .Y(new_n452));
  OR4X1    g191(.A(new_n437), .B(\period[30] ), .C(\period[29] ), .D(\period[28] ), .Y(new_n453));
  XOR2X1   g192(.A(new_n453), .B(\period[31] ), .Y(new_n454));
  XOR2X1   g193(.A(new_n454), .B(new_n452), .Y(new_n455));
  OR4X1    g194(.A(new_n455), .B(new_n451), .C(new_n445), .D(new_n440), .Y(new_n456));
  NOR2X1   g195(.A(new_n456), .B(new_n434), .Y(new_n457));
  NOR4X1   g196(.A(\period[31] ), .B(\period[30] ), .C(\period[1] ), .D(\period[0] ), .Y(new_n458));
  NOR4X1   g197(.A(\period[29] ), .B(\period[28] ), .C(\period[3] ), .D(\period[2] ), .Y(new_n459));
  NAND4X1  g198(.A(new_n459), .B(new_n458), .C(new_n427), .D(new_n264), .Y(new_n460));
  NOR3X1   g199(.A(new_n460), .B(new_n397), .C(new_n274), .Y(new_n461));
  INVX1    g200(.A(signal), .Y(new_n462));
  NOR2X1   g201(.A(signal_prev), .B(new_n462), .Y(new_n463));
  NOR4X1   g202(.A(new_n463), .B(new_n461), .C(new_n457), .D(\counter[0] ), .Y(n138));
  INVX1    g203(.A(\counter[0] ), .Y(new_n465));
  XOR2X1   g204(.A(\counter[1] ), .B(new_n465), .Y(new_n466));
  NOR4X1   g205(.A(new_n466), .B(new_n463), .C(new_n461), .D(new_n457), .Y(n143));
  INVX1    g206(.A(\counter[2] ), .Y(new_n468));
  AND2X1   g207(.A(\counter[1] ), .B(\counter[0] ), .Y(new_n469));
  XOR2X1   g208(.A(new_n469), .B(new_n468), .Y(new_n470));
  NOR4X1   g209(.A(new_n470), .B(new_n463), .C(new_n461), .D(new_n457), .Y(n148));
  NAND3X1  g210(.A(\counter[2] ), .B(\counter[1] ), .C(\counter[0] ), .Y(new_n472));
  XOR2X1   g211(.A(new_n472), .B(\counter[3] ), .Y(new_n473));
  NOR4X1   g212(.A(new_n473), .B(new_n463), .C(new_n461), .D(new_n457), .Y(n153));
  NAND4X1  g213(.A(\counter[3] ), .B(\counter[2] ), .C(\counter[1] ), .D(\counter[0] ), .Y(new_n475));
  XOR2X1   g214(.A(new_n475), .B(\counter[4] ), .Y(new_n476));
  NOR4X1   g215(.A(new_n476), .B(new_n463), .C(new_n461), .D(new_n457), .Y(n158));
  INVX1    g216(.A(\counter[4] ), .Y(new_n478));
  NOR2X1   g217(.A(new_n475), .B(new_n478), .Y(new_n479));
  XOR2X1   g218(.A(new_n479), .B(new_n338_1), .Y(new_n480));
  OR2X1    g219(.A(new_n463), .B(new_n461), .Y(new_n481));
  NOR3X1   g220(.A(new_n481), .B(new_n480), .C(new_n457), .Y(n163));
  NOR3X1   g221(.A(new_n475), .B(new_n338_1), .C(new_n478), .Y(new_n483));
  XOR2X1   g222(.A(new_n483), .B(new_n311), .Y(new_n484));
  NOR3X1   g223(.A(new_n484), .B(new_n481), .C(new_n457), .Y(n168));
  NOR4X1   g224(.A(new_n475), .B(new_n311), .C(new_n338_1), .D(new_n478), .Y(new_n486));
  XOR2X1   g225(.A(new_n486), .B(new_n343), .Y(new_n487));
  NOR3X1   g226(.A(new_n487), .B(new_n481), .C(new_n457), .Y(n173));
  NAND4X1  g227(.A(\counter[7] ), .B(\counter[6] ), .C(\counter[5] ), .D(\counter[4] ), .Y(new_n489));
  NOR2X1   g228(.A(new_n489), .B(new_n475), .Y(new_n490));
  XOR2X1   g229(.A(new_n490), .B(new_n317), .Y(new_n491));
  NOR3X1   g230(.A(new_n491), .B(new_n481), .C(new_n457), .Y(n178));
  INVX1    g231(.A(\counter[9] ), .Y(new_n493));
  NOR3X1   g232(.A(new_n489), .B(new_n475), .C(new_n317), .Y(new_n494));
  XOR2X1   g233(.A(new_n494), .B(new_n493), .Y(new_n495));
  NOR3X1   g234(.A(new_n495), .B(new_n481), .C(new_n457), .Y(n183));
  NOR4X1   g235(.A(new_n489), .B(new_n475), .C(new_n493), .D(new_n317), .Y(new_n497));
  XOR2X1   g236(.A(new_n497), .B(new_n307), .Y(new_n498));
  NOR3X1   g237(.A(new_n498), .B(new_n481), .C(new_n457), .Y(n188));
  INVX1    g238(.A(\counter[11] ), .Y(new_n500));
  AND2X1   g239(.A(new_n497), .B(\counter[10] ), .Y(new_n501));
  XOR2X1   g240(.A(new_n501), .B(new_n500), .Y(new_n502));
  NOR3X1   g241(.A(new_n502), .B(new_n481), .C(new_n457), .Y(n193));
  NAND4X1  g242(.A(\counter[11] ), .B(\counter[10] ), .C(\counter[9] ), .D(\counter[8] ), .Y(new_n504));
  NOR3X1   g243(.A(new_n504), .B(new_n489), .C(new_n475), .Y(new_n505));
  XOR2X1   g244(.A(new_n505), .B(new_n352), .Y(new_n506));
  NOR3X1   g245(.A(new_n506), .B(new_n481), .C(new_n457), .Y(n198));
  NOR4X1   g246(.A(new_n504), .B(new_n489), .C(new_n475), .D(new_n352), .Y(new_n508));
  XOR2X1   g247(.A(new_n508), .B(new_n366_1), .Y(new_n509));
  NOR3X1   g248(.A(new_n509), .B(new_n481), .C(new_n457), .Y(n203));
  NAND3X1  g249(.A(new_n505), .B(\counter[13] ), .C(\counter[12] ), .Y(new_n511));
  XOR2X1   g250(.A(new_n511), .B(\counter[14] ), .Y(new_n512));
  NOR3X1   g251(.A(new_n512), .B(new_n481), .C(new_n457), .Y(n208));
  NAND4X1  g252(.A(new_n505), .B(\counter[14] ), .C(\counter[13] ), .D(\counter[12] ), .Y(new_n514));
  XOR2X1   g253(.A(new_n514), .B(\counter[15] ), .Y(new_n515));
  NOR3X1   g254(.A(new_n515), .B(new_n481), .C(new_n457), .Y(n213));
  NAND4X1  g255(.A(\counter[15] ), .B(\counter[14] ), .C(\counter[13] ), .D(\counter[12] ), .Y(new_n517));
  OR4X1    g256(.A(new_n517), .B(new_n504), .C(new_n489), .D(new_n475), .Y(new_n518));
  XOR2X1   g257(.A(new_n518), .B(\counter[16] ), .Y(new_n519));
  NOR3X1   g258(.A(new_n519), .B(new_n481), .C(new_n457), .Y(n218));
  NOR2X1   g259(.A(new_n518), .B(new_n358_1), .Y(new_n521));
  XOR2X1   g260(.A(new_n521), .B(new_n371), .Y(new_n522));
  NOR3X1   g261(.A(new_n522), .B(new_n481), .C(new_n457), .Y(n223));
  NOR3X1   g262(.A(new_n518), .B(new_n371), .C(new_n358_1), .Y(new_n524));
  XOR2X1   g263(.A(new_n524), .B(new_n378_1), .Y(new_n525));
  NOR3X1   g264(.A(new_n525), .B(new_n481), .C(new_n457), .Y(n228));
  NOR4X1   g265(.A(new_n518), .B(new_n378_1), .C(new_n371), .D(new_n358_1), .Y(new_n527));
  XOR2X1   g266(.A(new_n527), .B(new_n295), .Y(new_n528));
  NOR3X1   g267(.A(new_n528), .B(new_n481), .C(new_n457), .Y(n233));
  INVX1    g268(.A(\counter[20] ), .Y(new_n530));
  NAND4X1  g269(.A(\counter[19] ), .B(\counter[18] ), .C(\counter[17] ), .D(\counter[16] ), .Y(new_n531));
  NOR2X1   g270(.A(new_n531), .B(new_n518), .Y(new_n532));
  XOR2X1   g271(.A(new_n532), .B(new_n530), .Y(new_n533));
  NOR3X1   g272(.A(new_n533), .B(new_n481), .C(new_n457), .Y(n238));
  NOR3X1   g273(.A(new_n531), .B(new_n518), .C(new_n530), .Y(new_n535));
  XOR2X1   g274(.A(new_n535), .B(new_n410_1), .Y(new_n536));
  NOR3X1   g275(.A(new_n536), .B(new_n481), .C(new_n457), .Y(n243));
  NAND2X1  g276(.A(\counter[21] ), .B(\counter[20] ), .Y(new_n538));
  NOR3X1   g277(.A(new_n538), .B(new_n531), .C(new_n518), .Y(new_n539));
  XOR2X1   g278(.A(new_n539), .B(new_n416), .Y(new_n540));
  NOR3X1   g279(.A(new_n540), .B(new_n481), .C(new_n457), .Y(n248));
  NOR4X1   g280(.A(new_n538), .B(new_n531), .C(new_n518), .D(new_n416), .Y(new_n542));
  XOR2X1   g281(.A(new_n542), .B(new_n422_1), .Y(new_n543));
  NOR3X1   g282(.A(new_n543), .B(new_n481), .C(new_n457), .Y(n253));
  OR4X1    g283(.A(new_n538), .B(new_n531), .C(new_n422_1), .D(new_n416), .Y(new_n545));
  OR2X1    g284(.A(new_n545), .B(new_n518), .Y(new_n546));
  XOR2X1   g285(.A(new_n546), .B(\counter[24] ), .Y(new_n547));
  NOR3X1   g286(.A(new_n547), .B(new_n481), .C(new_n457), .Y(n258));
  NOR3X1   g287(.A(new_n545), .B(new_n518), .C(new_n272), .Y(new_n549));
  XOR2X1   g288(.A(new_n549), .B(new_n392), .Y(new_n550));
  NOR3X1   g289(.A(new_n550), .B(new_n481), .C(new_n457), .Y(n263));
  NAND2X1  g290(.A(\counter[25] ), .B(\counter[24] ), .Y(new_n552));
  NOR3X1   g291(.A(new_n552), .B(new_n545), .C(new_n518), .Y(new_n553));
  XOR2X1   g292(.A(new_n553), .B(new_n404), .Y(new_n554));
  NOR3X1   g293(.A(new_n554), .B(new_n481), .C(new_n457), .Y(n268));
  INVX1    g294(.A(\counter[27] ), .Y(new_n556));
  NOR4X1   g295(.A(new_n552), .B(new_n545), .C(new_n518), .D(new_n404), .Y(new_n557));
  XOR2X1   g296(.A(new_n557), .B(new_n556), .Y(new_n558));
  NOR3X1   g297(.A(new_n558), .B(new_n481), .C(new_n457), .Y(n273));
  INVX1    g298(.A(\counter[28] ), .Y(new_n560));
  NAND4X1  g299(.A(\counter[27] ), .B(\counter[26] ), .C(\counter[25] ), .D(\counter[24] ), .Y(new_n561));
  NOR3X1   g300(.A(new_n561), .B(new_n545), .C(new_n518), .Y(new_n562));
  XOR2X1   g301(.A(new_n562), .B(new_n560), .Y(new_n563));
  NOR3X1   g302(.A(new_n563), .B(new_n481), .C(new_n457), .Y(n278));
  INVX1    g303(.A(\counter[29] ), .Y(new_n565));
  NOR4X1   g304(.A(new_n561), .B(new_n545), .C(new_n518), .D(new_n560), .Y(new_n566));
  XOR2X1   g305(.A(new_n566), .B(new_n565), .Y(new_n567));
  NOR3X1   g306(.A(new_n567), .B(new_n481), .C(new_n457), .Y(n283));
  NOR4X1   g307(.A(new_n561), .B(new_n546), .C(new_n565), .D(new_n560), .Y(new_n569));
  XOR2X1   g308(.A(new_n569), .B(new_n435), .Y(new_n570));
  NOR3X1   g309(.A(new_n570), .B(new_n481), .C(new_n457), .Y(n288));
  NAND4X1  g310(.A(new_n562), .B(\counter[30] ), .C(\counter[29] ), .D(\counter[28] ), .Y(new_n572));
  XOR2X1   g311(.A(new_n572), .B(\counter[31] ), .Y(new_n573));
  NOR3X1   g312(.A(new_n573), .B(new_n481), .C(new_n457), .Y(n293));
  AOI21X1  g313(.A0(new_n443), .A1(new_n442), .B0(\counter[29] ), .Y(new_n575));
  NOR2X1   g314(.A(new_n439), .B(new_n435), .Y(new_n576));
  OR4X1    g315(.A(new_n451), .B(new_n576), .C(new_n575), .D(new_n440), .Y(new_n577));
  OR4X1    g316(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n465), .Y(new_n578));
  OAI21X1  g317(.A0(new_n456), .A1(new_n434), .B0(\count[0] ), .Y(new_n579));
  AOI21X1  g318(.A0(new_n579), .A1(new_n578), .B0(new_n461), .Y(n298));
  OR4X1    g319(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n328), .Y(new_n581));
  OAI21X1  g320(.A0(new_n456), .A1(new_n434), .B0(\count[1] ), .Y(new_n582));
  AOI21X1  g321(.A0(new_n582), .A1(new_n581), .B0(new_n461), .Y(n302));
  OR4X1    g322(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n468), .Y(new_n584));
  OAI21X1  g323(.A0(new_n456), .A1(new_n434), .B0(\count[2] ), .Y(new_n585));
  AOI21X1  g324(.A0(new_n585), .A1(new_n584), .B0(new_n461), .Y(n306));
  OR4X1    g325(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n320), .Y(new_n587));
  OAI21X1  g326(.A0(new_n456), .A1(new_n434), .B0(\count[3] ), .Y(new_n588));
  AOI21X1  g327(.A0(new_n588), .A1(new_n587), .B0(new_n461), .Y(n310));
  OR4X1    g328(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n478), .Y(new_n590));
  OAI21X1  g329(.A0(new_n456), .A1(new_n434), .B0(\count[4] ), .Y(new_n591));
  AOI21X1  g330(.A0(new_n591), .A1(new_n590), .B0(new_n461), .Y(n314));
  OR4X1    g331(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n338_1), .Y(new_n593));
  OAI21X1  g332(.A0(new_n456), .A1(new_n434), .B0(\count[5] ), .Y(new_n594));
  AOI21X1  g333(.A0(new_n594), .A1(new_n593), .B0(new_n461), .Y(n318));
  OR4X1    g334(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n311), .Y(new_n596));
  OAI21X1  g335(.A0(new_n456), .A1(new_n434), .B0(\count[6] ), .Y(new_n597));
  AOI21X1  g336(.A0(new_n597), .A1(new_n596), .B0(new_n461), .Y(n322));
  OR4X1    g337(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n343), .Y(new_n599));
  OAI21X1  g338(.A0(new_n456), .A1(new_n434), .B0(\count[7] ), .Y(new_n600));
  AOI21X1  g339(.A0(new_n600), .A1(new_n599), .B0(new_n461), .Y(n326));
  OR4X1    g340(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n317), .Y(new_n602));
  OAI21X1  g341(.A0(new_n456), .A1(new_n434), .B0(\count[8] ), .Y(new_n603));
  AOI21X1  g342(.A0(new_n603), .A1(new_n602), .B0(new_n461), .Y(n330));
  OR4X1    g343(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n493), .Y(new_n605));
  OAI21X1  g344(.A0(new_n456), .A1(new_n434), .B0(\count[9] ), .Y(new_n606));
  AOI21X1  g345(.A0(new_n606), .A1(new_n605), .B0(new_n461), .Y(n334));
  OR4X1    g346(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n307), .Y(new_n608));
  OAI21X1  g347(.A0(new_n456), .A1(new_n434), .B0(\count[10] ), .Y(new_n609));
  AOI21X1  g348(.A0(new_n609), .A1(new_n608), .B0(new_n461), .Y(n338));
  OR4X1    g349(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n500), .Y(new_n611));
  OAI21X1  g350(.A0(new_n456), .A1(new_n434), .B0(\count[11] ), .Y(new_n612));
  AOI21X1  g351(.A0(new_n612), .A1(new_n611), .B0(new_n461), .Y(n342));
  OR4X1    g352(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n352), .Y(new_n614));
  OAI21X1  g353(.A0(new_n456), .A1(new_n434), .B0(\count[12] ), .Y(new_n615));
  AOI21X1  g354(.A0(new_n615), .A1(new_n614), .B0(new_n461), .Y(n346));
  OR4X1    g355(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n366_1), .Y(new_n617));
  OAI21X1  g356(.A0(new_n456), .A1(new_n434), .B0(\count[13] ), .Y(new_n618));
  AOI21X1  g357(.A0(new_n618), .A1(new_n617), .B0(new_n461), .Y(n350));
  OR4X1    g358(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n385), .Y(new_n620));
  OAI21X1  g359(.A0(new_n456), .A1(new_n434), .B0(\count[14] ), .Y(new_n621));
  AOI21X1  g360(.A0(new_n621), .A1(new_n620), .B0(new_n461), .Y(n354));
  INVX1    g361(.A(\counter[15] ), .Y(new_n623));
  OR4X1    g362(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n623), .Y(new_n624));
  OAI21X1  g363(.A0(new_n456), .A1(new_n434), .B0(\count[15] ), .Y(new_n625));
  AOI21X1  g364(.A0(new_n625), .A1(new_n624), .B0(new_n461), .Y(n358));
  OR4X1    g365(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n358_1), .Y(new_n627));
  OAI21X1  g366(.A0(new_n456), .A1(new_n434), .B0(\count[16] ), .Y(new_n628));
  AOI21X1  g367(.A0(new_n628), .A1(new_n627), .B0(new_n461), .Y(n362));
  OR4X1    g368(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n371), .Y(new_n630));
  OAI21X1  g369(.A0(new_n456), .A1(new_n434), .B0(\count[17] ), .Y(new_n631));
  AOI21X1  g370(.A0(new_n631), .A1(new_n630), .B0(new_n461), .Y(n366));
  OR4X1    g371(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n378_1), .Y(new_n633));
  OAI21X1  g372(.A0(new_n456), .A1(new_n434), .B0(\count[18] ), .Y(new_n634));
  AOI21X1  g373(.A0(new_n634), .A1(new_n633), .B0(new_n461), .Y(n370));
  OR4X1    g374(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n295), .Y(new_n636));
  OAI21X1  g375(.A0(new_n456), .A1(new_n434), .B0(\count[19] ), .Y(new_n637));
  AOI21X1  g376(.A0(new_n637), .A1(new_n636), .B0(new_n461), .Y(n374));
  OR4X1    g377(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n530), .Y(new_n639));
  OAI21X1  g378(.A0(new_n456), .A1(new_n434), .B0(\count[20] ), .Y(new_n640));
  AOI21X1  g379(.A0(new_n640), .A1(new_n639), .B0(new_n461), .Y(n378));
  OR4X1    g380(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n410_1), .Y(new_n642));
  OAI21X1  g381(.A0(new_n456), .A1(new_n434), .B0(\count[21] ), .Y(new_n643));
  AOI21X1  g382(.A0(new_n643), .A1(new_n642), .B0(new_n461), .Y(n382));
  OR4X1    g383(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n416), .Y(new_n645));
  OAI21X1  g384(.A0(new_n456), .A1(new_n434), .B0(\count[22] ), .Y(new_n646));
  AOI21X1  g385(.A0(new_n646), .A1(new_n645), .B0(new_n461), .Y(n386));
  OR4X1    g386(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n422_1), .Y(new_n648));
  OAI21X1  g387(.A0(new_n456), .A1(new_n434), .B0(\count[23] ), .Y(new_n649));
  AOI21X1  g388(.A0(new_n649), .A1(new_n648), .B0(new_n461), .Y(n390));
  OR4X1    g389(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n272), .Y(new_n651));
  OAI21X1  g390(.A0(new_n456), .A1(new_n434), .B0(\count[24] ), .Y(new_n652));
  AOI21X1  g391(.A0(new_n652), .A1(new_n651), .B0(new_n461), .Y(n394));
  OR4X1    g392(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n392), .Y(new_n654));
  OAI21X1  g393(.A0(new_n456), .A1(new_n434), .B0(\count[25] ), .Y(new_n655));
  AOI21X1  g394(.A0(new_n655), .A1(new_n654), .B0(new_n461), .Y(n398));
  OR4X1    g395(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n404), .Y(new_n657));
  OAI21X1  g396(.A0(new_n456), .A1(new_n434), .B0(\count[26] ), .Y(new_n658));
  AOI21X1  g397(.A0(new_n658), .A1(new_n657), .B0(new_n461), .Y(n402));
  OR4X1    g398(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n556), .Y(new_n660));
  OAI21X1  g399(.A0(new_n456), .A1(new_n434), .B0(\count[27] ), .Y(new_n661));
  AOI21X1  g400(.A0(new_n661), .A1(new_n660), .B0(new_n461), .Y(n406));
  OR4X1    g401(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n560), .Y(new_n663));
  OAI21X1  g402(.A0(new_n456), .A1(new_n434), .B0(\count[28] ), .Y(new_n664));
  AOI21X1  g403(.A0(new_n664), .A1(new_n663), .B0(new_n461), .Y(n410));
  OR4X1    g404(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n565), .Y(new_n666));
  OAI21X1  g405(.A0(new_n456), .A1(new_n434), .B0(\count[29] ), .Y(new_n667));
  AOI21X1  g406(.A0(new_n667), .A1(new_n666), .B0(new_n461), .Y(n414));
  OR4X1    g407(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n435), .Y(new_n669));
  OAI21X1  g408(.A0(new_n456), .A1(new_n434), .B0(\count[30] ), .Y(new_n670));
  AOI21X1  g409(.A0(new_n670), .A1(new_n669), .B0(new_n461), .Y(n418));
  OR4X1    g410(.A(new_n455), .B(new_n577), .C(new_n434), .D(new_n452), .Y(new_n672));
  OAI21X1  g411(.A0(new_n456), .A1(new_n434), .B0(\count[31] ), .Y(new_n673));
  AOI21X1  g412(.A0(new_n673), .A1(new_n672), .B0(new_n461), .Y(n422));
  BUFX1    g413(.A(signal), .Y(n133));
  always @ (posedge clock) begin
    signal_prev <= n133;
    \counter[0]  <= n138;
    \counter[1]  <= n143;
    \counter[2]  <= n148;
    \counter[3]  <= n153;
    \counter[4]  <= n158;
    \counter[5]  <= n163;
    \counter[6]  <= n168;
    \counter[7]  <= n173;
    \counter[8]  <= n178;
    \counter[9]  <= n183;
    \counter[10]  <= n188;
    \counter[11]  <= n193;
    \counter[12]  <= n198;
    \counter[13]  <= n203;
    \counter[14]  <= n208;
    \counter[15]  <= n213;
    \counter[16]  <= n218;
    \counter[17]  <= n223;
    \counter[18]  <= n228;
    \counter[19]  <= n233;
    \counter[20]  <= n238;
    \counter[21]  <= n243;
    \counter[22]  <= n248;
    \counter[23]  <= n253;
    \counter[24]  <= n258;
    \counter[25]  <= n263;
    \counter[26]  <= n268;
    \counter[27]  <= n273;
    \counter[28]  <= n278;
    \counter[29]  <= n283;
    \counter[30]  <= n288;
    \counter[31]  <= n293;
    \count[0]  <= n298;
    \count[1]  <= n302;
    \count[2]  <= n306;
    \count[3]  <= n310;
    \count[4]  <= n314;
    \count[5]  <= n318;
    \count[6]  <= n322;
    \count[7]  <= n326;
    \count[8]  <= n330;
    \count[9]  <= n334;
    \count[10]  <= n338;
    \count[11]  <= n342;
    \count[12]  <= n346;
    \count[13]  <= n350;
    \count[14]  <= n354;
    \count[15]  <= n358;
    \count[16]  <= n362;
    \count[17]  <= n366;
    \count[18]  <= n370;
    \count[19]  <= n374;
    \count[20]  <= n378;
    \count[21]  <= n382;
    \count[22]  <= n386;
    \count[23]  <= n390;
    \count[24]  <= n394;
    \count[25]  <= n398;
    \count[26]  <= n402;
    \count[27]  <= n406;
    \count[28]  <= n410;
    \count[29]  <= n414;
    \count[30]  <= n418;
    \count[31]  <= n422;
  end
  initial begin
    signal_prev <= 1'b0;
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
    \counter[16]  <= 1'b0;
    \counter[17]  <= 1'b0;
    \counter[18]  <= 1'b0;
    \counter[19]  <= 1'b0;
    \counter[20]  <= 1'b0;
    \counter[21]  <= 1'b0;
    \counter[22]  <= 1'b0;
    \counter[23]  <= 1'b0;
    \counter[24]  <= 1'b0;
    \counter[25]  <= 1'b0;
    \counter[26]  <= 1'b0;
    \counter[27]  <= 1'b0;
    \counter[28]  <= 1'b0;
    \counter[29]  <= 1'b0;
    \counter[30]  <= 1'b0;
    \counter[31]  <= 1'b0;
  end
endmodule


