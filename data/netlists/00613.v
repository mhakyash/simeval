// Benchmark "alu" written by ABC on Wed Jun 26 15:22:15 2024

module alu ( 
    \op1[0] , \op1[1] , \op1[2] , \op1[3] , \op1[4] , \op1[5] , \op1[6] ,
    \op1[7] , \op1[8] , \op1[9] , \op1[10] , \op1[11] , \op1[12] ,
    \op1[13] , \op1[14] , \op1[15] , \op1[16] , \op1[17] , \op1[18] ,
    \op1[19] , \op1[20] , \op1[21] , \op1[22] , \op1[23] , \op1[24] ,
    \op1[25] , \op1[26] , \op1[27] , \op1[28] , \op1[29] , \op1[30] ,
    \op1[31] , \op2[0] , \op2[1] , \op2[2] , \op2[3] , \op2[4] , \op2[5] ,
    \op2[6] , \op2[7] , \op2[8] , \op2[9] , \op2[10] , \op2[11] ,
    \op2[12] , \op2[13] , \op2[14] , \op2[15] , \op2[16] , \op2[17] ,
    \op2[18] , \op2[19] , \op2[20] , \op2[21] , \op2[22] , \op2[23] ,
    \op2[24] , \op2[25] , \op2[26] , \op2[27] , \op2[28] , \op2[29] ,
    \op2[30] , \op2[31] , \opcode[0] , \opcode[1] , \opcode[2] ,
    \result[0] , \result[1] , \result[2] , \result[3] , \result[4] ,
    \result[5] , \result[6] , \result[7] , \result[8] , \result[9] ,
    \result[10] , \result[11] , \result[12] , \result[13] , \result[14] ,
    \result[15] , \result[16] , \result[17] , \result[18] , \result[19] ,
    \result[20] , \result[21] , \result[22] , \result[23] , \result[24] ,
    \result[25] , \result[26] , \result[27] , \result[28] , \result[29] ,
    \result[30] , \result[31]   );
  input  \op1[0] , \op1[1] , \op1[2] , \op1[3] , \op1[4] , \op1[5] ,
    \op1[6] , \op1[7] , \op1[8] , \op1[9] , \op1[10] , \op1[11] ,
    \op1[12] , \op1[13] , \op1[14] , \op1[15] , \op1[16] , \op1[17] ,
    \op1[18] , \op1[19] , \op1[20] , \op1[21] , \op1[22] , \op1[23] ,
    \op1[24] , \op1[25] , \op1[26] , \op1[27] , \op1[28] , \op1[29] ,
    \op1[30] , \op1[31] , \op2[0] , \op2[1] , \op2[2] , \op2[3] , \op2[4] ,
    \op2[5] , \op2[6] , \op2[7] , \op2[8] , \op2[9] , \op2[10] , \op2[11] ,
    \op2[12] , \op2[13] , \op2[14] , \op2[15] , \op2[16] , \op2[17] ,
    \op2[18] , \op2[19] , \op2[20] , \op2[21] , \op2[22] , \op2[23] ,
    \op2[24] , \op2[25] , \op2[26] , \op2[27] , \op2[28] , \op2[29] ,
    \op2[30] , \op2[31] , \opcode[0] , \opcode[1] , \opcode[2] ;
  output \result[0] , \result[1] , \result[2] , \result[3] , \result[4] ,
    \result[5] , \result[6] , \result[7] , \result[8] , \result[9] ,
    \result[10] , \result[11] , \result[12] , \result[13] , \result[14] ,
    \result[15] , \result[16] , \result[17] , \result[18] , \result[19] ,
    \result[20] , \result[21] , \result[22] , \result[23] , \result[24] ,
    \result[25] , \result[26] , \result[27] , \result[28] , \result[29] ,
    \result[30] , \result[31] ;
  wire new_n100, new_n101, new_n102, new_n103, new_n104, new_n105, new_n106,
    new_n107, new_n108, new_n109, new_n110, new_n111, new_n112, new_n113,
    new_n114, new_n115, new_n116, new_n118, new_n119, new_n120, new_n121,
    new_n122, new_n123, new_n124, new_n125, new_n126, new_n127, new_n128,
    new_n129, new_n130, new_n131, new_n132, new_n134, new_n135, new_n136,
    new_n137, new_n138, new_n139, new_n140, new_n141, new_n142, new_n143,
    new_n144, new_n145, new_n146, new_n147, new_n148, new_n149, new_n150,
    new_n151, new_n153, new_n154, new_n155, new_n156, new_n157, new_n158,
    new_n159, new_n160, new_n161, new_n162, new_n163, new_n164, new_n165,
    new_n166, new_n167, new_n169, new_n170, new_n171, new_n172, new_n173,
    new_n174, new_n175, new_n176, new_n177, new_n178, new_n179, new_n180,
    new_n181, new_n182, new_n183, new_n184, new_n185, new_n186, new_n187,
    new_n188, new_n189, new_n190, new_n191, new_n193, new_n194, new_n195,
    new_n196, new_n197, new_n198, new_n199, new_n200, new_n201, new_n202,
    new_n203, new_n204, new_n205, new_n206, new_n207, new_n208, new_n210,
    new_n211, new_n212, new_n213, new_n214, new_n215, new_n216, new_n217,
    new_n218, new_n219, new_n220, new_n221, new_n222, new_n223, new_n224,
    new_n225, new_n226, new_n227, new_n228, new_n229, new_n230, new_n231,
    new_n232, new_n233, new_n234, new_n235, new_n237, new_n238, new_n239,
    new_n240, new_n241, new_n242, new_n243, new_n244, new_n245, new_n246,
    new_n247, new_n248, new_n249, new_n250, new_n251, new_n252, new_n254,
    new_n255, new_n256, new_n257, new_n258, new_n259, new_n260, new_n261,
    new_n262, new_n263, new_n264, new_n265, new_n266, new_n267, new_n268,
    new_n269, new_n270, new_n271, new_n272, new_n273, new_n274, new_n275,
    new_n276, new_n277, new_n278, new_n279, new_n280, new_n282, new_n283,
    new_n284, new_n285, new_n286, new_n287, new_n288, new_n289, new_n290,
    new_n291, new_n292, new_n293, new_n294, new_n295, new_n296, new_n298,
    new_n299, new_n300, new_n301, new_n302, new_n303, new_n304, new_n305,
    new_n306, new_n307, new_n308, new_n309, new_n310, new_n311, new_n312,
    new_n313, new_n314, new_n315, new_n316, new_n317, new_n318, new_n319,
    new_n320, new_n321, new_n322, new_n324, new_n325, new_n326, new_n327,
    new_n328, new_n329, new_n330, new_n331, new_n332, new_n333, new_n334,
    new_n335, new_n336, new_n337, new_n338, new_n339, new_n341, new_n342,
    new_n343, new_n344, new_n345, new_n346, new_n347, new_n348, new_n349,
    new_n350, new_n351, new_n352, new_n353, new_n354, new_n355, new_n356,
    new_n357, new_n358, new_n359, new_n360, new_n361, new_n362, new_n363,
    new_n364, new_n365, new_n366, new_n368, new_n369, new_n370, new_n371,
    new_n372, new_n373, new_n374, new_n375, new_n376, new_n377, new_n378,
    new_n379, new_n380, new_n381, new_n382, new_n383, new_n385, new_n386,
    new_n387, new_n388, new_n389, new_n390, new_n391, new_n392, new_n393,
    new_n394, new_n395, new_n396, new_n397, new_n398, new_n399, new_n400,
    new_n401, new_n402, new_n403, new_n404, new_n405, new_n406, new_n407,
    new_n408, new_n410, new_n411, new_n412, new_n413, new_n414, new_n415,
    new_n416, new_n417, new_n418, new_n419, new_n420, new_n421, new_n422,
    new_n423, new_n424, new_n426, new_n427, new_n428, new_n429, new_n430,
    new_n431, new_n432, new_n433, new_n434, new_n435, new_n436, new_n437,
    new_n438, new_n439, new_n440, new_n441, new_n442, new_n443, new_n444,
    new_n445, new_n446, new_n447, new_n448, new_n449, new_n450, new_n451,
    new_n452, new_n453, new_n454, new_n455, new_n456, new_n457, new_n458,
    new_n459, new_n461, new_n462, new_n463, new_n464, new_n465, new_n466,
    new_n467, new_n468, new_n469, new_n470, new_n471, new_n472, new_n473,
    new_n474, new_n475, new_n476, new_n478, new_n479, new_n480, new_n481,
    new_n482, new_n483, new_n484, new_n485, new_n486, new_n487, new_n488,
    new_n489, new_n490, new_n491, new_n492, new_n493, new_n494, new_n495,
    new_n496, new_n497, new_n498, new_n500, new_n501, new_n502, new_n503,
    new_n504, new_n505, new_n506, new_n507, new_n508, new_n509, new_n510,
    new_n511, new_n512, new_n513, new_n515, new_n516, new_n517, new_n518,
    new_n519, new_n520, new_n521, new_n522, new_n523, new_n524, new_n525,
    new_n526, new_n527, new_n528, new_n529, new_n530, new_n531, new_n532,
    new_n533, new_n534, new_n535, new_n536, new_n537, new_n538, new_n539,
    new_n540, new_n541, new_n542, new_n543, new_n544, new_n545, new_n547,
    new_n548, new_n549, new_n550, new_n551, new_n552, new_n553, new_n554,
    new_n555, new_n556, new_n557, new_n558, new_n559, new_n560, new_n561,
    new_n563, new_n564, new_n565, new_n566, new_n567, new_n568, new_n569,
    new_n570, new_n571, new_n572, new_n573, new_n574, new_n575, new_n576,
    new_n577, new_n578, new_n579, new_n580, new_n581, new_n582, new_n583,
    new_n584, new_n585, new_n587, new_n588, new_n589, new_n590, new_n591,
    new_n592, new_n593, new_n594, new_n595, new_n596, new_n597, new_n598,
    new_n599, new_n600, new_n601, new_n602, new_n603, new_n604, new_n606,
    new_n607, new_n608, new_n609, new_n610, new_n611, new_n612, new_n613,
    new_n614, new_n615, new_n616, new_n617, new_n618, new_n619, new_n620,
    new_n621, new_n622, new_n623, new_n624, new_n625, new_n626, new_n627,
    new_n628, new_n629, new_n630, new_n631, new_n632, new_n633, new_n634,
    new_n635, new_n636, new_n637, new_n639, new_n640, new_n641, new_n642,
    new_n643, new_n644, new_n645, new_n646, new_n647, new_n648, new_n649,
    new_n650, new_n651, new_n652, new_n654, new_n655, new_n656, new_n657,
    new_n658, new_n659, new_n660, new_n661, new_n662, new_n663, new_n664,
    new_n665, new_n666, new_n667, new_n668, new_n669, new_n670, new_n671,
    new_n672, new_n673, new_n674, new_n676, new_n677, new_n678, new_n679,
    new_n680, new_n681, new_n682, new_n683, new_n684, new_n685, new_n686,
    new_n687, new_n688, new_n689, new_n690, new_n691, new_n692, new_n693,
    new_n694, new_n696, new_n697, new_n698, new_n699, new_n700, new_n701,
    new_n702, new_n703, new_n704, new_n705, new_n706, new_n707, new_n708,
    new_n709, new_n710, new_n711, new_n712, new_n713, new_n714, new_n715,
    new_n716, new_n717, new_n718, new_n719, new_n720, new_n721, new_n722,
    new_n723, new_n724, new_n725, new_n726, new_n727, new_n728, new_n730,
    new_n731, new_n732, new_n733, new_n734, new_n735, new_n736, new_n737,
    new_n738, new_n739, new_n740, new_n741, new_n742, new_n743, new_n744,
    new_n745, new_n746, new_n748, new_n749, new_n750, new_n751, new_n752,
    new_n753, new_n754, new_n755, new_n756, new_n757, new_n758, new_n759,
    new_n760, new_n761, new_n762, new_n763, new_n764, new_n765, new_n766,
    new_n767, new_n768, new_n769, new_n770, new_n771, new_n772, new_n773,
    new_n775, new_n776, new_n777, new_n778, new_n779, new_n780, new_n781,
    new_n782, new_n783, new_n784, new_n785, new_n786, new_n787, new_n788,
    new_n789, new_n790, new_n791;
  XOR2X1   g000(.A(\op2[0] ), .B(\op1[0] ), .Y(new_n100));
  INVX1    g001(.A(\opcode[2] ), .Y(new_n101));
  NOR3X1   g002(.A(new_n101), .B(\opcode[1] ), .C(\opcode[0] ), .Y(new_n102));
  OR2X1    g003(.A(\op2[0] ), .B(\op1[0] ), .Y(new_n103));
  INVX1    g004(.A(\opcode[0] ), .Y(new_n104));
  INVX1    g005(.A(\opcode[1] ), .Y(new_n105));
  NOR3X1   g006(.A(\opcode[2] ), .B(new_n105), .C(new_n104), .Y(new_n106));
  AOI22X1  g007(.A0(new_n106), .A1(new_n103), .B0(new_n102), .B1(new_n100), .Y(new_n107));
  NOR3X1   g008(.A(\opcode[2] ), .B(\opcode[1] ), .C(\opcode[0] ), .Y(new_n108));
  AND2X1   g009(.A(\op2[0] ), .B(\op1[0] ), .Y(new_n109));
  INVX1    g010(.A(new_n109), .Y(new_n110));
  NAND3X1  g011(.A(new_n101), .B(\opcode[1] ), .C(new_n104), .Y(new_n111));
  NOR3X1   g012(.A(\opcode[2] ), .B(\opcode[1] ), .C(new_n104), .Y(new_n112));
  NAND3X1  g013(.A(new_n112), .B(new_n110), .C(new_n103), .Y(new_n113));
  OAI21X1  g014(.A0(new_n111), .A1(new_n110), .B0(new_n113), .Y(new_n114));
  AOI21X1  g015(.A0(new_n108), .A1(new_n100), .B0(new_n114), .Y(new_n115));
  AOI21X1  g016(.A0(new_n105), .A1(new_n104), .B0(new_n101), .Y(new_n116));
  AOI21X1  g017(.A0(new_n115), .A1(new_n107), .B0(new_n116), .Y(\result[0] ));
  XOR2X1   g018(.A(\op2[1] ), .B(\op1[1] ), .Y(new_n118));
  INVX1    g019(.A(\op1[0] ), .Y(new_n119));
  AND2X1   g020(.A(\op2[0] ), .B(new_n119), .Y(new_n120));
  XOR2X1   g021(.A(new_n120), .B(new_n118), .Y(new_n121));
  NAND2X1  g022(.A(new_n121), .B(new_n112), .Y(new_n122));
  XOR2X1   g023(.A(\op2[1] ), .B(\op1[1] ), .Y(new_n123));
  XOR2X1   g024(.A(new_n123), .B(new_n109), .Y(new_n124));
  AND2X1   g025(.A(new_n124), .B(new_n108), .Y(new_n125));
  INVX1    g026(.A(\op1[1] ), .Y(new_n126));
  INVX1    g027(.A(\op2[1] ), .Y(new_n127));
  NOR3X1   g028(.A(new_n111), .B(new_n127), .C(new_n126), .Y(new_n128));
  AND2X1   g029(.A(new_n123), .B(new_n102), .Y(new_n129));
  NOR2X1   g030(.A(\op2[1] ), .B(\op1[1] ), .Y(new_n130));
  NOR4X1   g031(.A(new_n130), .B(\opcode[2] ), .C(new_n105), .D(new_n104), .Y(new_n131));
  NOR4X1   g032(.A(new_n131), .B(new_n129), .C(new_n128), .D(new_n125), .Y(new_n132));
  AOI21X1  g033(.A0(new_n132), .A1(new_n122), .B0(new_n116), .Y(\result[1] ));
  XOR2X1   g034(.A(\op2[2] ), .B(\op1[2] ), .Y(new_n134));
  OR2X1    g035(.A(\op2[1] ), .B(new_n126), .Y(new_n135));
  INVX1    g036(.A(\op2[0] ), .Y(new_n136));
  AND2X1   g037(.A(\op2[1] ), .B(\op1[1] ), .Y(new_n137));
  OAI22X1  g038(.A0(new_n137), .A1(new_n130), .B0(new_n136), .B1(\op1[0] ), .Y(new_n138));
  AND2X1   g039(.A(new_n138), .B(new_n135), .Y(new_n139));
  XOR2X1   g040(.A(new_n139), .B(new_n134), .Y(new_n140));
  NAND2X1  g041(.A(new_n140), .B(new_n112), .Y(new_n141));
  XOR2X1   g042(.A(\op2[2] ), .B(\op1[2] ), .Y(new_n142));
  INVX1    g043(.A(new_n142), .Y(new_n143));
  AOI21X1  g044(.A0(new_n123), .A1(new_n109), .B0(new_n137), .Y(new_n144));
  XOR2X1   g045(.A(new_n144), .B(new_n143), .Y(new_n145));
  AND2X1   g046(.A(\op2[2] ), .B(\op1[2] ), .Y(new_n146));
  INVX1    g047(.A(new_n146), .Y(new_n147));
  OR2X1    g048(.A(\op2[2] ), .B(\op1[2] ), .Y(new_n148));
  AOI22X1  g049(.A0(new_n142), .A1(new_n102), .B0(new_n148), .B1(new_n106), .Y(new_n149));
  OAI21X1  g050(.A0(new_n147), .A1(new_n111), .B0(new_n149), .Y(new_n150));
  AOI21X1  g051(.A0(new_n145), .A1(new_n108), .B0(new_n150), .Y(new_n151));
  AOI21X1  g052(.A0(new_n151), .A1(new_n141), .B0(new_n116), .Y(\result[2] ));
  XOR2X1   g053(.A(\op2[3] ), .B(\op1[3] ), .Y(new_n153));
  INVX1    g054(.A(\op1[2] ), .Y(new_n154));
  OR2X1    g055(.A(\op2[2] ), .B(new_n154), .Y(new_n155));
  OAI21X1  g056(.A0(new_n139), .A1(new_n134), .B0(new_n155), .Y(new_n156));
  XOR2X1   g057(.A(new_n156), .B(new_n153), .Y(new_n157));
  OR4X1    g058(.A(new_n157), .B(\opcode[2] ), .C(\opcode[1] ), .D(new_n104), .Y(new_n158));
  XOR2X1   g059(.A(\op2[3] ), .B(\op1[3] ), .Y(new_n159));
  OAI21X1  g060(.A0(new_n144), .A1(new_n143), .B0(new_n147), .Y(new_n160));
  XOR2X1   g061(.A(new_n160), .B(new_n159), .Y(new_n161));
  AND2X1   g062(.A(\op2[3] ), .B(\op1[3] ), .Y(new_n162));
  NAND4X1  g063(.A(new_n162), .B(new_n101), .C(\opcode[1] ), .D(new_n104), .Y(new_n163));
  OR2X1    g064(.A(\op2[3] ), .B(\op1[3] ), .Y(new_n164));
  AOI22X1  g065(.A0(new_n159), .A1(new_n102), .B0(new_n164), .B1(new_n106), .Y(new_n165));
  NAND2X1  g066(.A(new_n165), .B(new_n163), .Y(new_n166));
  AOI21X1  g067(.A0(new_n161), .A1(new_n108), .B0(new_n166), .Y(new_n167));
  AOI21X1  g068(.A0(new_n167), .A1(new_n158), .B0(new_n116), .Y(\result[3] ));
  XOR2X1   g069(.A(\op2[4] ), .B(\op1[4] ), .Y(new_n169));
  AND2X1   g070(.A(new_n127), .B(\op1[1] ), .Y(new_n170));
  AOI21X1  g071(.A0(\op2[0] ), .A1(new_n119), .B0(new_n118), .Y(new_n171));
  NOR2X1   g072(.A(new_n153), .B(new_n134), .Y(new_n172));
  OAI21X1  g073(.A0(new_n171), .A1(new_n170), .B0(new_n172), .Y(new_n173));
  INVX1    g074(.A(\op1[3] ), .Y(new_n174));
  NOR2X1   g075(.A(\op2[3] ), .B(new_n174), .Y(new_n175));
  NOR3X1   g076(.A(new_n153), .B(\op2[2] ), .C(new_n154), .Y(new_n176));
  NOR2X1   g077(.A(new_n176), .B(new_n175), .Y(new_n177));
  AND2X1   g078(.A(new_n177), .B(new_n173), .Y(new_n178));
  XOR2X1   g079(.A(new_n178), .B(new_n169), .Y(new_n179));
  NAND2X1  g080(.A(new_n179), .B(new_n112), .Y(new_n180));
  XOR2X1   g081(.A(\op2[4] ), .B(\op1[4] ), .Y(new_n181));
  NAND2X1  g082(.A(new_n159), .B(new_n142), .Y(new_n182));
  AOI21X1  g083(.A0(new_n159), .A1(new_n146), .B0(new_n162), .Y(new_n183));
  OAI21X1  g084(.A0(new_n182), .A1(new_n144), .B0(new_n183), .Y(new_n184));
  XOR2X1   g085(.A(new_n184), .B(new_n181), .Y(new_n185));
  AND2X1   g086(.A(\op2[4] ), .B(\op1[4] ), .Y(new_n186));
  NAND4X1  g087(.A(new_n186), .B(new_n101), .C(\opcode[1] ), .D(new_n104), .Y(new_n187));
  OR2X1    g088(.A(\op2[4] ), .B(\op1[4] ), .Y(new_n188));
  AOI22X1  g089(.A0(new_n181), .A1(new_n102), .B0(new_n188), .B1(new_n106), .Y(new_n189));
  NAND2X1  g090(.A(new_n189), .B(new_n187), .Y(new_n190));
  AOI21X1  g091(.A0(new_n185), .A1(new_n108), .B0(new_n190), .Y(new_n191));
  AOI21X1  g092(.A0(new_n191), .A1(new_n180), .B0(new_n116), .Y(\result[4] ));
  XOR2X1   g093(.A(\op2[5] ), .B(\op1[5] ), .Y(new_n193));
  INVX1    g094(.A(\op1[4] ), .Y(new_n194));
  OR2X1    g095(.A(\op2[4] ), .B(new_n194), .Y(new_n195));
  OAI21X1  g096(.A0(new_n178), .A1(new_n169), .B0(new_n195), .Y(new_n196));
  XOR2X1   g097(.A(new_n196), .B(new_n193), .Y(new_n197));
  OR4X1    g098(.A(new_n197), .B(\opcode[2] ), .C(\opcode[1] ), .D(new_n104), .Y(new_n198));
  XOR2X1   g099(.A(\op2[5] ), .B(\op1[5] ), .Y(new_n199));
  INVX1    g100(.A(new_n199), .Y(new_n200));
  AOI21X1  g101(.A0(new_n184), .A1(new_n181), .B0(new_n186), .Y(new_n201));
  XOR2X1   g102(.A(new_n201), .B(new_n200), .Y(new_n202));
  AND2X1   g103(.A(\op2[5] ), .B(\op1[5] ), .Y(new_n203));
  NAND4X1  g104(.A(new_n203), .B(new_n101), .C(\opcode[1] ), .D(new_n104), .Y(new_n204));
  OR2X1    g105(.A(\op2[5] ), .B(\op1[5] ), .Y(new_n205));
  AOI22X1  g106(.A0(new_n199), .A1(new_n102), .B0(new_n205), .B1(new_n106), .Y(new_n206));
  NAND2X1  g107(.A(new_n206), .B(new_n204), .Y(new_n207));
  AOI21X1  g108(.A0(new_n202), .A1(new_n108), .B0(new_n207), .Y(new_n208));
  AOI21X1  g109(.A0(new_n208), .A1(new_n198), .B0(new_n116), .Y(\result[5] ));
  XOR2X1   g110(.A(\op2[6] ), .B(\op1[6] ), .Y(new_n210));
  INVX1    g111(.A(\op1[5] ), .Y(new_n211));
  NOR2X1   g112(.A(\op2[5] ), .B(new_n211), .Y(new_n212));
  NOR3X1   g113(.A(new_n193), .B(\op2[4] ), .C(new_n194), .Y(new_n213));
  NOR2X1   g114(.A(new_n213), .B(new_n212), .Y(new_n214));
  OR2X1    g115(.A(new_n153), .B(new_n134), .Y(new_n215));
  AOI21X1  g116(.A0(new_n138), .A1(new_n135), .B0(new_n215), .Y(new_n216));
  OR2X1    g117(.A(new_n176), .B(new_n175), .Y(new_n217));
  NOR2X1   g118(.A(new_n193), .B(new_n169), .Y(new_n218));
  OAI21X1  g119(.A0(new_n217), .A1(new_n216), .B0(new_n218), .Y(new_n219));
  NAND2X1  g120(.A(new_n219), .B(new_n214), .Y(new_n220));
  XOR2X1   g121(.A(new_n220), .B(new_n210), .Y(new_n221));
  OR4X1    g122(.A(new_n221), .B(\opcode[2] ), .C(\opcode[1] ), .D(new_n104), .Y(new_n222));
  XOR2X1   g123(.A(\op2[6] ), .B(\op1[6] ), .Y(new_n223));
  INVX1    g124(.A(new_n223), .Y(new_n224));
  AOI21X1  g125(.A0(new_n199), .A1(new_n186), .B0(new_n203), .Y(new_n225));
  INVX1    g126(.A(new_n225), .Y(new_n226));
  AND2X1   g127(.A(new_n199), .B(new_n181), .Y(new_n227));
  AOI21X1  g128(.A0(new_n227), .A1(new_n184), .B0(new_n226), .Y(new_n228));
  XOR2X1   g129(.A(new_n228), .B(new_n224), .Y(new_n229));
  AND2X1   g130(.A(\op2[6] ), .B(\op1[6] ), .Y(new_n230));
  INVX1    g131(.A(new_n230), .Y(new_n231));
  OR2X1    g132(.A(\op2[6] ), .B(\op1[6] ), .Y(new_n232));
  AOI22X1  g133(.A0(new_n223), .A1(new_n102), .B0(new_n232), .B1(new_n106), .Y(new_n233));
  OAI21X1  g134(.A0(new_n231), .A1(new_n111), .B0(new_n233), .Y(new_n234));
  AOI21X1  g135(.A0(new_n229), .A1(new_n108), .B0(new_n234), .Y(new_n235));
  AOI21X1  g136(.A0(new_n235), .A1(new_n222), .B0(new_n116), .Y(\result[6] ));
  XOR2X1   g137(.A(\op2[7] ), .B(\op1[7] ), .Y(new_n237));
  INVX1    g138(.A(\op1[6] ), .Y(new_n238));
  NOR2X1   g139(.A(\op2[6] ), .B(new_n238), .Y(new_n239));
  AOI21X1  g140(.A0(new_n219), .A1(new_n214), .B0(new_n210), .Y(new_n240));
  NOR2X1   g141(.A(new_n240), .B(new_n239), .Y(new_n241));
  XOR2X1   g142(.A(new_n241), .B(new_n237), .Y(new_n242));
  NAND2X1  g143(.A(new_n242), .B(new_n112), .Y(new_n243));
  XOR2X1   g144(.A(\op2[7] ), .B(\op1[7] ), .Y(new_n244));
  OAI21X1  g145(.A0(new_n228), .A1(new_n224), .B0(new_n231), .Y(new_n245));
  XOR2X1   g146(.A(new_n245), .B(new_n244), .Y(new_n246));
  AND2X1   g147(.A(\op2[7] ), .B(\op1[7] ), .Y(new_n247));
  NAND4X1  g148(.A(new_n247), .B(new_n101), .C(\opcode[1] ), .D(new_n104), .Y(new_n248));
  OR2X1    g149(.A(\op2[7] ), .B(\op1[7] ), .Y(new_n249));
  AOI22X1  g150(.A0(new_n244), .A1(new_n102), .B0(new_n249), .B1(new_n106), .Y(new_n250));
  NAND2X1  g151(.A(new_n250), .B(new_n248), .Y(new_n251));
  AOI21X1  g152(.A0(new_n246), .A1(new_n108), .B0(new_n251), .Y(new_n252));
  AOI21X1  g153(.A0(new_n252), .A1(new_n243), .B0(new_n116), .Y(\result[7] ));
  XOR2X1   g154(.A(\op2[8] ), .B(\op1[8] ), .Y(new_n254));
  NOR4X1   g155(.A(new_n237), .B(new_n210), .C(new_n193), .D(new_n169), .Y(new_n255));
  OAI21X1  g156(.A0(new_n217), .A1(new_n216), .B0(new_n255), .Y(new_n256));
  NOR2X1   g157(.A(new_n237), .B(new_n210), .Y(new_n257));
  OAI21X1  g158(.A0(new_n213), .A1(new_n212), .B0(new_n257), .Y(new_n258));
  INVX1    g159(.A(\op2[7] ), .Y(new_n259));
  NOR3X1   g160(.A(new_n237), .B(\op2[6] ), .C(new_n238), .Y(new_n260));
  AOI21X1  g161(.A0(new_n259), .A1(\op1[7] ), .B0(new_n260), .Y(new_n261));
  AND2X1   g162(.A(new_n261), .B(new_n258), .Y(new_n262));
  AND2X1   g163(.A(new_n262), .B(new_n256), .Y(new_n263));
  XOR2X1   g164(.A(new_n263), .B(new_n254), .Y(new_n264));
  NAND2X1  g165(.A(new_n264), .B(new_n112), .Y(new_n265));
  XOR2X1   g166(.A(\op2[8] ), .B(\op1[8] ), .Y(new_n266));
  INVX1    g167(.A(new_n266), .Y(new_n267));
  AND2X1   g168(.A(new_n244), .B(new_n223), .Y(new_n268));
  AND2X1   g169(.A(new_n268), .B(new_n227), .Y(new_n269));
  NAND2X1  g170(.A(new_n244), .B(new_n223), .Y(new_n270));
  AOI21X1  g171(.A0(new_n244), .A1(new_n230), .B0(new_n247), .Y(new_n271));
  OAI21X1  g172(.A0(new_n270), .A1(new_n225), .B0(new_n271), .Y(new_n272));
  AOI21X1  g173(.A0(new_n269), .A1(new_n184), .B0(new_n272), .Y(new_n273));
  XOR2X1   g174(.A(new_n273), .B(new_n267), .Y(new_n274));
  AND2X1   g175(.A(\op2[8] ), .B(\op1[8] ), .Y(new_n275));
  INVX1    g176(.A(new_n275), .Y(new_n276));
  OR2X1    g177(.A(\op2[8] ), .B(\op1[8] ), .Y(new_n277));
  AOI22X1  g178(.A0(new_n266), .A1(new_n102), .B0(new_n277), .B1(new_n106), .Y(new_n278));
  OAI21X1  g179(.A0(new_n276), .A1(new_n111), .B0(new_n278), .Y(new_n279));
  AOI21X1  g180(.A0(new_n274), .A1(new_n108), .B0(new_n279), .Y(new_n280));
  AOI21X1  g181(.A0(new_n280), .A1(new_n265), .B0(new_n116), .Y(\result[8] ));
  XOR2X1   g182(.A(\op2[9] ), .B(\op1[9] ), .Y(new_n282));
  INVX1    g183(.A(\op1[8] ), .Y(new_n283));
  OR2X1    g184(.A(\op2[8] ), .B(new_n283), .Y(new_n284));
  OAI21X1  g185(.A0(new_n263), .A1(new_n254), .B0(new_n284), .Y(new_n285));
  XOR2X1   g186(.A(new_n285), .B(new_n282), .Y(new_n286));
  OR4X1    g187(.A(new_n286), .B(\opcode[2] ), .C(\opcode[1] ), .D(new_n104), .Y(new_n287));
  XOR2X1   g188(.A(\op2[9] ), .B(\op1[9] ), .Y(new_n288));
  OAI21X1  g189(.A0(new_n273), .A1(new_n267), .B0(new_n276), .Y(new_n289));
  XOR2X1   g190(.A(new_n289), .B(new_n288), .Y(new_n290));
  AND2X1   g191(.A(\op2[9] ), .B(\op1[9] ), .Y(new_n291));
  NAND4X1  g192(.A(new_n291), .B(new_n101), .C(\opcode[1] ), .D(new_n104), .Y(new_n292));
  OR2X1    g193(.A(\op2[9] ), .B(\op1[9] ), .Y(new_n293));
  AOI22X1  g194(.A0(new_n288), .A1(new_n102), .B0(new_n293), .B1(new_n106), .Y(new_n294));
  NAND2X1  g195(.A(new_n294), .B(new_n292), .Y(new_n295));
  AOI21X1  g196(.A0(new_n290), .A1(new_n108), .B0(new_n295), .Y(new_n296));
  AOI21X1  g197(.A0(new_n296), .A1(new_n287), .B0(new_n116), .Y(\result[9] ));
  XOR2X1   g198(.A(\op2[10] ), .B(\op1[10] ), .Y(new_n298));
  INVX1    g199(.A(\op1[9] ), .Y(new_n299));
  NOR2X1   g200(.A(\op2[9] ), .B(new_n299), .Y(new_n300));
  NOR3X1   g201(.A(new_n282), .B(\op2[8] ), .C(new_n283), .Y(new_n301));
  OR2X1    g202(.A(new_n301), .B(new_n300), .Y(new_n302));
  INVX1    g203(.A(new_n302), .Y(new_n303));
  OR4X1    g204(.A(new_n237), .B(new_n210), .C(new_n193), .D(new_n169), .Y(new_n304));
  AOI21X1  g205(.A0(new_n177), .A1(new_n173), .B0(new_n304), .Y(new_n305));
  NAND2X1  g206(.A(new_n261), .B(new_n258), .Y(new_n306));
  NOR2X1   g207(.A(new_n282), .B(new_n254), .Y(new_n307));
  OAI21X1  g208(.A0(new_n306), .A1(new_n305), .B0(new_n307), .Y(new_n308));
  NAND2X1  g209(.A(new_n308), .B(new_n303), .Y(new_n309));
  XOR2X1   g210(.A(new_n309), .B(new_n298), .Y(new_n310));
  OR4X1    g211(.A(new_n310), .B(\opcode[2] ), .C(\opcode[1] ), .D(new_n104), .Y(new_n311));
  XOR2X1   g212(.A(\op2[10] ), .B(\op1[10] ), .Y(new_n312));
  AOI21X1  g213(.A0(new_n288), .A1(new_n275), .B0(new_n291), .Y(new_n313));
  NAND2X1  g214(.A(new_n288), .B(new_n266), .Y(new_n314));
  OAI21X1  g215(.A0(new_n314), .A1(new_n273), .B0(new_n313), .Y(new_n315));
  XOR2X1   g216(.A(new_n315), .B(new_n312), .Y(new_n316));
  AND2X1   g217(.A(\op2[10] ), .B(\op1[10] ), .Y(new_n317));
  NAND4X1  g218(.A(new_n317), .B(new_n101), .C(\opcode[1] ), .D(new_n104), .Y(new_n318));
  OR2X1    g219(.A(\op2[10] ), .B(\op1[10] ), .Y(new_n319));
  AOI22X1  g220(.A0(new_n312), .A1(new_n102), .B0(new_n319), .B1(new_n106), .Y(new_n320));
  NAND2X1  g221(.A(new_n320), .B(new_n318), .Y(new_n321));
  AOI21X1  g222(.A0(new_n316), .A1(new_n108), .B0(new_n321), .Y(new_n322));
  AOI21X1  g223(.A0(new_n322), .A1(new_n311), .B0(new_n116), .Y(\result[10] ));
  XOR2X1   g224(.A(\op2[11] ), .B(\op1[11] ), .Y(new_n324));
  INVX1    g225(.A(\op2[10] ), .Y(new_n325));
  AOI21X1  g226(.A0(new_n308), .A1(new_n303), .B0(new_n298), .Y(new_n326));
  AOI21X1  g227(.A0(new_n325), .A1(\op1[10] ), .B0(new_n326), .Y(new_n327));
  XOR2X1   g228(.A(new_n327), .B(new_n324), .Y(new_n328));
  NAND2X1  g229(.A(new_n328), .B(new_n112), .Y(new_n329));
  XOR2X1   g230(.A(\op2[11] ), .B(\op1[11] ), .Y(new_n330));
  INVX1    g231(.A(new_n330), .Y(new_n331));
  AOI21X1  g232(.A0(new_n315), .A1(new_n312), .B0(new_n317), .Y(new_n332));
  XOR2X1   g233(.A(new_n332), .B(new_n331), .Y(new_n333));
  AND2X1   g234(.A(\op2[11] ), .B(\op1[11] ), .Y(new_n334));
  NAND4X1  g235(.A(new_n334), .B(new_n101), .C(\opcode[1] ), .D(new_n104), .Y(new_n335));
  OR2X1    g236(.A(\op2[11] ), .B(\op1[11] ), .Y(new_n336));
  AOI22X1  g237(.A0(new_n330), .A1(new_n102), .B0(new_n336), .B1(new_n106), .Y(new_n337));
  NAND2X1  g238(.A(new_n337), .B(new_n335), .Y(new_n338));
  AOI21X1  g239(.A0(new_n333), .A1(new_n108), .B0(new_n338), .Y(new_n339));
  AOI21X1  g240(.A0(new_n339), .A1(new_n329), .B0(new_n116), .Y(\result[11] ));
  XOR2X1   g241(.A(\op2[12] ), .B(\op1[12] ), .Y(new_n341));
  NOR2X1   g242(.A(new_n324), .B(new_n298), .Y(new_n342));
  NAND2X1  g243(.A(new_n325), .B(\op1[10] ), .Y(new_n343));
  INVX1    g244(.A(\op1[11] ), .Y(new_n344));
  OR2X1    g245(.A(\op2[11] ), .B(new_n344), .Y(new_n345));
  OAI21X1  g246(.A0(new_n324), .A1(new_n343), .B0(new_n345), .Y(new_n346));
  AOI21X1  g247(.A0(new_n342), .A1(new_n302), .B0(new_n346), .Y(new_n347));
  NOR4X1   g248(.A(new_n324), .B(new_n298), .C(new_n282), .D(new_n254), .Y(new_n348));
  OAI21X1  g249(.A0(new_n306), .A1(new_n305), .B0(new_n348), .Y(new_n349));
  AND2X1   g250(.A(new_n349), .B(new_n347), .Y(new_n350));
  XOR2X1   g251(.A(new_n350), .B(new_n341), .Y(new_n351));
  NAND2X1  g252(.A(new_n351), .B(new_n112), .Y(new_n352));
  XOR2X1   g253(.A(\op2[12] ), .B(\op1[12] ), .Y(new_n353));
  NAND2X1  g254(.A(new_n330), .B(new_n312), .Y(new_n354));
  AOI21X1  g255(.A0(new_n330), .A1(new_n317), .B0(new_n334), .Y(new_n355));
  OAI21X1  g256(.A0(new_n354), .A1(new_n313), .B0(new_n355), .Y(new_n356));
  NAND4X1  g257(.A(new_n330), .B(new_n312), .C(new_n288), .D(new_n266), .Y(new_n357));
  NOR2X1   g258(.A(new_n357), .B(new_n273), .Y(new_n358));
  OR2X1    g259(.A(new_n358), .B(new_n356), .Y(new_n359));
  XOR2X1   g260(.A(new_n359), .B(new_n353), .Y(new_n360));
  AND2X1   g261(.A(\op2[12] ), .B(\op1[12] ), .Y(new_n361));
  NAND4X1  g262(.A(new_n361), .B(new_n101), .C(\opcode[1] ), .D(new_n104), .Y(new_n362));
  OR2X1    g263(.A(\op2[12] ), .B(\op1[12] ), .Y(new_n363));
  AOI22X1  g264(.A0(new_n353), .A1(new_n102), .B0(new_n363), .B1(new_n106), .Y(new_n364));
  NAND2X1  g265(.A(new_n364), .B(new_n362), .Y(new_n365));
  AOI21X1  g266(.A0(new_n360), .A1(new_n108), .B0(new_n365), .Y(new_n366));
  AOI21X1  g267(.A0(new_n366), .A1(new_n352), .B0(new_n116), .Y(\result[12] ));
  XOR2X1   g268(.A(\op2[13] ), .B(\op1[13] ), .Y(new_n368));
  INVX1    g269(.A(\op1[12] ), .Y(new_n369));
  OR2X1    g270(.A(\op2[12] ), .B(new_n369), .Y(new_n370));
  OAI21X1  g271(.A0(new_n350), .A1(new_n341), .B0(new_n370), .Y(new_n371));
  XOR2X1   g272(.A(new_n371), .B(new_n368), .Y(new_n372));
  OR4X1    g273(.A(new_n372), .B(\opcode[2] ), .C(\opcode[1] ), .D(new_n104), .Y(new_n373));
  XOR2X1   g274(.A(\op2[13] ), .B(\op1[13] ), .Y(new_n374));
  INVX1    g275(.A(new_n374), .Y(new_n375));
  AOI21X1  g276(.A0(new_n359), .A1(new_n353), .B0(new_n361), .Y(new_n376));
  XOR2X1   g277(.A(new_n376), .B(new_n375), .Y(new_n377));
  AND2X1   g278(.A(\op2[13] ), .B(\op1[13] ), .Y(new_n378));
  NAND4X1  g279(.A(new_n378), .B(new_n101), .C(\opcode[1] ), .D(new_n104), .Y(new_n379));
  OR2X1    g280(.A(\op2[13] ), .B(\op1[13] ), .Y(new_n380));
  AOI22X1  g281(.A0(new_n374), .A1(new_n102), .B0(new_n380), .B1(new_n106), .Y(new_n381));
  NAND2X1  g282(.A(new_n381), .B(new_n379), .Y(new_n382));
  AOI21X1  g283(.A0(new_n377), .A1(new_n108), .B0(new_n382), .Y(new_n383));
  AOI21X1  g284(.A0(new_n383), .A1(new_n373), .B0(new_n116), .Y(\result[13] ));
  XOR2X1   g285(.A(\op2[14] ), .B(\op1[14] ), .Y(new_n385));
  INVX1    g286(.A(new_n385), .Y(new_n386));
  INVX1    g287(.A(\op1[13] ), .Y(new_n387));
  NOR2X1   g288(.A(\op2[13] ), .B(new_n387), .Y(new_n388));
  NOR3X1   g289(.A(new_n368), .B(\op2[12] ), .C(new_n369), .Y(new_n389));
  NOR2X1   g290(.A(new_n389), .B(new_n388), .Y(new_n390));
  NOR2X1   g291(.A(new_n368), .B(new_n341), .Y(new_n391));
  INVX1    g292(.A(new_n391), .Y(new_n392));
  OAI21X1  g293(.A0(new_n392), .A1(new_n350), .B0(new_n390), .Y(new_n393));
  XOR2X1   g294(.A(new_n393), .B(new_n386), .Y(new_n394));
  NAND2X1  g295(.A(new_n394), .B(new_n112), .Y(new_n395));
  XOR2X1   g296(.A(\op2[14] ), .B(\op1[14] ), .Y(new_n396));
  INVX1    g297(.A(new_n396), .Y(new_n397));
  AOI21X1  g298(.A0(new_n374), .A1(new_n361), .B0(new_n378), .Y(new_n398));
  AND2X1   g299(.A(new_n374), .B(new_n353), .Y(new_n399));
  OAI21X1  g300(.A0(new_n358), .A1(new_n356), .B0(new_n399), .Y(new_n400));
  AND2X1   g301(.A(new_n400), .B(new_n398), .Y(new_n401));
  XOR2X1   g302(.A(new_n401), .B(new_n397), .Y(new_n402));
  AND2X1   g303(.A(\op2[14] ), .B(\op1[14] ), .Y(new_n403));
  INVX1    g304(.A(new_n403), .Y(new_n404));
  OR2X1    g305(.A(\op2[14] ), .B(\op1[14] ), .Y(new_n405));
  AOI22X1  g306(.A0(new_n396), .A1(new_n102), .B0(new_n405), .B1(new_n106), .Y(new_n406));
  OAI21X1  g307(.A0(new_n404), .A1(new_n111), .B0(new_n406), .Y(new_n407));
  AOI21X1  g308(.A0(new_n402), .A1(new_n108), .B0(new_n407), .Y(new_n408));
  AOI21X1  g309(.A0(new_n408), .A1(new_n395), .B0(new_n116), .Y(\result[14] ));
  XOR2X1   g310(.A(\op2[15] ), .B(\op1[15] ), .Y(new_n410));
  INVX1    g311(.A(\op1[14] ), .Y(new_n411));
  NOR2X1   g312(.A(\op2[14] ), .B(new_n411), .Y(new_n412));
  AOI21X1  g313(.A0(new_n393), .A1(new_n386), .B0(new_n412), .Y(new_n413));
  XOR2X1   g314(.A(new_n413), .B(new_n410), .Y(new_n414));
  NAND2X1  g315(.A(new_n414), .B(new_n112), .Y(new_n415));
  XOR2X1   g316(.A(\op2[15] ), .B(\op1[15] ), .Y(new_n416));
  OAI21X1  g317(.A0(new_n401), .A1(new_n397), .B0(new_n404), .Y(new_n417));
  XOR2X1   g318(.A(new_n417), .B(new_n416), .Y(new_n418));
  AND2X1   g319(.A(\op2[15] ), .B(\op1[15] ), .Y(new_n419));
  NAND4X1  g320(.A(new_n419), .B(new_n101), .C(\opcode[1] ), .D(new_n104), .Y(new_n420));
  OR2X1    g321(.A(\op2[15] ), .B(\op1[15] ), .Y(new_n421));
  AOI22X1  g322(.A0(new_n416), .A1(new_n102), .B0(new_n421), .B1(new_n106), .Y(new_n422));
  NAND2X1  g323(.A(new_n422), .B(new_n420), .Y(new_n423));
  AOI21X1  g324(.A0(new_n418), .A1(new_n108), .B0(new_n423), .Y(new_n424));
  AOI21X1  g325(.A0(new_n424), .A1(new_n415), .B0(new_n116), .Y(\result[15] ));
  XOR2X1   g326(.A(\op2[16] ), .B(\op1[16] ), .Y(new_n426));
  NOR4X1   g327(.A(new_n410), .B(new_n385), .C(new_n368), .D(new_n341), .Y(new_n427));
  AND2X1   g328(.A(new_n427), .B(new_n348), .Y(new_n428));
  OAI21X1  g329(.A0(new_n306), .A1(new_n305), .B0(new_n428), .Y(new_n429));
  OAI21X1  g330(.A0(new_n301), .A1(new_n300), .B0(new_n342), .Y(new_n430));
  OR2X1    g331(.A(new_n324), .B(new_n343), .Y(new_n431));
  NAND3X1  g332(.A(new_n431), .B(new_n430), .C(new_n345), .Y(new_n432));
  NOR2X1   g333(.A(new_n410), .B(new_n385), .Y(new_n433));
  OAI21X1  g334(.A0(new_n389), .A1(new_n388), .B0(new_n433), .Y(new_n434));
  INVX1    g335(.A(\op2[15] ), .Y(new_n435));
  NOR3X1   g336(.A(new_n410), .B(\op2[14] ), .C(new_n411), .Y(new_n436));
  AOI21X1  g337(.A0(new_n435), .A1(\op1[15] ), .B0(new_n436), .Y(new_n437));
  NAND2X1  g338(.A(new_n437), .B(new_n434), .Y(new_n438));
  AOI21X1  g339(.A0(new_n427), .A1(new_n432), .B0(new_n438), .Y(new_n439));
  AND2X1   g340(.A(new_n439), .B(new_n429), .Y(new_n440));
  XOR2X1   g341(.A(new_n440), .B(new_n426), .Y(new_n441));
  NAND2X1  g342(.A(new_n441), .B(new_n112), .Y(new_n442));
  XOR2X1   g343(.A(\op2[16] ), .B(\op1[16] ), .Y(new_n443));
  NAND4X1  g344(.A(new_n416), .B(new_n396), .C(new_n374), .D(new_n353), .Y(new_n444));
  OR2X1    g345(.A(new_n444), .B(new_n357), .Y(new_n445));
  AND2X1   g346(.A(new_n416), .B(new_n396), .Y(new_n446));
  AND2X1   g347(.A(new_n446), .B(new_n399), .Y(new_n447));
  NAND2X1  g348(.A(new_n416), .B(new_n396), .Y(new_n448));
  AOI21X1  g349(.A0(new_n416), .A1(new_n403), .B0(new_n419), .Y(new_n449));
  OAI21X1  g350(.A0(new_n448), .A1(new_n398), .B0(new_n449), .Y(new_n450));
  AOI21X1  g351(.A0(new_n447), .A1(new_n356), .B0(new_n450), .Y(new_n451));
  OAI21X1  g352(.A0(new_n445), .A1(new_n273), .B0(new_n451), .Y(new_n452));
  XOR2X1   g353(.A(new_n452), .B(new_n443), .Y(new_n453));
  AND2X1   g354(.A(\op2[16] ), .B(\op1[16] ), .Y(new_n454));
  INVX1    g355(.A(new_n454), .Y(new_n455));
  OR2X1    g356(.A(\op2[16] ), .B(\op1[16] ), .Y(new_n456));
  AOI22X1  g357(.A0(new_n443), .A1(new_n102), .B0(new_n456), .B1(new_n106), .Y(new_n457));
  OAI21X1  g358(.A0(new_n455), .A1(new_n111), .B0(new_n457), .Y(new_n458));
  AOI21X1  g359(.A0(new_n453), .A1(new_n108), .B0(new_n458), .Y(new_n459));
  AOI21X1  g360(.A0(new_n459), .A1(new_n442), .B0(new_n116), .Y(\result[16] ));
  XOR2X1   g361(.A(\op2[17] ), .B(\op1[17] ), .Y(new_n461));
  INVX1    g362(.A(\op1[16] ), .Y(new_n462));
  OR2X1    g363(.A(\op2[16] ), .B(new_n462), .Y(new_n463));
  OAI21X1  g364(.A0(new_n440), .A1(new_n426), .B0(new_n463), .Y(new_n464));
  XOR2X1   g365(.A(new_n464), .B(new_n461), .Y(new_n465));
  OR4X1    g366(.A(new_n465), .B(\opcode[2] ), .C(\opcode[1] ), .D(new_n104), .Y(new_n466));
  XOR2X1   g367(.A(\op2[17] ), .B(\op1[17] ), .Y(new_n467));
  INVX1    g368(.A(new_n467), .Y(new_n468));
  AOI21X1  g369(.A0(new_n452), .A1(new_n443), .B0(new_n454), .Y(new_n469));
  XOR2X1   g370(.A(new_n469), .B(new_n468), .Y(new_n470));
  AND2X1   g371(.A(\op2[17] ), .B(\op1[17] ), .Y(new_n471));
  INVX1    g372(.A(new_n471), .Y(new_n472));
  OR2X1    g373(.A(\op2[17] ), .B(\op1[17] ), .Y(new_n473));
  AOI22X1  g374(.A0(new_n467), .A1(new_n102), .B0(new_n473), .B1(new_n106), .Y(new_n474));
  OAI21X1  g375(.A0(new_n472), .A1(new_n111), .B0(new_n474), .Y(new_n475));
  AOI21X1  g376(.A0(new_n470), .A1(new_n108), .B0(new_n475), .Y(new_n476));
  AOI21X1  g377(.A0(new_n476), .A1(new_n466), .B0(new_n116), .Y(\result[17] ));
  XOR2X1   g378(.A(\op2[18] ), .B(\op1[18] ), .Y(new_n478));
  INVX1    g379(.A(new_n478), .Y(new_n479));
  INVX1    g380(.A(\op1[17] ), .Y(new_n480));
  OR2X1    g381(.A(\op2[17] ), .B(new_n480), .Y(new_n481));
  OAI21X1  g382(.A0(new_n461), .A1(new_n463), .B0(new_n481), .Y(new_n482));
  NOR3X1   g383(.A(new_n461), .B(new_n440), .C(new_n426), .Y(new_n483));
  OR2X1    g384(.A(new_n483), .B(new_n482), .Y(new_n484));
  XOR2X1   g385(.A(new_n484), .B(new_n479), .Y(new_n485));
  NAND2X1  g386(.A(new_n485), .B(new_n112), .Y(new_n486));
  XOR2X1   g387(.A(\op2[18] ), .B(\op1[18] ), .Y(new_n487));
  INVX1    g388(.A(new_n487), .Y(new_n488));
  AOI21X1  g389(.A0(new_n467), .A1(new_n454), .B0(new_n471), .Y(new_n489));
  INVX1    g390(.A(new_n489), .Y(new_n490));
  AND2X1   g391(.A(new_n467), .B(new_n443), .Y(new_n491));
  AOI21X1  g392(.A0(new_n491), .A1(new_n452), .B0(new_n490), .Y(new_n492));
  XOR2X1   g393(.A(new_n492), .B(new_n488), .Y(new_n493));
  NAND2X1  g394(.A(\op2[18] ), .B(\op1[18] ), .Y(new_n494));
  OR2X1    g395(.A(\op2[18] ), .B(\op1[18] ), .Y(new_n495));
  AOI22X1  g396(.A0(new_n487), .A1(new_n102), .B0(new_n495), .B1(new_n106), .Y(new_n496));
  OAI21X1  g397(.A0(new_n494), .A1(new_n111), .B0(new_n496), .Y(new_n497));
  AOI21X1  g398(.A0(new_n493), .A1(new_n108), .B0(new_n497), .Y(new_n498));
  AOI21X1  g399(.A0(new_n498), .A1(new_n486), .B0(new_n116), .Y(\result[18] ));
  XOR2X1   g400(.A(\op2[19] ), .B(\op1[19] ), .Y(new_n500));
  INVX1    g401(.A(\op1[18] ), .Y(new_n501));
  NOR2X1   g402(.A(\op2[18] ), .B(new_n501), .Y(new_n502));
  AOI21X1  g403(.A0(new_n484), .A1(new_n479), .B0(new_n502), .Y(new_n503));
  XOR2X1   g404(.A(new_n503), .B(new_n500), .Y(new_n504));
  NAND2X1  g405(.A(new_n504), .B(new_n112), .Y(new_n505));
  XOR2X1   g406(.A(\op2[19] ), .B(\op1[19] ), .Y(new_n506));
  OAI21X1  g407(.A0(new_n492), .A1(new_n488), .B0(new_n494), .Y(new_n507));
  XOR2X1   g408(.A(new_n507), .B(new_n506), .Y(new_n508));
  NAND2X1  g409(.A(\op2[19] ), .B(\op1[19] ), .Y(new_n509));
  OR2X1    g410(.A(\op2[19] ), .B(\op1[19] ), .Y(new_n510));
  AOI22X1  g411(.A0(new_n506), .A1(new_n102), .B0(new_n510), .B1(new_n106), .Y(new_n511));
  OAI21X1  g412(.A0(new_n509), .A1(new_n111), .B0(new_n511), .Y(new_n512));
  AOI21X1  g413(.A0(new_n508), .A1(new_n108), .B0(new_n512), .Y(new_n513));
  AOI21X1  g414(.A0(new_n513), .A1(new_n505), .B0(new_n116), .Y(\result[19] ));
  XOR2X1   g415(.A(\op2[20] ), .B(\op1[20] ), .Y(new_n515));
  NOR2X1   g416(.A(new_n500), .B(new_n478), .Y(new_n516));
  INVX1    g417(.A(\op1[19] ), .Y(new_n517));
  NOR2X1   g418(.A(\op2[19] ), .B(new_n517), .Y(new_n518));
  NOR3X1   g419(.A(new_n500), .B(\op2[18] ), .C(new_n501), .Y(new_n519));
  OR2X1    g420(.A(new_n519), .B(new_n518), .Y(new_n520));
  AOI21X1  g421(.A0(new_n516), .A1(new_n482), .B0(new_n520), .Y(new_n521));
  INVX1    g422(.A(new_n521), .Y(new_n522));
  NOR4X1   g423(.A(new_n500), .B(new_n478), .C(new_n461), .D(new_n426), .Y(new_n523));
  INVX1    g424(.A(new_n523), .Y(new_n524));
  AOI21X1  g425(.A0(new_n439), .A1(new_n429), .B0(new_n524), .Y(new_n525));
  OR2X1    g426(.A(new_n525), .B(new_n522), .Y(new_n526));
  XOR2X1   g427(.A(new_n526), .B(new_n515), .Y(new_n527));
  OR4X1    g428(.A(new_n527), .B(\opcode[2] ), .C(\opcode[1] ), .D(new_n104), .Y(new_n528));
  XOR2X1   g429(.A(\op2[20] ), .B(\op1[20] ), .Y(new_n529));
  INVX1    g430(.A(new_n529), .Y(new_n530));
  NAND2X1  g431(.A(new_n506), .B(new_n487), .Y(new_n531));
  NOR2X1   g432(.A(new_n531), .B(new_n489), .Y(new_n532));
  XOR2X1   g433(.A(\op2[19] ), .B(new_n517), .Y(new_n533));
  OAI21X1  g434(.A0(new_n533), .A1(new_n494), .B0(new_n509), .Y(new_n534));
  NOR2X1   g435(.A(new_n534), .B(new_n532), .Y(new_n535));
  INVX1    g436(.A(new_n535), .Y(new_n536));
  NAND4X1  g437(.A(new_n506), .B(new_n487), .C(new_n467), .D(new_n443), .Y(new_n537));
  INVX1    g438(.A(new_n537), .Y(new_n538));
  AOI21X1  g439(.A0(new_n538), .A1(new_n452), .B0(new_n536), .Y(new_n539));
  XOR2X1   g440(.A(new_n539), .B(new_n530), .Y(new_n540));
  NAND2X1  g441(.A(\op2[20] ), .B(\op1[20] ), .Y(new_n541));
  OR2X1    g442(.A(\op2[20] ), .B(\op1[20] ), .Y(new_n542));
  AOI22X1  g443(.A0(new_n529), .A1(new_n102), .B0(new_n542), .B1(new_n106), .Y(new_n543));
  OAI21X1  g444(.A0(new_n541), .A1(new_n111), .B0(new_n543), .Y(new_n544));
  AOI21X1  g445(.A0(new_n540), .A1(new_n108), .B0(new_n544), .Y(new_n545));
  AOI21X1  g446(.A0(new_n545), .A1(new_n528), .B0(new_n116), .Y(\result[20] ));
  XOR2X1   g447(.A(\op2[21] ), .B(\op1[21] ), .Y(new_n547));
  INVX1    g448(.A(new_n515), .Y(new_n548));
  INVX1    g449(.A(\op1[20] ), .Y(new_n549));
  NOR2X1   g450(.A(\op2[20] ), .B(new_n549), .Y(new_n550));
  AOI21X1  g451(.A0(new_n526), .A1(new_n548), .B0(new_n550), .Y(new_n551));
  XOR2X1   g452(.A(new_n551), .B(new_n547), .Y(new_n552));
  NAND2X1  g453(.A(new_n552), .B(new_n112), .Y(new_n553));
  XOR2X1   g454(.A(\op2[21] ), .B(\op1[21] ), .Y(new_n554));
  OAI21X1  g455(.A0(new_n539), .A1(new_n530), .B0(new_n541), .Y(new_n555));
  XOR2X1   g456(.A(new_n555), .B(new_n554), .Y(new_n556));
  NAND2X1  g457(.A(\op2[21] ), .B(\op1[21] ), .Y(new_n557));
  OR2X1    g458(.A(\op2[21] ), .B(\op1[21] ), .Y(new_n558));
  AOI22X1  g459(.A0(new_n554), .A1(new_n102), .B0(new_n558), .B1(new_n106), .Y(new_n559));
  OAI21X1  g460(.A0(new_n557), .A1(new_n111), .B0(new_n559), .Y(new_n560));
  AOI21X1  g461(.A0(new_n556), .A1(new_n108), .B0(new_n560), .Y(new_n561));
  AOI21X1  g462(.A0(new_n561), .A1(new_n553), .B0(new_n116), .Y(\result[21] ));
  XOR2X1   g463(.A(\op2[22] ), .B(\op1[22] ), .Y(new_n563));
  INVX1    g464(.A(\op1[21] ), .Y(new_n564));
  NOR2X1   g465(.A(\op2[21] ), .B(new_n564), .Y(new_n565));
  NOR3X1   g466(.A(new_n547), .B(\op2[20] ), .C(new_n549), .Y(new_n566));
  OR2X1    g467(.A(new_n566), .B(new_n565), .Y(new_n567));
  INVX1    g468(.A(new_n567), .Y(new_n568));
  NOR2X1   g469(.A(new_n547), .B(new_n515), .Y(new_n569));
  OAI21X1  g470(.A0(new_n525), .A1(new_n522), .B0(new_n569), .Y(new_n570));
  AND2X1   g471(.A(new_n570), .B(new_n568), .Y(new_n571));
  XOR2X1   g472(.A(new_n571), .B(new_n563), .Y(new_n572));
  NAND2X1  g473(.A(new_n572), .B(new_n112), .Y(new_n573));
  XOR2X1   g474(.A(\op2[22] ), .B(\op1[22] ), .Y(new_n574));
  NAND3X1  g475(.A(new_n554), .B(\op2[20] ), .C(\op1[20] ), .Y(new_n575));
  NAND2X1  g476(.A(new_n575), .B(new_n557), .Y(new_n576));
  INVX1    g477(.A(new_n576), .Y(new_n577));
  NAND2X1  g478(.A(new_n554), .B(new_n529), .Y(new_n578));
  OAI21X1  g479(.A0(new_n578), .A1(new_n539), .B0(new_n577), .Y(new_n579));
  XOR2X1   g480(.A(new_n579), .B(new_n574), .Y(new_n580));
  NAND2X1  g481(.A(\op2[22] ), .B(\op1[22] ), .Y(new_n581));
  OR2X1    g482(.A(\op2[22] ), .B(\op1[22] ), .Y(new_n582));
  AOI22X1  g483(.A0(new_n574), .A1(new_n102), .B0(new_n582), .B1(new_n106), .Y(new_n583));
  OAI21X1  g484(.A0(new_n581), .A1(new_n111), .B0(new_n583), .Y(new_n584));
  AOI21X1  g485(.A0(new_n580), .A1(new_n108), .B0(new_n584), .Y(new_n585));
  AOI21X1  g486(.A0(new_n585), .A1(new_n573), .B0(new_n116), .Y(\result[22] ));
  INVX1    g487(.A(\op1[23] ), .Y(new_n587));
  XOR2X1   g488(.A(\op2[23] ), .B(new_n587), .Y(new_n588));
  INVX1    g489(.A(\op2[22] ), .Y(new_n589));
  AND2X1   g490(.A(new_n589), .B(\op1[22] ), .Y(new_n590));
  AOI21X1  g491(.A0(new_n570), .A1(new_n568), .B0(new_n563), .Y(new_n591));
  OR2X1    g492(.A(new_n591), .B(new_n590), .Y(new_n592));
  XOR2X1   g493(.A(new_n592), .B(new_n588), .Y(new_n593));
  NAND2X1  g494(.A(new_n593), .B(new_n112), .Y(new_n594));
  XOR2X1   g495(.A(\op2[23] ), .B(new_n587), .Y(new_n595));
  INVX1    g496(.A(new_n581), .Y(new_n596));
  AOI21X1  g497(.A0(new_n579), .A1(new_n574), .B0(new_n596), .Y(new_n597));
  XOR2X1   g498(.A(new_n597), .B(new_n595), .Y(new_n598));
  NAND2X1  g499(.A(\op2[23] ), .B(\op1[23] ), .Y(new_n599));
  OR2X1    g500(.A(\op2[23] ), .B(\op1[23] ), .Y(new_n600));
  XOR2X1   g501(.A(\op2[23] ), .B(\op1[23] ), .Y(new_n601));
  AOI22X1  g502(.A0(new_n601), .A1(new_n102), .B0(new_n600), .B1(new_n106), .Y(new_n602));
  OAI21X1  g503(.A0(new_n599), .A1(new_n111), .B0(new_n602), .Y(new_n603));
  AOI21X1  g504(.A0(new_n598), .A1(new_n108), .B0(new_n603), .Y(new_n604));
  AOI21X1  g505(.A0(new_n604), .A1(new_n594), .B0(new_n116), .Y(\result[23] ));
  XOR2X1   g506(.A(\op2[24] ), .B(\op1[24] ), .Y(new_n606));
  INVX1    g507(.A(new_n606), .Y(new_n607));
  XOR2X1   g508(.A(\op2[23] ), .B(\op1[23] ), .Y(new_n608));
  NOR4X1   g509(.A(new_n608), .B(new_n563), .C(new_n547), .D(new_n515), .Y(new_n609));
  AND2X1   g510(.A(new_n609), .B(new_n523), .Y(new_n610));
  INVX1    g511(.A(new_n610), .Y(new_n611));
  AOI21X1  g512(.A0(new_n439), .A1(new_n429), .B0(new_n611), .Y(new_n612));
  INVX1    g513(.A(new_n609), .Y(new_n613));
  NOR2X1   g514(.A(new_n613), .B(new_n521), .Y(new_n614));
  OR2X1    g515(.A(new_n608), .B(new_n563), .Y(new_n615));
  NOR2X1   g516(.A(\op2[23] ), .B(new_n587), .Y(new_n616));
  AOI21X1  g517(.A0(new_n588), .A1(new_n590), .B0(new_n616), .Y(new_n617));
  OAI21X1  g518(.A0(new_n615), .A1(new_n568), .B0(new_n617), .Y(new_n618));
  OR2X1    g519(.A(new_n618), .B(new_n614), .Y(new_n619));
  OR2X1    g520(.A(new_n619), .B(new_n612), .Y(new_n620));
  XOR2X1   g521(.A(new_n620), .B(new_n607), .Y(new_n621));
  NAND2X1  g522(.A(new_n621), .B(new_n112), .Y(new_n622));
  XOR2X1   g523(.A(\op2[24] ), .B(\op1[24] ), .Y(new_n623));
  INVX1    g524(.A(new_n623), .Y(new_n624));
  NAND4X1  g525(.A(new_n601), .B(new_n574), .C(new_n554), .D(new_n529), .Y(new_n625));
  NOR2X1   g526(.A(new_n625), .B(new_n537), .Y(new_n626));
  AND2X1   g527(.A(new_n601), .B(new_n574), .Y(new_n627));
  OAI21X1  g528(.A0(new_n595), .A1(new_n581), .B0(new_n599), .Y(new_n628));
  AOI21X1  g529(.A0(new_n627), .A1(new_n576), .B0(new_n628), .Y(new_n629));
  OAI21X1  g530(.A0(new_n625), .A1(new_n535), .B0(new_n629), .Y(new_n630));
  AOI21X1  g531(.A0(new_n626), .A1(new_n452), .B0(new_n630), .Y(new_n631));
  XOR2X1   g532(.A(new_n631), .B(new_n624), .Y(new_n632));
  NAND2X1  g533(.A(\op2[24] ), .B(\op1[24] ), .Y(new_n633));
  OR2X1    g534(.A(\op2[24] ), .B(\op1[24] ), .Y(new_n634));
  AOI22X1  g535(.A0(new_n623), .A1(new_n102), .B0(new_n634), .B1(new_n106), .Y(new_n635));
  OAI21X1  g536(.A0(new_n633), .A1(new_n111), .B0(new_n635), .Y(new_n636));
  AOI21X1  g537(.A0(new_n632), .A1(new_n108), .B0(new_n636), .Y(new_n637));
  AOI21X1  g538(.A0(new_n637), .A1(new_n622), .B0(new_n116), .Y(\result[24] ));
  XOR2X1   g539(.A(\op2[25] ), .B(\op1[25] ), .Y(new_n639));
  INVX1    g540(.A(\op1[24] ), .Y(new_n640));
  NOR2X1   g541(.A(\op2[24] ), .B(new_n640), .Y(new_n641));
  AOI21X1  g542(.A0(new_n620), .A1(new_n607), .B0(new_n641), .Y(new_n642));
  XOR2X1   g543(.A(new_n642), .B(new_n639), .Y(new_n643));
  NAND2X1  g544(.A(new_n643), .B(new_n112), .Y(new_n644));
  XOR2X1   g545(.A(\op2[25] ), .B(\op1[25] ), .Y(new_n645));
  OAI21X1  g546(.A0(new_n631), .A1(new_n624), .B0(new_n633), .Y(new_n646));
  XOR2X1   g547(.A(new_n646), .B(new_n645), .Y(new_n647));
  NAND2X1  g548(.A(\op2[25] ), .B(\op1[25] ), .Y(new_n648));
  OR2X1    g549(.A(\op2[25] ), .B(\op1[25] ), .Y(new_n649));
  AOI22X1  g550(.A0(new_n645), .A1(new_n102), .B0(new_n649), .B1(new_n106), .Y(new_n650));
  OAI21X1  g551(.A0(new_n648), .A1(new_n111), .B0(new_n650), .Y(new_n651));
  AOI21X1  g552(.A0(new_n647), .A1(new_n108), .B0(new_n651), .Y(new_n652));
  AOI21X1  g553(.A0(new_n652), .A1(new_n644), .B0(new_n116), .Y(\result[25] ));
  XOR2X1   g554(.A(\op2[26] ), .B(\op1[26] ), .Y(new_n654));
  INVX1    g555(.A(\op1[25] ), .Y(new_n655));
  NOR2X1   g556(.A(\op2[25] ), .B(new_n655), .Y(new_n656));
  NOR3X1   g557(.A(new_n639), .B(\op2[24] ), .C(new_n640), .Y(new_n657));
  NOR2X1   g558(.A(new_n657), .B(new_n656), .Y(new_n658));
  NOR2X1   g559(.A(new_n639), .B(new_n606), .Y(new_n659));
  OAI21X1  g560(.A0(new_n619), .A1(new_n612), .B0(new_n659), .Y(new_n660));
  AND2X1   g561(.A(new_n660), .B(new_n658), .Y(new_n661));
  XOR2X1   g562(.A(new_n661), .B(new_n654), .Y(new_n662));
  NAND2X1  g563(.A(new_n662), .B(new_n112), .Y(new_n663));
  XOR2X1   g564(.A(\op2[26] ), .B(\op1[26] ), .Y(new_n664));
  NAND3X1  g565(.A(new_n645), .B(\op2[24] ), .C(\op1[24] ), .Y(new_n665));
  AND2X1   g566(.A(new_n665), .B(new_n648), .Y(new_n666));
  NAND2X1  g567(.A(new_n645), .B(new_n623), .Y(new_n667));
  OAI21X1  g568(.A0(new_n667), .A1(new_n631), .B0(new_n666), .Y(new_n668));
  XOR2X1   g569(.A(new_n668), .B(new_n664), .Y(new_n669));
  NAND2X1  g570(.A(\op2[26] ), .B(\op1[26] ), .Y(new_n670));
  OR2X1    g571(.A(\op2[26] ), .B(\op1[26] ), .Y(new_n671));
  AOI22X1  g572(.A0(new_n664), .A1(new_n102), .B0(new_n671), .B1(new_n106), .Y(new_n672));
  OAI21X1  g573(.A0(new_n670), .A1(new_n111), .B0(new_n672), .Y(new_n673));
  AOI21X1  g574(.A0(new_n669), .A1(new_n108), .B0(new_n673), .Y(new_n674));
  AOI21X1  g575(.A0(new_n674), .A1(new_n663), .B0(new_n116), .Y(\result[26] ));
  XOR2X1   g576(.A(\op2[27] ), .B(\op1[27] ), .Y(new_n676));
  INVX1    g577(.A(new_n676), .Y(new_n677));
  INVX1    g578(.A(\op2[26] ), .Y(new_n678));
  AND2X1   g579(.A(new_n678), .B(\op1[26] ), .Y(new_n679));
  AOI21X1  g580(.A0(new_n660), .A1(new_n658), .B0(new_n654), .Y(new_n680));
  OR2X1    g581(.A(new_n680), .B(new_n679), .Y(new_n681));
  XOR2X1   g582(.A(new_n681), .B(new_n677), .Y(new_n682));
  NAND2X1  g583(.A(new_n682), .B(new_n112), .Y(new_n683));
  INVX1    g584(.A(\op1[27] ), .Y(new_n684));
  XOR2X1   g585(.A(\op2[27] ), .B(new_n684), .Y(new_n685));
  INVX1    g586(.A(new_n670), .Y(new_n686));
  AOI21X1  g587(.A0(new_n668), .A1(new_n664), .B0(new_n686), .Y(new_n687));
  XOR2X1   g588(.A(new_n687), .B(new_n685), .Y(new_n688));
  NAND2X1  g589(.A(\op2[27] ), .B(\op1[27] ), .Y(new_n689));
  OR2X1    g590(.A(\op2[27] ), .B(\op1[27] ), .Y(new_n690));
  INVX1    g591(.A(new_n685), .Y(new_n691));
  AOI22X1  g592(.A0(new_n691), .A1(new_n102), .B0(new_n690), .B1(new_n106), .Y(new_n692));
  OAI21X1  g593(.A0(new_n689), .A1(new_n111), .B0(new_n692), .Y(new_n693));
  AOI21X1  g594(.A0(new_n688), .A1(new_n108), .B0(new_n693), .Y(new_n694));
  AOI21X1  g595(.A0(new_n694), .A1(new_n683), .B0(new_n116), .Y(\result[27] ));
  XOR2X1   g596(.A(\op2[28] ), .B(\op1[28] ), .Y(new_n696));
  NAND2X1  g597(.A(new_n427), .B(new_n348), .Y(new_n697));
  AOI21X1  g598(.A0(new_n262), .A1(new_n256), .B0(new_n697), .Y(new_n698));
  INVX1    g599(.A(new_n427), .Y(new_n699));
  AND2X1   g600(.A(new_n437), .B(new_n434), .Y(new_n700));
  OAI21X1  g601(.A0(new_n699), .A1(new_n347), .B0(new_n700), .Y(new_n701));
  OAI21X1  g602(.A0(new_n701), .A1(new_n698), .B0(new_n610), .Y(new_n702));
  NOR2X1   g603(.A(new_n618), .B(new_n614), .Y(new_n703));
  NOR4X1   g604(.A(new_n676), .B(new_n654), .C(new_n639), .D(new_n606), .Y(new_n704));
  INVX1    g605(.A(new_n704), .Y(new_n705));
  AOI21X1  g606(.A0(new_n703), .A1(new_n702), .B0(new_n705), .Y(new_n706));
  NOR3X1   g607(.A(new_n676), .B(new_n658), .C(new_n654), .Y(new_n707));
  NAND2X1  g608(.A(new_n677), .B(new_n679), .Y(new_n708));
  OAI21X1  g609(.A0(\op2[27] ), .A1(new_n684), .B0(new_n708), .Y(new_n709));
  NOR2X1   g610(.A(new_n709), .B(new_n707), .Y(new_n710));
  INVX1    g611(.A(new_n710), .Y(new_n711));
  OR2X1    g612(.A(new_n711), .B(new_n706), .Y(new_n712));
  XOR2X1   g613(.A(new_n712), .B(new_n696), .Y(new_n713));
  OR4X1    g614(.A(new_n713), .B(\opcode[2] ), .C(\opcode[1] ), .D(new_n104), .Y(new_n714));
  XOR2X1   g615(.A(\op2[28] ), .B(\op1[28] ), .Y(new_n715));
  NAND4X1  g616(.A(new_n691), .B(new_n664), .C(new_n645), .D(new_n623), .Y(new_n716));
  INVX1    g617(.A(new_n666), .Y(new_n717));
  AND2X1   g618(.A(new_n691), .B(new_n664), .Y(new_n718));
  OAI21X1  g619(.A0(new_n685), .A1(new_n670), .B0(new_n689), .Y(new_n719));
  AOI21X1  g620(.A0(new_n718), .A1(new_n717), .B0(new_n719), .Y(new_n720));
  OAI21X1  g621(.A0(new_n716), .A1(new_n631), .B0(new_n720), .Y(new_n721));
  XOR2X1   g622(.A(new_n721), .B(new_n715), .Y(new_n722));
  AND2X1   g623(.A(\op2[28] ), .B(\op1[28] ), .Y(new_n723));
  INVX1    g624(.A(new_n723), .Y(new_n724));
  OR2X1    g625(.A(\op2[28] ), .B(\op1[28] ), .Y(new_n725));
  AOI22X1  g626(.A0(new_n715), .A1(new_n102), .B0(new_n725), .B1(new_n106), .Y(new_n726));
  OAI21X1  g627(.A0(new_n724), .A1(new_n111), .B0(new_n726), .Y(new_n727));
  AOI21X1  g628(.A0(new_n722), .A1(new_n108), .B0(new_n727), .Y(new_n728));
  AOI21X1  g629(.A0(new_n728), .A1(new_n714), .B0(new_n116), .Y(\result[28] ));
  XOR2X1   g630(.A(\op2[29] ), .B(\op1[29] ), .Y(new_n730));
  INVX1    g631(.A(\op2[28] ), .Y(new_n731));
  AND2X1   g632(.A(new_n731), .B(\op1[28] ), .Y(new_n732));
  OAI21X1  g633(.A0(new_n619), .A1(new_n612), .B0(new_n704), .Y(new_n733));
  AOI21X1  g634(.A0(new_n710), .A1(new_n733), .B0(new_n696), .Y(new_n734));
  NOR2X1   g635(.A(new_n734), .B(new_n732), .Y(new_n735));
  XOR2X1   g636(.A(new_n735), .B(new_n730), .Y(new_n736));
  NAND2X1  g637(.A(new_n736), .B(new_n112), .Y(new_n737));
  XOR2X1   g638(.A(\op2[29] ), .B(\op1[29] ), .Y(new_n738));
  INVX1    g639(.A(new_n738), .Y(new_n739));
  AOI21X1  g640(.A0(new_n721), .A1(new_n715), .B0(new_n723), .Y(new_n740));
  XOR2X1   g641(.A(new_n740), .B(new_n739), .Y(new_n741));
  NAND2X1  g642(.A(\op2[29] ), .B(\op1[29] ), .Y(new_n742));
  OR2X1    g643(.A(\op2[29] ), .B(\op1[29] ), .Y(new_n743));
  AOI22X1  g644(.A0(new_n738), .A1(new_n102), .B0(new_n743), .B1(new_n106), .Y(new_n744));
  OAI21X1  g645(.A0(new_n742), .A1(new_n111), .B0(new_n744), .Y(new_n745));
  AOI21X1  g646(.A0(new_n741), .A1(new_n108), .B0(new_n745), .Y(new_n746));
  AOI21X1  g647(.A0(new_n746), .A1(new_n737), .B0(new_n116), .Y(\result[29] ));
  XOR2X1   g648(.A(\op2[30] ), .B(\op1[30] ), .Y(new_n748));
  NOR2X1   g649(.A(new_n730), .B(new_n696), .Y(new_n749));
  INVX1    g650(.A(new_n749), .Y(new_n750));
  AOI21X1  g651(.A0(new_n710), .A1(new_n733), .B0(new_n750), .Y(new_n751));
  INVX1    g652(.A(new_n730), .Y(new_n752));
  INVX1    g653(.A(\op1[29] ), .Y(new_n753));
  NOR2X1   g654(.A(\op2[29] ), .B(new_n753), .Y(new_n754));
  AOI21X1  g655(.A0(new_n752), .A1(new_n732), .B0(new_n754), .Y(new_n755));
  INVX1    g656(.A(new_n755), .Y(new_n756));
  NOR3X1   g657(.A(new_n756), .B(new_n751), .C(new_n748), .Y(new_n757));
  INVX1    g658(.A(new_n748), .Y(new_n758));
  OAI21X1  g659(.A0(new_n711), .A1(new_n706), .B0(new_n749), .Y(new_n759));
  AOI21X1  g660(.A0(new_n755), .A1(new_n759), .B0(new_n758), .Y(new_n760));
  OAI21X1  g661(.A0(new_n760), .A1(new_n757), .B0(new_n112), .Y(new_n761));
  INVX1    g662(.A(\op1[30] ), .Y(new_n762));
  XOR2X1   g663(.A(\op2[30] ), .B(new_n762), .Y(new_n763));
  AND2X1   g664(.A(new_n738), .B(new_n715), .Y(new_n764));
  OAI21X1  g665(.A0(new_n739), .A1(new_n724), .B0(new_n742), .Y(new_n765));
  AOI21X1  g666(.A0(new_n764), .A1(new_n721), .B0(new_n765), .Y(new_n766));
  XOR2X1   g667(.A(new_n766), .B(new_n763), .Y(new_n767));
  NAND2X1  g668(.A(\op2[30] ), .B(\op1[30] ), .Y(new_n768));
  OR2X1    g669(.A(\op2[30] ), .B(\op1[30] ), .Y(new_n769));
  NOR4X1   g670(.A(new_n763), .B(new_n101), .C(\opcode[1] ), .D(\opcode[0] ), .Y(new_n770));
  AOI21X1  g671(.A0(new_n769), .A1(new_n106), .B0(new_n770), .Y(new_n771));
  OAI21X1  g672(.A0(new_n768), .A1(new_n111), .B0(new_n771), .Y(new_n772));
  AOI21X1  g673(.A0(new_n767), .A1(new_n108), .B0(new_n772), .Y(new_n773));
  AOI21X1  g674(.A0(new_n773), .A1(new_n761), .B0(new_n116), .Y(\result[30] ));
  NOR2X1   g675(.A(\op2[30] ), .B(new_n762), .Y(new_n775));
  XOR2X1   g676(.A(\op2[31] ), .B(\op1[31] ), .Y(new_n776));
  AOI21X1  g677(.A0(new_n755), .A1(new_n759), .B0(new_n748), .Y(new_n777));
  NOR3X1   g678(.A(new_n777), .B(new_n776), .C(new_n775), .Y(new_n778));
  INVX1    g679(.A(new_n775), .Y(new_n779));
  INVX1    g680(.A(new_n776), .Y(new_n780));
  OAI21X1  g681(.A0(new_n756), .A1(new_n751), .B0(new_n758), .Y(new_n781));
  AOI21X1  g682(.A0(new_n781), .A1(new_n779), .B0(new_n780), .Y(new_n782));
  OAI21X1  g683(.A0(new_n782), .A1(new_n778), .B0(new_n112), .Y(new_n783));
  XOR2X1   g684(.A(\op2[31] ), .B(\op1[31] ), .Y(new_n784));
  OAI21X1  g685(.A0(new_n766), .A1(new_n763), .B0(new_n768), .Y(new_n785));
  XOR2X1   g686(.A(new_n785), .B(new_n784), .Y(new_n786));
  NAND2X1  g687(.A(\op2[31] ), .B(\op1[31] ), .Y(new_n787));
  OR2X1    g688(.A(\op2[31] ), .B(\op1[31] ), .Y(new_n788));
  AOI22X1  g689(.A0(new_n784), .A1(new_n102), .B0(new_n788), .B1(new_n106), .Y(new_n789));
  OAI21X1  g690(.A0(new_n787), .A1(new_n111), .B0(new_n789), .Y(new_n790));
  AOI21X1  g691(.A0(new_n786), .A1(new_n108), .B0(new_n790), .Y(new_n791));
  AOI21X1  g692(.A0(new_n791), .A1(new_n783), .B0(new_n116), .Y(\result[31] ));
endmodule


