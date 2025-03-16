// Benchmark "multiplier_8bit" written by ABC on Wed Jun 26 15:22:01 2024

module multiplier_8bit ( clock, 
    \a[0] , \a[1] , \a[2] , \a[3] , \a[4] , \a[5] , \a[6] , \a[7] , \b[0] ,
    \b[1] , \b[2] , \b[3] , \b[4] , \b[5] , \b[6] , \b[7] , ctrl,
    \c[0] , \c[1] , \c[2] , \c[3] , \c[4] , \c[5] , \c[6] , \c[7] , \c[8] ,
    \c[9] , \c[10] , \c[11] , \c[12] , \c[13] , \c[14] , \c[15]   );
  input  clock;
  input  \a[0] , \a[1] , \a[2] , \a[3] , \a[4] , \a[5] , \a[6] , \a[7] ,
    \b[0] , \b[1] , \b[2] , \b[3] , \b[4] , \b[5] , \b[6] , \b[7] , ctrl;
  output \c[0] , \c[1] , \c[2] , \c[3] , \c[4] , \c[5] , \c[6] , \c[7] ,
    \c[8] , \c[9] , \c[10] , \c[11] , \c[12] , \c[13] , \c[14] , \c[15] ;
  reg \b_reg[2] , \b_reg[3] , \b_reg[4] , \b_reg[5] , \b_reg[6] ,
    \b_reg[7] , \a_reg[0] , \a_reg[1] , \a_reg[2] , \a_reg[3] , \a_reg[4] ,
    \a_reg[5] , \a_reg[6] , \a_reg[7] , \c_reg[0] , \c_reg[1] , \c_reg[2] ,
    \c_reg[3] , \c_reg[4] , \c_reg[5] , \c_reg[6] , \c_reg[7] , \c_reg[8] ,
    \c_reg[9] , \c_reg[10] , \c_reg[11] , \c_reg[12] , \c_reg[13] ,
    \c_reg[14] , \c_reg[15] , \b_reg[0] , \b_reg[1] ;
  wire new_n131, new_n132, new_n134_1, new_n135, new_n136, new_n137,
    new_n138, new_n139_1, new_n141, new_n142, new_n143, new_n144_1,
    new_n145, new_n146, new_n147, new_n148, new_n149_1, new_n150, new_n151,
    new_n152, new_n154_1, new_n155, new_n156, new_n157, new_n158,
    new_n159_1, new_n160, new_n161, new_n162, new_n163, new_n164_1,
    new_n165, new_n166, new_n167, new_n168, new_n169_1, new_n170, new_n172,
    new_n173, new_n174_1, new_n175, new_n176, new_n177, new_n178,
    new_n179_1, new_n180, new_n181, new_n182, new_n183, new_n184_1,
    new_n185, new_n186, new_n187, new_n188, new_n189_1, new_n190, new_n191,
    new_n192, new_n193, new_n194_1, new_n195, new_n197, new_n198,
    new_n199_1, new_n200, new_n201, new_n202, new_n203_1, new_n204,
    new_n205, new_n206, new_n207_1, new_n208, new_n209, new_n210, new_n211,
    new_n212, new_n213, new_n214, new_n215, new_n216, new_n217, new_n218,
    new_n219, new_n220, new_n221, new_n222, new_n223, new_n224, new_n225,
    new_n227, new_n228, new_n229, new_n230, new_n231, new_n232, new_n233,
    new_n234, new_n235, new_n236, new_n237, new_n238, new_n239, new_n240,
    new_n241, new_n242, new_n243, new_n244, new_n245, new_n246, new_n247,
    new_n248, new_n249, new_n250, new_n251, new_n252, new_n253, new_n254,
    new_n255, new_n256, new_n257, new_n258, new_n259, new_n260, new_n261,
    new_n262, new_n263, new_n264, new_n265, new_n266, new_n267, new_n268,
    new_n269, new_n270, new_n271, new_n272, new_n273, new_n274, new_n275,
    new_n276, new_n277, new_n278, new_n279, new_n280, new_n282, new_n283,
    new_n284, new_n285, new_n286, new_n287, new_n288, new_n289, new_n290,
    new_n291, new_n292, new_n293, new_n294, new_n295, new_n296, new_n297,
    new_n298, new_n299, new_n300, new_n301, new_n302, new_n303, new_n304,
    new_n305, new_n306, new_n307, new_n308, new_n309, new_n310, new_n311,
    new_n312, new_n313, new_n314, new_n315, new_n316, new_n317, new_n318,
    new_n319, new_n320, new_n321, new_n322, new_n323, new_n324, new_n325,
    new_n326, new_n327, new_n328, new_n329, new_n330, new_n331, new_n332,
    new_n333, new_n334, new_n335, new_n336, new_n337, new_n338, new_n339,
    new_n340, new_n341, new_n342, new_n343, new_n344, new_n345, new_n346,
    new_n347, new_n348, new_n349, new_n350, new_n351, new_n352, new_n353,
    new_n354, new_n355, new_n357, new_n358, new_n359, new_n360, new_n361,
    new_n362, new_n363, new_n364, new_n365, new_n366, new_n367, new_n368,
    new_n369, new_n370, new_n371, new_n372, new_n373, new_n374, new_n375,
    new_n376, new_n377, new_n378, new_n379, new_n380, new_n381, new_n382,
    new_n383, new_n384, new_n385, new_n386, new_n387, new_n388, new_n389,
    new_n390, new_n391, new_n392, new_n393, new_n394, new_n395, new_n396,
    new_n397, new_n398, new_n399, new_n400, new_n401, new_n402, new_n403,
    new_n404, new_n405, new_n406, new_n407, new_n408, new_n409, new_n410,
    new_n411, new_n412, new_n413, new_n414, new_n415, new_n416, new_n417,
    new_n418, new_n419, new_n420, new_n421, new_n422, new_n423, new_n424,
    new_n425, new_n426, new_n427, new_n428, new_n429, new_n430, new_n431,
    new_n432, new_n434, new_n435, new_n436, new_n437, new_n438, new_n439,
    new_n440, new_n441, new_n442, new_n443, new_n444, new_n445, new_n446,
    new_n447, new_n448, new_n449, new_n450, new_n451, new_n452, new_n453,
    new_n454, new_n455, new_n456, new_n457, new_n458, new_n459, new_n460,
    new_n461, new_n462, new_n463, new_n464, new_n465, new_n466, new_n467,
    new_n468, new_n469, new_n470, new_n471, new_n472, new_n473, new_n474,
    new_n475, new_n476, new_n477, new_n478, new_n479, new_n480, new_n481,
    new_n482, new_n483, new_n484, new_n485, new_n486, new_n487, new_n488,
    new_n489, new_n490, new_n491, new_n492, new_n493, new_n494, new_n495,
    new_n496, new_n497, new_n498, new_n499, new_n500, new_n501, new_n502,
    new_n503, new_n504, new_n505, new_n506, new_n507, new_n508, new_n509,
    new_n510, new_n511, new_n512, new_n513, new_n514, new_n515, new_n516,
    new_n517, new_n518, new_n519, new_n520, new_n521, new_n522, new_n523,
    new_n525, new_n526, new_n527, new_n528, new_n529, new_n530, new_n531,
    new_n532, new_n533, new_n534, new_n535, new_n536, new_n537, new_n538,
    new_n539, new_n540, new_n541, new_n542, new_n543, new_n544, new_n545,
    new_n546, new_n547, new_n548, new_n549, new_n550, new_n551, new_n552,
    new_n553, new_n554, new_n555, new_n556, new_n557, new_n558, new_n559,
    new_n560, new_n561, new_n562, new_n563, new_n564, new_n565, new_n566,
    new_n567, new_n568, new_n569, new_n570, new_n571, new_n572, new_n573,
    new_n574, new_n575, new_n576, new_n577, new_n578, new_n579, new_n580,
    new_n581, new_n582, new_n583, new_n584, new_n585, new_n586, new_n587,
    new_n588, new_n589, new_n590, new_n591, new_n592, new_n593, new_n594,
    new_n595, new_n596, new_n597, new_n598, new_n599, new_n600, new_n601,
    new_n602, new_n603, new_n604, new_n605, new_n607, new_n608, new_n609,
    new_n610, new_n611, new_n612, new_n613, new_n614, new_n615, new_n616,
    new_n617, new_n618, new_n619, new_n620, new_n621, new_n622, new_n623,
    new_n624, new_n625, new_n626, new_n627, new_n628, new_n629, new_n630,
    new_n631, new_n632, new_n633, new_n634, new_n635, new_n636, new_n637,
    new_n638, new_n639, new_n640, new_n641, new_n642, new_n643, new_n644,
    new_n645, new_n646, new_n647, new_n648, new_n649, new_n650, new_n651,
    new_n652, new_n653, new_n654, new_n655, new_n656, new_n657, new_n658,
    new_n659, new_n660, new_n661, new_n662, new_n663, new_n664, new_n665,
    new_n666, new_n667, new_n668, new_n669, new_n670, new_n671, new_n672,
    new_n673, new_n674, new_n675, new_n676, new_n677, new_n678, new_n679,
    new_n680, new_n681, new_n682, new_n683, new_n684, new_n685, new_n686,
    new_n687, new_n688, new_n689, new_n690, new_n691, new_n692, new_n693,
    new_n695, new_n696, new_n697, new_n698, new_n699, new_n700, new_n701,
    new_n702, new_n703, new_n704, new_n705, new_n706, new_n707, new_n708,
    new_n709, new_n710, new_n711, new_n712, new_n713, new_n714, new_n715,
    new_n716, new_n717, new_n718, new_n719, new_n720, new_n721, new_n722,
    new_n723, new_n724, new_n725, new_n726, new_n727, new_n728, new_n729,
    new_n730, new_n731, new_n732, new_n733, new_n734, new_n735, new_n736,
    new_n737, new_n738, new_n739, new_n740, new_n741, new_n742, new_n743,
    new_n744, new_n745, new_n746, new_n747, new_n748, new_n749, new_n750,
    new_n751, new_n752, new_n753, new_n754, new_n755, new_n756, new_n757,
    new_n758, new_n759, new_n760, new_n761, new_n762, new_n763, new_n764,
    new_n765, new_n766, new_n767, new_n769, new_n770, new_n771, new_n772,
    new_n773, new_n774, new_n775, new_n776, new_n777, new_n778, new_n779,
    new_n780, new_n781, new_n782, new_n783, new_n784, new_n785, new_n786,
    new_n787, new_n788, new_n789, new_n790, new_n791, new_n792, new_n793,
    new_n794, new_n795, new_n796, new_n797, new_n798, new_n799, new_n800,
    new_n801, new_n802, new_n803, new_n804, new_n805, new_n806, new_n807,
    new_n808, new_n809, new_n810, new_n811, new_n812, new_n813, new_n814,
    new_n815, new_n816, new_n817, new_n818, new_n819, new_n820, new_n821,
    new_n822, new_n823, new_n824, new_n825, new_n826, new_n827, new_n828,
    new_n829, new_n830, new_n831, new_n832, new_n833, new_n834, new_n835,
    new_n837, new_n838, new_n839, new_n840, new_n841, new_n842, new_n843,
    new_n844, new_n845, new_n846, new_n847, new_n848, new_n849, new_n850,
    new_n851, new_n852, new_n853, new_n854, new_n855, new_n856, new_n857,
    new_n858, new_n859, new_n860, new_n861, new_n862, new_n863, new_n864,
    new_n865, new_n866, new_n867, new_n868, new_n869, new_n870, new_n871,
    new_n872, new_n873, new_n874, new_n875, new_n876, new_n877, new_n878,
    new_n879, new_n880, new_n881, new_n882, new_n883, new_n884, new_n885,
    new_n886, new_n887, new_n888, new_n889, new_n890, new_n891, new_n892,
    new_n893, n67, n71, n75, n79, n83, n87, n91, n95, n99, n103, n107,
    n111, n115, n119, n124, n129, n134, n139, n144, n149, n154, n159, n164,
    n169, n174, n179, n184, n189, n194, n199, n203, n207;
  AND2X1   g000(.A(\b_reg[0] ), .B(\a_reg[0] ), .Y(n124));
  AND2X1   g001(.A(\b_reg[0] ), .B(\a_reg[1] ), .Y(new_n131));
  AND2X1   g002(.A(\b_reg[1] ), .B(\a_reg[0] ), .Y(new_n132));
  XOR2X1   g003(.A(new_n132), .B(new_n131), .Y(n129));
  AND2X1   g004(.A(\b_reg[0] ), .B(\a_reg[2] ), .Y(new_n134_1));
  AND2X1   g005(.A(\b_reg[1] ), .B(\a_reg[1] ), .Y(new_n135));
  XOR2X1   g006(.A(new_n135), .B(new_n134_1), .Y(new_n136));
  AND2X1   g007(.A(new_n132), .B(new_n131), .Y(new_n137));
  XOR2X1   g008(.A(new_n137), .B(new_n136), .Y(new_n138));
  AND2X1   g009(.A(\a_reg[0] ), .B(\b_reg[2] ), .Y(new_n139_1));
  XOR2X1   g010(.A(new_n139_1), .B(new_n138), .Y(n134));
  AND2X1   g011(.A(\a_reg[0] ), .B(\b_reg[3] ), .Y(new_n141));
  AND2X1   g012(.A(\b_reg[0] ), .B(\a_reg[3] ), .Y(new_n142));
  XOR2X1   g013(.A(new_n142), .B(new_n141), .Y(new_n143));
  AND2X1   g014(.A(\b_reg[1] ), .B(\a_reg[2] ), .Y(new_n144_1));
  XOR2X1   g015(.A(new_n144_1), .B(new_n143), .Y(new_n145));
  AND2X1   g016(.A(new_n135), .B(new_n134_1), .Y(new_n146));
  XOR2X1   g017(.A(new_n146), .B(new_n145), .Y(new_n147));
  AND2X1   g018(.A(\a_reg[1] ), .B(\b_reg[2] ), .Y(new_n148));
  INVX1    g019(.A(new_n148), .Y(new_n149_1));
  XOR2X1   g020(.A(new_n149_1), .B(new_n147), .Y(new_n150));
  AND2X1   g021(.A(new_n137), .B(new_n136), .Y(new_n151));
  AOI21X1  g022(.A0(new_n139_1), .A1(new_n138), .B0(new_n151), .Y(new_n152));
  XOR2X1   g023(.A(new_n152), .B(new_n150), .Y(n139));
  AND2X1   g024(.A(\a_reg[1] ), .B(\b_reg[3] ), .Y(new_n154_1));
  AND2X1   g025(.A(\b_reg[0] ), .B(\a_reg[4] ), .Y(new_n155));
  XOR2X1   g026(.A(new_n155), .B(new_n154_1), .Y(new_n156));
  AND2X1   g027(.A(\b_reg[1] ), .B(\a_reg[3] ), .Y(new_n157));
  XOR2X1   g028(.A(new_n157), .B(new_n156), .Y(new_n158));
  AND2X1   g029(.A(new_n142), .B(new_n141), .Y(new_n159_1));
  AOI21X1  g030(.A0(new_n144_1), .A1(new_n143), .B0(new_n159_1), .Y(new_n160));
  XOR2X1   g031(.A(new_n160), .B(new_n158), .Y(new_n161));
  INVX1    g032(.A(new_n161), .Y(new_n162));
  NAND2X1  g033(.A(\a_reg[2] ), .B(\b_reg[2] ), .Y(new_n163));
  AND2X1   g034(.A(\a_reg[0] ), .B(\b_reg[4] ), .Y(new_n164_1));
  XOR2X1   g035(.A(new_n164_1), .B(new_n163), .Y(new_n165));
  XOR2X1   g036(.A(new_n165), .B(new_n162), .Y(new_n166));
  AND2X1   g037(.A(new_n146), .B(new_n145), .Y(new_n167));
  AOI21X1  g038(.A0(new_n148), .A1(new_n147), .B0(new_n167), .Y(new_n168));
  XOR2X1   g039(.A(new_n168), .B(new_n166), .Y(new_n169_1));
  NOR2X1   g040(.A(new_n152), .B(new_n150), .Y(new_n170));
  XOR2X1   g041(.A(new_n170), .B(new_n169_1), .Y(n144));
  AND2X1   g042(.A(\a_reg[2] ), .B(\b_reg[3] ), .Y(new_n172));
  AND2X1   g043(.A(\b_reg[0] ), .B(\a_reg[5] ), .Y(new_n173));
  XOR2X1   g044(.A(new_n173), .B(new_n172), .Y(new_n174_1));
  NAND2X1  g045(.A(\b_reg[1] ), .B(\a_reg[4] ), .Y(new_n175));
  XOR2X1   g046(.A(new_n175), .B(new_n174_1), .Y(new_n176));
  AND2X1   g047(.A(new_n155), .B(new_n154_1), .Y(new_n177));
  AOI21X1  g048(.A0(new_n157), .A1(new_n156), .B0(new_n177), .Y(new_n178));
  XOR2X1   g049(.A(new_n178), .B(new_n176), .Y(new_n179_1));
  AND2X1   g050(.A(\a_reg[3] ), .B(\b_reg[2] ), .Y(new_n180));
  AND2X1   g051(.A(\a_reg[1] ), .B(\b_reg[4] ), .Y(new_n181));
  XOR2X1   g052(.A(new_n181), .B(new_n180), .Y(new_n182));
  AND2X1   g053(.A(\a_reg[0] ), .B(\b_reg[5] ), .Y(new_n183));
  XOR2X1   g054(.A(new_n183), .B(new_n182), .Y(new_n184_1));
  XOR2X1   g055(.A(new_n184_1), .B(new_n179_1), .Y(new_n185));
  AND2X1   g056(.A(new_n144_1), .B(new_n143), .Y(new_n186));
  OAI21X1  g057(.A0(new_n186), .A1(new_n159_1), .B0(new_n158), .Y(new_n187));
  OAI21X1  g058(.A0(new_n165), .A1(new_n161), .B0(new_n187), .Y(new_n188));
  XOR2X1   g059(.A(new_n188), .B(new_n185), .Y(new_n189_1));
  AND2X1   g060(.A(\a_reg[2] ), .B(\b_reg[2] ), .Y(new_n190));
  AND2X1   g061(.A(new_n164_1), .B(new_n190), .Y(new_n191));
  XOR2X1   g062(.A(new_n191), .B(new_n189_1), .Y(new_n192));
  NOR2X1   g063(.A(new_n168), .B(new_n166), .Y(new_n193));
  XOR2X1   g064(.A(new_n193), .B(new_n192), .Y(new_n194_1));
  AND2X1   g065(.A(new_n170), .B(new_n169_1), .Y(new_n195));
  XOR2X1   g066(.A(new_n195), .B(new_n194_1), .Y(n149));
  AND2X1   g067(.A(\a_reg[3] ), .B(\b_reg[3] ), .Y(new_n197));
  AND2X1   g068(.A(\b_reg[0] ), .B(\a_reg[6] ), .Y(new_n198));
  XOR2X1   g069(.A(new_n198), .B(new_n197), .Y(new_n199_1));
  NAND2X1  g070(.A(\b_reg[1] ), .B(\a_reg[5] ), .Y(new_n200));
  XOR2X1   g071(.A(new_n200), .B(new_n199_1), .Y(new_n201));
  AND2X1   g072(.A(\b_reg[1] ), .B(\a_reg[4] ), .Y(new_n202));
  AND2X1   g073(.A(new_n173), .B(new_n172), .Y(new_n203_1));
  AOI21X1  g074(.A0(new_n202), .A1(new_n174_1), .B0(new_n203_1), .Y(new_n204));
  XOR2X1   g075(.A(new_n204), .B(new_n201), .Y(new_n205));
  AND2X1   g076(.A(\a_reg[4] ), .B(\b_reg[2] ), .Y(new_n206));
  AND2X1   g077(.A(\a_reg[2] ), .B(\b_reg[4] ), .Y(new_n207_1));
  XOR2X1   g078(.A(new_n207_1), .B(new_n206), .Y(new_n208));
  NAND2X1  g079(.A(\a_reg[1] ), .B(\b_reg[5] ), .Y(new_n209));
  XOR2X1   g080(.A(new_n209), .B(new_n208), .Y(new_n210));
  XOR2X1   g081(.A(new_n210), .B(new_n205), .Y(new_n211));
  NOR2X1   g082(.A(new_n178), .B(new_n176), .Y(new_n212));
  AOI21X1  g083(.A0(new_n184_1), .A1(new_n179_1), .B0(new_n212), .Y(new_n213));
  XOR2X1   g084(.A(new_n213), .B(new_n211), .Y(new_n214));
  AND2X1   g085(.A(new_n181), .B(new_n180), .Y(new_n215));
  AOI21X1  g086(.A0(new_n183), .A1(new_n182), .B0(new_n215), .Y(new_n216));
  AND2X1   g087(.A(\a_reg[0] ), .B(\b_reg[6] ), .Y(new_n217));
  XOR2X1   g088(.A(new_n217), .B(new_n216), .Y(new_n218));
  XOR2X1   g089(.A(new_n218), .B(new_n214), .Y(new_n219));
  AND2X1   g090(.A(new_n188), .B(new_n185), .Y(new_n220));
  AOI21X1  g091(.A0(new_n191), .A1(new_n189_1), .B0(new_n220), .Y(new_n221));
  XOR2X1   g092(.A(new_n221), .B(new_n219), .Y(new_n222));
  AND2X1   g093(.A(new_n193), .B(new_n192), .Y(new_n223));
  XOR2X1   g094(.A(new_n223), .B(new_n222), .Y(new_n224));
  AND2X1   g095(.A(new_n195), .B(new_n194_1), .Y(new_n225));
  XOR2X1   g096(.A(new_n225), .B(new_n224), .Y(n154));
  INVX1    g097(.A(ctrl), .Y(new_n227));
  NAND2X1  g098(.A(\a_reg[4] ), .B(\b_reg[3] ), .Y(new_n228));
  AND2X1   g099(.A(\b_reg[0] ), .B(\a_reg[7] ), .Y(new_n229));
  XOR2X1   g100(.A(new_n229), .B(new_n228), .Y(new_n230));
  AND2X1   g101(.A(\b_reg[1] ), .B(\a_reg[6] ), .Y(new_n231));
  XOR2X1   g102(.A(new_n231), .B(new_n230), .Y(new_n232));
  AND2X1   g103(.A(\b_reg[1] ), .B(\a_reg[5] ), .Y(new_n233));
  AND2X1   g104(.A(new_n198), .B(new_n197), .Y(new_n234));
  AOI21X1  g105(.A0(new_n233), .A1(new_n199_1), .B0(new_n234), .Y(new_n235));
  XOR2X1   g106(.A(new_n235), .B(new_n232), .Y(new_n236));
  AND2X1   g107(.A(\a_reg[5] ), .B(\b_reg[2] ), .Y(new_n237));
  AND2X1   g108(.A(\a_reg[3] ), .B(\b_reg[4] ), .Y(new_n238));
  XOR2X1   g109(.A(new_n238), .B(new_n237), .Y(new_n239));
  NAND2X1  g110(.A(\a_reg[2] ), .B(\b_reg[5] ), .Y(new_n240));
  XOR2X1   g111(.A(new_n240), .B(new_n239), .Y(new_n241));
  XOR2X1   g112(.A(new_n241), .B(new_n236), .Y(new_n242));
  AND2X1   g113(.A(\a_reg[1] ), .B(\b_reg[5] ), .Y(new_n243));
  XOR2X1   g114(.A(new_n243), .B(new_n208), .Y(new_n244));
  NOR2X1   g115(.A(new_n204), .B(new_n201), .Y(new_n245));
  AOI21X1  g116(.A0(new_n244), .A1(new_n205), .B0(new_n245), .Y(new_n246));
  XOR2X1   g117(.A(new_n246), .B(new_n242), .Y(new_n247));
  AND2X1   g118(.A(new_n207_1), .B(new_n206), .Y(new_n248));
  AOI21X1  g119(.A0(new_n243), .A1(new_n208), .B0(new_n248), .Y(new_n249));
  NAND2X1  g120(.A(\a_reg[1] ), .B(\b_reg[6] ), .Y(new_n250));
  XOR2X1   g121(.A(new_n250), .B(new_n249), .Y(new_n251));
  AND2X1   g122(.A(\a_reg[0] ), .B(\b_reg[7] ), .Y(new_n252));
  INVX1    g123(.A(new_n252), .Y(new_n253));
  XOR2X1   g124(.A(new_n253), .B(new_n251), .Y(new_n254));
  INVX1    g125(.A(new_n254), .Y(new_n255));
  XOR2X1   g126(.A(new_n255), .B(new_n247), .Y(new_n256));
  INVX1    g127(.A(new_n218), .Y(new_n257));
  NOR2X1   g128(.A(new_n213), .B(new_n211), .Y(new_n258));
  AOI21X1  g129(.A0(new_n257), .A1(new_n214), .B0(new_n258), .Y(new_n259));
  XOR2X1   g130(.A(new_n259), .B(new_n256), .Y(new_n260));
  INVX1    g131(.A(\b_reg[6] ), .Y(new_n261));
  INVX1    g132(.A(\a_reg[0] ), .Y(new_n262));
  NOR3X1   g133(.A(new_n216), .B(new_n262), .C(new_n261), .Y(new_n263));
  XOR2X1   g134(.A(new_n263), .B(new_n260), .Y(new_n264));
  NOR2X1   g135(.A(new_n221), .B(new_n219), .Y(new_n265));
  XOR2X1   g136(.A(new_n265), .B(new_n264), .Y(new_n266));
  AND2X1   g137(.A(new_n223), .B(new_n222), .Y(new_n267));
  AOI21X1  g138(.A0(new_n225), .A1(new_n224), .B0(new_n267), .Y(new_n268));
  XOR2X1   g139(.A(new_n268), .B(new_n266), .Y(new_n269));
  NAND2X1  g140(.A(new_n225), .B(new_n224), .Y(new_n270));
  INVX1    g141(.A(new_n263), .Y(new_n271));
  XOR2X1   g142(.A(new_n252), .B(new_n250), .Y(new_n272));
  XOR2X1   g143(.A(new_n272), .B(new_n249), .Y(new_n273));
  INVX1    g144(.A(new_n273), .Y(new_n274));
  XOR2X1   g145(.A(new_n274), .B(new_n247), .Y(new_n275));
  XOR2X1   g146(.A(new_n275), .B(new_n259), .Y(new_n276));
  XOR2X1   g147(.A(new_n276), .B(new_n271), .Y(new_n277));
  XOR2X1   g148(.A(new_n277), .B(new_n265), .Y(new_n278));
  XOR2X1   g149(.A(new_n278), .B(new_n267), .Y(new_n279));
  XOR2X1   g150(.A(new_n279), .B(new_n270), .Y(new_n280));
  MX2X1    g151(.A(new_n280), .B(new_n269), .S0(new_n227), .Y(n159));
  AND2X1   g152(.A(\a_reg[5] ), .B(\b_reg[3] ), .Y(new_n282));
  NAND2X1  g153(.A(\b_reg[1] ), .B(\a_reg[7] ), .Y(new_n283));
  XOR2X1   g154(.A(new_n283), .B(new_n282), .Y(new_n284));
  NAND2X1  g155(.A(\b_reg[0] ), .B(\a_reg[7] ), .Y(new_n285));
  XOR2X1   g156(.A(new_n285), .B(new_n228), .Y(new_n286));
  NOR2X1   g157(.A(new_n285), .B(new_n228), .Y(new_n287));
  AOI21X1  g158(.A0(new_n231), .A1(new_n286), .B0(new_n287), .Y(new_n288));
  XOR2X1   g159(.A(new_n288), .B(new_n284), .Y(new_n289));
  AND2X1   g160(.A(\a_reg[6] ), .B(\b_reg[2] ), .Y(new_n290));
  AND2X1   g161(.A(\a_reg[4] ), .B(\b_reg[4] ), .Y(new_n291));
  XOR2X1   g162(.A(new_n291), .B(new_n290), .Y(new_n292));
  AND2X1   g163(.A(\a_reg[3] ), .B(\b_reg[5] ), .Y(new_n293));
  XOR2X1   g164(.A(new_n293), .B(new_n292), .Y(new_n294));
  INVX1    g165(.A(new_n294), .Y(new_n295));
  XOR2X1   g166(.A(new_n295), .B(new_n289), .Y(new_n296));
  XOR2X1   g167(.A(new_n231), .B(new_n286), .Y(new_n297));
  XOR2X1   g168(.A(new_n235), .B(new_n297), .Y(new_n298));
  OR2X1    g169(.A(new_n235), .B(new_n232), .Y(new_n299));
  OAI21X1  g170(.A0(new_n241), .A1(new_n298), .B0(new_n299), .Y(new_n300));
  XOR2X1   g171(.A(new_n300), .B(new_n296), .Y(new_n301));
  AND2X1   g172(.A(\a_reg[2] ), .B(\b_reg[5] ), .Y(new_n302));
  AND2X1   g173(.A(new_n238), .B(new_n237), .Y(new_n303));
  AOI21X1  g174(.A0(new_n302), .A1(new_n239), .B0(new_n303), .Y(new_n304));
  NAND2X1  g175(.A(\a_reg[2] ), .B(\b_reg[6] ), .Y(new_n305));
  XOR2X1   g176(.A(new_n305), .B(new_n304), .Y(new_n306));
  NAND2X1  g177(.A(\a_reg[1] ), .B(\b_reg[7] ), .Y(new_n307));
  XOR2X1   g178(.A(new_n307), .B(new_n306), .Y(new_n308));
  XOR2X1   g179(.A(new_n308), .B(new_n301), .Y(new_n309));
  NOR2X1   g180(.A(new_n246), .B(new_n242), .Y(new_n310));
  AOI21X1  g181(.A0(new_n255), .A1(new_n247), .B0(new_n310), .Y(new_n311));
  XOR2X1   g182(.A(new_n311), .B(new_n309), .Y(new_n312));
  NOR2X1   g183(.A(new_n250), .B(new_n249), .Y(new_n313));
  AOI21X1  g184(.A0(new_n252), .A1(new_n251), .B0(new_n313), .Y(new_n314));
  XOR2X1   g185(.A(new_n314), .B(new_n312), .Y(new_n315));
  XOR2X1   g186(.A(new_n254), .B(new_n247), .Y(new_n316));
  OR2X1    g187(.A(new_n259), .B(new_n316), .Y(new_n317));
  OAI21X1  g188(.A0(new_n271), .A1(new_n260), .B0(new_n317), .Y(new_n318));
  INVX1    g189(.A(new_n318), .Y(new_n319));
  XOR2X1   g190(.A(new_n319), .B(new_n315), .Y(new_n320));
  NOR2X1   g191(.A(new_n270), .B(new_n266), .Y(new_n321));
  NAND2X1  g192(.A(new_n223), .B(new_n222), .Y(new_n322));
  OR2X1    g193(.A(new_n221), .B(new_n219), .Y(new_n323));
  OR2X1    g194(.A(new_n323), .B(new_n264), .Y(new_n324));
  OAI21X1  g195(.A0(new_n322), .A1(new_n266), .B0(new_n324), .Y(new_n325));
  OR2X1    g196(.A(new_n325), .B(new_n321), .Y(new_n326));
  INVX1    g197(.A(new_n326), .Y(new_n327));
  XOR2X1   g198(.A(new_n327), .B(new_n320), .Y(new_n328));
  XOR2X1   g199(.A(new_n282), .B(new_n229), .Y(new_n329));
  XOR2X1   g200(.A(new_n329), .B(new_n283), .Y(new_n330));
  XOR2X1   g201(.A(new_n330), .B(new_n288), .Y(new_n331));
  XOR2X1   g202(.A(new_n331), .B(new_n295), .Y(new_n332));
  XOR2X1   g203(.A(new_n332), .B(new_n300), .Y(new_n333));
  AND2X1   g204(.A(\a_reg[1] ), .B(\b_reg[7] ), .Y(new_n334));
  XOR2X1   g205(.A(new_n334), .B(new_n305), .Y(new_n335));
  XOR2X1   g206(.A(new_n335), .B(new_n252), .Y(new_n336));
  XOR2X1   g207(.A(new_n336), .B(new_n304), .Y(new_n337));
  INVX1    g208(.A(\b_reg[7] ), .Y(new_n338));
  NOR3X1   g209(.A(new_n250), .B(new_n262), .C(new_n338), .Y(new_n339));
  XOR2X1   g210(.A(new_n339), .B(new_n337), .Y(new_n340));
  XOR2X1   g211(.A(new_n340), .B(new_n333), .Y(new_n341));
  AOI21X1  g212(.A0(new_n273), .A1(new_n247), .B0(new_n310), .Y(new_n342));
  XOR2X1   g213(.A(new_n342), .B(new_n341), .Y(new_n343));
  NOR2X1   g214(.A(new_n272), .B(new_n249), .Y(new_n344));
  INVX1    g215(.A(new_n344), .Y(new_n345));
  XOR2X1   g216(.A(new_n345), .B(new_n343), .Y(new_n346));
  NOR2X1   g217(.A(new_n275), .B(new_n259), .Y(new_n347));
  AOI21X1  g218(.A0(new_n276), .A1(new_n263), .B0(new_n347), .Y(new_n348));
  XOR2X1   g219(.A(new_n348), .B(new_n346), .Y(new_n349));
  NOR2X1   g220(.A(new_n277), .B(new_n323), .Y(new_n350));
  XOR2X1   g221(.A(new_n350), .B(new_n349), .Y(new_n351));
  NOR2X1   g222(.A(new_n278), .B(new_n322), .Y(new_n352));
  XOR2X1   g223(.A(new_n352), .B(new_n351), .Y(new_n353));
  NOR2X1   g224(.A(new_n279), .B(new_n270), .Y(new_n354));
  XOR2X1   g225(.A(new_n354), .B(new_n353), .Y(new_n355));
  MX2X1    g226(.A(new_n355), .B(new_n328), .S0(new_n227), .Y(n164));
  AND2X1   g227(.A(\a_reg[6] ), .B(\b_reg[3] ), .Y(new_n357));
  NAND4X1  g228(.A(\b_reg[1] ), .B(\a_reg[7] ), .C(\a_reg[5] ), .D(\b_reg[3] ), .Y(new_n358));
  XOR2X1   g229(.A(new_n358), .B(new_n357), .Y(new_n359));
  AND2X1   g230(.A(\a_reg[7] ), .B(\b_reg[2] ), .Y(new_n360));
  AND2X1   g231(.A(\a_reg[5] ), .B(\b_reg[4] ), .Y(new_n361));
  XOR2X1   g232(.A(new_n361), .B(new_n360), .Y(new_n362));
  AND2X1   g233(.A(\a_reg[4] ), .B(\b_reg[5] ), .Y(new_n363));
  XOR2X1   g234(.A(new_n363), .B(new_n362), .Y(new_n364));
  XOR2X1   g235(.A(new_n364), .B(new_n359), .Y(new_n365));
  INVX1    g236(.A(new_n365), .Y(new_n366));
  NOR2X1   g237(.A(new_n288), .B(new_n284), .Y(new_n367));
  AOI21X1  g238(.A0(new_n294), .A1(new_n289), .B0(new_n367), .Y(new_n368));
  XOR2X1   g239(.A(new_n368), .B(new_n366), .Y(new_n369));
  AND2X1   g240(.A(new_n291), .B(new_n290), .Y(new_n370));
  AOI21X1  g241(.A0(new_n293), .A1(new_n292), .B0(new_n370), .Y(new_n371));
  NAND2X1  g242(.A(\a_reg[3] ), .B(\b_reg[6] ), .Y(new_n372));
  XOR2X1   g243(.A(new_n372), .B(new_n371), .Y(new_n373));
  NAND2X1  g244(.A(\a_reg[2] ), .B(\b_reg[7] ), .Y(new_n374));
  XOR2X1   g245(.A(new_n374), .B(new_n373), .Y(new_n375));
  XOR2X1   g246(.A(new_n375), .B(new_n369), .Y(new_n376));
  XOR2X1   g247(.A(new_n302), .B(new_n239), .Y(new_n377));
  NOR2X1   g248(.A(new_n235), .B(new_n232), .Y(new_n378));
  AOI21X1  g249(.A0(new_n377), .A1(new_n236), .B0(new_n378), .Y(new_n379));
  OR2X1    g250(.A(new_n379), .B(new_n296), .Y(new_n380));
  OAI21X1  g251(.A0(new_n308), .A1(new_n301), .B0(new_n380), .Y(new_n381));
  XOR2X1   g252(.A(new_n381), .B(new_n376), .Y(new_n382));
  NOR2X1   g253(.A(new_n305), .B(new_n304), .Y(new_n383));
  AOI21X1  g254(.A0(new_n334), .A1(new_n306), .B0(new_n383), .Y(new_n384));
  XOR2X1   g255(.A(new_n384), .B(new_n382), .Y(new_n385));
  AND2X1   g256(.A(new_n255), .B(new_n247), .Y(new_n386));
  OAI21X1  g257(.A0(new_n386), .A1(new_n310), .B0(new_n309), .Y(new_n387));
  OAI21X1  g258(.A0(new_n314), .A1(new_n312), .B0(new_n387), .Y(new_n388));
  XOR2X1   g259(.A(new_n388), .B(new_n385), .Y(new_n389));
  INVX1    g260(.A(new_n389), .Y(new_n390));
  NAND2X1  g261(.A(new_n318), .B(new_n315), .Y(new_n391));
  OAI21X1  g262(.A0(new_n327), .A1(new_n320), .B0(new_n391), .Y(new_n392));
  XOR2X1   g263(.A(new_n392), .B(new_n390), .Y(new_n393));
  INVX1    g264(.A(new_n364), .Y(new_n394));
  AND2X1   g265(.A(\b_reg[1] ), .B(\a_reg[7] ), .Y(new_n395));
  XOR2X1   g266(.A(new_n357), .B(new_n285), .Y(new_n396));
  XOR2X1   g267(.A(new_n396), .B(new_n395), .Y(new_n397));
  AND2X1   g268(.A(new_n282), .B(new_n229), .Y(new_n398));
  AOI21X1  g269(.A0(new_n329), .A1(new_n395), .B0(new_n398), .Y(new_n399));
  XOR2X1   g270(.A(new_n399), .B(new_n397), .Y(new_n400));
  XOR2X1   g271(.A(new_n400), .B(new_n394), .Y(new_n401));
  NOR2X1   g272(.A(new_n330), .B(new_n288), .Y(new_n402));
  AOI21X1  g273(.A0(new_n331), .A1(new_n294), .B0(new_n402), .Y(new_n403));
  XOR2X1   g274(.A(new_n403), .B(new_n401), .Y(new_n404));
  AND2X1   g275(.A(\a_reg[2] ), .B(\b_reg[7] ), .Y(new_n405));
  XOR2X1   g276(.A(new_n405), .B(new_n372), .Y(new_n406));
  XOR2X1   g277(.A(new_n406), .B(new_n334), .Y(new_n407));
  XOR2X1   g278(.A(new_n407), .B(new_n371), .Y(new_n408));
  XOR2X1   g279(.A(new_n307), .B(new_n305), .Y(new_n409));
  NOR2X1   g280(.A(new_n307), .B(new_n305), .Y(new_n410));
  AOI21X1  g281(.A0(new_n409), .A1(new_n252), .B0(new_n410), .Y(new_n411));
  XOR2X1   g282(.A(new_n411), .B(new_n408), .Y(new_n412));
  XOR2X1   g283(.A(new_n412), .B(new_n404), .Y(new_n413));
  XOR2X1   g284(.A(new_n332), .B(new_n379), .Y(new_n414));
  NOR2X1   g285(.A(new_n332), .B(new_n379), .Y(new_n415));
  AOI21X1  g286(.A0(new_n340), .A1(new_n414), .B0(new_n415), .Y(new_n416));
  XOR2X1   g287(.A(new_n416), .B(new_n413), .Y(new_n417));
  NOR2X1   g288(.A(new_n336), .B(new_n304), .Y(new_n418));
  AOI21X1  g289(.A0(new_n339), .A1(new_n337), .B0(new_n418), .Y(new_n419));
  XOR2X1   g290(.A(new_n419), .B(new_n252), .Y(new_n420));
  XOR2X1   g291(.A(new_n420), .B(new_n417), .Y(new_n421));
  NOR2X1   g292(.A(new_n342), .B(new_n341), .Y(new_n422));
  AOI21X1  g293(.A0(new_n344), .A1(new_n343), .B0(new_n422), .Y(new_n423));
  XOR2X1   g294(.A(new_n423), .B(new_n421), .Y(new_n424));
  NOR2X1   g295(.A(new_n348), .B(new_n346), .Y(new_n425));
  XOR2X1   g296(.A(new_n425), .B(new_n424), .Y(new_n426));
  AND2X1   g297(.A(new_n350), .B(new_n349), .Y(new_n427));
  XOR2X1   g298(.A(new_n427), .B(new_n426), .Y(new_n428));
  INVX1    g299(.A(new_n428), .Y(new_n429));
  AND2X1   g300(.A(new_n352), .B(new_n351), .Y(new_n430));
  AOI21X1  g301(.A0(new_n354), .A1(new_n353), .B0(new_n430), .Y(new_n431));
  XOR2X1   g302(.A(new_n431), .B(new_n429), .Y(new_n432));
  MX2X1    g303(.A(new_n432), .B(new_n393), .S0(new_n227), .Y(n169));
  AND2X1   g304(.A(\a_reg[7] ), .B(\b_reg[3] ), .Y(new_n434));
  AND2X1   g305(.A(\a_reg[6] ), .B(\b_reg[4] ), .Y(new_n435));
  AND2X1   g306(.A(\a_reg[5] ), .B(\b_reg[5] ), .Y(new_n436));
  INVX1    g307(.A(new_n436), .Y(new_n437));
  XOR2X1   g308(.A(new_n437), .B(new_n435), .Y(new_n438));
  XOR2X1   g309(.A(new_n438), .B(new_n434), .Y(new_n439));
  INVX1    g310(.A(new_n359), .Y(new_n440));
  INVX1    g311(.A(\b_reg[3] ), .Y(new_n441));
  INVX1    g312(.A(\a_reg[6] ), .Y(new_n442));
  NOR3X1   g313(.A(new_n358), .B(new_n442), .C(new_n441), .Y(new_n443));
  AOI21X1  g314(.A0(new_n364), .A1(new_n440), .B0(new_n443), .Y(new_n444));
  XOR2X1   g315(.A(new_n444), .B(new_n439), .Y(new_n445));
  AND2X1   g316(.A(new_n361), .B(new_n360), .Y(new_n446));
  AOI21X1  g317(.A0(new_n363), .A1(new_n362), .B0(new_n446), .Y(new_n447));
  NAND2X1  g318(.A(\a_reg[4] ), .B(\b_reg[6] ), .Y(new_n448));
  XOR2X1   g319(.A(new_n448), .B(new_n447), .Y(new_n449));
  NAND2X1  g320(.A(\a_reg[3] ), .B(\b_reg[7] ), .Y(new_n450));
  XOR2X1   g321(.A(new_n450), .B(new_n449), .Y(new_n451));
  XOR2X1   g322(.A(new_n451), .B(new_n445), .Y(new_n452));
  INVX1    g323(.A(new_n452), .Y(new_n453));
  OR2X1    g324(.A(new_n368), .B(new_n365), .Y(new_n454));
  OAI21X1  g325(.A0(new_n375), .A1(new_n369), .B0(new_n454), .Y(new_n455));
  XOR2X1   g326(.A(new_n455), .B(new_n453), .Y(new_n456));
  NOR2X1   g327(.A(new_n372), .B(new_n371), .Y(new_n457));
  AOI21X1  g328(.A0(new_n405), .A1(new_n373), .B0(new_n457), .Y(new_n458));
  XOR2X1   g329(.A(new_n458), .B(new_n456), .Y(new_n459));
  XOR2X1   g330(.A(new_n368), .B(new_n365), .Y(new_n460));
  XOR2X1   g331(.A(new_n375), .B(new_n460), .Y(new_n461));
  XOR2X1   g332(.A(new_n381), .B(new_n461), .Y(new_n462));
  NAND2X1  g333(.A(new_n381), .B(new_n376), .Y(new_n463));
  OAI21X1  g334(.A0(new_n384), .A1(new_n462), .B0(new_n463), .Y(new_n464));
  XOR2X1   g335(.A(new_n464), .B(new_n459), .Y(new_n465));
  INVX1    g336(.A(new_n465), .Y(new_n466));
  XOR2X1   g337(.A(new_n384), .B(new_n462), .Y(new_n467));
  NAND2X1  g338(.A(new_n388), .B(new_n467), .Y(new_n468));
  OAI21X1  g339(.A0(new_n391), .A1(new_n389), .B0(new_n468), .Y(new_n469));
  INVX1    g340(.A(new_n469), .Y(new_n470));
  OR2X1    g341(.A(new_n389), .B(new_n320), .Y(new_n471));
  OAI21X1  g342(.A0(new_n471), .A1(new_n327), .B0(new_n470), .Y(new_n472));
  XOR2X1   g343(.A(new_n472), .B(new_n466), .Y(new_n473));
  XOR2X1   g344(.A(new_n434), .B(new_n285), .Y(new_n474));
  XOR2X1   g345(.A(new_n474), .B(new_n395), .Y(new_n475));
  XOR2X1   g346(.A(new_n357), .B(new_n229), .Y(new_n476));
  AND2X1   g347(.A(new_n357), .B(new_n229), .Y(new_n477));
  AOI21X1  g348(.A0(new_n476), .A1(new_n395), .B0(new_n477), .Y(new_n478));
  XOR2X1   g349(.A(new_n478), .B(new_n475), .Y(new_n479));
  NAND2X1  g350(.A(\a_reg[7] ), .B(\b_reg[2] ), .Y(new_n480));
  XOR2X1   g351(.A(new_n435), .B(new_n480), .Y(new_n481));
  XOR2X1   g352(.A(new_n481), .B(new_n436), .Y(new_n482));
  XOR2X1   g353(.A(new_n482), .B(new_n479), .Y(new_n483));
  NOR2X1   g354(.A(new_n399), .B(new_n397), .Y(new_n484));
  AOI21X1  g355(.A0(new_n400), .A1(new_n364), .B0(new_n484), .Y(new_n485));
  XOR2X1   g356(.A(new_n485), .B(new_n483), .Y(new_n486));
  AND2X1   g357(.A(\a_reg[3] ), .B(\b_reg[7] ), .Y(new_n487));
  XOR2X1   g358(.A(new_n487), .B(new_n448), .Y(new_n488));
  XOR2X1   g359(.A(new_n488), .B(new_n405), .Y(new_n489));
  XOR2X1   g360(.A(new_n489), .B(new_n447), .Y(new_n490));
  XOR2X1   g361(.A(new_n374), .B(new_n372), .Y(new_n491));
  NOR2X1   g362(.A(new_n374), .B(new_n372), .Y(new_n492));
  AOI21X1  g363(.A0(new_n491), .A1(new_n334), .B0(new_n492), .Y(new_n493));
  XOR2X1   g364(.A(new_n493), .B(new_n490), .Y(new_n494));
  XOR2X1   g365(.A(new_n494), .B(new_n486), .Y(new_n495));
  XOR2X1   g366(.A(new_n406), .B(new_n307), .Y(new_n496));
  XOR2X1   g367(.A(new_n496), .B(new_n371), .Y(new_n497));
  XOR2X1   g368(.A(new_n411), .B(new_n497), .Y(new_n498));
  NOR2X1   g369(.A(new_n403), .B(new_n401), .Y(new_n499));
  AOI21X1  g370(.A0(new_n498), .A1(new_n404), .B0(new_n499), .Y(new_n500));
  XOR2X1   g371(.A(new_n500), .B(new_n495), .Y(new_n501));
  OR2X1    g372(.A(new_n407), .B(new_n371), .Y(new_n502));
  OAI21X1  g373(.A0(new_n411), .A1(new_n497), .B0(new_n502), .Y(new_n503));
  XOR2X1   g374(.A(new_n334), .B(new_n252), .Y(new_n504));
  INVX1    g375(.A(new_n504), .Y(new_n505));
  XOR2X1   g376(.A(new_n505), .B(new_n503), .Y(new_n506));
  XOR2X1   g377(.A(new_n506), .B(new_n501), .Y(new_n507));
  INVX1    g378(.A(new_n420), .Y(new_n508));
  NOR2X1   g379(.A(new_n416), .B(new_n413), .Y(new_n509));
  AOI21X1  g380(.A0(new_n508), .A1(new_n417), .B0(new_n509), .Y(new_n510));
  XOR2X1   g381(.A(new_n510), .B(new_n507), .Y(new_n511));
  NOR2X1   g382(.A(new_n419), .B(new_n253), .Y(new_n512));
  XOR2X1   g383(.A(new_n512), .B(new_n511), .Y(new_n513));
  NOR2X1   g384(.A(new_n423), .B(new_n421), .Y(new_n514));
  XOR2X1   g385(.A(new_n514), .B(new_n513), .Y(new_n515));
  NAND2X1  g386(.A(new_n425), .B(new_n424), .Y(new_n516));
  XOR2X1   g387(.A(new_n516), .B(new_n515), .Y(new_n517));
  INVX1    g388(.A(new_n517), .Y(new_n518));
  AND2X1   g389(.A(new_n427), .B(new_n426), .Y(new_n519));
  AOI21X1  g390(.A0(new_n430), .A1(new_n428), .B0(new_n519), .Y(new_n520));
  NAND3X1  g391(.A(new_n428), .B(new_n354), .C(new_n353), .Y(new_n521));
  NAND2X1  g392(.A(new_n521), .B(new_n520), .Y(new_n522));
  XOR2X1   g393(.A(new_n522), .B(new_n518), .Y(new_n523));
  MX2X1    g394(.A(new_n523), .B(new_n473), .S0(new_n227), .Y(n174));
  AND2X1   g395(.A(\a_reg[7] ), .B(\b_reg[4] ), .Y(new_n525));
  AND2X1   g396(.A(\a_reg[6] ), .B(\b_reg[5] ), .Y(new_n526));
  INVX1    g397(.A(new_n526), .Y(new_n527));
  XOR2X1   g398(.A(new_n527), .B(new_n525), .Y(new_n528));
  INVX1    g399(.A(new_n434), .Y(new_n529));
  OR2X1    g400(.A(new_n438), .B(new_n529), .Y(new_n530));
  XOR2X1   g401(.A(new_n530), .B(new_n528), .Y(new_n531));
  NAND4X1  g402(.A(\a_reg[6] ), .B(\a_reg[5] ), .C(\b_reg[5] ), .D(\b_reg[4] ), .Y(new_n532));
  AND2X1   g403(.A(\a_reg[5] ), .B(\b_reg[6] ), .Y(new_n533));
  XOR2X1   g404(.A(new_n533), .B(new_n532), .Y(new_n534));
  AND2X1   g405(.A(\a_reg[4] ), .B(\b_reg[7] ), .Y(new_n535));
  XOR2X1   g406(.A(new_n535), .B(new_n534), .Y(new_n536));
  XOR2X1   g407(.A(new_n536), .B(new_n531), .Y(new_n537));
  INVX1    g408(.A(new_n451), .Y(new_n538));
  NOR2X1   g409(.A(new_n444), .B(new_n439), .Y(new_n539));
  AOI21X1  g410(.A0(new_n538), .A1(new_n445), .B0(new_n539), .Y(new_n540));
  XOR2X1   g411(.A(new_n540), .B(new_n537), .Y(new_n541));
  NOR2X1   g412(.A(new_n448), .B(new_n447), .Y(new_n542));
  AOI21X1  g413(.A0(new_n487), .A1(new_n449), .B0(new_n542), .Y(new_n543));
  XOR2X1   g414(.A(new_n543), .B(new_n541), .Y(new_n544));
  XOR2X1   g415(.A(new_n455), .B(new_n452), .Y(new_n545));
  NAND2X1  g416(.A(new_n455), .B(new_n453), .Y(new_n546));
  OAI21X1  g417(.A0(new_n458), .A1(new_n545), .B0(new_n546), .Y(new_n547));
  XOR2X1   g418(.A(new_n547), .B(new_n544), .Y(new_n548));
  XOR2X1   g419(.A(new_n458), .B(new_n545), .Y(new_n549));
  AND2X1   g420(.A(new_n464), .B(new_n549), .Y(new_n550));
  AOI21X1  g421(.A0(new_n472), .A1(new_n466), .B0(new_n550), .Y(new_n551));
  XOR2X1   g422(.A(new_n551), .B(new_n548), .Y(new_n552));
  XOR2X1   g423(.A(new_n434), .B(new_n229), .Y(new_n553));
  AND2X1   g424(.A(new_n434), .B(new_n229), .Y(new_n554));
  AOI21X1  g425(.A0(new_n553), .A1(new_n395), .B0(new_n554), .Y(new_n555));
  XOR2X1   g426(.A(new_n555), .B(new_n475), .Y(new_n556));
  XOR2X1   g427(.A(new_n525), .B(new_n480), .Y(new_n557));
  XOR2X1   g428(.A(new_n557), .B(new_n526), .Y(new_n558));
  XOR2X1   g429(.A(new_n558), .B(new_n556), .Y(new_n559));
  XOR2X1   g430(.A(new_n481), .B(new_n437), .Y(new_n560));
  NOR2X1   g431(.A(new_n478), .B(new_n475), .Y(new_n561));
  AOI21X1  g432(.A0(new_n560), .A1(new_n479), .B0(new_n561), .Y(new_n562));
  XOR2X1   g433(.A(new_n562), .B(new_n559), .Y(new_n563));
  NAND4X1  g434(.A(\a_reg[7] ), .B(\a_reg[6] ), .C(\b_reg[4] ), .D(\b_reg[2] ), .Y(new_n564));
  OAI21X1  g435(.A0(new_n481), .A1(new_n437), .B0(new_n564), .Y(new_n565));
  NAND2X1  g436(.A(\a_reg[4] ), .B(\b_reg[7] ), .Y(new_n566));
  XOR2X1   g437(.A(new_n566), .B(new_n533), .Y(new_n567));
  XOR2X1   g438(.A(new_n567), .B(new_n450), .Y(new_n568));
  XOR2X1   g439(.A(new_n568), .B(new_n565), .Y(new_n569));
  NAND4X1  g440(.A(\a_reg[4] ), .B(\a_reg[3] ), .C(\b_reg[7] ), .D(\b_reg[6] ), .Y(new_n570));
  OAI21X1  g441(.A0(new_n488), .A1(new_n374), .B0(new_n570), .Y(new_n571));
  INVX1    g442(.A(new_n571), .Y(new_n572));
  XOR2X1   g443(.A(new_n572), .B(new_n569), .Y(new_n573));
  XOR2X1   g444(.A(new_n573), .B(new_n563), .Y(new_n574));
  XOR2X1   g445(.A(new_n488), .B(new_n374), .Y(new_n575));
  XOR2X1   g446(.A(new_n575), .B(new_n447), .Y(new_n576));
  XOR2X1   g447(.A(new_n493), .B(new_n576), .Y(new_n577));
  NOR2X1   g448(.A(new_n485), .B(new_n483), .Y(new_n578));
  AOI21X1  g449(.A0(new_n577), .A1(new_n486), .B0(new_n578), .Y(new_n579));
  XOR2X1   g450(.A(new_n579), .B(new_n574), .Y(new_n580));
  OR2X1    g451(.A(new_n489), .B(new_n447), .Y(new_n581));
  OAI21X1  g452(.A0(new_n493), .A1(new_n576), .B0(new_n581), .Y(new_n582));
  XOR2X1   g453(.A(new_n405), .B(new_n307), .Y(new_n583));
  XOR2X1   g454(.A(new_n583), .B(new_n252), .Y(new_n584));
  AND2X1   g455(.A(new_n334), .B(new_n252), .Y(new_n585));
  XOR2X1   g456(.A(new_n585), .B(new_n584), .Y(new_n586));
  XOR2X1   g457(.A(new_n586), .B(new_n582), .Y(new_n587));
  XOR2X1   g458(.A(new_n587), .B(new_n580), .Y(new_n588));
  INVX1    g459(.A(new_n506), .Y(new_n589));
  NOR2X1   g460(.A(new_n500), .B(new_n495), .Y(new_n590));
  AOI21X1  g461(.A0(new_n589), .A1(new_n501), .B0(new_n590), .Y(new_n591));
  XOR2X1   g462(.A(new_n591), .B(new_n588), .Y(new_n592));
  AND2X1   g463(.A(new_n504), .B(new_n503), .Y(new_n593));
  INVX1    g464(.A(new_n593), .Y(new_n594));
  XOR2X1   g465(.A(new_n594), .B(new_n592), .Y(new_n595));
  NOR2X1   g466(.A(new_n510), .B(new_n507), .Y(new_n596));
  AOI21X1  g467(.A0(new_n512), .A1(new_n511), .B0(new_n596), .Y(new_n597));
  XOR2X1   g468(.A(new_n597), .B(new_n595), .Y(new_n598));
  NAND2X1  g469(.A(new_n514), .B(new_n513), .Y(new_n599));
  XOR2X1   g470(.A(new_n599), .B(new_n598), .Y(new_n600));
  AND2X1   g471(.A(new_n425), .B(new_n424), .Y(new_n601));
  NAND2X1  g472(.A(new_n601), .B(new_n515), .Y(new_n602));
  INVX1    g473(.A(new_n602), .Y(new_n603));
  AOI21X1  g474(.A0(new_n522), .A1(new_n518), .B0(new_n603), .Y(new_n604));
  XOR2X1   g475(.A(new_n604), .B(new_n600), .Y(new_n605));
  MX2X1    g476(.A(new_n605), .B(new_n552), .S0(new_n227), .Y(n179));
  AND2X1   g477(.A(\a_reg[7] ), .B(\b_reg[5] ), .Y(new_n607));
  NAND4X1  g478(.A(\a_reg[7] ), .B(\a_reg[6] ), .C(\b_reg[5] ), .D(\b_reg[4] ), .Y(new_n608));
  AND2X1   g479(.A(\a_reg[6] ), .B(\b_reg[6] ), .Y(new_n609));
  XOR2X1   g480(.A(new_n609), .B(new_n608), .Y(new_n610));
  AND2X1   g481(.A(\a_reg[5] ), .B(\b_reg[7] ), .Y(new_n611));
  XOR2X1   g482(.A(new_n611), .B(new_n610), .Y(new_n612));
  XOR2X1   g483(.A(new_n612), .B(new_n607), .Y(new_n613));
  INVX1    g484(.A(new_n536), .Y(new_n614));
  NOR3X1   g485(.A(new_n528), .B(new_n438), .C(new_n529), .Y(new_n615));
  AOI21X1  g486(.A0(new_n614), .A1(new_n531), .B0(new_n615), .Y(new_n616));
  XOR2X1   g487(.A(new_n616), .B(new_n613), .Y(new_n617));
  NAND2X1  g488(.A(\a_reg[5] ), .B(\b_reg[6] ), .Y(new_n618));
  NOR2X1   g489(.A(new_n618), .B(new_n532), .Y(new_n619));
  NOR2X1   g490(.A(new_n566), .B(new_n534), .Y(new_n620));
  NOR2X1   g491(.A(new_n620), .B(new_n619), .Y(new_n621));
  XOR2X1   g492(.A(new_n621), .B(new_n617), .Y(new_n622));
  INVX1    g493(.A(new_n537), .Y(new_n623));
  XOR2X1   g494(.A(new_n540), .B(new_n623), .Y(new_n624));
  OR2X1    g495(.A(new_n540), .B(new_n537), .Y(new_n625));
  OAI21X1  g496(.A0(new_n543), .A1(new_n624), .B0(new_n625), .Y(new_n626));
  XOR2X1   g497(.A(new_n626), .B(new_n622), .Y(new_n627));
  INVX1    g498(.A(new_n627), .Y(new_n628));
  NOR4X1   g499(.A(new_n548), .B(new_n471), .C(new_n465), .D(new_n327), .Y(new_n629));
  OR2X1    g500(.A(new_n548), .B(new_n465), .Y(new_n630));
  XOR2X1   g501(.A(new_n543), .B(new_n624), .Y(new_n631));
  XOR2X1   g502(.A(new_n547), .B(new_n631), .Y(new_n632));
  AND2X1   g503(.A(new_n547), .B(new_n631), .Y(new_n633));
  AOI21X1  g504(.A0(new_n550), .A1(new_n632), .B0(new_n633), .Y(new_n634));
  OAI21X1  g505(.A0(new_n630), .A1(new_n470), .B0(new_n634), .Y(new_n635));
  OR2X1    g506(.A(new_n635), .B(new_n629), .Y(new_n636));
  XOR2X1   g507(.A(new_n636), .B(new_n628), .Y(new_n637));
  XOR2X1   g508(.A(new_n607), .B(new_n557), .Y(new_n638));
  XOR2X1   g509(.A(new_n638), .B(new_n556), .Y(new_n639));
  XOR2X1   g510(.A(new_n557), .B(new_n527), .Y(new_n640));
  NOR3X1   g511(.A(new_n529), .B(new_n283), .C(new_n285), .Y(new_n641));
  AOI21X1  g512(.A0(new_n640), .A1(new_n556), .B0(new_n641), .Y(new_n642));
  XOR2X1   g513(.A(new_n642), .B(new_n639), .Y(new_n643));
  XOR2X1   g514(.A(new_n525), .B(new_n360), .Y(new_n644));
  AND2X1   g515(.A(new_n525), .B(new_n360), .Y(new_n645));
  AOI21X1  g516(.A0(new_n644), .A1(new_n526), .B0(new_n645), .Y(new_n646));
  XOR2X1   g517(.A(new_n611), .B(new_n609), .Y(new_n647));
  XOR2X1   g518(.A(new_n647), .B(new_n566), .Y(new_n648));
  XOR2X1   g519(.A(new_n648), .B(new_n646), .Y(new_n649));
  NAND4X1  g520(.A(\a_reg[5] ), .B(\a_reg[4] ), .C(\b_reg[7] ), .D(\b_reg[6] ), .Y(new_n650));
  OAI21X1  g521(.A0(new_n567), .A1(new_n450), .B0(new_n650), .Y(new_n651));
  INVX1    g522(.A(new_n651), .Y(new_n652));
  XOR2X1   g523(.A(new_n652), .B(new_n649), .Y(new_n653));
  XOR2X1   g524(.A(new_n653), .B(new_n643), .Y(new_n654));
  XOR2X1   g525(.A(new_n474), .B(new_n283), .Y(new_n655));
  XOR2X1   g526(.A(new_n555), .B(new_n655), .Y(new_n656));
  XOR2X1   g527(.A(new_n558), .B(new_n656), .Y(new_n657));
  XOR2X1   g528(.A(new_n562), .B(new_n657), .Y(new_n658));
  OR2X1    g529(.A(new_n562), .B(new_n559), .Y(new_n659));
  OAI21X1  g530(.A0(new_n573), .A1(new_n658), .B0(new_n659), .Y(new_n660));
  XOR2X1   g531(.A(new_n660), .B(new_n654), .Y(new_n661));
  AND2X1   g532(.A(new_n568), .B(new_n565), .Y(new_n662));
  AOI21X1  g533(.A0(new_n571), .A1(new_n569), .B0(new_n662), .Y(new_n663));
  XOR2X1   g534(.A(new_n487), .B(new_n374), .Y(new_n664));
  XOR2X1   g535(.A(new_n664), .B(new_n334), .Y(new_n665));
  NAND3X1  g536(.A(\a_reg[2] ), .B(\a_reg[1] ), .C(\b_reg[7] ), .Y(new_n666));
  OAI21X1  g537(.A0(new_n583), .A1(new_n253), .B0(new_n666), .Y(new_n667));
  XOR2X1   g538(.A(new_n667), .B(new_n665), .Y(new_n668));
  XOR2X1   g539(.A(new_n668), .B(new_n253), .Y(new_n669));
  XOR2X1   g540(.A(new_n669), .B(new_n663), .Y(new_n670));
  NOR4X1   g541(.A(new_n374), .B(new_n307), .C(new_n262), .D(new_n338), .Y(new_n671));
  XOR2X1   g542(.A(new_n671), .B(new_n670), .Y(new_n672));
  XOR2X1   g543(.A(new_n672), .B(new_n661), .Y(new_n673));
  XOR2X1   g544(.A(new_n573), .B(new_n658), .Y(new_n674));
  XOR2X1   g545(.A(new_n579), .B(new_n674), .Y(new_n675));
  OR2X1    g546(.A(new_n579), .B(new_n574), .Y(new_n676));
  OAI21X1  g547(.A0(new_n587), .A1(new_n675), .B0(new_n676), .Y(new_n677));
  XOR2X1   g548(.A(new_n677), .B(new_n673), .Y(new_n678));
  INVX1    g549(.A(new_n586), .Y(new_n679));
  AND2X1   g550(.A(new_n679), .B(new_n582), .Y(new_n680));
  INVX1    g551(.A(new_n680), .Y(new_n681));
  XOR2X1   g552(.A(new_n681), .B(new_n678), .Y(new_n682));
  NOR2X1   g553(.A(new_n591), .B(new_n588), .Y(new_n683));
  AOI21X1  g554(.A0(new_n593), .A1(new_n592), .B0(new_n683), .Y(new_n684));
  XOR2X1   g555(.A(new_n684), .B(new_n682), .Y(new_n685));
  OR2X1    g556(.A(new_n597), .B(new_n595), .Y(new_n686));
  XOR2X1   g557(.A(new_n686), .B(new_n685), .Y(new_n687));
  NOR3X1   g558(.A(new_n600), .B(new_n521), .C(new_n517), .Y(new_n688));
  NOR3X1   g559(.A(new_n600), .B(new_n520), .C(new_n517), .Y(new_n689));
  NAND3X1  g560(.A(new_n598), .B(new_n514), .C(new_n513), .Y(new_n690));
  OAI21X1  g561(.A0(new_n602), .A1(new_n600), .B0(new_n690), .Y(new_n691));
  NOR3X1   g562(.A(new_n691), .B(new_n689), .C(new_n688), .Y(new_n692));
  XOR2X1   g563(.A(new_n692), .B(new_n687), .Y(new_n693));
  MX2X1    g564(.A(new_n693), .B(new_n637), .S0(new_n227), .Y(n184));
  NAND2X1  g565(.A(\a_reg[7] ), .B(\b_reg[6] ), .Y(new_n695));
  AND2X1   g566(.A(\a_reg[6] ), .B(\b_reg[7] ), .Y(new_n696));
  XOR2X1   g567(.A(new_n696), .B(new_n695), .Y(new_n697));
  INVX1    g568(.A(new_n607), .Y(new_n698));
  NOR2X1   g569(.A(new_n612), .B(new_n698), .Y(new_n699));
  XOR2X1   g570(.A(new_n699), .B(new_n697), .Y(new_n700));
  NOR3X1   g571(.A(new_n608), .B(new_n442), .C(new_n261), .Y(new_n701));
  INVX1    g572(.A(new_n611), .Y(new_n702));
  NOR2X1   g573(.A(new_n702), .B(new_n610), .Y(new_n703));
  NOR2X1   g574(.A(new_n703), .B(new_n701), .Y(new_n704));
  INVX1    g575(.A(new_n704), .Y(new_n705));
  XOR2X1   g576(.A(new_n705), .B(new_n700), .Y(new_n706));
  INVX1    g577(.A(new_n706), .Y(new_n707));
  INVX1    g578(.A(new_n621), .Y(new_n708));
  NOR2X1   g579(.A(new_n616), .B(new_n613), .Y(new_n709));
  AOI21X1  g580(.A0(new_n708), .A1(new_n617), .B0(new_n709), .Y(new_n710));
  XOR2X1   g581(.A(new_n710), .B(new_n707), .Y(new_n711));
  INVX1    g582(.A(new_n622), .Y(new_n712));
  AND2X1   g583(.A(new_n626), .B(new_n712), .Y(new_n713));
  AOI21X1  g584(.A0(new_n636), .A1(new_n628), .B0(new_n713), .Y(new_n714));
  XOR2X1   g585(.A(new_n714), .B(new_n711), .Y(new_n715));
  XOR2X1   g586(.A(new_n638), .B(new_n656), .Y(new_n716));
  XOR2X1   g587(.A(new_n607), .B(new_n644), .Y(new_n717));
  AOI21X1  g588(.A0(new_n717), .A1(new_n556), .B0(new_n641), .Y(new_n718));
  XOR2X1   g589(.A(new_n718), .B(new_n716), .Y(new_n719));
  AOI21X1  g590(.A0(new_n607), .A1(new_n644), .B0(new_n645), .Y(new_n720));
  XOR2X1   g591(.A(new_n697), .B(new_n611), .Y(new_n721));
  XOR2X1   g592(.A(new_n721), .B(new_n720), .Y(new_n722));
  AND2X1   g593(.A(new_n611), .B(new_n609), .Y(new_n723));
  AOI21X1  g594(.A0(new_n647), .A1(new_n535), .B0(new_n723), .Y(new_n724));
  XOR2X1   g595(.A(new_n724), .B(new_n722), .Y(new_n725));
  XOR2X1   g596(.A(new_n725), .B(new_n719), .Y(new_n726));
  XOR2X1   g597(.A(new_n642), .B(new_n716), .Y(new_n727));
  OR2X1    g598(.A(new_n642), .B(new_n639), .Y(new_n728));
  OAI21X1  g599(.A0(new_n653), .A1(new_n727), .B0(new_n728), .Y(new_n729));
  XOR2X1   g600(.A(new_n729), .B(new_n726), .Y(new_n730));
  NAND2X1  g601(.A(new_n651), .B(new_n649), .Y(new_n731));
  OAI21X1  g602(.A0(new_n648), .A1(new_n646), .B0(new_n731), .Y(new_n732));
  XOR2X1   g603(.A(new_n535), .B(new_n450), .Y(new_n733));
  XOR2X1   g604(.A(new_n733), .B(new_n374), .Y(new_n734));
  XOR2X1   g605(.A(new_n487), .B(new_n405), .Y(new_n735));
  AND2X1   g606(.A(new_n487), .B(new_n405), .Y(new_n736));
  AOI21X1  g607(.A0(new_n735), .A1(new_n334), .B0(new_n736), .Y(new_n737));
  XOR2X1   g608(.A(new_n737), .B(new_n734), .Y(new_n738));
  XOR2X1   g609(.A(new_n738), .B(new_n504), .Y(new_n739));
  INVX1    g610(.A(new_n739), .Y(new_n740));
  XOR2X1   g611(.A(new_n740), .B(new_n732), .Y(new_n741));
  INVX1    g612(.A(new_n668), .Y(new_n742));
  OR2X1    g613(.A(new_n583), .B(new_n253), .Y(new_n743));
  AOI21X1  g614(.A0(new_n743), .A1(new_n666), .B0(new_n665), .Y(new_n744));
  AOI21X1  g615(.A0(new_n742), .A1(new_n252), .B0(new_n744), .Y(new_n745));
  XOR2X1   g616(.A(new_n745), .B(new_n741), .Y(new_n746));
  XOR2X1   g617(.A(new_n746), .B(new_n730), .Y(new_n747));
  XOR2X1   g618(.A(new_n653), .B(new_n727), .Y(new_n748));
  NAND2X1  g619(.A(new_n660), .B(new_n748), .Y(new_n749));
  OAI21X1  g620(.A0(new_n672), .A1(new_n661), .B0(new_n749), .Y(new_n750));
  XOR2X1   g621(.A(new_n750), .B(new_n747), .Y(new_n751));
  INVX1    g622(.A(new_n669), .Y(new_n752));
  NOR2X1   g623(.A(new_n752), .B(new_n663), .Y(new_n753));
  INVX1    g624(.A(new_n585), .Y(new_n754));
  NOR3X1   g625(.A(new_n670), .B(new_n754), .C(new_n584), .Y(new_n755));
  NOR2X1   g626(.A(new_n755), .B(new_n753), .Y(new_n756));
  XOR2X1   g627(.A(new_n756), .B(new_n751), .Y(new_n757));
  AND2X1   g628(.A(new_n677), .B(new_n673), .Y(new_n758));
  AOI21X1  g629(.A0(new_n680), .A1(new_n678), .B0(new_n758), .Y(new_n759));
  XOR2X1   g630(.A(new_n759), .B(new_n757), .Y(new_n760));
  NOR2X1   g631(.A(new_n684), .B(new_n682), .Y(new_n761));
  XOR2X1   g632(.A(new_n761), .B(new_n760), .Y(new_n762));
  INVX1    g633(.A(new_n762), .Y(new_n763));
  NOR2X1   g634(.A(new_n597), .B(new_n595), .Y(new_n764));
  NAND2X1  g635(.A(new_n764), .B(new_n685), .Y(new_n765));
  OAI21X1  g636(.A0(new_n692), .A1(new_n687), .B0(new_n765), .Y(new_n766));
  XOR2X1   g637(.A(new_n766), .B(new_n763), .Y(new_n767));
  MX2X1    g638(.A(new_n767), .B(new_n715), .S0(new_n227), .Y(n189));
  AND2X1   g639(.A(\a_reg[7] ), .B(\b_reg[7] ), .Y(new_n769));
  NOR3X1   g640(.A(new_n695), .B(new_n442), .C(new_n338), .Y(new_n770));
  INVX1    g641(.A(new_n770), .Y(new_n771));
  XOR2X1   g642(.A(new_n771), .B(new_n769), .Y(new_n772));
  INVX1    g643(.A(new_n772), .Y(new_n773));
  NOR3X1   g644(.A(new_n697), .B(new_n612), .C(new_n698), .Y(new_n774));
  INVX1    g645(.A(new_n774), .Y(new_n775));
  OR2X1    g646(.A(new_n704), .B(new_n700), .Y(new_n776));
  AND2X1   g647(.A(new_n776), .B(new_n775), .Y(new_n777));
  XOR2X1   g648(.A(new_n777), .B(new_n773), .Y(new_n778));
  INVX1    g649(.A(new_n778), .Y(new_n779));
  NOR2X1   g650(.A(new_n711), .B(new_n627), .Y(new_n780));
  OAI21X1  g651(.A0(new_n635), .A1(new_n629), .B0(new_n780), .Y(new_n781));
  INVX1    g652(.A(new_n711), .Y(new_n782));
  NOR2X1   g653(.A(new_n710), .B(new_n706), .Y(new_n783));
  AOI21X1  g654(.A0(new_n713), .A1(new_n782), .B0(new_n783), .Y(new_n784));
  NAND2X1  g655(.A(new_n784), .B(new_n781), .Y(new_n785));
  XOR2X1   g656(.A(new_n785), .B(new_n779), .Y(new_n786));
  INVX1    g657(.A(new_n720), .Y(new_n787));
  XOR2X1   g658(.A(new_n769), .B(new_n695), .Y(new_n788));
  XOR2X1   g659(.A(new_n788), .B(new_n696), .Y(new_n789));
  XOR2X1   g660(.A(new_n789), .B(new_n787), .Y(new_n790));
  OAI21X1  g661(.A0(new_n697), .A1(new_n702), .B0(new_n771), .Y(new_n791));
  XOR2X1   g662(.A(new_n791), .B(new_n790), .Y(new_n792));
  XOR2X1   g663(.A(new_n792), .B(new_n719), .Y(new_n793));
  NOR3X1   g664(.A(new_n638), .B(new_n555), .C(new_n475), .Y(new_n794));
  INVX1    g665(.A(new_n794), .Y(new_n795));
  OAI21X1  g666(.A0(new_n725), .A1(new_n719), .B0(new_n795), .Y(new_n796));
  XOR2X1   g667(.A(new_n796), .B(new_n793), .Y(new_n797));
  INVX1    g668(.A(new_n724), .Y(new_n798));
  NOR2X1   g669(.A(new_n721), .B(new_n720), .Y(new_n799));
  AOI21X1  g670(.A0(new_n798), .A1(new_n722), .B0(new_n799), .Y(new_n800));
  XOR2X1   g671(.A(new_n611), .B(new_n566), .Y(new_n801));
  XOR2X1   g672(.A(new_n801), .B(new_n450), .Y(new_n802));
  INVX1    g673(.A(new_n733), .Y(new_n803));
  AND2X1   g674(.A(new_n535), .B(new_n487), .Y(new_n804));
  AOI21X1  g675(.A0(new_n803), .A1(new_n405), .B0(new_n804), .Y(new_n805));
  XOR2X1   g676(.A(new_n805), .B(new_n802), .Y(new_n806));
  XOR2X1   g677(.A(new_n806), .B(new_n584), .Y(new_n807));
  XOR2X1   g678(.A(new_n807), .B(new_n800), .Y(new_n808));
  INVX1    g679(.A(new_n737), .Y(new_n809));
  NOR2X1   g680(.A(new_n738), .B(new_n505), .Y(new_n810));
  AOI21X1  g681(.A0(new_n809), .A1(new_n734), .B0(new_n810), .Y(new_n811));
  XOR2X1   g682(.A(new_n811), .B(new_n808), .Y(new_n812));
  XOR2X1   g683(.A(new_n812), .B(new_n797), .Y(new_n813));
  INVX1    g684(.A(new_n730), .Y(new_n814));
  NAND2X1  g685(.A(new_n729), .B(new_n726), .Y(new_n815));
  OAI21X1  g686(.A0(new_n746), .A1(new_n814), .B0(new_n815), .Y(new_n816));
  XOR2X1   g687(.A(new_n816), .B(new_n813), .Y(new_n817));
  INVX1    g688(.A(new_n745), .Y(new_n818));
  AND2X1   g689(.A(new_n740), .B(new_n732), .Y(new_n819));
  AOI21X1  g690(.A0(new_n818), .A1(new_n741), .B0(new_n819), .Y(new_n820));
  XOR2X1   g691(.A(new_n820), .B(new_n754), .Y(new_n821));
  XOR2X1   g692(.A(new_n821), .B(new_n817), .Y(new_n822));
  INVX1    g693(.A(new_n747), .Y(new_n823));
  NAND2X1  g694(.A(new_n750), .B(new_n823), .Y(new_n824));
  OAI21X1  g695(.A0(new_n756), .A1(new_n751), .B0(new_n824), .Y(new_n825));
  XOR2X1   g696(.A(new_n825), .B(new_n822), .Y(new_n826));
  INVX1    g697(.A(new_n759), .Y(new_n827));
  AND2X1   g698(.A(new_n827), .B(new_n757), .Y(new_n828));
  XOR2X1   g699(.A(new_n828), .B(new_n826), .Y(new_n829));
  OR2X1    g700(.A(new_n762), .B(new_n687), .Y(new_n830));
  XOR2X1   g701(.A(new_n827), .B(new_n757), .Y(new_n831));
  NOR2X1   g702(.A(new_n765), .B(new_n762), .Y(new_n832));
  AOI21X1  g703(.A0(new_n761), .A1(new_n831), .B0(new_n832), .Y(new_n833));
  OAI21X1  g704(.A0(new_n830), .A1(new_n692), .B0(new_n833), .Y(new_n834));
  XOR2X1   g705(.A(new_n834), .B(new_n829), .Y(new_n835));
  MX2X1    g706(.A(new_n835), .B(new_n786), .S0(new_n227), .Y(n194));
  NAND4X1  g707(.A(\a_reg[7] ), .B(\a_reg[6] ), .C(\b_reg[7] ), .D(\b_reg[6] ), .Y(new_n837));
  AOI21X1  g708(.A0(new_n776), .A1(new_n775), .B0(new_n772), .Y(new_n838));
  AOI21X1  g709(.A0(new_n785), .A1(new_n779), .B0(new_n838), .Y(new_n839));
  XOR2X1   g710(.A(new_n839), .B(new_n837), .Y(new_n840));
  XOR2X1   g711(.A(new_n434), .B(new_n338), .Y(new_n841));
  XOR2X1   g712(.A(new_n841), .B(new_n285), .Y(new_n842));
  XOR2X1   g713(.A(new_n842), .B(new_n555), .Y(new_n843));
  XOR2X1   g714(.A(new_n360), .B(new_n283), .Y(new_n844));
  XOR2X1   g715(.A(new_n844), .B(new_n525), .Y(new_n845));
  XOR2X1   g716(.A(new_n845), .B(new_n843), .Y(new_n846));
  XOR2X1   g717(.A(new_n846), .B(new_n718), .Y(new_n847));
  XOR2X1   g718(.A(new_n695), .B(new_n607), .Y(new_n848));
  XOR2X1   g719(.A(new_n848), .B(new_n769), .Y(new_n849));
  XOR2X1   g720(.A(new_n849), .B(new_n720), .Y(new_n850));
  INVX1    g721(.A(new_n696), .Y(new_n851));
  NAND3X1  g722(.A(\a_reg[7] ), .B(\b_reg[7] ), .C(\b_reg[6] ), .Y(new_n852));
  OAI21X1  g723(.A0(new_n788), .A1(new_n851), .B0(new_n852), .Y(new_n853));
  XOR2X1   g724(.A(new_n853), .B(new_n850), .Y(new_n854));
  XOR2X1   g725(.A(new_n854), .B(new_n847), .Y(new_n855));
  OAI21X1  g726(.A0(new_n792), .A1(new_n719), .B0(new_n795), .Y(new_n856));
  XOR2X1   g727(.A(new_n856), .B(new_n855), .Y(new_n857));
  INVX1    g728(.A(new_n790), .Y(new_n858));
  NOR2X1   g729(.A(new_n789), .B(new_n720), .Y(new_n859));
  AOI21X1  g730(.A0(new_n791), .A1(new_n858), .B0(new_n859), .Y(new_n860));
  XOR2X1   g731(.A(new_n769), .B(new_n696), .Y(new_n861));
  XOR2X1   g732(.A(new_n861), .B(new_n702), .Y(new_n862));
  NAND3X1  g733(.A(\a_reg[5] ), .B(\a_reg[4] ), .C(\b_reg[7] ), .Y(new_n863));
  OAI21X1  g734(.A0(new_n801), .A1(new_n450), .B0(new_n863), .Y(new_n864));
  XOR2X1   g735(.A(new_n864), .B(new_n862), .Y(new_n865));
  XOR2X1   g736(.A(new_n865), .B(new_n734), .Y(new_n866));
  XOR2X1   g737(.A(new_n866), .B(new_n860), .Y(new_n867));
  INVX1    g738(.A(new_n805), .Y(new_n868));
  NOR2X1   g739(.A(new_n806), .B(new_n584), .Y(new_n869));
  AOI21X1  g740(.A0(new_n868), .A1(new_n802), .B0(new_n869), .Y(new_n870));
  XOR2X1   g741(.A(new_n870), .B(new_n867), .Y(new_n871));
  XOR2X1   g742(.A(new_n871), .B(new_n857), .Y(new_n872));
  AND2X1   g743(.A(new_n796), .B(new_n793), .Y(new_n873));
  AOI21X1  g744(.A0(new_n812), .A1(new_n797), .B0(new_n873), .Y(new_n874));
  XOR2X1   g745(.A(new_n874), .B(new_n872), .Y(new_n875));
  AND2X1   g746(.A(new_n798), .B(new_n722), .Y(new_n876));
  OAI21X1  g747(.A0(new_n876), .A1(new_n799), .B0(new_n807), .Y(new_n877));
  OAI21X1  g748(.A0(new_n811), .A1(new_n808), .B0(new_n877), .Y(new_n878));
  XOR2X1   g749(.A(new_n667), .B(new_n307), .Y(new_n879));
  AND2X1   g750(.A(new_n262), .B(\b_reg[7] ), .Y(new_n880));
  XOR2X1   g751(.A(new_n880), .B(new_n879), .Y(new_n881));
  XOR2X1   g752(.A(new_n881), .B(new_n878), .Y(new_n882));
  XOR2X1   g753(.A(new_n882), .B(new_n875), .Y(new_n883));
  AND2X1   g754(.A(new_n816), .B(new_n813), .Y(new_n884));
  AOI21X1  g755(.A0(new_n821), .A1(new_n817), .B0(new_n884), .Y(new_n885));
  XOR2X1   g756(.A(new_n885), .B(new_n883), .Y(new_n886));
  NOR2X1   g757(.A(new_n820), .B(new_n754), .Y(new_n887));
  XOR2X1   g758(.A(new_n887), .B(new_n886), .Y(new_n888));
  AND2X1   g759(.A(new_n825), .B(new_n822), .Y(new_n889));
  XOR2X1   g760(.A(new_n889), .B(new_n888), .Y(new_n890));
  AND2X1   g761(.A(new_n828), .B(new_n826), .Y(new_n891));
  AOI21X1  g762(.A0(new_n834), .A1(new_n829), .B0(new_n891), .Y(new_n892));
  XOR2X1   g763(.A(new_n892), .B(new_n890), .Y(new_n893));
  MX2X1    g764(.A(new_n893), .B(new_n840), .S0(new_n227), .Y(n199));
  BUFX1    g765(.A(\c_reg[0] ), .Y(\c[0] ));
  BUFX1    g766(.A(\c_reg[1] ), .Y(\c[1] ));
  BUFX1    g767(.A(\c_reg[2] ), .Y(\c[2] ));
  BUFX1    g768(.A(\c_reg[3] ), .Y(\c[3] ));
  BUFX1    g769(.A(\c_reg[4] ), .Y(\c[4] ));
  BUFX1    g770(.A(\c_reg[5] ), .Y(\c[5] ));
  BUFX1    g771(.A(\c_reg[6] ), .Y(\c[6] ));
  BUFX1    g772(.A(\c_reg[7] ), .Y(\c[7] ));
  BUFX1    g773(.A(\c_reg[8] ), .Y(\c[8] ));
  BUFX1    g774(.A(\c_reg[9] ), .Y(\c[9] ));
  BUFX1    g775(.A(\c_reg[10] ), .Y(\c[10] ));
  BUFX1    g776(.A(\c_reg[11] ), .Y(\c[11] ));
  BUFX1    g777(.A(\c_reg[12] ), .Y(\c[12] ));
  BUFX1    g778(.A(\c_reg[13] ), .Y(\c[13] ));
  BUFX1    g779(.A(\c_reg[14] ), .Y(\c[14] ));
  BUFX1    g780(.A(\c_reg[15] ), .Y(\c[15] ));
  BUFX1    g781(.A(\b[2] ), .Y(n67));
  BUFX1    g782(.A(\b[3] ), .Y(n71));
  BUFX1    g783(.A(\b[4] ), .Y(n75));
  BUFX1    g784(.A(\b[5] ), .Y(n79));
  BUFX1    g785(.A(\b[6] ), .Y(n83));
  BUFX1    g786(.A(\b[7] ), .Y(n87));
  BUFX1    g787(.A(\a[0] ), .Y(n91));
  BUFX1    g788(.A(\a[1] ), .Y(n95));
  BUFX1    g789(.A(\a[2] ), .Y(n99));
  BUFX1    g790(.A(\a[3] ), .Y(n103));
  BUFX1    g791(.A(\a[4] ), .Y(n107));
  BUFX1    g792(.A(\a[5] ), .Y(n111));
  BUFX1    g793(.A(\a[6] ), .Y(n115));
  BUFX1    g794(.A(\a[7] ), .Y(n119));
  BUFX1    g795(.A(\b[0] ), .Y(n203));
  BUFX1    g796(.A(\b[1] ), .Y(n207));
  always @ (posedge clock) begin
    \b_reg[2]  <= n67;
    \b_reg[3]  <= n71;
    \b_reg[4]  <= n75;
    \b_reg[5]  <= n79;
    \b_reg[6]  <= n83;
    \b_reg[7]  <= n87;
    \a_reg[0]  <= n91;
    \a_reg[1]  <= n95;
    \a_reg[2]  <= n99;
    \a_reg[3]  <= n103;
    \a_reg[4]  <= n107;
    \a_reg[5]  <= n111;
    \a_reg[6]  <= n115;
    \a_reg[7]  <= n119;
    \c_reg[0]  <= n124;
    \c_reg[1]  <= n129;
    \c_reg[2]  <= n134;
    \c_reg[3]  <= n139;
    \c_reg[4]  <= n144;
    \c_reg[5]  <= n149;
    \c_reg[6]  <= n154;
    \c_reg[7]  <= n159;
    \c_reg[8]  <= n164;
    \c_reg[9]  <= n169;
    \c_reg[10]  <= n174;
    \c_reg[11]  <= n179;
    \c_reg[12]  <= n184;
    \c_reg[13]  <= n189;
    \c_reg[14]  <= n194;
    \c_reg[15]  <= n199;
    \b_reg[0]  <= n203;
    \b_reg[1]  <= n207;
  end
endmodule


