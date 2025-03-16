// Benchmark "rbo_test" written by ABC on Wed Jun 26 15:22:18 2024

module rbo_test ( clock, 
    clk, reset_gen,
    CAL, CS, IS1, IS2, LE, R12, RBI, RESET, RPHI1, RPHI2, SBI, SEB, SPHI1,
    SPHI2, SR, \Aref[0] , \Aref[1] , \Aref[2] , \Aref[3] , \Aref[4] ,
    \Aref[5] , \Aref[6] , \Aref[7] , \Aref[8] , \Aref[9] , \Aref[10] ,
    \Aref[11] , \Aref[12] , \Aref[13] , \Aref[14] , \Aref[15] , \RG[0] ,
    \RG[1] , \RG[2] , \RG[3] , \RG[4] , \RG[5] , \RG[6] , \RG[7] , \RG[8] ,
    \RG[9] , \RG[10] , \RG[11] , \RG[12] , \RG[13] , \RG[14] , \RG[15] ,
    \Vana[0] , \Vana[1] , \Vana[2] , \Vana[3] , \Vana[4] , \Vana[5] ,
    \Vana[6] , \Vana[7] , \Vana[8] , \Vana[9] , \Vana[10] , \Vana[11] ,
    \Vana[12] , \Vana[13] , \Vana[14] , \Vana[15] , \Vthr[0] , \Vthr[1] ,
    \Vthr[2] , \Vthr[3] , \Vthr[4] , \Vthr[5] , \Vthr[6] , \Vthr[7] ,
    \Vthr[8] , \Vthr[9] , \Vthr[10] , \Vthr[11] , \Vthr[12] , \Vthr[13] ,
    \Vthr[14] , \Vthr[15]   );
  input  clock;
  input  clk, reset_gen;
  output CAL, CS, IS1, IS2, LE, R12, RBI, RESET, RPHI1, RPHI2, SBI, SEB,
    SPHI1, SPHI2, SR, \Aref[0] , \Aref[1] , \Aref[2] , \Aref[3] ,
    \Aref[4] , \Aref[5] , \Aref[6] , \Aref[7] , \Aref[8] , \Aref[9] ,
    \Aref[10] , \Aref[11] , \Aref[12] , \Aref[13] , \Aref[14] , \Aref[15] ,
    \RG[0] , \RG[1] , \RG[2] , \RG[3] , \RG[4] , \RG[5] , \RG[6] , \RG[7] ,
    \RG[8] , \RG[9] , \RG[10] , \RG[11] , \RG[12] , \RG[13] , \RG[14] ,
    \RG[15] , \Vana[0] , \Vana[1] , \Vana[2] , \Vana[3] , \Vana[4] ,
    \Vana[5] , \Vana[6] , \Vana[7] , \Vana[8] , \Vana[9] , \Vana[10] ,
    \Vana[11] , \Vana[12] , \Vana[13] , \Vana[14] , \Vana[15] , \Vthr[0] ,
    \Vthr[1] , \Vthr[2] , \Vthr[3] , \Vthr[4] , \Vthr[5] , \Vthr[6] ,
    \Vthr[7] , \Vthr[8] , \Vthr[9] , \Vthr[10] , \Vthr[11] , \Vthr[12] ,
    \Vthr[13] , \Vthr[14] , \Vthr[15] ;
  reg RBI, RPHI1, RPHI2, \counter[0] , \counter[1] , \counter[2] ,
    \counter[3] , \counter[4] , \counter[5] , \counter[6] , \counter[7] ,
    \counter[8] , \counter[9] , \counter[10] , \counter[11] ,
    \counter[12] , \counter[13] , \counter[14] , \counter[15] ,
    \counter[16] , \counter[17] , \counter[18] , \counter[19] ,
    \counter[20] , \counter[21] , \counter[22] , \counter[23] ,
    \counter[24] , \counter[25] , \counter[26] , \counter[27] ,
    \counter[28] , \counter[29] , \counter[30] , \counter[31] , \stage[0] ,
    \stage[1] , \stage[2] , \stage[3] , \stage[4] , \stage[5] , \stage[6] ,
    \stage[7] , \stage_iter[0] , \stage_iter[1] , \stage_iter[2] ,
    \stage_iter[3] , \stage_iter[4] , \stage_iter[5] , \stage_iter[6] ,
    \stage_iter[7] , \stage_iter[8] , \stage_iter[9] , \stage_iter[10] ,
    \stage_iter[11] , \stage_iter[12] , \stage_iter[13] , \stage_iter[14] ,
    \stage_iter[15] ;
  wire new_n335, new_n336_1, new_n337, new_n338, new_n339, new_n340,
    new_n341_1, new_n342, new_n343, new_n344, new_n345, new_n346_1,
    new_n347, new_n348, new_n349, new_n350, new_n351_1, new_n352, new_n353,
    new_n354, new_n355, new_n356_1, new_n357, new_n358, new_n359, new_n360,
    new_n361_1, new_n362, new_n363, new_n364, new_n365, new_n366_1,
    new_n368, new_n369, new_n370, new_n371_1, new_n372, new_n373, new_n374,
    new_n375, new_n376_1, new_n377, new_n378, new_n379, new_n380,
    new_n381_1, new_n382, new_n383, new_n384, new_n385, new_n386_1,
    new_n388, new_n389, new_n390, new_n391_1, new_n392, new_n393, new_n394,
    new_n395, new_n396_1, new_n397, new_n398, new_n399, new_n400,
    new_n401_1, new_n402, new_n403, new_n404, new_n406_1, new_n407,
    new_n408, new_n409, new_n410, new_n412, new_n413, new_n414, new_n415,
    new_n416_1, new_n417, new_n419, new_n420, new_n421_1, new_n422,
    new_n423, new_n425, new_n426_1, new_n427, new_n428, new_n429, new_n430,
    new_n432, new_n433, new_n434, new_n435, new_n436_1, new_n437, new_n439,
    new_n440, new_n441_1, new_n442, new_n443, new_n444, new_n445, new_n447,
    new_n448, new_n449, new_n450, new_n451_1, new_n452, new_n454, new_n455,
    new_n456, new_n457, new_n458, new_n460, new_n461, new_n462, new_n463,
    new_n464, new_n465, new_n466, new_n468, new_n469, new_n470, new_n471,
    new_n472, new_n473, new_n475, new_n476, new_n477, new_n478, new_n479,
    new_n480, new_n482, new_n483, new_n484, new_n485, new_n486, new_n488,
    new_n489, new_n490, new_n491, new_n492, new_n493, new_n494, new_n496,
    new_n497, new_n498, new_n499, new_n500, new_n502, new_n503, new_n504,
    new_n505, new_n506, new_n507, new_n509, new_n510, new_n511, new_n512,
    new_n513, new_n515, new_n516, new_n517, new_n518, new_n519, new_n520,
    new_n522, new_n523, new_n524, new_n525, new_n526, new_n527, new_n528,
    new_n530, new_n531, new_n532, new_n533, new_n534, new_n535, new_n537,
    new_n538, new_n539, new_n540, new_n541, new_n543, new_n544, new_n545,
    new_n546, new_n547, new_n548, new_n549, new_n551, new_n552, new_n553,
    new_n554, new_n555, new_n557, new_n558, new_n559, new_n560, new_n561,
    new_n562, new_n563, new_n565, new_n566, new_n567, new_n568, new_n569,
    new_n571, new_n572, new_n573, new_n574, new_n575, new_n576, new_n577,
    new_n579, new_n580, new_n581, new_n582, new_n583, new_n584, new_n586,
    new_n587, new_n588, new_n589, new_n590, new_n591, new_n592, new_n594,
    new_n595, new_n596, new_n597, new_n598, new_n599, new_n601, new_n602,
    new_n603, new_n604, new_n605, new_n606, new_n607, new_n609, new_n610,
    new_n611, new_n612, new_n613, new_n614, new_n616, new_n617, new_n618,
    new_n619, new_n620, new_n622, new_n623, new_n624, new_n625, new_n626,
    new_n627, new_n629, new_n630, new_n631, new_n632, new_n633, new_n634,
    new_n635, new_n636, new_n637, new_n638, new_n639, new_n640, new_n641,
    new_n642, new_n644, new_n645, new_n646, new_n647, new_n648, new_n649,
    new_n650, new_n651, new_n653, new_n654, new_n655, new_n656, new_n657,
    new_n658, new_n660, new_n661, new_n662, new_n663, new_n664, new_n665,
    new_n667, new_n668, new_n669, new_n670, new_n671, new_n672, new_n674,
    new_n675, new_n676, new_n677, new_n678, new_n679, new_n681, new_n682,
    new_n683, new_n684, new_n685, new_n686, new_n688, new_n689, new_n690,
    new_n691, new_n692, new_n693, new_n695, new_n696, new_n697, new_n698,
    new_n699, new_n700, new_n702, new_n703, new_n704, new_n705, new_n706,
    new_n707, new_n708, new_n709, new_n711, new_n712, new_n713, new_n714,
    new_n715, new_n716, new_n717, new_n718, new_n720, new_n721, new_n722,
    new_n723, new_n724, new_n725, new_n726, new_n727, new_n728, new_n730,
    new_n731, new_n732, new_n733, new_n734, new_n735, new_n736, new_n737,
    new_n738, new_n740, new_n741, new_n742, new_n743, new_n744, new_n745,
    new_n746, new_n747, new_n748, new_n749, new_n751, new_n752, new_n753,
    new_n754, new_n755, new_n756, new_n757, new_n758, new_n759, new_n761,
    new_n762, new_n763, new_n764, new_n765, new_n766, new_n767, new_n768,
    new_n770, new_n771, new_n772, new_n773, new_n774, new_n775, new_n776,
    new_n777, new_n778, new_n779, new_n781, new_n782, new_n783, new_n784,
    new_n785, new_n786, new_n787, new_n788, new_n789, new_n791, new_n792,
    new_n793, new_n794, new_n795, new_n796, new_n797, new_n798, new_n799,
    new_n801, new_n802, new_n803, new_n804, new_n805, new_n806, new_n807,
    new_n808, new_n809, new_n811, new_n812, new_n813, new_n814, new_n815,
    new_n816, new_n817, new_n818, new_n819, new_n820, new_n822, new_n823,
    new_n824, new_n825, new_n826, new_n827, new_n828, new_n829, new_n830,
    new_n832, new_n833, new_n834, new_n835, new_n836, new_n837, new_n838,
    new_n839, new_n840, new_n842, new_n843, new_n844, new_n845, new_n846,
    new_n847, new_n848, new_n849, new_n850, n164, n168, n172, n176, n181,
    n186, n191, n196, n201, n206, n211, n216, n221, n226, n231, n236, n241,
    n246, n251, n256, n261, n266, n271, n276, n281, n286, n291, n296, n301,
    n306, n311, n316, n321, n326, n331, n336, n341, n346, n351, n356, n361,
    n366, n371, n376, n381, n386, n391, n396, n401, n406, n411, n416, n421,
    n426, n431, n436, n441, n446, n451;
  INVX1    g000(.A(reset_gen), .Y(new_n335));
  OR4X1    g001(.A(\counter[23] ), .B(\counter[22] ), .C(\counter[21] ), .D(\counter[20] ), .Y(new_n336_1));
  OR4X1    g002(.A(\counter[19] ), .B(\counter[18] ), .C(\counter[17] ), .D(\counter[16] ), .Y(new_n337));
  OR4X1    g003(.A(\counter[31] ), .B(\counter[30] ), .C(\counter[29] ), .D(\counter[28] ), .Y(new_n338));
  OR4X1    g004(.A(\counter[27] ), .B(\counter[26] ), .C(\counter[25] ), .D(\counter[24] ), .Y(new_n339));
  OR4X1    g005(.A(new_n339), .B(new_n338), .C(new_n337), .D(new_n336_1), .Y(new_n340));
  OR4X1    g006(.A(\counter[15] ), .B(\counter[14] ), .C(\counter[13] ), .D(\counter[12] ), .Y(new_n341_1));
  OR4X1    g007(.A(\counter[11] ), .B(\counter[10] ), .C(\counter[9] ), .D(\counter[8] ), .Y(new_n342));
  OR2X1    g008(.A(new_n342), .B(new_n341_1), .Y(new_n343));
  INVX1    g009(.A(\counter[4] ), .Y(new_n344));
  OR4X1    g010(.A(\counter[7] ), .B(\counter[6] ), .C(\counter[5] ), .D(new_n344), .Y(new_n345));
  INVX1    g011(.A(\counter[3] ), .Y(new_n346_1));
  OR4X1    g012(.A(new_n346_1), .B(\counter[2] ), .C(\counter[1] ), .D(\counter[0] ), .Y(new_n347));
  NOR4X1   g013(.A(new_n347), .B(new_n345), .C(new_n343), .D(new_n340), .Y(new_n348));
  OR4X1    g014(.A(\counter[7] ), .B(\counter[6] ), .C(\counter[5] ), .D(\counter[4] ), .Y(new_n349));
  AND2X1   g015(.A(\counter[1] ), .B(\counter[0] ), .Y(new_n350));
  NAND3X1  g016(.A(new_n350), .B(new_n346_1), .C(\counter[2] ), .Y(new_n351_1));
  NOR4X1   g017(.A(new_n351_1), .B(new_n349), .C(new_n343), .D(new_n340), .Y(new_n352));
  OR2X1    g018(.A(new_n352), .B(RBI), .Y(new_n353));
  OR4X1    g019(.A(\counter[3] ), .B(\counter[2] ), .C(\counter[1] ), .D(\counter[0] ), .Y(new_n354));
  OR4X1    g020(.A(new_n354), .B(new_n345), .C(new_n343), .D(new_n340), .Y(new_n355));
  AOI21X1  g021(.A0(new_n355), .A1(new_n353), .B0(new_n348), .Y(new_n356_1));
  INVX1    g022(.A(\counter[2] ), .Y(new_n357));
  NAND3X1  g023(.A(new_n350), .B(\counter[3] ), .C(new_n357), .Y(new_n358));
  NOR4X1   g024(.A(new_n358), .B(new_n345), .C(new_n343), .D(new_n340), .Y(new_n359));
  NOR4X1   g025(.A(\stage[7] ), .B(\stage[6] ), .C(\stage[5] ), .D(\stage[4] ), .Y(new_n360));
  NOR4X1   g026(.A(\stage[3] ), .B(\stage[2] ), .C(\stage[1] ), .D(\stage[0] ), .Y(new_n361_1));
  AND2X1   g027(.A(new_n361_1), .B(new_n360), .Y(new_n362));
  INVX1    g028(.A(new_n362), .Y(new_n363));
  OR2X1    g029(.A(new_n363), .B(new_n359), .Y(new_n364));
  NAND2X1  g030(.A(new_n363), .B(RBI), .Y(new_n365));
  OAI21X1  g031(.A0(new_n364), .A1(new_n356_1), .B0(new_n365), .Y(new_n366_1));
  AND2X1   g032(.A(new_n366_1), .B(new_n335), .Y(n164));
  INVX1    g033(.A(RPHI1), .Y(new_n368));
  INVX1    g034(.A(\counter[0] ), .Y(new_n369));
  OR4X1    g035(.A(new_n346_1), .B(\counter[2] ), .C(\counter[1] ), .D(new_n369), .Y(new_n370));
  OR4X1    g036(.A(new_n370), .B(new_n345), .C(new_n343), .D(new_n340), .Y(new_n371_1));
  INVX1    g037(.A(\counter[1] ), .Y(new_n372));
  OR4X1    g038(.A(\counter[3] ), .B(new_n357), .C(new_n372), .D(\counter[0] ), .Y(new_n373));
  NOR4X1   g039(.A(new_n373), .B(new_n345), .C(new_n343), .D(new_n340), .Y(new_n374));
  OAI21X1  g040(.A0(new_n374), .A1(new_n368), .B0(new_n371_1), .Y(new_n375));
  OR4X1    g041(.A(new_n346_1), .B(\counter[2] ), .C(new_n372), .D(\counter[0] ), .Y(new_n376_1));
  OR4X1    g042(.A(new_n376_1), .B(new_n345), .C(new_n343), .D(new_n340), .Y(new_n377));
  AND2X1   g043(.A(new_n377), .B(new_n362), .Y(new_n378));
  AOI22X1  g044(.A0(new_n378), .A1(new_n375), .B0(new_n363), .B1(RPHI1), .Y(new_n379));
  OR4X1    g045(.A(\counter[3] ), .B(\counter[2] ), .C(\counter[1] ), .D(new_n369), .Y(new_n380));
  NOR4X1   g046(.A(new_n380), .B(new_n349), .C(new_n343), .D(new_n340), .Y(new_n381_1));
  INVX1    g047(.A(\stage[0] ), .Y(new_n382));
  INVX1    g048(.A(new_n360), .Y(new_n383));
  OR2X1    g049(.A(\stage[3] ), .B(\stage[2] ), .Y(new_n384));
  NOR4X1   g050(.A(new_n384), .B(new_n383), .C(\stage[1] ), .D(new_n382), .Y(new_n385));
  AOI21X1  g051(.A0(new_n385), .A1(new_n381_1), .B0(new_n379), .Y(new_n386_1));
  OR2X1    g052(.A(new_n386_1), .B(reset_gen), .Y(n168));
  OR4X1    g053(.A(\counter[3] ), .B(\counter[2] ), .C(new_n372), .D(\counter[0] ), .Y(new_n388));
  NOR4X1   g054(.A(new_n388), .B(new_n349), .C(new_n343), .D(new_n340), .Y(new_n389));
  INVX1    g055(.A(RPHI2), .Y(new_n390));
  OR4X1    g056(.A(new_n346_1), .B(new_n357), .C(\counter[1] ), .D(\counter[0] ), .Y(new_n391_1));
  OR4X1    g057(.A(new_n391_1), .B(new_n345), .C(new_n343), .D(new_n340), .Y(new_n392));
  OAI21X1  g058(.A0(new_n374), .A1(new_n390), .B0(new_n392), .Y(new_n393));
  OR4X1    g059(.A(new_n346_1), .B(new_n357), .C(\counter[1] ), .D(new_n369), .Y(new_n394));
  NOR4X1   g060(.A(new_n394), .B(new_n345), .C(new_n343), .D(new_n340), .Y(new_n395));
  NOR2X1   g061(.A(new_n395), .B(new_n363), .Y(new_n396_1));
  AOI22X1  g062(.A0(new_n396_1), .A1(new_n393), .B0(new_n363), .B1(RPHI2), .Y(new_n397));
  NOR2X1   g063(.A(new_n397), .B(new_n389), .Y(new_n398));
  NAND3X1  g064(.A(new_n350), .B(new_n346_1), .C(new_n357), .Y(new_n399));
  NOR4X1   g065(.A(new_n399), .B(new_n349), .C(new_n343), .D(new_n340), .Y(new_n400));
  INVX1    g066(.A(new_n400), .Y(new_n401_1));
  AND2X1   g067(.A(new_n401_1), .B(new_n385), .Y(new_n402));
  OAI21X1  g068(.A0(new_n398), .A1(new_n389), .B0(new_n402), .Y(new_n403));
  OR2X1    g069(.A(new_n397), .B(new_n385), .Y(new_n404));
  NAND3X1  g070(.A(new_n404), .B(new_n403), .C(new_n335), .Y(n172));
  NAND3X1  g071(.A(new_n401_1), .B(new_n385), .C(new_n369), .Y(new_n406_1));
  INVX1    g072(.A(new_n385), .Y(new_n407));
  NOR3X1   g073(.A(new_n395), .B(new_n363), .C(\counter[0] ), .Y(new_n408));
  AOI21X1  g074(.A0(new_n361_1), .A1(new_n360), .B0(new_n369), .Y(new_n409));
  OAI21X1  g075(.A0(new_n409), .A1(new_n408), .B0(new_n407), .Y(new_n410));
  AOI21X1  g076(.A0(new_n410), .A1(new_n406_1), .B0(reset_gen), .Y(n176));
  XOR2X1   g077(.A(\counter[1] ), .B(\counter[0] ), .Y(new_n412));
  NAND2X1  g078(.A(new_n412), .B(new_n385), .Y(new_n413));
  OR4X1    g079(.A(new_n394), .B(new_n345), .C(new_n343), .D(new_n340), .Y(new_n414));
  AND2X1   g080(.A(new_n412), .B(new_n362), .Y(new_n415));
  AOI22X1  g081(.A0(new_n415), .A1(new_n414), .B0(new_n363), .B1(\counter[1] ), .Y(new_n416_1));
  OAI22X1  g082(.A0(new_n416_1), .A1(new_n385), .B0(new_n413), .B1(new_n400), .Y(new_n417));
  AND2X1   g083(.A(new_n417), .B(new_n335), .Y(n181));
  XOR2X1   g084(.A(new_n350), .B(\counter[2] ), .Y(new_n419));
  NAND2X1  g085(.A(new_n419), .B(new_n385), .Y(new_n420));
  AND2X1   g086(.A(new_n419), .B(new_n362), .Y(new_n421_1));
  AOI22X1  g087(.A0(new_n421_1), .A1(new_n414), .B0(new_n363), .B1(\counter[2] ), .Y(new_n422));
  OAI22X1  g088(.A0(new_n422), .A1(new_n385), .B0(new_n420), .B1(new_n400), .Y(new_n423));
  AND2X1   g089(.A(new_n423), .B(new_n335), .Y(n186));
  NAND3X1  g090(.A(\counter[2] ), .B(\counter[1] ), .C(\counter[0] ), .Y(new_n425));
  XOR2X1   g091(.A(new_n425), .B(new_n346_1), .Y(new_n426_1));
  NAND2X1  g092(.A(new_n426_1), .B(new_n385), .Y(new_n427));
  AND2X1   g093(.A(new_n426_1), .B(new_n362), .Y(new_n428));
  AOI22X1  g094(.A0(new_n428), .A1(new_n414), .B0(new_n363), .B1(\counter[3] ), .Y(new_n429));
  OAI22X1  g095(.A0(new_n429), .A1(new_n385), .B0(new_n427), .B1(new_n400), .Y(new_n430));
  AND2X1   g096(.A(new_n430), .B(new_n335), .Y(n191));
  NAND4X1  g097(.A(\counter[3] ), .B(\counter[2] ), .C(\counter[1] ), .D(\counter[0] ), .Y(new_n432));
  XOR2X1   g098(.A(new_n432), .B(new_n344), .Y(new_n433));
  NAND2X1  g099(.A(new_n433), .B(new_n385), .Y(new_n434));
  AND2X1   g100(.A(new_n433), .B(new_n362), .Y(new_n435));
  AOI22X1  g101(.A0(new_n435), .A1(new_n414), .B0(new_n363), .B1(\counter[4] ), .Y(new_n436_1));
  OAI22X1  g102(.A0(new_n436_1), .A1(new_n385), .B0(new_n434), .B1(new_n400), .Y(new_n437));
  AND2X1   g103(.A(new_n437), .B(new_n335), .Y(n196));
  INVX1    g104(.A(new_n402), .Y(new_n439));
  INVX1    g105(.A(\counter[5] ), .Y(new_n440));
  NOR2X1   g106(.A(new_n432), .B(new_n344), .Y(new_n441_1));
  XOR2X1   g107(.A(new_n441_1), .B(new_n440), .Y(new_n442));
  NOR3X1   g108(.A(new_n442), .B(new_n395), .C(new_n363), .Y(new_n443));
  AOI21X1  g109(.A0(new_n363), .A1(\counter[5] ), .B0(new_n443), .Y(new_n444));
  OAI22X1  g110(.A0(new_n444), .A1(new_n385), .B0(new_n442), .B1(new_n439), .Y(new_n445));
  AND2X1   g111(.A(new_n445), .B(new_n335), .Y(n201));
  INVX1    g112(.A(\counter[6] ), .Y(new_n447));
  NOR3X1   g113(.A(new_n432), .B(new_n440), .C(new_n344), .Y(new_n448));
  XOR2X1   g114(.A(new_n448), .B(new_n447), .Y(new_n449));
  NOR3X1   g115(.A(new_n449), .B(new_n395), .C(new_n363), .Y(new_n450));
  AOI21X1  g116(.A0(new_n363), .A1(\counter[6] ), .B0(new_n450), .Y(new_n451_1));
  OAI22X1  g117(.A0(new_n451_1), .A1(new_n385), .B0(new_n449), .B1(new_n439), .Y(new_n452));
  AND2X1   g118(.A(new_n452), .B(new_n335), .Y(n206));
  OR4X1    g119(.A(new_n432), .B(new_n447), .C(new_n440), .D(new_n344), .Y(new_n454));
  XOR2X1   g120(.A(new_n454), .B(\counter[7] ), .Y(new_n455));
  NOR3X1   g121(.A(new_n455), .B(new_n395), .C(new_n363), .Y(new_n456));
  AOI21X1  g122(.A0(new_n363), .A1(\counter[7] ), .B0(new_n456), .Y(new_n457));
  OAI22X1  g123(.A0(new_n457), .A1(new_n385), .B0(new_n455), .B1(new_n439), .Y(new_n458));
  AND2X1   g124(.A(new_n458), .B(new_n335), .Y(n211));
  INVX1    g125(.A(\counter[8] ), .Y(new_n460));
  NAND4X1  g126(.A(\counter[7] ), .B(\counter[6] ), .C(\counter[5] ), .D(\counter[4] ), .Y(new_n461));
  NOR2X1   g127(.A(new_n461), .B(new_n432), .Y(new_n462));
  XOR2X1   g128(.A(new_n462), .B(new_n460), .Y(new_n463));
  NOR3X1   g129(.A(new_n463), .B(new_n395), .C(new_n363), .Y(new_n464));
  AOI21X1  g130(.A0(new_n363), .A1(\counter[8] ), .B0(new_n464), .Y(new_n465));
  OAI22X1  g131(.A0(new_n465), .A1(new_n385), .B0(new_n463), .B1(new_n439), .Y(new_n466));
  AND2X1   g132(.A(new_n466), .B(new_n335), .Y(n216));
  INVX1    g133(.A(\counter[9] ), .Y(new_n468));
  NOR3X1   g134(.A(new_n461), .B(new_n432), .C(new_n460), .Y(new_n469));
  XOR2X1   g135(.A(new_n469), .B(new_n468), .Y(new_n470));
  NOR3X1   g136(.A(new_n470), .B(new_n395), .C(new_n363), .Y(new_n471));
  AOI21X1  g137(.A0(new_n363), .A1(\counter[9] ), .B0(new_n471), .Y(new_n472));
  OAI22X1  g138(.A0(new_n472), .A1(new_n385), .B0(new_n470), .B1(new_n439), .Y(new_n473));
  AND2X1   g139(.A(new_n473), .B(new_n335), .Y(n221));
  INVX1    g140(.A(\counter[10] ), .Y(new_n475));
  NOR4X1   g141(.A(new_n461), .B(new_n432), .C(new_n468), .D(new_n460), .Y(new_n476));
  XOR2X1   g142(.A(new_n476), .B(new_n475), .Y(new_n477));
  NOR3X1   g143(.A(new_n477), .B(new_n395), .C(new_n363), .Y(new_n478));
  AOI21X1  g144(.A0(new_n363), .A1(\counter[10] ), .B0(new_n478), .Y(new_n479));
  OAI22X1  g145(.A0(new_n479), .A1(new_n385), .B0(new_n477), .B1(new_n439), .Y(new_n480));
  AND2X1   g146(.A(new_n480), .B(new_n335), .Y(n226));
  AND2X1   g147(.A(new_n476), .B(\counter[10] ), .Y(new_n482));
  XOR2X1   g148(.A(new_n482), .B(\counter[11] ), .Y(new_n483));
  NAND3X1  g149(.A(new_n483), .B(new_n401_1), .C(new_n385), .Y(new_n484));
  AOI22X1  g150(.A0(new_n483), .A1(new_n396_1), .B0(new_n363), .B1(\counter[11] ), .Y(new_n485));
  OAI21X1  g151(.A0(new_n485), .A1(new_n385), .B0(new_n484), .Y(new_n486));
  AND2X1   g152(.A(new_n486), .B(new_n335), .Y(n231));
  INVX1    g153(.A(\counter[12] ), .Y(new_n488));
  NAND4X1  g154(.A(\counter[11] ), .B(\counter[10] ), .C(\counter[9] ), .D(\counter[8] ), .Y(new_n489));
  NOR3X1   g155(.A(new_n489), .B(new_n461), .C(new_n432), .Y(new_n490));
  XOR2X1   g156(.A(new_n490), .B(new_n488), .Y(new_n491));
  NOR3X1   g157(.A(new_n491), .B(new_n395), .C(new_n363), .Y(new_n492));
  AOI21X1  g158(.A0(new_n363), .A1(\counter[12] ), .B0(new_n492), .Y(new_n493));
  OAI22X1  g159(.A0(new_n493), .A1(new_n385), .B0(new_n491), .B1(new_n439), .Y(new_n494));
  AND2X1   g160(.A(new_n494), .B(new_n335), .Y(n236));
  NOR4X1   g161(.A(new_n489), .B(new_n461), .C(new_n432), .D(new_n488), .Y(new_n496));
  XOR2X1   g162(.A(new_n496), .B(\counter[13] ), .Y(new_n497));
  NAND3X1  g163(.A(new_n497), .B(new_n401_1), .C(new_n385), .Y(new_n498));
  AOI22X1  g164(.A0(new_n497), .A1(new_n396_1), .B0(new_n363), .B1(\counter[13] ), .Y(new_n499));
  OAI21X1  g165(.A0(new_n499), .A1(new_n385), .B0(new_n498), .Y(new_n500));
  AND2X1   g166(.A(new_n500), .B(new_n335), .Y(n241));
  NAND2X1  g167(.A(\counter[13] ), .B(\counter[12] ), .Y(new_n502));
  NOR4X1   g168(.A(new_n502), .B(new_n489), .C(new_n461), .D(new_n432), .Y(new_n503));
  XOR2X1   g169(.A(new_n503), .B(\counter[14] ), .Y(new_n504));
  NAND3X1  g170(.A(new_n504), .B(new_n401_1), .C(new_n385), .Y(new_n505));
  AOI22X1  g171(.A0(new_n504), .A1(new_n396_1), .B0(new_n363), .B1(\counter[14] ), .Y(new_n506));
  OAI21X1  g172(.A0(new_n506), .A1(new_n385), .B0(new_n505), .Y(new_n507));
  AND2X1   g173(.A(new_n507), .B(new_n335), .Y(n246));
  NAND2X1  g174(.A(new_n503), .B(\counter[14] ), .Y(new_n509));
  XOR2X1   g175(.A(new_n509), .B(\counter[15] ), .Y(new_n510));
  NOR3X1   g176(.A(new_n510), .B(new_n395), .C(new_n363), .Y(new_n511));
  AOI21X1  g177(.A0(new_n363), .A1(\counter[15] ), .B0(new_n511), .Y(new_n512));
  OAI22X1  g178(.A0(new_n512), .A1(new_n385), .B0(new_n510), .B1(new_n439), .Y(new_n513));
  AND2X1   g179(.A(new_n513), .B(new_n335), .Y(n251));
  NAND4X1  g180(.A(\counter[15] ), .B(\counter[14] ), .C(\counter[13] ), .D(\counter[12] ), .Y(new_n515));
  OR4X1    g181(.A(new_n515), .B(new_n489), .C(new_n461), .D(new_n432), .Y(new_n516));
  XOR2X1   g182(.A(new_n516), .B(\counter[16] ), .Y(new_n517));
  NOR3X1   g183(.A(new_n517), .B(new_n395), .C(new_n363), .Y(new_n518));
  AOI21X1  g184(.A0(new_n363), .A1(\counter[16] ), .B0(new_n518), .Y(new_n519));
  OAI22X1  g185(.A0(new_n519), .A1(new_n385), .B0(new_n517), .B1(new_n439), .Y(new_n520));
  AND2X1   g186(.A(new_n520), .B(new_n335), .Y(n256));
  INVX1    g187(.A(\counter[17] ), .Y(new_n522));
  INVX1    g188(.A(\counter[16] ), .Y(new_n523));
  NOR2X1   g189(.A(new_n516), .B(new_n523), .Y(new_n524));
  XOR2X1   g190(.A(new_n524), .B(new_n522), .Y(new_n525));
  NOR3X1   g191(.A(new_n525), .B(new_n395), .C(new_n363), .Y(new_n526));
  AOI21X1  g192(.A0(new_n363), .A1(\counter[17] ), .B0(new_n526), .Y(new_n527));
  OAI22X1  g193(.A0(new_n527), .A1(new_n385), .B0(new_n525), .B1(new_n439), .Y(new_n528));
  AND2X1   g194(.A(new_n528), .B(new_n335), .Y(n261));
  INVX1    g195(.A(\counter[18] ), .Y(new_n530));
  NOR3X1   g196(.A(new_n516), .B(new_n522), .C(new_n523), .Y(new_n531));
  XOR2X1   g197(.A(new_n531), .B(new_n530), .Y(new_n532));
  NOR3X1   g198(.A(new_n532), .B(new_n395), .C(new_n363), .Y(new_n533));
  AOI21X1  g199(.A0(new_n363), .A1(\counter[18] ), .B0(new_n533), .Y(new_n534));
  OAI22X1  g200(.A0(new_n534), .A1(new_n385), .B0(new_n532), .B1(new_n439), .Y(new_n535));
  AND2X1   g201(.A(new_n535), .B(new_n335), .Y(n266));
  NOR4X1   g202(.A(new_n516), .B(new_n530), .C(new_n522), .D(new_n523), .Y(new_n537));
  XOR2X1   g203(.A(new_n537), .B(\counter[19] ), .Y(new_n538));
  NAND3X1  g204(.A(new_n538), .B(new_n401_1), .C(new_n385), .Y(new_n539));
  AOI22X1  g205(.A0(new_n538), .A1(new_n396_1), .B0(new_n363), .B1(\counter[19] ), .Y(new_n540));
  OAI21X1  g206(.A0(new_n540), .A1(new_n385), .B0(new_n539), .Y(new_n541));
  AND2X1   g207(.A(new_n541), .B(new_n335), .Y(n271));
  INVX1    g208(.A(\counter[20] ), .Y(new_n543));
  NAND4X1  g209(.A(\counter[19] ), .B(\counter[18] ), .C(\counter[17] ), .D(\counter[16] ), .Y(new_n544));
  NOR2X1   g210(.A(new_n544), .B(new_n516), .Y(new_n545));
  XOR2X1   g211(.A(new_n545), .B(new_n543), .Y(new_n546));
  NOR3X1   g212(.A(new_n546), .B(new_n395), .C(new_n363), .Y(new_n547));
  AOI21X1  g213(.A0(new_n363), .A1(\counter[20] ), .B0(new_n547), .Y(new_n548));
  OAI22X1  g214(.A0(new_n548), .A1(new_n385), .B0(new_n546), .B1(new_n439), .Y(new_n549));
  AND2X1   g215(.A(new_n549), .B(new_n335), .Y(n276));
  NOR3X1   g216(.A(new_n544), .B(new_n516), .C(new_n543), .Y(new_n551));
  XOR2X1   g217(.A(new_n551), .B(\counter[21] ), .Y(new_n552));
  NAND3X1  g218(.A(new_n552), .B(new_n401_1), .C(new_n385), .Y(new_n553));
  AOI22X1  g219(.A0(new_n552), .A1(new_n396_1), .B0(new_n363), .B1(\counter[21] ), .Y(new_n554));
  OAI21X1  g220(.A0(new_n554), .A1(new_n385), .B0(new_n553), .Y(new_n555));
  AND2X1   g221(.A(new_n555), .B(new_n335), .Y(n281));
  INVX1    g222(.A(\counter[22] ), .Y(new_n557));
  NAND2X1  g223(.A(\counter[21] ), .B(\counter[20] ), .Y(new_n558));
  NOR3X1   g224(.A(new_n558), .B(new_n544), .C(new_n516), .Y(new_n559));
  XOR2X1   g225(.A(new_n559), .B(new_n557), .Y(new_n560));
  NOR3X1   g226(.A(new_n560), .B(new_n395), .C(new_n363), .Y(new_n561));
  AOI21X1  g227(.A0(new_n363), .A1(\counter[22] ), .B0(new_n561), .Y(new_n562));
  OAI22X1  g228(.A0(new_n562), .A1(new_n385), .B0(new_n560), .B1(new_n439), .Y(new_n563));
  AND2X1   g229(.A(new_n563), .B(new_n335), .Y(n286));
  NOR4X1   g230(.A(new_n558), .B(new_n544), .C(new_n516), .D(new_n557), .Y(new_n565));
  XOR2X1   g231(.A(new_n565), .B(\counter[23] ), .Y(new_n566));
  NAND3X1  g232(.A(new_n566), .B(new_n401_1), .C(new_n385), .Y(new_n567));
  AOI22X1  g233(.A0(new_n566), .A1(new_n396_1), .B0(new_n363), .B1(\counter[23] ), .Y(new_n568));
  OAI21X1  g234(.A0(new_n568), .A1(new_n385), .B0(new_n567), .Y(new_n569));
  AND2X1   g235(.A(new_n569), .B(new_n335), .Y(n291));
  NAND4X1  g236(.A(\counter[23] ), .B(\counter[22] ), .C(\counter[21] ), .D(\counter[20] ), .Y(new_n571));
  OR2X1    g237(.A(new_n571), .B(new_n544), .Y(new_n572));
  OR2X1    g238(.A(new_n572), .B(new_n516), .Y(new_n573));
  XOR2X1   g239(.A(new_n573), .B(\counter[24] ), .Y(new_n574));
  NOR3X1   g240(.A(new_n574), .B(new_n395), .C(new_n363), .Y(new_n575));
  AOI21X1  g241(.A0(new_n363), .A1(\counter[24] ), .B0(new_n575), .Y(new_n576));
  OAI22X1  g242(.A0(new_n576), .A1(new_n385), .B0(new_n574), .B1(new_n439), .Y(new_n577));
  AND2X1   g243(.A(new_n577), .B(new_n335), .Y(n296));
  INVX1    g244(.A(\counter[24] ), .Y(new_n579));
  NOR3X1   g245(.A(new_n572), .B(new_n516), .C(new_n579), .Y(new_n580));
  XOR2X1   g246(.A(new_n580), .B(\counter[25] ), .Y(new_n581));
  NAND3X1  g247(.A(new_n581), .B(new_n401_1), .C(new_n385), .Y(new_n582));
  AOI22X1  g248(.A0(new_n581), .A1(new_n396_1), .B0(new_n363), .B1(\counter[25] ), .Y(new_n583));
  OAI21X1  g249(.A0(new_n583), .A1(new_n385), .B0(new_n582), .Y(new_n584));
  AND2X1   g250(.A(new_n584), .B(new_n335), .Y(n301));
  INVX1    g251(.A(\counter[26] ), .Y(new_n586));
  NAND2X1  g252(.A(\counter[25] ), .B(\counter[24] ), .Y(new_n587));
  NOR3X1   g253(.A(new_n587), .B(new_n572), .C(new_n516), .Y(new_n588));
  XOR2X1   g254(.A(new_n588), .B(new_n586), .Y(new_n589));
  NOR3X1   g255(.A(new_n589), .B(new_n395), .C(new_n363), .Y(new_n590));
  AOI21X1  g256(.A0(new_n363), .A1(\counter[26] ), .B0(new_n590), .Y(new_n591));
  OAI22X1  g257(.A0(new_n591), .A1(new_n385), .B0(new_n589), .B1(new_n439), .Y(new_n592));
  AND2X1   g258(.A(new_n592), .B(new_n335), .Y(n306));
  INVX1    g259(.A(\counter[27] ), .Y(new_n594));
  NOR4X1   g260(.A(new_n587), .B(new_n572), .C(new_n516), .D(new_n586), .Y(new_n595));
  XOR2X1   g261(.A(new_n595), .B(new_n594), .Y(new_n596));
  NOR3X1   g262(.A(new_n596), .B(new_n395), .C(new_n363), .Y(new_n597));
  AOI21X1  g263(.A0(new_n363), .A1(\counter[27] ), .B0(new_n597), .Y(new_n598));
  OAI22X1  g264(.A0(new_n598), .A1(new_n385), .B0(new_n596), .B1(new_n439), .Y(new_n599));
  AND2X1   g265(.A(new_n599), .B(new_n335), .Y(n311));
  INVX1    g266(.A(\counter[28] ), .Y(new_n601));
  NAND4X1  g267(.A(\counter[27] ), .B(\counter[26] ), .C(\counter[25] ), .D(\counter[24] ), .Y(new_n602));
  NOR3X1   g268(.A(new_n602), .B(new_n572), .C(new_n516), .Y(new_n603));
  XOR2X1   g269(.A(new_n603), .B(new_n601), .Y(new_n604));
  NOR3X1   g270(.A(new_n604), .B(new_n395), .C(new_n363), .Y(new_n605));
  AOI21X1  g271(.A0(new_n363), .A1(\counter[28] ), .B0(new_n605), .Y(new_n606));
  OAI22X1  g272(.A0(new_n606), .A1(new_n385), .B0(new_n604), .B1(new_n439), .Y(new_n607));
  AND2X1   g273(.A(new_n607), .B(new_n335), .Y(n316));
  INVX1    g274(.A(\counter[29] ), .Y(new_n609));
  NOR4X1   g275(.A(new_n602), .B(new_n572), .C(new_n516), .D(new_n601), .Y(new_n610));
  XOR2X1   g276(.A(new_n610), .B(new_n609), .Y(new_n611));
  NOR3X1   g277(.A(new_n611), .B(new_n395), .C(new_n363), .Y(new_n612));
  AOI21X1  g278(.A0(new_n363), .A1(\counter[29] ), .B0(new_n612), .Y(new_n613));
  OAI22X1  g279(.A0(new_n613), .A1(new_n385), .B0(new_n611), .B1(new_n439), .Y(new_n614));
  AND2X1   g280(.A(new_n614), .B(new_n335), .Y(n321));
  NOR4X1   g281(.A(new_n602), .B(new_n573), .C(new_n609), .D(new_n601), .Y(new_n616));
  XOR2X1   g282(.A(new_n616), .B(\counter[30] ), .Y(new_n617));
  NAND2X1  g283(.A(new_n617), .B(new_n402), .Y(new_n618));
  AOI22X1  g284(.A0(new_n617), .A1(new_n396_1), .B0(new_n363), .B1(\counter[30] ), .Y(new_n619));
  OAI21X1  g285(.A0(new_n619), .A1(new_n385), .B0(new_n618), .Y(new_n620));
  AND2X1   g286(.A(new_n620), .B(new_n335), .Y(n326));
  NAND4X1  g287(.A(new_n603), .B(\counter[30] ), .C(\counter[29] ), .D(\counter[28] ), .Y(new_n622));
  XOR2X1   g288(.A(new_n622), .B(\counter[31] ), .Y(new_n623));
  OR2X1    g289(.A(new_n623), .B(new_n439), .Y(new_n624));
  NOR3X1   g290(.A(new_n623), .B(new_n395), .C(new_n363), .Y(new_n625));
  AND2X1   g291(.A(new_n363), .B(\counter[31] ), .Y(new_n626));
  OAI21X1  g292(.A0(new_n626), .A1(new_n625), .B0(new_n407), .Y(new_n627));
  AOI21X1  g293(.A0(new_n627), .A1(new_n624), .B0(reset_gen), .Y(n331));
  OR4X1    g294(.A(\stage_iter[15] ), .B(\stage_iter[14] ), .C(\stage_iter[13] ), .D(\stage_iter[12] ), .Y(new_n629));
  OR4X1    g295(.A(\stage_iter[11] ), .B(\stage_iter[10] ), .C(\stage_iter[9] ), .D(\stage_iter[8] ), .Y(new_n630));
  OR4X1    g296(.A(\stage_iter[3] ), .B(\stage_iter[2] ), .C(\stage_iter[1] ), .D(\stage_iter[0] ), .Y(new_n631));
  OR4X1    g297(.A(\stage_iter[7] ), .B(\stage_iter[6] ), .C(\stage_iter[5] ), .D(\stage_iter[4] ), .Y(new_n632));
  NOR4X1   g298(.A(new_n632), .B(new_n631), .C(new_n630), .D(new_n629), .Y(new_n633));
  XOR2X1   g299(.A(new_n633), .B(\stage[0] ), .Y(new_n634));
  MX2X1    g300(.A(new_n634), .B(\stage[0] ), .S0(new_n414), .Y(new_n635));
  MX2X1    g301(.A(new_n635), .B(\stage[0] ), .S0(new_n363), .Y(new_n636));
  INVX1    g302(.A(\stage_iter[7] ), .Y(new_n637));
  OR4X1    g303(.A(new_n637), .B(\stage_iter[6] ), .C(\stage_iter[5] ), .D(\stage_iter[4] ), .Y(new_n638));
  NOR4X1   g304(.A(new_n638), .B(new_n631), .C(new_n630), .D(new_n629), .Y(new_n639));
  MX2X1    g305(.A(new_n636), .B(new_n382), .S0(new_n639), .Y(new_n640));
  MX2X1    g306(.A(new_n640), .B(new_n636), .S0(new_n401_1), .Y(new_n641));
  MX2X1    g307(.A(new_n641), .B(new_n636), .S0(new_n407), .Y(new_n642));
  AND2X1   g308(.A(new_n642), .B(new_n335), .Y(n336));
  INVX1    g309(.A(\stage[1] ), .Y(new_n644));
  OR4X1    g310(.A(new_n632), .B(new_n631), .C(new_n630), .D(new_n629), .Y(new_n645));
  OAI21X1  g311(.A0(new_n645), .A1(new_n414), .B0(\stage[1] ), .Y(new_n646));
  MX2X1    g312(.A(new_n646), .B(new_n644), .S0(new_n363), .Y(new_n647));
  OR2X1    g313(.A(new_n639), .B(new_n401_1), .Y(new_n648));
  AOI21X1  g314(.A0(new_n648), .A1(new_n400), .B0(new_n647), .Y(new_n649));
  NAND2X1  g315(.A(new_n649), .B(new_n385), .Y(new_n650));
  OR2X1    g316(.A(new_n647), .B(new_n385), .Y(new_n651));
  AOI21X1  g317(.A0(new_n651), .A1(new_n650), .B0(reset_gen), .Y(n341));
  INVX1    g318(.A(\stage[2] ), .Y(new_n653));
  OAI21X1  g319(.A0(new_n645), .A1(new_n414), .B0(\stage[2] ), .Y(new_n654));
  MX2X1    g320(.A(new_n654), .B(new_n653), .S0(new_n363), .Y(new_n655));
  AOI21X1  g321(.A0(new_n648), .A1(new_n400), .B0(new_n655), .Y(new_n656));
  NAND2X1  g322(.A(new_n656), .B(new_n385), .Y(new_n657));
  OR2X1    g323(.A(new_n655), .B(new_n385), .Y(new_n658));
  AOI21X1  g324(.A0(new_n658), .A1(new_n657), .B0(reset_gen), .Y(n346));
  INVX1    g325(.A(\stage[3] ), .Y(new_n660));
  OAI21X1  g326(.A0(new_n645), .A1(new_n414), .B0(\stage[3] ), .Y(new_n661));
  MX2X1    g327(.A(new_n661), .B(new_n660), .S0(new_n363), .Y(new_n662));
  AOI21X1  g328(.A0(new_n648), .A1(new_n400), .B0(new_n662), .Y(new_n663));
  NAND2X1  g329(.A(new_n663), .B(new_n385), .Y(new_n664));
  OR2X1    g330(.A(new_n662), .B(new_n385), .Y(new_n665));
  AOI21X1  g331(.A0(new_n665), .A1(new_n664), .B0(reset_gen), .Y(n351));
  INVX1    g332(.A(\stage[4] ), .Y(new_n667));
  OAI21X1  g333(.A0(new_n645), .A1(new_n414), .B0(\stage[4] ), .Y(new_n668));
  MX2X1    g334(.A(new_n668), .B(new_n667), .S0(new_n363), .Y(new_n669));
  AOI21X1  g335(.A0(new_n648), .A1(new_n400), .B0(new_n669), .Y(new_n670));
  NAND2X1  g336(.A(new_n670), .B(new_n385), .Y(new_n671));
  OR2X1    g337(.A(new_n669), .B(new_n385), .Y(new_n672));
  AOI21X1  g338(.A0(new_n672), .A1(new_n671), .B0(reset_gen), .Y(n356));
  INVX1    g339(.A(\stage[5] ), .Y(new_n674));
  OAI21X1  g340(.A0(new_n645), .A1(new_n414), .B0(\stage[5] ), .Y(new_n675));
  MX2X1    g341(.A(new_n675), .B(new_n674), .S0(new_n363), .Y(new_n676));
  AOI21X1  g342(.A0(new_n648), .A1(new_n400), .B0(new_n676), .Y(new_n677));
  NAND2X1  g343(.A(new_n677), .B(new_n385), .Y(new_n678));
  OR2X1    g344(.A(new_n676), .B(new_n385), .Y(new_n679));
  AOI21X1  g345(.A0(new_n679), .A1(new_n678), .B0(reset_gen), .Y(n361));
  INVX1    g346(.A(\stage[6] ), .Y(new_n681));
  OAI21X1  g347(.A0(new_n645), .A1(new_n414), .B0(\stage[6] ), .Y(new_n682));
  MX2X1    g348(.A(new_n682), .B(new_n681), .S0(new_n363), .Y(new_n683));
  AOI21X1  g349(.A0(new_n648), .A1(new_n400), .B0(new_n683), .Y(new_n684));
  NAND2X1  g350(.A(new_n684), .B(new_n385), .Y(new_n685));
  OR2X1    g351(.A(new_n683), .B(new_n385), .Y(new_n686));
  AOI21X1  g352(.A0(new_n686), .A1(new_n685), .B0(reset_gen), .Y(n366));
  INVX1    g353(.A(\stage[7] ), .Y(new_n688));
  OAI21X1  g354(.A0(new_n645), .A1(new_n414), .B0(\stage[7] ), .Y(new_n689));
  MX2X1    g355(.A(new_n689), .B(new_n688), .S0(new_n363), .Y(new_n690));
  AOI21X1  g356(.A0(new_n648), .A1(new_n400), .B0(new_n690), .Y(new_n691));
  NAND2X1  g357(.A(new_n691), .B(new_n385), .Y(new_n692));
  OR2X1    g358(.A(new_n690), .B(new_n385), .Y(new_n693));
  AOI21X1  g359(.A0(new_n693), .A1(new_n692), .B0(reset_gen), .Y(n371));
  NOR2X1   g360(.A(new_n633), .B(\stage_iter[0] ), .Y(new_n695));
  MX2X1    g361(.A(new_n695), .B(\stage_iter[0] ), .S0(new_n414), .Y(new_n696));
  MX2X1    g362(.A(new_n696), .B(\stage_iter[0] ), .S0(new_n363), .Y(new_n697));
  NOR2X1   g363(.A(new_n639), .B(\stage_iter[0] ), .Y(new_n698));
  MX2X1    g364(.A(new_n697), .B(new_n698), .S0(new_n400), .Y(new_n699));
  MX2X1    g365(.A(new_n699), .B(new_n697), .S0(new_n407), .Y(new_n700));
  AND2X1   g366(.A(new_n700), .B(new_n335), .Y(n376));
  XOR2X1   g367(.A(\stage_iter[1] ), .B(\stage_iter[0] ), .Y(new_n702));
  AND2X1   g368(.A(new_n702), .B(new_n645), .Y(new_n703));
  MX2X1    g369(.A(new_n703), .B(\stage_iter[1] ), .S0(new_n414), .Y(new_n704));
  MX2X1    g370(.A(new_n704), .B(\stage_iter[1] ), .S0(new_n363), .Y(new_n705));
  INVX1    g371(.A(new_n639), .Y(new_n706));
  AND2X1   g372(.A(new_n702), .B(new_n706), .Y(new_n707));
  MX2X1    g373(.A(new_n705), .B(new_n707), .S0(new_n400), .Y(new_n708));
  MX2X1    g374(.A(new_n708), .B(new_n705), .S0(new_n407), .Y(new_n709));
  AND2X1   g375(.A(new_n709), .B(new_n335), .Y(n381));
  AND2X1   g376(.A(\stage_iter[1] ), .B(\stage_iter[0] ), .Y(new_n711));
  XOR2X1   g377(.A(new_n711), .B(\stage_iter[2] ), .Y(new_n712));
  AND2X1   g378(.A(new_n712), .B(new_n645), .Y(new_n713));
  MX2X1    g379(.A(new_n713), .B(\stage_iter[2] ), .S0(new_n414), .Y(new_n714));
  MX2X1    g380(.A(new_n714), .B(\stage_iter[2] ), .S0(new_n363), .Y(new_n715));
  AND2X1   g381(.A(new_n712), .B(new_n706), .Y(new_n716));
  MX2X1    g382(.A(new_n715), .B(new_n716), .S0(new_n400), .Y(new_n717));
  MX2X1    g383(.A(new_n717), .B(new_n715), .S0(new_n407), .Y(new_n718));
  AND2X1   g384(.A(new_n718), .B(new_n335), .Y(n386));
  INVX1    g385(.A(\stage_iter[3] ), .Y(new_n720));
  NAND3X1  g386(.A(\stage_iter[2] ), .B(\stage_iter[1] ), .C(\stage_iter[0] ), .Y(new_n721));
  XOR2X1   g387(.A(new_n721), .B(new_n720), .Y(new_n722));
  AND2X1   g388(.A(new_n722), .B(new_n645), .Y(new_n723));
  MX2X1    g389(.A(new_n723), .B(\stage_iter[3] ), .S0(new_n414), .Y(new_n724));
  MX2X1    g390(.A(new_n724), .B(\stage_iter[3] ), .S0(new_n363), .Y(new_n725));
  AND2X1   g391(.A(new_n722), .B(new_n706), .Y(new_n726));
  MX2X1    g392(.A(new_n725), .B(new_n726), .S0(new_n400), .Y(new_n727));
  MX2X1    g393(.A(new_n727), .B(new_n725), .S0(new_n407), .Y(new_n728));
  AND2X1   g394(.A(new_n728), .B(new_n335), .Y(n391));
  INVX1    g395(.A(\stage_iter[4] ), .Y(new_n730));
  NAND4X1  g396(.A(\stage_iter[3] ), .B(\stage_iter[2] ), .C(\stage_iter[1] ), .D(\stage_iter[0] ), .Y(new_n731));
  XOR2X1   g397(.A(new_n731), .B(new_n730), .Y(new_n732));
  AND2X1   g398(.A(new_n732), .B(new_n645), .Y(new_n733));
  MX2X1    g399(.A(new_n733), .B(\stage_iter[4] ), .S0(new_n414), .Y(new_n734));
  MX2X1    g400(.A(new_n734), .B(\stage_iter[4] ), .S0(new_n363), .Y(new_n735));
  AND2X1   g401(.A(new_n732), .B(new_n706), .Y(new_n736));
  MX2X1    g402(.A(new_n735), .B(new_n736), .S0(new_n400), .Y(new_n737));
  MX2X1    g403(.A(new_n737), .B(new_n735), .S0(new_n407), .Y(new_n738));
  AND2X1   g404(.A(new_n738), .B(new_n335), .Y(n396));
  INVX1    g405(.A(\stage_iter[5] ), .Y(new_n740));
  NOR2X1   g406(.A(new_n731), .B(new_n730), .Y(new_n741));
  XOR2X1   g407(.A(new_n741), .B(new_n740), .Y(new_n742));
  OR2X1    g408(.A(new_n633), .B(new_n414), .Y(new_n743));
  OAI22X1  g409(.A0(new_n743), .A1(new_n742), .B0(new_n395), .B1(new_n740), .Y(new_n744));
  MX2X1    g410(.A(new_n744), .B(\stage_iter[5] ), .S0(new_n363), .Y(new_n745));
  AOI21X1  g411(.A0(new_n361_1), .A1(new_n360), .B0(new_n740), .Y(new_n746));
  AOI21X1  g412(.A0(new_n744), .A1(new_n362), .B0(new_n746), .Y(new_n747));
  OAI22X1  g413(.A0(new_n747), .A1(new_n400), .B0(new_n742), .B1(new_n648), .Y(new_n748));
  MX2X1    g414(.A(new_n748), .B(new_n745), .S0(new_n407), .Y(new_n749));
  AND2X1   g415(.A(new_n749), .B(new_n335), .Y(n401));
  INVX1    g416(.A(\stage_iter[6] ), .Y(new_n751));
  NOR3X1   g417(.A(new_n731), .B(new_n740), .C(new_n730), .Y(new_n752));
  XOR2X1   g418(.A(new_n752), .B(new_n751), .Y(new_n753));
  OAI22X1  g419(.A0(new_n753), .A1(new_n743), .B0(new_n395), .B1(new_n751), .Y(new_n754));
  MX2X1    g420(.A(new_n754), .B(\stage_iter[6] ), .S0(new_n363), .Y(new_n755));
  AOI21X1  g421(.A0(new_n361_1), .A1(new_n360), .B0(new_n751), .Y(new_n756));
  AOI21X1  g422(.A0(new_n754), .A1(new_n362), .B0(new_n756), .Y(new_n757));
  OAI22X1  g423(.A0(new_n757), .A1(new_n400), .B0(new_n753), .B1(new_n648), .Y(new_n758));
  MX2X1    g424(.A(new_n758), .B(new_n755), .S0(new_n407), .Y(new_n759));
  AND2X1   g425(.A(new_n759), .B(new_n335), .Y(n406));
  NOR4X1   g426(.A(new_n731), .B(new_n751), .C(new_n740), .D(new_n730), .Y(new_n761));
  XOR2X1   g427(.A(new_n761), .B(new_n637), .Y(new_n762));
  OAI22X1  g428(.A0(new_n762), .A1(new_n743), .B0(new_n395), .B1(new_n637), .Y(new_n763));
  MX2X1    g429(.A(new_n763), .B(\stage_iter[7] ), .S0(new_n363), .Y(new_n764));
  AOI21X1  g430(.A0(new_n361_1), .A1(new_n360), .B0(new_n637), .Y(new_n765));
  AOI21X1  g431(.A0(new_n763), .A1(new_n362), .B0(new_n765), .Y(new_n766));
  OAI22X1  g432(.A0(new_n766), .A1(new_n400), .B0(new_n762), .B1(new_n648), .Y(new_n767));
  MX2X1    g433(.A(new_n767), .B(new_n764), .S0(new_n407), .Y(new_n768));
  AND2X1   g434(.A(new_n768), .B(new_n335), .Y(n411));
  INVX1    g435(.A(\stage_iter[8] ), .Y(new_n770));
  NAND4X1  g436(.A(\stage_iter[7] ), .B(\stage_iter[6] ), .C(\stage_iter[5] ), .D(\stage_iter[4] ), .Y(new_n771));
  NOR2X1   g437(.A(new_n771), .B(new_n731), .Y(new_n772));
  XOR2X1   g438(.A(new_n772), .B(new_n770), .Y(new_n773));
  OAI22X1  g439(.A0(new_n773), .A1(new_n743), .B0(new_n395), .B1(new_n770), .Y(new_n774));
  MX2X1    g440(.A(new_n774), .B(\stage_iter[8] ), .S0(new_n363), .Y(new_n775));
  AOI21X1  g441(.A0(new_n361_1), .A1(new_n360), .B0(new_n770), .Y(new_n776));
  AOI21X1  g442(.A0(new_n774), .A1(new_n362), .B0(new_n776), .Y(new_n777));
  OAI22X1  g443(.A0(new_n777), .A1(new_n400), .B0(new_n773), .B1(new_n648), .Y(new_n778));
  MX2X1    g444(.A(new_n778), .B(new_n775), .S0(new_n407), .Y(new_n779));
  AND2X1   g445(.A(new_n779), .B(new_n335), .Y(n416));
  INVX1    g446(.A(\stage_iter[9] ), .Y(new_n781));
  NOR3X1   g447(.A(new_n771), .B(new_n731), .C(new_n770), .Y(new_n782));
  XOR2X1   g448(.A(new_n782), .B(new_n781), .Y(new_n783));
  OAI22X1  g449(.A0(new_n783), .A1(new_n743), .B0(new_n395), .B1(new_n781), .Y(new_n784));
  MX2X1    g450(.A(new_n784), .B(\stage_iter[9] ), .S0(new_n363), .Y(new_n785));
  AOI21X1  g451(.A0(new_n361_1), .A1(new_n360), .B0(new_n781), .Y(new_n786));
  AOI21X1  g452(.A0(new_n784), .A1(new_n362), .B0(new_n786), .Y(new_n787));
  OAI22X1  g453(.A0(new_n787), .A1(new_n400), .B0(new_n783), .B1(new_n648), .Y(new_n788));
  MX2X1    g454(.A(new_n788), .B(new_n785), .S0(new_n407), .Y(new_n789));
  AND2X1   g455(.A(new_n789), .B(new_n335), .Y(n421));
  INVX1    g456(.A(\stage_iter[10] ), .Y(new_n791));
  NOR4X1   g457(.A(new_n771), .B(new_n731), .C(new_n781), .D(new_n770), .Y(new_n792));
  XOR2X1   g458(.A(new_n792), .B(new_n791), .Y(new_n793));
  OAI22X1  g459(.A0(new_n793), .A1(new_n743), .B0(new_n395), .B1(new_n791), .Y(new_n794));
  MX2X1    g460(.A(new_n794), .B(\stage_iter[10] ), .S0(new_n363), .Y(new_n795));
  AOI21X1  g461(.A0(new_n361_1), .A1(new_n360), .B0(new_n791), .Y(new_n796));
  AOI21X1  g462(.A0(new_n794), .A1(new_n362), .B0(new_n796), .Y(new_n797));
  OAI22X1  g463(.A0(new_n797), .A1(new_n400), .B0(new_n793), .B1(new_n648), .Y(new_n798));
  MX2X1    g464(.A(new_n798), .B(new_n795), .S0(new_n407), .Y(new_n799));
  AND2X1   g465(.A(new_n799), .B(new_n335), .Y(n426));
  INVX1    g466(.A(\stage_iter[11] ), .Y(new_n801));
  AND2X1   g467(.A(new_n792), .B(\stage_iter[10] ), .Y(new_n802));
  XOR2X1   g468(.A(new_n802), .B(new_n801), .Y(new_n803));
  OAI22X1  g469(.A0(new_n803), .A1(new_n743), .B0(new_n395), .B1(new_n801), .Y(new_n804));
  MX2X1    g470(.A(new_n804), .B(\stage_iter[11] ), .S0(new_n363), .Y(new_n805));
  AOI21X1  g471(.A0(new_n361_1), .A1(new_n360), .B0(new_n801), .Y(new_n806));
  AOI21X1  g472(.A0(new_n804), .A1(new_n362), .B0(new_n806), .Y(new_n807));
  OAI22X1  g473(.A0(new_n807), .A1(new_n400), .B0(new_n803), .B1(new_n648), .Y(new_n808));
  MX2X1    g474(.A(new_n808), .B(new_n805), .S0(new_n407), .Y(new_n809));
  AND2X1   g475(.A(new_n809), .B(new_n335), .Y(n431));
  INVX1    g476(.A(\stage_iter[12] ), .Y(new_n811));
  NAND4X1  g477(.A(\stage_iter[11] ), .B(\stage_iter[10] ), .C(\stage_iter[9] ), .D(\stage_iter[8] ), .Y(new_n812));
  NOR3X1   g478(.A(new_n812), .B(new_n771), .C(new_n731), .Y(new_n813));
  XOR2X1   g479(.A(new_n813), .B(new_n811), .Y(new_n814));
  OAI22X1  g480(.A0(new_n814), .A1(new_n743), .B0(new_n395), .B1(new_n811), .Y(new_n815));
  MX2X1    g481(.A(new_n815), .B(\stage_iter[12] ), .S0(new_n363), .Y(new_n816));
  AOI21X1  g482(.A0(new_n361_1), .A1(new_n360), .B0(new_n811), .Y(new_n817));
  AOI21X1  g483(.A0(new_n815), .A1(new_n362), .B0(new_n817), .Y(new_n818));
  OAI22X1  g484(.A0(new_n818), .A1(new_n400), .B0(new_n814), .B1(new_n648), .Y(new_n819));
  MX2X1    g485(.A(new_n819), .B(new_n816), .S0(new_n407), .Y(new_n820));
  AND2X1   g486(.A(new_n820), .B(new_n335), .Y(n436));
  INVX1    g487(.A(\stage_iter[13] ), .Y(new_n822));
  NOR4X1   g488(.A(new_n812), .B(new_n771), .C(new_n731), .D(new_n811), .Y(new_n823));
  XOR2X1   g489(.A(new_n823), .B(new_n822), .Y(new_n824));
  OAI22X1  g490(.A0(new_n824), .A1(new_n743), .B0(new_n395), .B1(new_n822), .Y(new_n825));
  MX2X1    g491(.A(new_n825), .B(\stage_iter[13] ), .S0(new_n363), .Y(new_n826));
  AOI21X1  g492(.A0(new_n361_1), .A1(new_n360), .B0(new_n822), .Y(new_n827));
  AOI21X1  g493(.A0(new_n825), .A1(new_n362), .B0(new_n827), .Y(new_n828));
  OAI22X1  g494(.A0(new_n828), .A1(new_n400), .B0(new_n824), .B1(new_n648), .Y(new_n829));
  MX2X1    g495(.A(new_n829), .B(new_n826), .S0(new_n407), .Y(new_n830));
  AND2X1   g496(.A(new_n830), .B(new_n335), .Y(n441));
  INVX1    g497(.A(\stage_iter[14] ), .Y(new_n832));
  NAND3X1  g498(.A(new_n813), .B(\stage_iter[13] ), .C(\stage_iter[12] ), .Y(new_n833));
  XOR2X1   g499(.A(new_n833), .B(\stage_iter[14] ), .Y(new_n834));
  OAI22X1  g500(.A0(new_n834), .A1(new_n743), .B0(new_n395), .B1(new_n832), .Y(new_n835));
  MX2X1    g501(.A(new_n835), .B(\stage_iter[14] ), .S0(new_n363), .Y(new_n836));
  AOI21X1  g502(.A0(new_n361_1), .A1(new_n360), .B0(new_n832), .Y(new_n837));
  AOI21X1  g503(.A0(new_n835), .A1(new_n362), .B0(new_n837), .Y(new_n838));
  OAI22X1  g504(.A0(new_n838), .A1(new_n400), .B0(new_n834), .B1(new_n648), .Y(new_n839));
  MX2X1    g505(.A(new_n839), .B(new_n836), .S0(new_n407), .Y(new_n840));
  AND2X1   g506(.A(new_n840), .B(new_n335), .Y(n446));
  INVX1    g507(.A(\stage_iter[15] ), .Y(new_n842));
  NAND4X1  g508(.A(new_n813), .B(\stage_iter[14] ), .C(\stage_iter[13] ), .D(\stage_iter[12] ), .Y(new_n843));
  XOR2X1   g509(.A(new_n843), .B(\stage_iter[15] ), .Y(new_n844));
  OAI22X1  g510(.A0(new_n844), .A1(new_n743), .B0(new_n395), .B1(new_n842), .Y(new_n845));
  MX2X1    g511(.A(new_n845), .B(\stage_iter[15] ), .S0(new_n363), .Y(new_n846));
  AOI21X1  g512(.A0(new_n361_1), .A1(new_n360), .B0(new_n842), .Y(new_n847));
  AOI21X1  g513(.A0(new_n845), .A1(new_n362), .B0(new_n847), .Y(new_n848));
  OAI22X1  g514(.A0(new_n848), .A1(new_n400), .B0(new_n844), .B1(new_n648), .Y(new_n849));
  MX2X1    g515(.A(new_n849), .B(new_n846), .S0(new_n407), .Y(new_n850));
  AND2X1   g516(.A(new_n850), .B(new_n335), .Y(n451));
  ZERO     g517(.Y(CAL));
  ZERO     g518(.Y(CS));
  ONE      g519(.Y(IS1));
  ZERO     g520(.Y(IS2));
  ZERO     g521(.Y(LE));
  ONE      g522(.Y(R12));
  ONE      g523(.Y(RESET));
  ZERO     g524(.Y(SBI));
  ONE      g525(.Y(SEB));
  ZERO     g526(.Y(SPHI1));
  ZERO     g527(.Y(SPHI2));
  ONE      g528(.Y(SR));
  ONE      g529(.Y(\Aref[0] ));
  ONE      g530(.Y(\Aref[1] ));
  ZERO     g531(.Y(\Aref[2] ));
  ZERO     g532(.Y(\Aref[3] ));
  ONE      g533(.Y(\Aref[4] ));
  ONE      g534(.Y(\Aref[5] ));
  ZERO     g535(.Y(\Aref[6] ));
  ZERO     g536(.Y(\Aref[7] ));
  ZERO     g537(.Y(\Aref[8] ));
  ZERO     g538(.Y(\Aref[9] ));
  ZERO     g539(.Y(\Aref[10] ));
  ZERO     g540(.Y(\Aref[11] ));
  ZERO     g541(.Y(\Aref[12] ));
  ZERO     g542(.Y(\Aref[13] ));
  ZERO     g543(.Y(\Aref[14] ));
  ZERO     g544(.Y(\Aref[15] ));
  ONE      g545(.Y(\RG[0] ));
  ONE      g546(.Y(\RG[1] ));
  ZERO     g547(.Y(\RG[2] ));
  ZERO     g548(.Y(\RG[3] ));
  ONE      g549(.Y(\RG[4] ));
  ONE      g550(.Y(\RG[5] ));
  ZERO     g551(.Y(\RG[6] ));
  ZERO     g552(.Y(\RG[7] ));
  ZERO     g553(.Y(\RG[8] ));
  ZERO     g554(.Y(\RG[9] ));
  ZERO     g555(.Y(\RG[10] ));
  ZERO     g556(.Y(\RG[11] ));
  ZERO     g557(.Y(\RG[12] ));
  ZERO     g558(.Y(\RG[13] ));
  ZERO     g559(.Y(\RG[14] ));
  ZERO     g560(.Y(\RG[15] ));
  ZERO     g561(.Y(\Vana[0] ));
  ONE      g562(.Y(\Vana[1] ));
  ONE      g563(.Y(\Vana[2] ));
  ZERO     g564(.Y(\Vana[3] ));
  ZERO     g565(.Y(\Vana[4] ));
  ONE      g566(.Y(\Vana[5] ));
  ONE      g567(.Y(\Vana[6] ));
  ZERO     g568(.Y(\Vana[7] ));
  ZERO     g569(.Y(\Vana[8] ));
  ZERO     g570(.Y(\Vana[9] ));
  ZERO     g571(.Y(\Vana[10] ));
  ZERO     g572(.Y(\Vana[11] ));
  ZERO     g573(.Y(\Vana[12] ));
  ZERO     g574(.Y(\Vana[13] ));
  ZERO     g575(.Y(\Vana[14] ));
  ZERO     g576(.Y(\Vana[15] ));
  ONE      g577(.Y(\Vthr[0] ));
  ZERO     g578(.Y(\Vthr[1] ));
  ONE      g579(.Y(\Vthr[2] ));
  ZERO     g580(.Y(\Vthr[3] ));
  ZERO     g581(.Y(\Vthr[4] ));
  ONE      g582(.Y(\Vthr[5] ));
  ZERO     g583(.Y(\Vthr[6] ));
  ZERO     g584(.Y(\Vthr[7] ));
  ZERO     g585(.Y(\Vthr[8] ));
  ZERO     g586(.Y(\Vthr[9] ));
  ZERO     g587(.Y(\Vthr[10] ));
  ZERO     g588(.Y(\Vthr[11] ));
  ZERO     g589(.Y(\Vthr[12] ));
  ZERO     g590(.Y(\Vthr[13] ));
  ZERO     g591(.Y(\Vthr[14] ));
  ZERO     g592(.Y(\Vthr[15] ));
  always @ (posedge clock) begin
    RBI <= n164;
    RPHI1 <= n168;
    RPHI2 <= n172;
    \counter[0]  <= n176;
    \counter[1]  <= n181;
    \counter[2]  <= n186;
    \counter[3]  <= n191;
    \counter[4]  <= n196;
    \counter[5]  <= n201;
    \counter[6]  <= n206;
    \counter[7]  <= n211;
    \counter[8]  <= n216;
    \counter[9]  <= n221;
    \counter[10]  <= n226;
    \counter[11]  <= n231;
    \counter[12]  <= n236;
    \counter[13]  <= n241;
    \counter[14]  <= n246;
    \counter[15]  <= n251;
    \counter[16]  <= n256;
    \counter[17]  <= n261;
    \counter[18]  <= n266;
    \counter[19]  <= n271;
    \counter[20]  <= n276;
    \counter[21]  <= n281;
    \counter[22]  <= n286;
    \counter[23]  <= n291;
    \counter[24]  <= n296;
    \counter[25]  <= n301;
    \counter[26]  <= n306;
    \counter[27]  <= n311;
    \counter[28]  <= n316;
    \counter[29]  <= n321;
    \counter[30]  <= n326;
    \counter[31]  <= n331;
    \stage[0]  <= n336;
    \stage[1]  <= n341;
    \stage[2]  <= n346;
    \stage[3]  <= n351;
    \stage[4]  <= n356;
    \stage[5]  <= n361;
    \stage[6]  <= n366;
    \stage[7]  <= n371;
    \stage_iter[0]  <= n376;
    \stage_iter[1]  <= n381;
    \stage_iter[2]  <= n386;
    \stage_iter[3]  <= n391;
    \stage_iter[4]  <= n396;
    \stage_iter[5]  <= n401;
    \stage_iter[6]  <= n406;
    \stage_iter[7]  <= n411;
    \stage_iter[8]  <= n416;
    \stage_iter[9]  <= n421;
    \stage_iter[10]  <= n426;
    \stage_iter[11]  <= n431;
    \stage_iter[12]  <= n436;
    \stage_iter[13]  <= n441;
    \stage_iter[14]  <= n446;
    \stage_iter[15]  <= n451;
  end
endmodule


