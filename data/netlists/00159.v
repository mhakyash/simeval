// Benchmark "uart_rx" written by ABC on Wed Jun 26 15:22:02 2024

module uart_rx ( clock, 
    clk_i, rst_i, rx_i,
    rx_done_tick_o, \dout_bo[0] , \dout_bo[1] , \dout_bo[2] , \dout_bo[3] ,
    \dout_bo[4] , \dout_bo[5] , \dout_bo[6] , \dout_bo[7] , locked_o,
    \bitperiod_o[0] , \bitperiod_o[1] , \bitperiod_o[2] , \bitperiod_o[3] ,
    \bitperiod_o[4] , \bitperiod_o[5] , \bitperiod_o[6] , \bitperiod_o[7] ,
    \bitperiod_o[8] , \bitperiod_o[9] , \bitperiod_o[10] ,
    \bitperiod_o[11] , \bitperiod_o[12] , \bitperiod_o[13] ,
    \bitperiod_o[14] , \bitperiod_o[15] , \bitperiod_o[16] ,
    \bitperiod_o[17] , \bitperiod_o[18] , \bitperiod_o[19] ,
    \bitperiod_o[20] , \bitperiod_o[21] , \bitperiod_o[22] ,
    \bitperiod_o[23] , \bitperiod_o[24] , \bitperiod_o[25] ,
    \bitperiod_o[26] , \bitperiod_o[27] , \bitperiod_o[28]   );
  input  clock;
  input  clk_i, rst_i, rx_i;
  output rx_done_tick_o, \dout_bo[0] , \dout_bo[1] , \dout_bo[2] ,
    \dout_bo[3] , \dout_bo[4] , \dout_bo[5] , \dout_bo[6] , \dout_bo[7] ,
    locked_o, \bitperiod_o[0] , \bitperiod_o[1] , \bitperiod_o[2] ,
    \bitperiod_o[3] , \bitperiod_o[4] , \bitperiod_o[5] , \bitperiod_o[6] ,
    \bitperiod_o[7] , \bitperiod_o[8] , \bitperiod_o[9] ,
    \bitperiod_o[10] , \bitperiod_o[11] , \bitperiod_o[12] ,
    \bitperiod_o[13] , \bitperiod_o[14] , \bitperiod_o[15] ,
    \bitperiod_o[16] , \bitperiod_o[17] , \bitperiod_o[18] ,
    \bitperiod_o[19] , \bitperiod_o[20] , \bitperiod_o[21] ,
    \bitperiod_o[22] , \bitperiod_o[23] , \bitperiod_o[24] ,
    \bitperiod_o[25] , \bitperiod_o[26] , \bitperiod_o[27] ,
    \bitperiod_o[28] ;
  reg \clk_counter[24] , \clk_counter[25] , \clk_counter[26] ,
    \clk_counter[27] , \clk_counter[28] , \clk_counter[29] ,
    \clk_counter[30] , \clk_counter[31] , \dout_bo[0] , \dout_bo[1] ,
    \dout_bo[2] , \dout_bo[3] , \dout_bo[4] , \dout_bo[5] , \dout_bo[6] ,
    \dout_bo[7] , locked_o, rx_done_tick_o, \bit_counter[0] ,
    \bit_counter[1] , \bit_counter[2] , rx_buf, \state[0] , \state[1] ,
    \state[2] , \state[3] , \state[4] , \state[5] , \state[6] , \state[7] ,
    \state[8] , \state[9] , \state[10] , \state[11] , \state[12] ,
    \state[13] , \bitperiod_o[0] , \bitperiod_o[1] , \bitperiod_o[2] ,
    \bitperiod_o[3] , \bitperiod_o[4] , \bitperiod_o[5] , \bitperiod_o[6] ,
    \bitperiod_o[7] , \bitperiod_o[8] , \bitperiod_o[9] ,
    \bitperiod_o[10] , \bitperiod_o[11] , \bitperiod_o[12] ,
    \bitperiod_o[13] , \bitperiod_o[14] , \bitperiod_o[15] ,
    \bitperiod_o[16] , \bitperiod_o[17] , \bitperiod_o[18] ,
    \bitperiod_o[19] , \bitperiod_o[20] , \bitperiod_o[21] ,
    \bitperiod_o[22] , \bitperiod_o[23] , \bitperiod_o[24] ,
    \bitperiod_o[25] , \bitperiod_o[26] , \bitperiod_o[27] ,
    \bitperiod_o[28] , \clk_counter[0] , \clk_counter[1] ,
    \clk_counter[2] , \clk_counter[3] , \clk_counter[4] , \clk_counter[5] ,
    \clk_counter[6] , \clk_counter[7] , \clk_counter[8] , \clk_counter[9] ,
    \clk_counter[10] , \clk_counter[11] , \clk_counter[12] ,
    \clk_counter[13] , \clk_counter[14] , \clk_counter[15] ,
    \clk_counter[16] , \clk_counter[17] , \clk_counter[18] ,
    \clk_counter[19] , \clk_counter[20] , \clk_counter[21] ,
    \clk_counter[22] , \clk_counter[23] ;
  wire new_n310, new_n311, new_n312_1, new_n313, new_n314, new_n315,
    new_n316_1, new_n317, new_n318, new_n319, new_n320_1, new_n321,
    new_n322, new_n323, new_n324_1, new_n325, new_n326, new_n327,
    new_n328_1, new_n329, new_n330, new_n331, new_n332_1, new_n333,
    new_n334, new_n335, new_n336_1, new_n337, new_n338, new_n339,
    new_n340_1, new_n341, new_n342, new_n343, new_n344_1, new_n345,
    new_n346, new_n347, new_n348_1, new_n349, new_n350, new_n351,
    new_n352_1, new_n353, new_n354, new_n355, new_n356_1, new_n357,
    new_n358, new_n359, new_n360_1, new_n361, new_n362, new_n363,
    new_n364_1, new_n365, new_n366, new_n367, new_n368_1, new_n369,
    new_n370, new_n371, new_n372_1, new_n373, new_n374, new_n375, new_n376,
    new_n377_1, new_n378, new_n379, new_n380, new_n381, new_n382_1,
    new_n383, new_n384, new_n385, new_n386, new_n387_1, new_n388, new_n389,
    new_n390, new_n391, new_n392_1, new_n393, new_n394, new_n395, new_n396,
    new_n397_1, new_n398, new_n399, new_n400, new_n401, new_n402_1,
    new_n403, new_n404, new_n405, new_n406, new_n407_1, new_n408, new_n409,
    new_n410, new_n411, new_n412_1, new_n413, new_n414, new_n415, new_n416,
    new_n417_1, new_n418, new_n419, new_n420, new_n421, new_n422_1,
    new_n423, new_n424, new_n425, new_n426, new_n427_1, new_n428, new_n429,
    new_n430, new_n431, new_n432_1, new_n433, new_n434, new_n435, new_n436,
    new_n437_1, new_n438, new_n439, new_n440, new_n441, new_n442_1,
    new_n443, new_n444, new_n445, new_n446, new_n447_1, new_n448, new_n449,
    new_n450, new_n451, new_n452_1, new_n453, new_n454, new_n455, new_n456,
    new_n457_1, new_n458, new_n459, new_n460, new_n461, new_n462_1,
    new_n463, new_n464, new_n465, new_n466, new_n467_1, new_n468, new_n469,
    new_n471, new_n472_1, new_n473, new_n474, new_n475, new_n476,
    new_n477_1, new_n478, new_n479, new_n481, new_n482_1, new_n483,
    new_n484, new_n485, new_n486, new_n487_1, new_n489, new_n490, new_n491,
    new_n492, new_n493, new_n494, new_n495, new_n496, new_n498, new_n499,
    new_n500, new_n501, new_n502, new_n503, new_n504, new_n505, new_n507,
    new_n508, new_n509, new_n510, new_n511, new_n512, new_n513, new_n515,
    new_n516, new_n517, new_n518, new_n519, new_n520, new_n521, new_n522,
    new_n524, new_n525, new_n526, new_n527, new_n528, new_n529, new_n530,
    new_n531, new_n533, new_n534, new_n535, new_n536, new_n537, new_n539,
    new_n540, new_n541, new_n542, new_n543, new_n545, new_n546, new_n547,
    new_n548, new_n550, new_n551, new_n552, new_n553, new_n555, new_n556,
    new_n557, new_n558, new_n560, new_n561, new_n562, new_n563, new_n565,
    new_n566, new_n567, new_n568, new_n570, new_n571, new_n572, new_n573,
    new_n575, new_n577, new_n578, new_n579, new_n581, new_n582, new_n583,
    new_n584, new_n585, new_n586, new_n587, new_n588, new_n589, new_n591,
    new_n592, new_n593, new_n594, new_n595, new_n596, new_n597, new_n598,
    new_n600, new_n601, new_n602, new_n603, new_n604, new_n605, new_n606,
    new_n607, new_n608, new_n611, new_n612, new_n614, new_n615, new_n616,
    new_n618, new_n619, new_n621, new_n622, new_n623, new_n624, new_n626,
    new_n627, new_n629, new_n631, new_n632, new_n634, new_n636, new_n639,
    new_n640, new_n643, new_n646, new_n647, new_n649, new_n650, new_n652,
    new_n653, new_n655, new_n656, new_n658, new_n659, new_n661, new_n662,
    new_n664, new_n665, new_n667, new_n668, new_n670, new_n671, new_n673,
    new_n674, new_n676, new_n677, new_n679, new_n680, new_n682, new_n683,
    new_n685, new_n686, new_n688, new_n689, new_n691, new_n692, new_n694,
    new_n695, new_n697, new_n698, new_n700, new_n701, new_n703, new_n704,
    new_n706, new_n707, new_n709, new_n710, new_n712, new_n713, new_n715,
    new_n716, new_n718, new_n719, new_n721, new_n722, new_n724, new_n725,
    new_n727, new_n728, new_n730, new_n731, new_n733, new_n734, new_n735,
    new_n736, new_n737, new_n738, new_n739, new_n740, new_n742, new_n743,
    new_n744, new_n745, new_n746, new_n747, new_n748, new_n749, new_n751,
    new_n752, new_n753, new_n754, new_n755, new_n756, new_n757, new_n758,
    new_n759, new_n761, new_n762, new_n763, new_n764, new_n765, new_n766,
    new_n767, new_n768, new_n769, new_n770, new_n772, new_n773, new_n774,
    new_n775, new_n776, new_n777, new_n778, new_n779, new_n780, new_n782,
    new_n783, new_n784, new_n785, new_n786, new_n787, new_n788, new_n789,
    new_n790, new_n791, new_n793, new_n794, new_n795, new_n796, new_n797,
    new_n798, new_n799, new_n800, new_n801, new_n802, new_n804, new_n805,
    new_n806, new_n807, new_n808, new_n809, new_n810, new_n811, new_n812,
    new_n813, new_n815, new_n816, new_n817, new_n818, new_n819, new_n820,
    new_n821, new_n822, new_n823, new_n824, new_n826, new_n827, new_n828,
    new_n829, new_n830, new_n831, new_n832, new_n833, new_n834, new_n835,
    new_n837, new_n838, new_n839, new_n840, new_n841, new_n842, new_n843,
    new_n844, new_n845, new_n846, new_n848, new_n849, new_n850, new_n851,
    new_n852, new_n853, new_n854, new_n855, new_n856, new_n857, new_n859,
    new_n860, new_n861, new_n862, new_n863, new_n864, new_n865, new_n866,
    new_n867, new_n868, new_n870, new_n871, new_n872, new_n873, new_n874,
    new_n875, new_n876, new_n877, new_n878, new_n880, new_n881, new_n882,
    new_n883, new_n884, new_n885, new_n886, new_n887, new_n888, new_n889,
    new_n891, new_n892, new_n893, new_n894, new_n895, new_n896, new_n897,
    new_n899, new_n900, new_n901, new_n902, new_n903, new_n904, new_n905,
    new_n906, new_n907, new_n909, new_n910, new_n911, new_n912, new_n913,
    new_n914, new_n915, new_n916, new_n917, new_n919, new_n920, new_n921,
    new_n922, new_n923, new_n924, new_n925, new_n926, new_n927, new_n929,
    new_n930, new_n931, new_n932, new_n933, new_n934, new_n935, new_n936,
    new_n938, new_n939, new_n940, new_n941, new_n942, new_n943, new_n944,
    new_n945, new_n946, new_n948, new_n949, new_n950, new_n951, new_n952,
    new_n953, new_n954, new_n956, new_n957, new_n958, new_n959, new_n960,
    new_n961, new_n962, new_n964, new_n965, new_n966, new_n967, new_n968,
    new_n969, new_n970, n86, n91, n96, n101, n106, n111, n116, n121, n126,
    n130, n134, n138, n142, n146, n150, n154, n158, n162, n166, n171, n176,
    n181, n186, n191, n196, n201, n206, n211, n216, n221, n226, n231, n236,
    n241, n246, n251, n256, n260, n264, n268, n272, n276, n280, n284, n288,
    n292, n296, n300, n304, n308, n312, n316, n320, n324, n328, n332, n336,
    n340, n344, n348, n352, n356, n360, n364, n368, n372, n377, n382, n387,
    n392, n397, n402, n407, n412, n417, n422, n427, n432, n437, n442, n447,
    n452, n457, n462, n467, n472, n477, n482, n487;
  INVX1    g000(.A(\clk_counter[24] ), .Y(new_n310));
  INVX1    g001(.A(\state[3] ), .Y(new_n311));
  INVX1    g002(.A(\state[5] ), .Y(new_n312_1));
  INVX1    g003(.A(\state[12] ), .Y(new_n313));
  NOR4X1   g004(.A(\state[13] ), .B(\state[11] ), .C(\state[9] ), .D(\state[8] ), .Y(new_n314));
  NOR4X1   g005(.A(\state[6] ), .B(\state[4] ), .C(\state[2] ), .D(\state[1] ), .Y(new_n315));
  AND2X1   g006(.A(new_n315), .B(new_n314), .Y(new_n316_1));
  NAND4X1  g007(.A(new_n316_1), .B(new_n313), .C(new_n312_1), .D(new_n311), .Y(new_n317));
  OR2X1    g008(.A(new_n317), .B(new_n310), .Y(new_n318));
  XOR2X1   g009(.A(\clk_counter[8] ), .B(\bitperiod_o[9] ), .Y(new_n319));
  XOR2X1   g010(.A(\clk_counter[9] ), .B(\bitperiod_o[10] ), .Y(new_n320_1));
  XOR2X1   g011(.A(\clk_counter[6] ), .B(\bitperiod_o[7] ), .Y(new_n321));
  XOR2X1   g012(.A(\clk_counter[7] ), .B(\bitperiod_o[8] ), .Y(new_n322));
  OR4X1    g013(.A(new_n322), .B(new_n321), .C(new_n320_1), .D(new_n319), .Y(new_n323));
  XOR2X1   g014(.A(\clk_counter[12] ), .B(\bitperiod_o[13] ), .Y(new_n324_1));
  XOR2X1   g015(.A(\clk_counter[13] ), .B(\bitperiod_o[14] ), .Y(new_n325));
  XOR2X1   g016(.A(\clk_counter[10] ), .B(\bitperiod_o[11] ), .Y(new_n326));
  XOR2X1   g017(.A(\clk_counter[11] ), .B(\bitperiod_o[12] ), .Y(new_n327));
  OR4X1    g018(.A(new_n327), .B(new_n326), .C(new_n325), .D(new_n324_1), .Y(new_n328_1));
  OR2X1    g019(.A(\clk_counter[31] ), .B(\clk_counter[30] ), .Y(new_n329));
  OR2X1    g020(.A(\clk_counter[29] ), .B(\clk_counter[28] ), .Y(new_n330));
  XOR2X1   g021(.A(\clk_counter[0] ), .B(\bitperiod_o[1] ), .Y(new_n331));
  XOR2X1   g022(.A(\clk_counter[1] ), .B(\bitperiod_o[2] ), .Y(new_n332_1));
  OR4X1    g023(.A(new_n332_1), .B(new_n331), .C(new_n330), .D(new_n329), .Y(new_n333));
  XOR2X1   g024(.A(\clk_counter[4] ), .B(\bitperiod_o[5] ), .Y(new_n334));
  XOR2X1   g025(.A(\clk_counter[5] ), .B(\bitperiod_o[6] ), .Y(new_n335));
  XOR2X1   g026(.A(\clk_counter[2] ), .B(\bitperiod_o[3] ), .Y(new_n336_1));
  XOR2X1   g027(.A(\clk_counter[3] ), .B(\bitperiod_o[4] ), .Y(new_n337));
  OR4X1    g028(.A(new_n337), .B(new_n336_1), .C(new_n335), .D(new_n334), .Y(new_n338));
  NOR4X1   g029(.A(new_n338), .B(new_n333), .C(new_n328_1), .D(new_n323), .Y(new_n339));
  XOR2X1   g030(.A(\bitperiod_o[27] ), .B(\clk_counter[26] ), .Y(new_n340_1));
  XOR2X1   g031(.A(\bitperiod_o[28] ), .B(\clk_counter[27] ), .Y(new_n341));
  OR2X1    g032(.A(new_n341), .B(new_n340_1), .Y(new_n342));
  XOR2X1   g033(.A(\bitperiod_o[25] ), .B(\clk_counter[24] ), .Y(new_n343));
  XOR2X1   g034(.A(\bitperiod_o[26] ), .B(\clk_counter[25] ), .Y(new_n344_1));
  XOR2X1   g035(.A(\clk_counter[22] ), .B(\bitperiod_o[23] ), .Y(new_n345));
  XOR2X1   g036(.A(\clk_counter[23] ), .B(\bitperiod_o[24] ), .Y(new_n346));
  OR4X1    g037(.A(new_n346), .B(new_n345), .C(new_n344_1), .D(new_n343), .Y(new_n347));
  XOR2X1   g038(.A(\clk_counter[16] ), .B(\bitperiod_o[17] ), .Y(new_n348_1));
  XOR2X1   g039(.A(\clk_counter[17] ), .B(\bitperiod_o[18] ), .Y(new_n349));
  XOR2X1   g040(.A(\clk_counter[14] ), .B(\bitperiod_o[15] ), .Y(new_n350));
  XOR2X1   g041(.A(\clk_counter[15] ), .B(\bitperiod_o[16] ), .Y(new_n351));
  OR4X1    g042(.A(new_n351), .B(new_n350), .C(new_n349), .D(new_n348_1), .Y(new_n352_1));
  XOR2X1   g043(.A(\clk_counter[20] ), .B(\bitperiod_o[21] ), .Y(new_n353));
  XOR2X1   g044(.A(\clk_counter[21] ), .B(\bitperiod_o[22] ), .Y(new_n354));
  XOR2X1   g045(.A(\clk_counter[18] ), .B(\bitperiod_o[19] ), .Y(new_n355));
  XOR2X1   g046(.A(\clk_counter[19] ), .B(\bitperiod_o[20] ), .Y(new_n356_1));
  OR4X1    g047(.A(new_n356_1), .B(new_n355), .C(new_n354), .D(new_n353), .Y(new_n357));
  NOR4X1   g048(.A(new_n357), .B(new_n352_1), .C(new_n347), .D(new_n342), .Y(new_n358));
  AND2X1   g049(.A(new_n358), .B(new_n339), .Y(new_n359));
  NAND4X1  g050(.A(\clk_counter[3] ), .B(\clk_counter[2] ), .C(\clk_counter[1] ), .D(\clk_counter[0] ), .Y(new_n360_1));
  NAND4X1  g051(.A(\clk_counter[7] ), .B(\clk_counter[6] ), .C(\clk_counter[5] ), .D(\clk_counter[4] ), .Y(new_n361));
  NAND4X1  g052(.A(\clk_counter[11] ), .B(\clk_counter[10] ), .C(\clk_counter[9] ), .D(\clk_counter[8] ), .Y(new_n362));
  NAND4X1  g053(.A(\clk_counter[15] ), .B(\clk_counter[14] ), .C(\clk_counter[13] ), .D(\clk_counter[12] ), .Y(new_n363));
  OR4X1    g054(.A(new_n363), .B(new_n362), .C(new_n361), .D(new_n360_1), .Y(new_n364_1));
  NAND4X1  g055(.A(\clk_counter[19] ), .B(\clk_counter[18] ), .C(\clk_counter[17] ), .D(\clk_counter[16] ), .Y(new_n365));
  NAND4X1  g056(.A(\clk_counter[23] ), .B(\clk_counter[22] ), .C(\clk_counter[21] ), .D(\clk_counter[20] ), .Y(new_n366));
  OR2X1    g057(.A(new_n366), .B(new_n365), .Y(new_n367));
  NOR2X1   g058(.A(new_n367), .B(new_n364_1), .Y(new_n368_1));
  XOR2X1   g059(.A(new_n368_1), .B(new_n310), .Y(new_n369));
  NOR3X1   g060(.A(new_n369), .B(new_n359), .C(new_n313), .Y(new_n370));
  INVX1    g061(.A(\bitperiod_o[10] ), .Y(new_n371));
  INVX1    g062(.A(\clk_counter[9] ), .Y(new_n372_1));
  AOI22X1  g063(.A0(\clk_counter[10] ), .A1(new_n371), .B0(new_n372_1), .B1(\bitperiod_o[9] ), .Y(new_n373));
  INVX1    g064(.A(\bitperiod_o[11] ), .Y(new_n374));
  INVX1    g065(.A(\clk_counter[10] ), .Y(new_n375));
  AOI22X1  g066(.A0(\clk_counter[11] ), .A1(new_n374), .B0(new_n375), .B1(\bitperiod_o[10] ), .Y(new_n376));
  INVX1    g067(.A(\bitperiod_o[8] ), .Y(new_n377_1));
  INVX1    g068(.A(\clk_counter[7] ), .Y(new_n378));
  AOI22X1  g069(.A0(\clk_counter[8] ), .A1(new_n377_1), .B0(new_n378), .B1(\bitperiod_o[7] ), .Y(new_n379));
  INVX1    g070(.A(\bitperiod_o[9] ), .Y(new_n380));
  INVX1    g071(.A(\clk_counter[8] ), .Y(new_n381));
  AOI22X1  g072(.A0(\clk_counter[9] ), .A1(new_n380), .B0(new_n381), .B1(\bitperiod_o[8] ), .Y(new_n382_1));
  NAND4X1  g073(.A(new_n382_1), .B(new_n379), .C(new_n376), .D(new_n373), .Y(new_n383));
  INVX1    g074(.A(\bitperiod_o[13] ), .Y(new_n384));
  INVX1    g075(.A(\clk_counter[14] ), .Y(new_n385));
  OAI22X1  g076(.A0(new_n385), .A1(\bitperiod_o[14] ), .B0(\clk_counter[13] ), .B1(new_n384), .Y(new_n386));
  INVX1    g077(.A(\bitperiod_o[14] ), .Y(new_n387_1));
  INVX1    g078(.A(\clk_counter[15] ), .Y(new_n388));
  OAI22X1  g079(.A0(new_n388), .A1(\bitperiod_o[15] ), .B0(\clk_counter[14] ), .B1(new_n387_1), .Y(new_n389));
  INVX1    g080(.A(\clk_counter[12] ), .Y(new_n390));
  OAI22X1  g081(.A0(new_n390), .A1(\bitperiod_o[12] ), .B0(\clk_counter[11] ), .B1(new_n374), .Y(new_n391));
  INVX1    g082(.A(\bitperiod_o[12] ), .Y(new_n392_1));
  INVX1    g083(.A(\clk_counter[13] ), .Y(new_n393));
  OAI22X1  g084(.A0(new_n393), .A1(\bitperiod_o[13] ), .B0(\clk_counter[12] ), .B1(new_n392_1), .Y(new_n394));
  OR4X1    g085(.A(new_n394), .B(new_n391), .C(new_n389), .D(new_n386), .Y(new_n395));
  INVX1    g086(.A(\bitperiod_o[1] ), .Y(new_n396));
  INVX1    g087(.A(\clk_counter[2] ), .Y(new_n397_1));
  OAI22X1  g088(.A0(new_n397_1), .A1(\bitperiod_o[2] ), .B0(\clk_counter[1] ), .B1(new_n396), .Y(new_n398));
  INVX1    g089(.A(\bitperiod_o[2] ), .Y(new_n399));
  INVX1    g090(.A(\clk_counter[3] ), .Y(new_n400));
  OAI22X1  g091(.A0(new_n400), .A1(\bitperiod_o[3] ), .B0(\clk_counter[2] ), .B1(new_n399), .Y(new_n401));
  INVX1    g092(.A(\clk_counter[29] ), .Y(new_n402_1));
  INVX1    g093(.A(\clk_counter[0] ), .Y(new_n403));
  OAI21X1  g094(.A0(new_n403), .A1(\bitperiod_o[0] ), .B0(new_n402_1), .Y(new_n404));
  INVX1    g095(.A(\bitperiod_o[0] ), .Y(new_n405));
  INVX1    g096(.A(\clk_counter[1] ), .Y(new_n406));
  OAI22X1  g097(.A0(new_n406), .A1(\bitperiod_o[1] ), .B0(\clk_counter[0] ), .B1(new_n405), .Y(new_n407_1));
  OR4X1    g098(.A(new_n407_1), .B(new_n404), .C(new_n401), .D(new_n398), .Y(new_n408));
  INVX1    g099(.A(\bitperiod_o[5] ), .Y(new_n409));
  INVX1    g100(.A(\clk_counter[6] ), .Y(new_n410));
  OAI22X1  g101(.A0(new_n410), .A1(\bitperiod_o[6] ), .B0(\clk_counter[5] ), .B1(new_n409), .Y(new_n411));
  INVX1    g102(.A(\bitperiod_o[6] ), .Y(new_n412_1));
  OAI22X1  g103(.A0(new_n378), .A1(\bitperiod_o[7] ), .B0(\clk_counter[6] ), .B1(new_n412_1), .Y(new_n413));
  INVX1    g104(.A(\bitperiod_o[3] ), .Y(new_n414));
  INVX1    g105(.A(\clk_counter[4] ), .Y(new_n415));
  OAI22X1  g106(.A0(new_n415), .A1(\bitperiod_o[4] ), .B0(\clk_counter[3] ), .B1(new_n414), .Y(new_n416));
  INVX1    g107(.A(\bitperiod_o[4] ), .Y(new_n417_1));
  INVX1    g108(.A(\clk_counter[5] ), .Y(new_n418));
  OAI22X1  g109(.A0(new_n418), .A1(\bitperiod_o[5] ), .B0(\clk_counter[4] ), .B1(new_n417_1), .Y(new_n419));
  OR4X1    g110(.A(new_n419), .B(new_n416), .C(new_n413), .D(new_n411), .Y(new_n420));
  OR4X1    g111(.A(new_n420), .B(new_n408), .C(new_n395), .D(new_n383), .Y(new_n421));
  INVX1    g112(.A(\clk_counter[28] ), .Y(new_n422_1));
  INVX1    g113(.A(\bitperiod_o[27] ), .Y(new_n423));
  OAI22X1  g114(.A0(\bitperiod_o[28] ), .A1(new_n422_1), .B0(new_n423), .B1(\clk_counter[27] ), .Y(new_n424));
  AND2X1   g115(.A(\bitperiod_o[28] ), .B(new_n422_1), .Y(new_n425));
  OR4X1    g116(.A(new_n425), .B(new_n424), .C(\clk_counter[31] ), .D(\clk_counter[30] ), .Y(new_n426));
  INVX1    g117(.A(\clk_counter[25] ), .Y(new_n427_1));
  INVX1    g118(.A(\bitperiod_o[26] ), .Y(new_n428));
  AOI22X1  g119(.A0(new_n428), .A1(\clk_counter[26] ), .B0(\bitperiod_o[25] ), .B1(new_n427_1), .Y(new_n429));
  INVX1    g120(.A(\clk_counter[26] ), .Y(new_n430));
  AOI22X1  g121(.A0(new_n423), .A1(\clk_counter[27] ), .B0(\bitperiod_o[26] ), .B1(new_n430), .Y(new_n431));
  INVX1    g122(.A(\bitperiod_o[24] ), .Y(new_n432_1));
  INVX1    g123(.A(\clk_counter[23] ), .Y(new_n433));
  AOI22X1  g124(.A0(new_n433), .A1(\bitperiod_o[23] ), .B0(new_n432_1), .B1(\clk_counter[24] ), .Y(new_n434));
  INVX1    g125(.A(\bitperiod_o[25] ), .Y(new_n435));
  AOI22X1  g126(.A0(new_n435), .A1(\clk_counter[25] ), .B0(\bitperiod_o[24] ), .B1(new_n310), .Y(new_n436));
  NAND4X1  g127(.A(new_n436), .B(new_n434), .C(new_n431), .D(new_n429), .Y(new_n437_1));
  INVX1    g128(.A(\bitperiod_o[18] ), .Y(new_n438));
  INVX1    g129(.A(\clk_counter[17] ), .Y(new_n439));
  AOI22X1  g130(.A0(\clk_counter[18] ), .A1(new_n438), .B0(new_n439), .B1(\bitperiod_o[17] ), .Y(new_n440));
  INVX1    g131(.A(\bitperiod_o[19] ), .Y(new_n441));
  INVX1    g132(.A(\clk_counter[18] ), .Y(new_n442_1));
  AOI22X1  g133(.A0(\clk_counter[19] ), .A1(new_n441), .B0(new_n442_1), .B1(\bitperiod_o[18] ), .Y(new_n443));
  INVX1    g134(.A(\bitperiod_o[16] ), .Y(new_n444));
  AOI22X1  g135(.A0(\clk_counter[16] ), .A1(new_n444), .B0(new_n388), .B1(\bitperiod_o[15] ), .Y(new_n445));
  INVX1    g136(.A(\bitperiod_o[17] ), .Y(new_n446));
  INVX1    g137(.A(\clk_counter[16] ), .Y(new_n447_1));
  AOI22X1  g138(.A0(\clk_counter[17] ), .A1(new_n446), .B0(new_n447_1), .B1(\bitperiod_o[16] ), .Y(new_n448));
  NAND4X1  g139(.A(new_n448), .B(new_n445), .C(new_n443), .D(new_n440), .Y(new_n449));
  INVX1    g140(.A(\bitperiod_o[21] ), .Y(new_n450));
  INVX1    g141(.A(\clk_counter[22] ), .Y(new_n451));
  OAI22X1  g142(.A0(new_n451), .A1(\bitperiod_o[22] ), .B0(\clk_counter[21] ), .B1(new_n450), .Y(new_n452_1));
  INVX1    g143(.A(\bitperiod_o[22] ), .Y(new_n453));
  OAI22X1  g144(.A0(new_n433), .A1(\bitperiod_o[23] ), .B0(\clk_counter[22] ), .B1(new_n453), .Y(new_n454));
  INVX1    g145(.A(\clk_counter[20] ), .Y(new_n455));
  OAI22X1  g146(.A0(new_n455), .A1(\bitperiod_o[20] ), .B0(\clk_counter[19] ), .B1(new_n441), .Y(new_n456));
  INVX1    g147(.A(\bitperiod_o[20] ), .Y(new_n457_1));
  INVX1    g148(.A(\clk_counter[21] ), .Y(new_n458));
  OAI22X1  g149(.A0(new_n458), .A1(\bitperiod_o[21] ), .B0(\clk_counter[20] ), .B1(new_n457_1), .Y(new_n459));
  OR4X1    g150(.A(new_n459), .B(new_n456), .C(new_n454), .D(new_n452_1), .Y(new_n460));
  OR4X1    g151(.A(new_n460), .B(new_n449), .C(new_n437_1), .D(new_n426), .Y(new_n461));
  NOR2X1   g152(.A(new_n461), .B(new_n421), .Y(new_n462_1));
  OR2X1    g153(.A(new_n369), .B(new_n311), .Y(new_n463));
  INVX1    g154(.A(new_n316_1), .Y(new_n464));
  XOR2X1   g155(.A(new_n368_1), .B(\clk_counter[24] ), .Y(new_n465));
  AND2X1   g156(.A(rx_buf), .B(\clk_counter[24] ), .Y(new_n466));
  AOI22X1  g157(.A0(new_n466), .A1(\state[5] ), .B0(new_n465), .B1(new_n464), .Y(new_n467_1));
  OAI21X1  g158(.A0(new_n463), .A1(new_n462_1), .B0(new_n467_1), .Y(new_n468));
  OAI21X1  g159(.A0(new_n468), .A1(new_n370), .B0(new_n317), .Y(new_n469));
  AOI21X1  g160(.A0(new_n469), .A1(new_n318), .B0(rst_i), .Y(n86));
  OR2X1    g161(.A(new_n317), .B(new_n427_1), .Y(new_n471));
  NOR3X1   g162(.A(new_n367), .B(new_n364_1), .C(new_n310), .Y(new_n472_1));
  XOR2X1   g163(.A(new_n472_1), .B(new_n427_1), .Y(new_n473));
  OAI21X1  g164(.A0(new_n461), .A1(new_n421), .B0(\state[3] ), .Y(new_n474));
  NAND3X1  g165(.A(\state[5] ), .B(rx_buf), .C(\clk_counter[25] ), .Y(new_n475));
  OAI21X1  g166(.A0(new_n474), .A1(new_n473), .B0(new_n475), .Y(new_n476));
  OR2X1    g167(.A(new_n359), .B(new_n313), .Y(new_n477_1));
  AOI21X1  g168(.A0(new_n477_1), .A1(new_n316_1), .B0(new_n473), .Y(new_n478));
  OAI21X1  g169(.A0(new_n478), .A1(new_n476), .B0(new_n317), .Y(new_n479));
  AOI21X1  g170(.A0(new_n479), .A1(new_n471), .B0(rst_i), .Y(n91));
  OR2X1    g171(.A(new_n317), .B(new_n430), .Y(new_n481));
  NOR4X1   g172(.A(new_n367), .B(new_n364_1), .C(new_n427_1), .D(new_n310), .Y(new_n482_1));
  XOR2X1   g173(.A(new_n482_1), .B(new_n430), .Y(new_n483));
  NAND3X1  g174(.A(\state[5] ), .B(rx_buf), .C(\clk_counter[26] ), .Y(new_n484));
  OAI21X1  g175(.A0(new_n483), .A1(new_n474), .B0(new_n484), .Y(new_n485));
  AOI21X1  g176(.A0(new_n477_1), .A1(new_n316_1), .B0(new_n483), .Y(new_n486));
  OAI21X1  g177(.A0(new_n486), .A1(new_n485), .B0(new_n317), .Y(new_n487_1));
  AOI21X1  g178(.A0(new_n487_1), .A1(new_n481), .B0(rst_i), .Y(n96));
  INVX1    g179(.A(\clk_counter[27] ), .Y(new_n489));
  OR2X1    g180(.A(new_n317), .B(new_n489), .Y(new_n490));
  AND2X1   g181(.A(new_n482_1), .B(\clk_counter[26] ), .Y(new_n491));
  XOR2X1   g182(.A(new_n491), .B(new_n489), .Y(new_n492));
  NAND3X1  g183(.A(\state[5] ), .B(rx_buf), .C(\clk_counter[27] ), .Y(new_n493));
  OAI21X1  g184(.A0(new_n492), .A1(new_n474), .B0(new_n493), .Y(new_n494));
  AOI21X1  g185(.A0(new_n477_1), .A1(new_n316_1), .B0(new_n492), .Y(new_n495));
  OAI21X1  g186(.A0(new_n495), .A1(new_n494), .B0(new_n317), .Y(new_n496));
  AOI21X1  g187(.A0(new_n496), .A1(new_n490), .B0(rst_i), .Y(n101));
  OR2X1    g188(.A(new_n317), .B(new_n422_1), .Y(new_n498));
  NAND4X1  g189(.A(\clk_counter[27] ), .B(\clk_counter[26] ), .C(\clk_counter[25] ), .D(\clk_counter[24] ), .Y(new_n499));
  OR4X1    g190(.A(new_n499), .B(new_n366), .C(new_n365), .D(new_n364_1), .Y(new_n500));
  XOR2X1   g191(.A(new_n500), .B(\clk_counter[28] ), .Y(new_n501));
  NAND3X1  g192(.A(\state[5] ), .B(rx_buf), .C(\clk_counter[28] ), .Y(new_n502));
  OAI21X1  g193(.A0(new_n501), .A1(new_n474), .B0(new_n502), .Y(new_n503));
  AOI21X1  g194(.A0(new_n477_1), .A1(new_n316_1), .B0(new_n501), .Y(new_n504));
  OAI21X1  g195(.A0(new_n504), .A1(new_n503), .B0(new_n317), .Y(new_n505));
  AOI21X1  g196(.A0(new_n505), .A1(new_n498), .B0(rst_i), .Y(n106));
  OR2X1    g197(.A(new_n317), .B(new_n402_1), .Y(new_n507));
  NOR4X1   g198(.A(new_n499), .B(new_n367), .C(new_n364_1), .D(new_n422_1), .Y(new_n508));
  XOR2X1   g199(.A(new_n508), .B(new_n402_1), .Y(new_n509));
  NAND3X1  g200(.A(\state[5] ), .B(rx_buf), .C(\clk_counter[29] ), .Y(new_n510));
  OAI21X1  g201(.A0(new_n509), .A1(new_n474), .B0(new_n510), .Y(new_n511));
  AOI21X1  g202(.A0(new_n477_1), .A1(new_n316_1), .B0(new_n509), .Y(new_n512));
  OAI21X1  g203(.A0(new_n512), .A1(new_n511), .B0(new_n317), .Y(new_n513));
  AOI21X1  g204(.A0(new_n513), .A1(new_n507), .B0(rst_i), .Y(n111));
  INVX1    g205(.A(\clk_counter[30] ), .Y(new_n515));
  OR2X1    g206(.A(new_n317), .B(new_n515), .Y(new_n516));
  NOR3X1   g207(.A(new_n500), .B(new_n402_1), .C(new_n422_1), .Y(new_n517));
  XOR2X1   g208(.A(new_n517), .B(new_n515), .Y(new_n518));
  NAND3X1  g209(.A(\state[5] ), .B(rx_buf), .C(\clk_counter[30] ), .Y(new_n519));
  OAI21X1  g210(.A0(new_n518), .A1(new_n474), .B0(new_n519), .Y(new_n520));
  AOI21X1  g211(.A0(new_n477_1), .A1(new_n316_1), .B0(new_n518), .Y(new_n521));
  OAI21X1  g212(.A0(new_n521), .A1(new_n520), .B0(new_n317), .Y(new_n522));
  AOI21X1  g213(.A0(new_n522), .A1(new_n516), .B0(rst_i), .Y(n116));
  INVX1    g214(.A(\clk_counter[31] ), .Y(new_n524));
  OR2X1    g215(.A(new_n317), .B(new_n524), .Y(new_n525));
  NOR4X1   g216(.A(new_n500), .B(new_n515), .C(new_n402_1), .D(new_n422_1), .Y(new_n526));
  XOR2X1   g217(.A(new_n526), .B(new_n524), .Y(new_n527));
  NAND3X1  g218(.A(\state[5] ), .B(rx_buf), .C(\clk_counter[31] ), .Y(new_n528));
  OAI21X1  g219(.A0(new_n527), .A1(new_n474), .B0(new_n528), .Y(new_n529));
  AOI21X1  g220(.A0(new_n477_1), .A1(new_n316_1), .B0(new_n527), .Y(new_n530));
  OAI21X1  g221(.A0(new_n530), .A1(new_n529), .B0(new_n317), .Y(new_n531));
  AOI21X1  g222(.A0(new_n531), .A1(new_n525), .B0(rst_i), .Y(n121));
  NOR2X1   g223(.A(\state[8] ), .B(\state[3] ), .Y(new_n533));
  NAND2X1  g224(.A(new_n533), .B(\dout_bo[0] ), .Y(new_n534));
  MX2X1    g225(.A(\dout_bo[0] ), .B(\dout_bo[1] ), .S0(new_n462_1), .Y(new_n535));
  OR2X1    g226(.A(rx_buf), .B(\dout_bo[0] ), .Y(new_n536));
  AOI22X1  g227(.A0(new_n536), .A1(\state[8] ), .B0(new_n535), .B1(\state[3] ), .Y(new_n537));
  AOI21X1  g228(.A0(new_n537), .A1(new_n534), .B0(rst_i), .Y(n126));
  NAND2X1  g229(.A(new_n533), .B(\dout_bo[1] ), .Y(new_n539));
  MX2X1    g230(.A(\dout_bo[1] ), .B(\dout_bo[2] ), .S0(new_n462_1), .Y(new_n540));
  INVX1    g231(.A(rx_buf), .Y(new_n541));
  AND2X1   g232(.A(new_n541), .B(\dout_bo[1] ), .Y(new_n542));
  AOI22X1  g233(.A0(new_n542), .A1(\state[8] ), .B0(new_n540), .B1(\state[3] ), .Y(new_n543));
  AOI21X1  g234(.A0(new_n543), .A1(new_n539), .B0(rst_i), .Y(n130));
  NAND2X1  g235(.A(new_n533), .B(\dout_bo[2] ), .Y(new_n545));
  MX2X1    g236(.A(\dout_bo[2] ), .B(\dout_bo[3] ), .S0(new_n462_1), .Y(new_n546));
  OR2X1    g237(.A(rx_buf), .B(\dout_bo[2] ), .Y(new_n547));
  AOI22X1  g238(.A0(new_n547), .A1(\state[8] ), .B0(new_n546), .B1(\state[3] ), .Y(new_n548));
  AOI21X1  g239(.A0(new_n548), .A1(new_n545), .B0(rst_i), .Y(n134));
  NAND2X1  g240(.A(new_n533), .B(\dout_bo[3] ), .Y(new_n550));
  MX2X1    g241(.A(\dout_bo[3] ), .B(\dout_bo[4] ), .S0(new_n462_1), .Y(new_n551));
  AND2X1   g242(.A(new_n541), .B(\dout_bo[3] ), .Y(new_n552));
  AOI22X1  g243(.A0(new_n552), .A1(\state[8] ), .B0(new_n551), .B1(\state[3] ), .Y(new_n553));
  AOI21X1  g244(.A0(new_n553), .A1(new_n550), .B0(rst_i), .Y(n138));
  NAND2X1  g245(.A(new_n533), .B(\dout_bo[4] ), .Y(new_n555));
  MX2X1    g246(.A(\dout_bo[4] ), .B(\dout_bo[5] ), .S0(new_n462_1), .Y(new_n556));
  OR2X1    g247(.A(rx_buf), .B(\dout_bo[4] ), .Y(new_n557));
  AOI22X1  g248(.A0(new_n557), .A1(\state[8] ), .B0(new_n556), .B1(\state[3] ), .Y(new_n558));
  AOI21X1  g249(.A0(new_n558), .A1(new_n555), .B0(rst_i), .Y(n142));
  NAND2X1  g250(.A(new_n533), .B(\dout_bo[5] ), .Y(new_n560));
  MX2X1    g251(.A(\dout_bo[5] ), .B(\dout_bo[6] ), .S0(new_n462_1), .Y(new_n561));
  AND2X1   g252(.A(new_n541), .B(\dout_bo[5] ), .Y(new_n562));
  AOI22X1  g253(.A0(new_n562), .A1(\state[8] ), .B0(new_n561), .B1(\state[3] ), .Y(new_n563));
  AOI21X1  g254(.A0(new_n563), .A1(new_n560), .B0(rst_i), .Y(n146));
  NAND2X1  g255(.A(new_n533), .B(\dout_bo[6] ), .Y(new_n565));
  MX2X1    g256(.A(\dout_bo[6] ), .B(\dout_bo[7] ), .S0(new_n462_1), .Y(new_n566));
  OR2X1    g257(.A(rx_buf), .B(\dout_bo[6] ), .Y(new_n567));
  AOI22X1  g258(.A0(new_n567), .A1(\state[8] ), .B0(new_n566), .B1(\state[3] ), .Y(new_n568));
  AOI21X1  g259(.A0(new_n568), .A1(new_n565), .B0(rst_i), .Y(n150));
  NAND2X1  g260(.A(new_n533), .B(\dout_bo[7] ), .Y(new_n570));
  MX2X1    g261(.A(\dout_bo[7] ), .B(rx_buf), .S0(new_n462_1), .Y(new_n571));
  AND2X1   g262(.A(new_n541), .B(\dout_bo[7] ), .Y(new_n572));
  AOI22X1  g263(.A0(new_n572), .A1(\state[8] ), .B0(new_n571), .B1(\state[3] ), .Y(new_n573));
  AOI21X1  g264(.A0(new_n573), .A1(new_n570), .B0(rst_i), .Y(n154));
  AOI21X1  g265(.A0(\state[8] ), .A1(rx_buf), .B0(locked_o), .Y(new_n575));
  NOR2X1   g266(.A(new_n575), .B(rst_i), .Y(n158));
  NAND3X1  g267(.A(\bit_counter[2] ), .B(\bit_counter[1] ), .C(\bit_counter[0] ), .Y(new_n577));
  NOR4X1   g268(.A(new_n577), .B(new_n461), .C(new_n421), .D(new_n311), .Y(new_n578));
  AOI21X1  g269(.A0(\state[8] ), .A1(rx_buf), .B0(new_n578), .Y(new_n579));
  NOR3X1   g270(.A(new_n579), .B(new_n533), .C(rst_i), .Y(n162));
  NAND3X1  g271(.A(new_n313), .B(new_n311), .C(\bit_counter[0] ), .Y(new_n581));
  INVX1    g272(.A(\bit_counter[0] ), .Y(new_n582));
  NOR4X1   g273(.A(new_n420), .B(new_n408), .C(new_n395), .D(new_n383), .Y(new_n583));
  NOR4X1   g274(.A(new_n460), .B(new_n449), .C(new_n437_1), .D(new_n426), .Y(new_n584));
  NAND3X1  g275(.A(new_n584), .B(new_n583), .C(new_n582), .Y(new_n585));
  OAI21X1  g276(.A0(new_n461), .A1(new_n421), .B0(\bit_counter[0] ), .Y(new_n586));
  AOI21X1  g277(.A0(new_n586), .A1(new_n585), .B0(new_n311), .Y(new_n587));
  NOR3X1   g278(.A(new_n359), .B(new_n313), .C(new_n582), .Y(new_n588));
  OAI22X1  g279(.A0(new_n588), .A1(new_n587), .B0(\state[12] ), .B1(\state[3] ), .Y(new_n589));
  AOI21X1  g280(.A0(new_n589), .A1(new_n581), .B0(rst_i), .Y(n166));
  NAND3X1  g281(.A(new_n313), .B(new_n311), .C(\bit_counter[1] ), .Y(new_n591));
  XOR2X1   g282(.A(\bit_counter[1] ), .B(\bit_counter[0] ), .Y(new_n592));
  NAND3X1  g283(.A(new_n592), .B(new_n584), .C(new_n583), .Y(new_n593));
  OAI21X1  g284(.A0(new_n461), .A1(new_n421), .B0(\bit_counter[1] ), .Y(new_n594));
  AOI21X1  g285(.A0(new_n594), .A1(new_n593), .B0(new_n311), .Y(new_n595));
  NAND2X1  g286(.A(\state[12] ), .B(\bit_counter[1] ), .Y(new_n596));
  AOI21X1  g287(.A0(new_n358), .A1(new_n339), .B0(new_n596), .Y(new_n597));
  OAI22X1  g288(.A0(new_n597), .A1(new_n595), .B0(\state[12] ), .B1(\state[3] ), .Y(new_n598));
  AOI21X1  g289(.A0(new_n598), .A1(new_n591), .B0(rst_i), .Y(n171));
  NAND3X1  g290(.A(new_n313), .B(new_n311), .C(\bit_counter[2] ), .Y(new_n600));
  AND2X1   g291(.A(\bit_counter[1] ), .B(\bit_counter[0] ), .Y(new_n601));
  XOR2X1   g292(.A(new_n601), .B(\bit_counter[2] ), .Y(new_n602));
  NAND3X1  g293(.A(new_n602), .B(new_n584), .C(new_n583), .Y(new_n603));
  OAI21X1  g294(.A0(new_n461), .A1(new_n421), .B0(\bit_counter[2] ), .Y(new_n604));
  AOI21X1  g295(.A0(new_n604), .A1(new_n603), .B0(new_n311), .Y(new_n605));
  NAND2X1  g296(.A(\state[12] ), .B(\bit_counter[2] ), .Y(new_n606));
  AOI21X1  g297(.A0(new_n358), .A1(new_n339), .B0(new_n606), .Y(new_n607));
  OAI22X1  g298(.A0(new_n607), .A1(new_n605), .B0(\state[12] ), .B1(\state[3] ), .Y(new_n608));
  AOI21X1  g299(.A0(new_n608), .A1(new_n600), .B0(rst_i), .Y(n176));
  OR2X1    g300(.A(rx_i), .B(rst_i), .Y(n181));
  INVX1    g301(.A(rst_i), .Y(new_n611));
  INVX1    g302(.A(\state[0] ), .Y(new_n612));
  OAI21X1  g303(.A0(new_n612), .A1(new_n541), .B0(new_n611), .Y(n186));
  INVX1    g304(.A(\state[1] ), .Y(new_n614));
  INVX1    g305(.A(\state[13] ), .Y(new_n615));
  OR2X1    g306(.A(new_n541), .B(rst_i), .Y(new_n616));
  AOI21X1  g307(.A0(new_n615), .A1(new_n614), .B0(new_n616), .Y(n191));
  INVX1    g308(.A(\state[2] ), .Y(new_n618));
  INVX1    g309(.A(\state[11] ), .Y(new_n619));
  AOI21X1  g310(.A0(new_n619), .A1(new_n618), .B0(new_n616), .Y(n196));
  NAND4X1  g311(.A(new_n358), .B(new_n339), .C(\state[12] ), .D(new_n611), .Y(new_n621));
  OR2X1    g312(.A(new_n461), .B(new_n421), .Y(new_n622));
  AND2X1   g313(.A(\state[3] ), .B(new_n611), .Y(new_n623));
  OAI21X1  g314(.A0(new_n577), .A1(new_n622), .B0(new_n623), .Y(new_n624));
  NAND2X1  g315(.A(new_n624), .B(new_n621), .Y(n201));
  INVX1    g316(.A(\state[4] ), .Y(new_n626));
  INVX1    g317(.A(\state[7] ), .Y(new_n627));
  AOI21X1  g318(.A0(new_n627), .A1(new_n626), .B0(new_n616), .Y(n206));
  NOR3X1   g319(.A(\state[10] ), .B(\state[8] ), .C(\state[5] ), .Y(new_n629));
  NOR3X1   g320(.A(new_n629), .B(new_n541), .C(rst_i), .Y(n211));
  INVX1    g321(.A(\state[6] ), .Y(new_n631));
  INVX1    g322(.A(\state[9] ), .Y(new_n632));
  AOI21X1  g323(.A0(new_n632), .A1(new_n631), .B0(new_n616), .Y(n216));
  OR2X1    g324(.A(rx_buf), .B(rst_i), .Y(new_n634));
  AOI21X1  g325(.A0(new_n627), .A1(new_n612), .B0(new_n634), .Y(n221));
  INVX1    g326(.A(\state[8] ), .Y(new_n636));
  AOI21X1  g327(.A0(new_n636), .A1(new_n614), .B0(new_n634), .Y(n226));
  AOI21X1  g328(.A0(new_n632), .A1(new_n618), .B0(new_n634), .Y(n231));
  INVX1    g329(.A(\state[10] ), .Y(new_n639));
  NAND4X1  g330(.A(new_n601), .B(\state[3] ), .C(\bit_counter[2] ), .D(new_n611), .Y(new_n640));
  OAI22X1  g331(.A0(new_n640), .A1(new_n622), .B0(new_n634), .B1(new_n639), .Y(n236));
  AOI21X1  g332(.A0(new_n619), .A1(new_n626), .B0(new_n634), .Y(n241));
  OR2X1    g333(.A(new_n313), .B(rst_i), .Y(new_n643));
  OAI22X1  g334(.A0(new_n634), .A1(new_n312_1), .B0(new_n643), .B1(new_n359), .Y(n246));
  AOI21X1  g335(.A0(new_n615), .A1(new_n631), .B0(new_n634), .Y(n251));
  MX2X1    g336(.A(\bitperiod_o[0] ), .B(\clk_counter[3] ), .S0(rx_buf), .Y(new_n646));
  MX2X1    g337(.A(new_n646), .B(\bitperiod_o[0] ), .S0(new_n636), .Y(new_n647));
  AND2X1   g338(.A(new_n647), .B(new_n611), .Y(n256));
  MX2X1    g339(.A(\bitperiod_o[1] ), .B(\clk_counter[4] ), .S0(rx_buf), .Y(new_n649));
  MX2X1    g340(.A(new_n649), .B(\bitperiod_o[1] ), .S0(new_n636), .Y(new_n650));
  AND2X1   g341(.A(new_n650), .B(new_n611), .Y(n260));
  MX2X1    g342(.A(\bitperiod_o[2] ), .B(\clk_counter[5] ), .S0(rx_buf), .Y(new_n652));
  MX2X1    g343(.A(new_n652), .B(\bitperiod_o[2] ), .S0(new_n636), .Y(new_n653));
  AND2X1   g344(.A(new_n653), .B(new_n611), .Y(n264));
  MX2X1    g345(.A(\bitperiod_o[3] ), .B(\clk_counter[6] ), .S0(rx_buf), .Y(new_n655));
  MX2X1    g346(.A(new_n655), .B(\bitperiod_o[3] ), .S0(new_n636), .Y(new_n656));
  AND2X1   g347(.A(new_n656), .B(new_n611), .Y(n268));
  MX2X1    g348(.A(\bitperiod_o[4] ), .B(\clk_counter[7] ), .S0(rx_buf), .Y(new_n658));
  MX2X1    g349(.A(new_n658), .B(\bitperiod_o[4] ), .S0(new_n636), .Y(new_n659));
  AND2X1   g350(.A(new_n659), .B(new_n611), .Y(n272));
  MX2X1    g351(.A(\bitperiod_o[5] ), .B(\clk_counter[8] ), .S0(rx_buf), .Y(new_n661));
  MX2X1    g352(.A(new_n661), .B(\bitperiod_o[5] ), .S0(new_n636), .Y(new_n662));
  AND2X1   g353(.A(new_n662), .B(new_n611), .Y(n276));
  MX2X1    g354(.A(\bitperiod_o[6] ), .B(\clk_counter[9] ), .S0(rx_buf), .Y(new_n664));
  MX2X1    g355(.A(new_n664), .B(\bitperiod_o[6] ), .S0(new_n636), .Y(new_n665));
  AND2X1   g356(.A(new_n665), .B(new_n611), .Y(n280));
  MX2X1    g357(.A(\bitperiod_o[7] ), .B(\clk_counter[10] ), .S0(rx_buf), .Y(new_n667));
  MX2X1    g358(.A(new_n667), .B(\bitperiod_o[7] ), .S0(new_n636), .Y(new_n668));
  AND2X1   g359(.A(new_n668), .B(new_n611), .Y(n284));
  MX2X1    g360(.A(\bitperiod_o[8] ), .B(\clk_counter[11] ), .S0(rx_buf), .Y(new_n670));
  MX2X1    g361(.A(new_n670), .B(\bitperiod_o[8] ), .S0(new_n636), .Y(new_n671));
  AND2X1   g362(.A(new_n671), .B(new_n611), .Y(n288));
  MX2X1    g363(.A(\bitperiod_o[9] ), .B(\clk_counter[12] ), .S0(rx_buf), .Y(new_n673));
  MX2X1    g364(.A(new_n673), .B(\bitperiod_o[9] ), .S0(new_n636), .Y(new_n674));
  AND2X1   g365(.A(new_n674), .B(new_n611), .Y(n292));
  MX2X1    g366(.A(\bitperiod_o[10] ), .B(\clk_counter[13] ), .S0(rx_buf), .Y(new_n676));
  MX2X1    g367(.A(new_n676), .B(\bitperiod_o[10] ), .S0(new_n636), .Y(new_n677));
  AND2X1   g368(.A(new_n677), .B(new_n611), .Y(n296));
  MX2X1    g369(.A(\bitperiod_o[11] ), .B(\clk_counter[14] ), .S0(rx_buf), .Y(new_n679));
  MX2X1    g370(.A(new_n679), .B(\bitperiod_o[11] ), .S0(new_n636), .Y(new_n680));
  AND2X1   g371(.A(new_n680), .B(new_n611), .Y(n300));
  MX2X1    g372(.A(\bitperiod_o[12] ), .B(\clk_counter[15] ), .S0(rx_buf), .Y(new_n682));
  MX2X1    g373(.A(new_n682), .B(\bitperiod_o[12] ), .S0(new_n636), .Y(new_n683));
  AND2X1   g374(.A(new_n683), .B(new_n611), .Y(n304));
  MX2X1    g375(.A(\bitperiod_o[13] ), .B(\clk_counter[16] ), .S0(rx_buf), .Y(new_n685));
  MX2X1    g376(.A(new_n685), .B(\bitperiod_o[13] ), .S0(new_n636), .Y(new_n686));
  AND2X1   g377(.A(new_n686), .B(new_n611), .Y(n308));
  MX2X1    g378(.A(\bitperiod_o[14] ), .B(\clk_counter[17] ), .S0(rx_buf), .Y(new_n688));
  MX2X1    g379(.A(new_n688), .B(\bitperiod_o[14] ), .S0(new_n636), .Y(new_n689));
  AND2X1   g380(.A(new_n689), .B(new_n611), .Y(n312));
  MX2X1    g381(.A(\bitperiod_o[15] ), .B(\clk_counter[18] ), .S0(rx_buf), .Y(new_n691));
  MX2X1    g382(.A(new_n691), .B(\bitperiod_o[15] ), .S0(new_n636), .Y(new_n692));
  AND2X1   g383(.A(new_n692), .B(new_n611), .Y(n316));
  MX2X1    g384(.A(\bitperiod_o[16] ), .B(\clk_counter[19] ), .S0(rx_buf), .Y(new_n694));
  MX2X1    g385(.A(new_n694), .B(\bitperiod_o[16] ), .S0(new_n636), .Y(new_n695));
  AND2X1   g386(.A(new_n695), .B(new_n611), .Y(n320));
  MX2X1    g387(.A(\bitperiod_o[17] ), .B(\clk_counter[20] ), .S0(rx_buf), .Y(new_n697));
  MX2X1    g388(.A(new_n697), .B(\bitperiod_o[17] ), .S0(new_n636), .Y(new_n698));
  AND2X1   g389(.A(new_n698), .B(new_n611), .Y(n324));
  MX2X1    g390(.A(\bitperiod_o[18] ), .B(\clk_counter[21] ), .S0(rx_buf), .Y(new_n700));
  MX2X1    g391(.A(new_n700), .B(\bitperiod_o[18] ), .S0(new_n636), .Y(new_n701));
  AND2X1   g392(.A(new_n701), .B(new_n611), .Y(n328));
  MX2X1    g393(.A(\bitperiod_o[19] ), .B(\clk_counter[22] ), .S0(rx_buf), .Y(new_n703));
  MX2X1    g394(.A(new_n703), .B(\bitperiod_o[19] ), .S0(new_n636), .Y(new_n704));
  AND2X1   g395(.A(new_n704), .B(new_n611), .Y(n332));
  MX2X1    g396(.A(\bitperiod_o[20] ), .B(\clk_counter[23] ), .S0(rx_buf), .Y(new_n706));
  MX2X1    g397(.A(new_n706), .B(\bitperiod_o[20] ), .S0(new_n636), .Y(new_n707));
  AND2X1   g398(.A(new_n707), .B(new_n611), .Y(n336));
  MX2X1    g399(.A(\bitperiod_o[21] ), .B(\clk_counter[24] ), .S0(rx_buf), .Y(new_n709));
  MX2X1    g400(.A(new_n709), .B(\bitperiod_o[21] ), .S0(new_n636), .Y(new_n710));
  AND2X1   g401(.A(new_n710), .B(new_n611), .Y(n340));
  MX2X1    g402(.A(\bitperiod_o[22] ), .B(\clk_counter[25] ), .S0(rx_buf), .Y(new_n712));
  MX2X1    g403(.A(new_n712), .B(\bitperiod_o[22] ), .S0(new_n636), .Y(new_n713));
  AND2X1   g404(.A(new_n713), .B(new_n611), .Y(n344));
  MX2X1    g405(.A(\bitperiod_o[23] ), .B(\clk_counter[26] ), .S0(rx_buf), .Y(new_n715));
  MX2X1    g406(.A(new_n715), .B(\bitperiod_o[23] ), .S0(new_n636), .Y(new_n716));
  AND2X1   g407(.A(new_n716), .B(new_n611), .Y(n348));
  MX2X1    g408(.A(\bitperiod_o[24] ), .B(\clk_counter[27] ), .S0(rx_buf), .Y(new_n718));
  MX2X1    g409(.A(new_n718), .B(\bitperiod_o[24] ), .S0(new_n636), .Y(new_n719));
  AND2X1   g410(.A(new_n719), .B(new_n611), .Y(n352));
  MX2X1    g411(.A(\bitperiod_o[25] ), .B(\clk_counter[28] ), .S0(rx_buf), .Y(new_n721));
  MX2X1    g412(.A(new_n721), .B(\bitperiod_o[25] ), .S0(new_n636), .Y(new_n722));
  AND2X1   g413(.A(new_n722), .B(new_n611), .Y(n356));
  MX2X1    g414(.A(\bitperiod_o[26] ), .B(\clk_counter[29] ), .S0(rx_buf), .Y(new_n724));
  MX2X1    g415(.A(new_n724), .B(\bitperiod_o[26] ), .S0(new_n636), .Y(new_n725));
  AND2X1   g416(.A(new_n725), .B(new_n611), .Y(n360));
  MX2X1    g417(.A(\bitperiod_o[27] ), .B(\clk_counter[30] ), .S0(rx_buf), .Y(new_n727));
  MX2X1    g418(.A(new_n727), .B(\bitperiod_o[27] ), .S0(new_n636), .Y(new_n728));
  AND2X1   g419(.A(new_n728), .B(new_n611), .Y(n364));
  MX2X1    g420(.A(\bitperiod_o[28] ), .B(\clk_counter[31] ), .S0(rx_buf), .Y(new_n730));
  MX2X1    g421(.A(new_n730), .B(\bitperiod_o[28] ), .S0(new_n636), .Y(new_n731));
  AND2X1   g422(.A(new_n731), .B(new_n611), .Y(n368));
  OR2X1    g423(.A(new_n317), .B(new_n403), .Y(new_n733));
  NOR3X1   g424(.A(new_n359), .B(\clk_counter[0] ), .C(new_n313), .Y(new_n734));
  OR2X1    g425(.A(\clk_counter[0] ), .B(new_n311), .Y(new_n735));
  AOI21X1  g426(.A0(new_n584), .A1(new_n583), .B0(new_n735), .Y(new_n736));
  AND2X1   g427(.A(\state[5] ), .B(rx_buf), .Y(new_n737));
  MX2X1    g428(.A(new_n737), .B(new_n464), .S0(new_n403), .Y(new_n738));
  OR2X1    g429(.A(new_n738), .B(new_n736), .Y(new_n739));
  OAI21X1  g430(.A0(new_n739), .A1(new_n734), .B0(new_n317), .Y(new_n740));
  AOI21X1  g431(.A0(new_n740), .A1(new_n733), .B0(rst_i), .Y(n372));
  OR2X1    g432(.A(new_n317), .B(new_n406), .Y(new_n742));
  XOR2X1   g433(.A(\clk_counter[1] ), .B(\clk_counter[0] ), .Y(new_n743));
  NAND2X1  g434(.A(new_n743), .B(\state[12] ), .Y(new_n744));
  AOI21X1  g435(.A0(new_n358), .A1(new_n339), .B0(new_n744), .Y(new_n745));
  NAND2X1  g436(.A(new_n743), .B(\state[3] ), .Y(new_n746));
  AOI22X1  g437(.A0(new_n743), .A1(new_n464), .B0(new_n737), .B1(\clk_counter[1] ), .Y(new_n747));
  OAI21X1  g438(.A0(new_n746), .A1(new_n462_1), .B0(new_n747), .Y(new_n748));
  OAI21X1  g439(.A0(new_n748), .A1(new_n745), .B0(new_n317), .Y(new_n749));
  AOI21X1  g440(.A0(new_n749), .A1(new_n742), .B0(rst_i), .Y(n377));
  OR2X1    g441(.A(new_n317), .B(new_n397_1), .Y(new_n751));
  AND2X1   g442(.A(\clk_counter[1] ), .B(\clk_counter[0] ), .Y(new_n752));
  XOR2X1   g443(.A(new_n752), .B(new_n397_1), .Y(new_n753));
  NOR3X1   g444(.A(new_n753), .B(new_n359), .C(new_n313), .Y(new_n754));
  OR2X1    g445(.A(new_n753), .B(new_n311), .Y(new_n755));
  NOR2X1   g446(.A(new_n753), .B(new_n316_1), .Y(new_n756));
  AOI21X1  g447(.A0(new_n737), .A1(\clk_counter[2] ), .B0(new_n756), .Y(new_n757));
  OAI21X1  g448(.A0(new_n755), .A1(new_n462_1), .B0(new_n757), .Y(new_n758));
  OAI21X1  g449(.A0(new_n758), .A1(new_n754), .B0(new_n317), .Y(new_n759));
  AOI21X1  g450(.A0(new_n759), .A1(new_n751), .B0(rst_i), .Y(n382));
  OR2X1    g451(.A(new_n317), .B(new_n400), .Y(new_n761));
  NAND3X1  g452(.A(\clk_counter[2] ), .B(\clk_counter[1] ), .C(\clk_counter[0] ), .Y(new_n762));
  XOR2X1   g453(.A(new_n762), .B(\clk_counter[3] ), .Y(new_n763));
  NOR3X1   g454(.A(new_n763), .B(new_n359), .C(new_n313), .Y(new_n764));
  OR2X1    g455(.A(new_n763), .B(new_n311), .Y(new_n765));
  AOI21X1  g456(.A0(new_n584), .A1(new_n583), .B0(new_n765), .Y(new_n766));
  NAND3X1  g457(.A(\clk_counter[3] ), .B(\state[5] ), .C(rx_buf), .Y(new_n767));
  OAI21X1  g458(.A0(new_n763), .A1(new_n316_1), .B0(new_n767), .Y(new_n768));
  OR2X1    g459(.A(new_n768), .B(new_n766), .Y(new_n769));
  OAI21X1  g460(.A0(new_n769), .A1(new_n764), .B0(new_n317), .Y(new_n770));
  AOI21X1  g461(.A0(new_n770), .A1(new_n761), .B0(rst_i), .Y(n387));
  OR2X1    g462(.A(new_n317), .B(new_n415), .Y(new_n772));
  XOR2X1   g463(.A(new_n360_1), .B(\clk_counter[4] ), .Y(new_n773));
  NOR3X1   g464(.A(new_n773), .B(new_n359), .C(new_n313), .Y(new_n774));
  OR2X1    g465(.A(new_n773), .B(new_n311), .Y(new_n775));
  AOI21X1  g466(.A0(new_n584), .A1(new_n583), .B0(new_n775), .Y(new_n776));
  NAND3X1  g467(.A(\clk_counter[4] ), .B(\state[5] ), .C(rx_buf), .Y(new_n777));
  OAI21X1  g468(.A0(new_n773), .A1(new_n316_1), .B0(new_n777), .Y(new_n778));
  OR2X1    g469(.A(new_n778), .B(new_n776), .Y(new_n779));
  OAI21X1  g470(.A0(new_n779), .A1(new_n774), .B0(new_n317), .Y(new_n780));
  AOI21X1  g471(.A0(new_n780), .A1(new_n772), .B0(rst_i), .Y(n392));
  OR2X1    g472(.A(new_n317), .B(new_n418), .Y(new_n782));
  NOR2X1   g473(.A(new_n360_1), .B(new_n415), .Y(new_n783));
  XOR2X1   g474(.A(new_n783), .B(new_n418), .Y(new_n784));
  NOR3X1   g475(.A(new_n784), .B(new_n359), .C(new_n313), .Y(new_n785));
  OR2X1    g476(.A(new_n784), .B(new_n311), .Y(new_n786));
  AOI21X1  g477(.A0(new_n584), .A1(new_n583), .B0(new_n786), .Y(new_n787));
  NAND3X1  g478(.A(\clk_counter[5] ), .B(\state[5] ), .C(rx_buf), .Y(new_n788));
  OAI21X1  g479(.A0(new_n784), .A1(new_n316_1), .B0(new_n788), .Y(new_n789));
  OR2X1    g480(.A(new_n789), .B(new_n787), .Y(new_n790));
  OAI21X1  g481(.A0(new_n790), .A1(new_n785), .B0(new_n317), .Y(new_n791));
  AOI21X1  g482(.A0(new_n791), .A1(new_n782), .B0(rst_i), .Y(n397));
  OR2X1    g483(.A(new_n317), .B(new_n410), .Y(new_n793));
  NOR3X1   g484(.A(new_n360_1), .B(new_n418), .C(new_n415), .Y(new_n794));
  XOR2X1   g485(.A(new_n794), .B(new_n410), .Y(new_n795));
  NOR3X1   g486(.A(new_n795), .B(new_n359), .C(new_n313), .Y(new_n796));
  OR2X1    g487(.A(new_n795), .B(new_n311), .Y(new_n797));
  AOI21X1  g488(.A0(new_n584), .A1(new_n583), .B0(new_n797), .Y(new_n798));
  NAND3X1  g489(.A(\clk_counter[6] ), .B(\state[5] ), .C(rx_buf), .Y(new_n799));
  OAI21X1  g490(.A0(new_n795), .A1(new_n316_1), .B0(new_n799), .Y(new_n800));
  OR2X1    g491(.A(new_n800), .B(new_n798), .Y(new_n801));
  OAI21X1  g492(.A0(new_n801), .A1(new_n796), .B0(new_n317), .Y(new_n802));
  AOI21X1  g493(.A0(new_n802), .A1(new_n793), .B0(rst_i), .Y(n402));
  OR2X1    g494(.A(new_n317), .B(new_n378), .Y(new_n804));
  NOR4X1   g495(.A(new_n360_1), .B(new_n410), .C(new_n418), .D(new_n415), .Y(new_n805));
  XOR2X1   g496(.A(new_n805), .B(new_n378), .Y(new_n806));
  NOR3X1   g497(.A(new_n806), .B(new_n359), .C(new_n313), .Y(new_n807));
  OR2X1    g498(.A(new_n806), .B(new_n311), .Y(new_n808));
  AOI21X1  g499(.A0(new_n584), .A1(new_n583), .B0(new_n808), .Y(new_n809));
  NAND3X1  g500(.A(\clk_counter[7] ), .B(\state[5] ), .C(rx_buf), .Y(new_n810));
  OAI21X1  g501(.A0(new_n806), .A1(new_n316_1), .B0(new_n810), .Y(new_n811));
  OR2X1    g502(.A(new_n811), .B(new_n809), .Y(new_n812));
  OAI21X1  g503(.A0(new_n812), .A1(new_n807), .B0(new_n317), .Y(new_n813));
  AOI21X1  g504(.A0(new_n813), .A1(new_n804), .B0(rst_i), .Y(n407));
  OR2X1    g505(.A(new_n317), .B(new_n381), .Y(new_n815));
  NOR2X1   g506(.A(new_n361), .B(new_n360_1), .Y(new_n816));
  XOR2X1   g507(.A(new_n816), .B(new_n381), .Y(new_n817));
  NOR3X1   g508(.A(new_n817), .B(new_n359), .C(new_n313), .Y(new_n818));
  OR2X1    g509(.A(new_n817), .B(new_n311), .Y(new_n819));
  AOI21X1  g510(.A0(new_n584), .A1(new_n583), .B0(new_n819), .Y(new_n820));
  NAND3X1  g511(.A(\clk_counter[8] ), .B(\state[5] ), .C(rx_buf), .Y(new_n821));
  OAI21X1  g512(.A0(new_n817), .A1(new_n316_1), .B0(new_n821), .Y(new_n822));
  OR2X1    g513(.A(new_n822), .B(new_n820), .Y(new_n823));
  OAI21X1  g514(.A0(new_n823), .A1(new_n818), .B0(new_n317), .Y(new_n824));
  AOI21X1  g515(.A0(new_n824), .A1(new_n815), .B0(rst_i), .Y(n412));
  OR2X1    g516(.A(new_n317), .B(new_n372_1), .Y(new_n826));
  NOR3X1   g517(.A(new_n361), .B(new_n360_1), .C(new_n381), .Y(new_n827));
  XOR2X1   g518(.A(new_n827), .B(new_n372_1), .Y(new_n828));
  NOR3X1   g519(.A(new_n828), .B(new_n359), .C(new_n313), .Y(new_n829));
  OR2X1    g520(.A(new_n828), .B(new_n311), .Y(new_n830));
  AOI21X1  g521(.A0(new_n584), .A1(new_n583), .B0(new_n830), .Y(new_n831));
  NAND3X1  g522(.A(\clk_counter[9] ), .B(\state[5] ), .C(rx_buf), .Y(new_n832));
  OAI21X1  g523(.A0(new_n828), .A1(new_n316_1), .B0(new_n832), .Y(new_n833));
  OR2X1    g524(.A(new_n833), .B(new_n831), .Y(new_n834));
  OAI21X1  g525(.A0(new_n834), .A1(new_n829), .B0(new_n317), .Y(new_n835));
  AOI21X1  g526(.A0(new_n835), .A1(new_n826), .B0(rst_i), .Y(n417));
  OR2X1    g527(.A(new_n317), .B(new_n375), .Y(new_n837));
  NOR4X1   g528(.A(new_n361), .B(new_n360_1), .C(new_n372_1), .D(new_n381), .Y(new_n838));
  XOR2X1   g529(.A(new_n838), .B(new_n375), .Y(new_n839));
  NOR3X1   g530(.A(new_n839), .B(new_n359), .C(new_n313), .Y(new_n840));
  OR2X1    g531(.A(new_n839), .B(new_n311), .Y(new_n841));
  AOI21X1  g532(.A0(new_n584), .A1(new_n583), .B0(new_n841), .Y(new_n842));
  NAND3X1  g533(.A(\clk_counter[10] ), .B(\state[5] ), .C(rx_buf), .Y(new_n843));
  OAI21X1  g534(.A0(new_n839), .A1(new_n316_1), .B0(new_n843), .Y(new_n844));
  OR2X1    g535(.A(new_n844), .B(new_n842), .Y(new_n845));
  OAI21X1  g536(.A0(new_n845), .A1(new_n840), .B0(new_n317), .Y(new_n846));
  AOI21X1  g537(.A0(new_n846), .A1(new_n837), .B0(rst_i), .Y(n422));
  INVX1    g538(.A(\clk_counter[11] ), .Y(new_n848));
  OR2X1    g539(.A(new_n317), .B(new_n848), .Y(new_n849));
  AND2X1   g540(.A(new_n838), .B(\clk_counter[10] ), .Y(new_n850));
  XOR2X1   g541(.A(new_n850), .B(new_n848), .Y(new_n851));
  NOR3X1   g542(.A(new_n851), .B(new_n359), .C(new_n313), .Y(new_n852));
  AND2X1   g543(.A(\clk_counter[11] ), .B(rx_buf), .Y(new_n853));
  XOR2X1   g544(.A(new_n850), .B(\clk_counter[11] ), .Y(new_n854));
  AOI22X1  g545(.A0(new_n854), .A1(new_n464), .B0(new_n853), .B1(\state[5] ), .Y(new_n855));
  OAI21X1  g546(.A0(new_n851), .A1(new_n474), .B0(new_n855), .Y(new_n856));
  OAI21X1  g547(.A0(new_n856), .A1(new_n852), .B0(new_n317), .Y(new_n857));
  AOI21X1  g548(.A0(new_n857), .A1(new_n849), .B0(rst_i), .Y(n427));
  OR2X1    g549(.A(new_n317), .B(new_n390), .Y(new_n859));
  NOR3X1   g550(.A(new_n362), .B(new_n361), .C(new_n360_1), .Y(new_n860));
  XOR2X1   g551(.A(new_n860), .B(new_n390), .Y(new_n861));
  NOR3X1   g552(.A(new_n861), .B(new_n359), .C(new_n313), .Y(new_n862));
  OR2X1    g553(.A(new_n861), .B(new_n311), .Y(new_n863));
  AOI21X1  g554(.A0(new_n584), .A1(new_n583), .B0(new_n863), .Y(new_n864));
  NAND3X1  g555(.A(\clk_counter[12] ), .B(\state[5] ), .C(rx_buf), .Y(new_n865));
  OAI21X1  g556(.A0(new_n861), .A1(new_n316_1), .B0(new_n865), .Y(new_n866));
  OR2X1    g557(.A(new_n866), .B(new_n864), .Y(new_n867));
  OAI21X1  g558(.A0(new_n867), .A1(new_n862), .B0(new_n317), .Y(new_n868));
  AOI21X1  g559(.A0(new_n868), .A1(new_n859), .B0(rst_i), .Y(n432));
  OR2X1    g560(.A(new_n317), .B(new_n393), .Y(new_n870));
  NOR4X1   g561(.A(new_n362), .B(new_n361), .C(new_n360_1), .D(new_n390), .Y(new_n871));
  XOR2X1   g562(.A(new_n871), .B(\clk_counter[13] ), .Y(new_n872));
  INVX1    g563(.A(new_n872), .Y(new_n873));
  NOR3X1   g564(.A(new_n873), .B(new_n359), .C(new_n313), .Y(new_n874));
  AND2X1   g565(.A(\clk_counter[13] ), .B(rx_buf), .Y(new_n875));
  AOI22X1  g566(.A0(new_n872), .A1(new_n464), .B0(new_n875), .B1(\state[5] ), .Y(new_n876));
  OAI21X1  g567(.A0(new_n873), .A1(new_n474), .B0(new_n876), .Y(new_n877));
  OAI21X1  g568(.A0(new_n877), .A1(new_n874), .B0(new_n317), .Y(new_n878));
  AOI21X1  g569(.A0(new_n878), .A1(new_n870), .B0(rst_i), .Y(n437));
  OR2X1    g570(.A(new_n317), .B(new_n385), .Y(new_n880));
  NAND2X1  g571(.A(\clk_counter[13] ), .B(\clk_counter[12] ), .Y(new_n881));
  NOR4X1   g572(.A(new_n881), .B(new_n362), .C(new_n361), .D(new_n360_1), .Y(new_n882));
  XOR2X1   g573(.A(new_n882), .B(\clk_counter[14] ), .Y(new_n883));
  INVX1    g574(.A(new_n883), .Y(new_n884));
  NOR3X1   g575(.A(new_n884), .B(new_n359), .C(new_n313), .Y(new_n885));
  AND2X1   g576(.A(\clk_counter[14] ), .B(rx_buf), .Y(new_n886));
  AOI22X1  g577(.A0(new_n883), .A1(new_n464), .B0(new_n886), .B1(\state[5] ), .Y(new_n887));
  OAI21X1  g578(.A0(new_n884), .A1(new_n474), .B0(new_n887), .Y(new_n888));
  OAI21X1  g579(.A0(new_n888), .A1(new_n885), .B0(new_n317), .Y(new_n889));
  AOI21X1  g580(.A0(new_n889), .A1(new_n880), .B0(rst_i), .Y(n442));
  OR2X1    g581(.A(new_n317), .B(new_n388), .Y(new_n891));
  NAND2X1  g582(.A(new_n882), .B(\clk_counter[14] ), .Y(new_n892));
  XOR2X1   g583(.A(new_n892), .B(\clk_counter[15] ), .Y(new_n893));
  NAND3X1  g584(.A(\clk_counter[15] ), .B(\state[5] ), .C(rx_buf), .Y(new_n894));
  OAI21X1  g585(.A0(new_n893), .A1(new_n474), .B0(new_n894), .Y(new_n895));
  AOI21X1  g586(.A0(new_n477_1), .A1(new_n316_1), .B0(new_n893), .Y(new_n896));
  OAI21X1  g587(.A0(new_n896), .A1(new_n895), .B0(new_n317), .Y(new_n897));
  AOI21X1  g588(.A0(new_n897), .A1(new_n891), .B0(rst_i), .Y(n447));
  OR2X1    g589(.A(new_n317), .B(new_n447_1), .Y(new_n899));
  XOR2X1   g590(.A(new_n364_1), .B(\clk_counter[16] ), .Y(new_n900));
  NOR3X1   g591(.A(new_n900), .B(new_n359), .C(new_n313), .Y(new_n901));
  OR2X1    g592(.A(new_n900), .B(new_n311), .Y(new_n902));
  AOI21X1  g593(.A0(new_n584), .A1(new_n583), .B0(new_n902), .Y(new_n903));
  NAND3X1  g594(.A(\clk_counter[16] ), .B(\state[5] ), .C(rx_buf), .Y(new_n904));
  OAI21X1  g595(.A0(new_n900), .A1(new_n316_1), .B0(new_n904), .Y(new_n905));
  OR2X1    g596(.A(new_n905), .B(new_n903), .Y(new_n906));
  OAI21X1  g597(.A0(new_n906), .A1(new_n901), .B0(new_n317), .Y(new_n907));
  AOI21X1  g598(.A0(new_n907), .A1(new_n899), .B0(rst_i), .Y(n452));
  OR2X1    g599(.A(new_n317), .B(new_n439), .Y(new_n909));
  NOR2X1   g600(.A(new_n364_1), .B(new_n447_1), .Y(new_n910));
  XOR2X1   g601(.A(new_n910), .B(new_n439), .Y(new_n911));
  NOR3X1   g602(.A(new_n911), .B(new_n359), .C(new_n313), .Y(new_n912));
  AND2X1   g603(.A(\clk_counter[17] ), .B(rx_buf), .Y(new_n913));
  XOR2X1   g604(.A(new_n910), .B(\clk_counter[17] ), .Y(new_n914));
  AOI22X1  g605(.A0(new_n914), .A1(new_n464), .B0(new_n913), .B1(\state[5] ), .Y(new_n915));
  OAI21X1  g606(.A0(new_n911), .A1(new_n474), .B0(new_n915), .Y(new_n916));
  OAI21X1  g607(.A0(new_n916), .A1(new_n912), .B0(new_n317), .Y(new_n917));
  AOI21X1  g608(.A0(new_n917), .A1(new_n909), .B0(rst_i), .Y(n457));
  OR2X1    g609(.A(new_n317), .B(new_n442_1), .Y(new_n919));
  NOR3X1   g610(.A(new_n364_1), .B(new_n439), .C(new_n447_1), .Y(new_n920));
  XOR2X1   g611(.A(new_n920), .B(new_n442_1), .Y(new_n921));
  NOR3X1   g612(.A(new_n921), .B(new_n359), .C(new_n313), .Y(new_n922));
  AND2X1   g613(.A(\clk_counter[18] ), .B(rx_buf), .Y(new_n923));
  XOR2X1   g614(.A(new_n920), .B(\clk_counter[18] ), .Y(new_n924));
  AOI22X1  g615(.A0(new_n924), .A1(new_n464), .B0(new_n923), .B1(\state[5] ), .Y(new_n925));
  OAI21X1  g616(.A0(new_n921), .A1(new_n474), .B0(new_n925), .Y(new_n926));
  OAI21X1  g617(.A0(new_n926), .A1(new_n922), .B0(new_n317), .Y(new_n927));
  AOI21X1  g618(.A0(new_n927), .A1(new_n919), .B0(rst_i), .Y(n462));
  INVX1    g619(.A(\clk_counter[19] ), .Y(new_n929));
  OR2X1    g620(.A(new_n317), .B(new_n929), .Y(new_n930));
  NOR4X1   g621(.A(new_n364_1), .B(new_n442_1), .C(new_n439), .D(new_n447_1), .Y(new_n931));
  XOR2X1   g622(.A(new_n931), .B(new_n929), .Y(new_n932));
  NAND3X1  g623(.A(\clk_counter[19] ), .B(\state[5] ), .C(rx_buf), .Y(new_n933));
  OAI21X1  g624(.A0(new_n932), .A1(new_n474), .B0(new_n933), .Y(new_n934));
  AOI21X1  g625(.A0(new_n477_1), .A1(new_n316_1), .B0(new_n932), .Y(new_n935));
  OAI21X1  g626(.A0(new_n935), .A1(new_n934), .B0(new_n317), .Y(new_n936));
  AOI21X1  g627(.A0(new_n936), .A1(new_n930), .B0(rst_i), .Y(n467));
  OR2X1    g628(.A(new_n317), .B(new_n455), .Y(new_n938));
  NOR2X1   g629(.A(new_n365), .B(new_n364_1), .Y(new_n939));
  XOR2X1   g630(.A(new_n939), .B(new_n455), .Y(new_n940));
  NOR3X1   g631(.A(new_n940), .B(new_n359), .C(new_n313), .Y(new_n941));
  AND2X1   g632(.A(\clk_counter[20] ), .B(rx_buf), .Y(new_n942));
  XOR2X1   g633(.A(new_n939), .B(\clk_counter[20] ), .Y(new_n943));
  AOI22X1  g634(.A0(new_n943), .A1(new_n464), .B0(new_n942), .B1(\state[5] ), .Y(new_n944));
  OAI21X1  g635(.A0(new_n940), .A1(new_n474), .B0(new_n944), .Y(new_n945));
  OAI21X1  g636(.A0(new_n945), .A1(new_n941), .B0(new_n317), .Y(new_n946));
  AOI21X1  g637(.A0(new_n946), .A1(new_n938), .B0(rst_i), .Y(n472));
  OR2X1    g638(.A(new_n317), .B(new_n458), .Y(new_n948));
  NOR3X1   g639(.A(new_n365), .B(new_n364_1), .C(new_n455), .Y(new_n949));
  XOR2X1   g640(.A(new_n949), .B(new_n458), .Y(new_n950));
  NAND3X1  g641(.A(\clk_counter[21] ), .B(\state[5] ), .C(rx_buf), .Y(new_n951));
  OAI21X1  g642(.A0(new_n950), .A1(new_n474), .B0(new_n951), .Y(new_n952));
  AOI21X1  g643(.A0(new_n477_1), .A1(new_n316_1), .B0(new_n950), .Y(new_n953));
  OAI21X1  g644(.A0(new_n953), .A1(new_n952), .B0(new_n317), .Y(new_n954));
  AOI21X1  g645(.A0(new_n954), .A1(new_n948), .B0(rst_i), .Y(n477));
  OR2X1    g646(.A(new_n317), .B(new_n451), .Y(new_n956));
  NOR4X1   g647(.A(new_n365), .B(new_n364_1), .C(new_n458), .D(new_n455), .Y(new_n957));
  XOR2X1   g648(.A(new_n957), .B(new_n451), .Y(new_n958));
  NAND3X1  g649(.A(\clk_counter[22] ), .B(\state[5] ), .C(rx_buf), .Y(new_n959));
  OAI21X1  g650(.A0(new_n958), .A1(new_n474), .B0(new_n959), .Y(new_n960));
  AOI21X1  g651(.A0(new_n477_1), .A1(new_n316_1), .B0(new_n958), .Y(new_n961));
  OAI21X1  g652(.A0(new_n961), .A1(new_n960), .B0(new_n317), .Y(new_n962));
  AOI21X1  g653(.A0(new_n962), .A1(new_n956), .B0(rst_i), .Y(n482));
  OR2X1    g654(.A(new_n317), .B(new_n433), .Y(new_n964));
  AND2X1   g655(.A(new_n957), .B(\clk_counter[22] ), .Y(new_n965));
  XOR2X1   g656(.A(new_n965), .B(new_n433), .Y(new_n966));
  NAND3X1  g657(.A(\clk_counter[23] ), .B(\state[5] ), .C(rx_buf), .Y(new_n967));
  OAI21X1  g658(.A0(new_n966), .A1(new_n474), .B0(new_n967), .Y(new_n968));
  AOI21X1  g659(.A0(new_n477_1), .A1(new_n316_1), .B0(new_n966), .Y(new_n969));
  OAI21X1  g660(.A0(new_n969), .A1(new_n968), .B0(new_n317), .Y(new_n970));
  AOI21X1  g661(.A0(new_n970), .A1(new_n964), .B0(rst_i), .Y(n487));
  always @ (posedge clock) begin
    \clk_counter[24]  <= n86;
    \clk_counter[25]  <= n91;
    \clk_counter[26]  <= n96;
    \clk_counter[27]  <= n101;
    \clk_counter[28]  <= n106;
    \clk_counter[29]  <= n111;
    \clk_counter[30]  <= n116;
    \clk_counter[31]  <= n121;
    \dout_bo[0]  <= n126;
    \dout_bo[1]  <= n130;
    \dout_bo[2]  <= n134;
    \dout_bo[3]  <= n138;
    \dout_bo[4]  <= n142;
    \dout_bo[5]  <= n146;
    \dout_bo[6]  <= n150;
    \dout_bo[7]  <= n154;
    locked_o <= n158;
    rx_done_tick_o <= n162;
    \bit_counter[0]  <= n166;
    \bit_counter[1]  <= n171;
    \bit_counter[2]  <= n176;
    rx_buf <= n181;
    \state[0]  <= n186;
    \state[1]  <= n191;
    \state[2]  <= n196;
    \state[3]  <= n201;
    \state[4]  <= n206;
    \state[5]  <= n211;
    \state[6]  <= n216;
    \state[7]  <= n221;
    \state[8]  <= n226;
    \state[9]  <= n231;
    \state[10]  <= n236;
    \state[11]  <= n241;
    \state[12]  <= n246;
    \state[13]  <= n251;
    \bitperiod_o[0]  <= n256;
    \bitperiod_o[1]  <= n260;
    \bitperiod_o[2]  <= n264;
    \bitperiod_o[3]  <= n268;
    \bitperiod_o[4]  <= n272;
    \bitperiod_o[5]  <= n276;
    \bitperiod_o[6]  <= n280;
    \bitperiod_o[7]  <= n284;
    \bitperiod_o[8]  <= n288;
    \bitperiod_o[9]  <= n292;
    \bitperiod_o[10]  <= n296;
    \bitperiod_o[11]  <= n300;
    \bitperiod_o[12]  <= n304;
    \bitperiod_o[13]  <= n308;
    \bitperiod_o[14]  <= n312;
    \bitperiod_o[15]  <= n316;
    \bitperiod_o[16]  <= n320;
    \bitperiod_o[17]  <= n324;
    \bitperiod_o[18]  <= n328;
    \bitperiod_o[19]  <= n332;
    \bitperiod_o[20]  <= n336;
    \bitperiod_o[21]  <= n340;
    \bitperiod_o[22]  <= n344;
    \bitperiod_o[23]  <= n348;
    \bitperiod_o[24]  <= n352;
    \bitperiod_o[25]  <= n356;
    \bitperiod_o[26]  <= n360;
    \bitperiod_o[27]  <= n364;
    \bitperiod_o[28]  <= n368;
    \clk_counter[0]  <= n372;
    \clk_counter[1]  <= n377;
    \clk_counter[2]  <= n382;
    \clk_counter[3]  <= n387;
    \clk_counter[4]  <= n392;
    \clk_counter[5]  <= n397;
    \clk_counter[6]  <= n402;
    \clk_counter[7]  <= n407;
    \clk_counter[8]  <= n412;
    \clk_counter[9]  <= n417;
    \clk_counter[10]  <= n422;
    \clk_counter[11]  <= n427;
    \clk_counter[12]  <= n432;
    \clk_counter[13]  <= n437;
    \clk_counter[14]  <= n442;
    \clk_counter[15]  <= n447;
    \clk_counter[16]  <= n452;
    \clk_counter[17]  <= n457;
    \clk_counter[18]  <= n462;
    \clk_counter[19]  <= n467;
    \clk_counter[20]  <= n472;
    \clk_counter[21]  <= n477;
    \clk_counter[22]  <= n482;
    \clk_counter[23]  <= n487;
  end
endmodule


