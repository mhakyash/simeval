// Benchmark "popcount_pipeline" written by ABC on Wed Jun 26 15:22:16 2024

module popcount_pipeline ( clock, 
    \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] , \in[6] , \in[7] ,
    \in[8] , \in[9] , \in[10] , \in[11] , \in[12] , \in[13] , \in[14] ,
    \in[15] , \in[16] , \in[17] , \in[18] , \in[19] , \in[20] , \in[21] ,
    \in[22] , \in[23] , \in[24] , \in[25] , \in[26] , \in[27] , \in[28] ,
    \in[29] , \in[30] , \in[31] , \in[32] , \in[33] , \in[34] , \in[35] ,
    \in[36] , \in[37] , \in[38] , \in[39] , \in[40] , \in[41] , \in[42] ,
    \in[43] , \in[44] , \in[45] , \in[46] , \in[47] , \in[48] , \in[49] ,
    \in[50] , \in[51] , \in[52] , \in[53] , \in[54] , \in[55] , \in[56] ,
    \in[57] , \in[58] , \in[59] , \in[60] , \in[61] , \in[62] , \in[63] ,
    \in[64] , \in[65] , \in[66] , \in[67] , \in[68] , \in[69] , \in[70] ,
    \in[71] , \in[72] , \in[73] , \in[74] , \in[75] , \in[76] , \in[77] ,
    \in[78] , \in[79] , \in[80] , \in[81] , \in[82] , \in[83] , \in[84] ,
    \in[85] , \in[86] , \in[87] , \in[88] , \in[89] , \in[90] , \in[91] ,
    \in[92] , \in[93] , \in[94] , \in[95] , \in[96] , \in[97] , \in[98] ,
    \in[99] , \in[100] , \in[101] , \in[102] , \in[103] , \in[104] ,
    \in[105] , \in[106] , \in[107] , \in[108] , \in[109] , \in[110] ,
    \in[111] , \in[112] , \in[113] , \in[114] , \in[115] , \in[116] ,
    \in[117] , \in[118] , \in[119] , \in[120] , \in[121] , \in[122] ,
    \in[123] , \in[124] , \in[125] , \in[126] , \in[127] , \in[128] ,
    \in[129] , \in[130] , \in[131] , \in[132] , \in[133] , \in[134] ,
    \in[135] , \in[136] , \in[137] , \in[138] , \in[139] , \in[140] ,
    \in[141] , \in[142] , \in[143] , \in[144] , \in[145] , \in[146] ,
    \in[147] , \in[148] , \in[149] , \in[150] , \in[151] , \in[152] ,
    \in[153] , \in[154] , \in[155] , \in[156] , \in[157] , \in[158] ,
    \in[159] , \in[160] , \in[161] , \in[162] , \in[163] , \in[164] ,
    \in[165] , \in[166] , \in[167] , \in[168] , \in[169] , \in[170] ,
    \in[171] , \in[172] , \in[173] , \in[174] , \in[175] , \in[176] ,
    \in[177] , \in[178] , \in[179] , \in[180] , \in[181] , \in[182] ,
    \in[183] , \in[184] , \in[185] , \in[186] , \in[187] , \in[188] ,
    \in[189] , \in[190] , \in[191] , \in[192] , \in[193] , \in[194] ,
    \in[195] , \in[196] , \in[197] , \in[198] , \in[199] , \in[200] ,
    \in[201] , \in[202] , \in[203] , \in[204] , \in[205] , \in[206] ,
    \in[207] , \in[208] , \in[209] , \in[210] , \in[211] , \in[212] ,
    \in[213] , \in[214] , \in[215] , \in[216] , \in[217] , \in[218] ,
    \in[219] , \in[220] , \in[221] , \in[222] , \in[223] , \in[224] ,
    \in[225] , \in[226] , \in[227] , \in[228] , \in[229] , \in[230] ,
    \in[231] , \in[232] , \in[233] , \in[234] , \in[235] , \in[236] ,
    \in[237] , \in[238] , \in[239] , \in[240] , \in[241] , \in[242] ,
    \in[243] , \in[244] , \in[245] , \in[246] , \in[247] , \in[248] ,
    \in[249] , \in[250] , \in[251] , \in[252] , \in[253] , \in[254] ,
    \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7]   );
  input  clock;
  input  \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] , \in[6] ,
    \in[7] , \in[8] , \in[9] , \in[10] , \in[11] , \in[12] , \in[13] ,
    \in[14] , \in[15] , \in[16] , \in[17] , \in[18] , \in[19] , \in[20] ,
    \in[21] , \in[22] , \in[23] , \in[24] , \in[25] , \in[26] , \in[27] ,
    \in[28] , \in[29] , \in[30] , \in[31] , \in[32] , \in[33] , \in[34] ,
    \in[35] , \in[36] , \in[37] , \in[38] , \in[39] , \in[40] , \in[41] ,
    \in[42] , \in[43] , \in[44] , \in[45] , \in[46] , \in[47] , \in[48] ,
    \in[49] , \in[50] , \in[51] , \in[52] , \in[53] , \in[54] , \in[55] ,
    \in[56] , \in[57] , \in[58] , \in[59] , \in[60] , \in[61] , \in[62] ,
    \in[63] , \in[64] , \in[65] , \in[66] , \in[67] , \in[68] , \in[69] ,
    \in[70] , \in[71] , \in[72] , \in[73] , \in[74] , \in[75] , \in[76] ,
    \in[77] , \in[78] , \in[79] , \in[80] , \in[81] , \in[82] , \in[83] ,
    \in[84] , \in[85] , \in[86] , \in[87] , \in[88] , \in[89] , \in[90] ,
    \in[91] , \in[92] , \in[93] , \in[94] , \in[95] , \in[96] , \in[97] ,
    \in[98] , \in[99] , \in[100] , \in[101] , \in[102] , \in[103] ,
    \in[104] , \in[105] , \in[106] , \in[107] , \in[108] , \in[109] ,
    \in[110] , \in[111] , \in[112] , \in[113] , \in[114] , \in[115] ,
    \in[116] , \in[117] , \in[118] , \in[119] , \in[120] , \in[121] ,
    \in[122] , \in[123] , \in[124] , \in[125] , \in[126] , \in[127] ,
    \in[128] , \in[129] , \in[130] , \in[131] , \in[132] , \in[133] ,
    \in[134] , \in[135] , \in[136] , \in[137] , \in[138] , \in[139] ,
    \in[140] , \in[141] , \in[142] , \in[143] , \in[144] , \in[145] ,
    \in[146] , \in[147] , \in[148] , \in[149] , \in[150] , \in[151] ,
    \in[152] , \in[153] , \in[154] , \in[155] , \in[156] , \in[157] ,
    \in[158] , \in[159] , \in[160] , \in[161] , \in[162] , \in[163] ,
    \in[164] , \in[165] , \in[166] , \in[167] , \in[168] , \in[169] ,
    \in[170] , \in[171] , \in[172] , \in[173] , \in[174] , \in[175] ,
    \in[176] , \in[177] , \in[178] , \in[179] , \in[180] , \in[181] ,
    \in[182] , \in[183] , \in[184] , \in[185] , \in[186] , \in[187] ,
    \in[188] , \in[189] , \in[190] , \in[191] , \in[192] , \in[193] ,
    \in[194] , \in[195] , \in[196] , \in[197] , \in[198] , \in[199] ,
    \in[200] , \in[201] , \in[202] , \in[203] , \in[204] , \in[205] ,
    \in[206] , \in[207] , \in[208] , \in[209] , \in[210] , \in[211] ,
    \in[212] , \in[213] , \in[214] , \in[215] , \in[216] , \in[217] ,
    \in[218] , \in[219] , \in[220] , \in[221] , \in[222] , \in[223] ,
    \in[224] , \in[225] , \in[226] , \in[227] , \in[228] , \in[229] ,
    \in[230] , \in[231] , \in[232] , \in[233] , \in[234] , \in[235] ,
    \in[236] , \in[237] , \in[238] , \in[239] , \in[240] , \in[241] ,
    \in[242] , \in[243] , \in[244] , \in[245] , \in[246] , \in[247] ,
    \in[248] , \in[249] , \in[250] , \in[251] , \in[252] , \in[253] ,
    \in[254] ;
  output \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] ;
  reg \count_reg_final[0] , \count_reg_final[1] , \count_reg_final[2] ,
    \count_reg_final[3] , \count_reg_final[4] , \count_reg_final[5] ,
    \count_reg_final[6] , \count_reg_final[7] , \count_reg_next[0] ,
    \count_reg_next[1] , \count_reg_next[2] , \count_reg_next[3] ,
    \count_reg_next[4] , \count_reg_next[5] , \count_reg_next[6] ,
    \count_reg_next[7] , \count_reg[0] , \count_reg[1] , \count_reg[2] ,
    \count_reg[3] , \count_reg[4] , \count_reg[5] , \count_reg[6] ,
    \count_reg[7] ;
  wire new_n337, new_n338, new_n340, new_n341, new_n342, new_n343, new_n345,
    new_n346, new_n347, new_n348, new_n349, new_n350, new_n352, new_n353,
    new_n354, new_n355, new_n356, new_n358, new_n359, new_n360, new_n361,
    new_n363, new_n364, new_n365, new_n366, new_n367, new_n368, new_n369,
    new_n370, new_n372, new_n373, new_n374, new_n376, new_n377, new_n378,
    new_n379, new_n380, new_n381, new_n382, new_n383, new_n385, new_n386,
    new_n387, new_n388, new_n389, new_n390, new_n391, new_n392, new_n393,
    new_n394, new_n395, new_n396, new_n397, new_n398, new_n399, new_n400,
    new_n401, new_n402, new_n403, new_n404, new_n405, new_n406, new_n407,
    new_n408, new_n409, new_n411, new_n412, new_n413, new_n414, new_n415,
    new_n416, new_n417, new_n418, new_n419, new_n420, new_n421, new_n422,
    new_n423, new_n424, new_n425, new_n426, new_n427, new_n428, new_n429,
    new_n430, new_n431, new_n432, new_n433, new_n434, new_n435, new_n436,
    new_n437, new_n438, new_n439, new_n440, new_n441, new_n442, new_n443,
    new_n444, new_n445, new_n446, new_n447, new_n448, new_n449, new_n451,
    new_n452, new_n453, new_n454, new_n455, new_n456, new_n457, new_n458,
    new_n459, new_n460, new_n461, new_n462, new_n463, new_n464, new_n465,
    new_n466, new_n467, new_n468, new_n469, new_n470, new_n471, new_n472,
    new_n473, new_n474, new_n475, new_n476, new_n477, new_n478, new_n479,
    new_n480, new_n481, new_n482, new_n483, new_n484, new_n485, new_n486,
    new_n487, new_n488, new_n489, new_n490, new_n491, new_n492, new_n493,
    new_n495, new_n496, new_n497, new_n498, new_n499, new_n500, new_n501,
    new_n502, new_n503, new_n504, new_n505, new_n506, new_n507, new_n508,
    new_n509, new_n510, new_n511, new_n512, new_n513, new_n514, new_n515,
    new_n516, new_n517, new_n518, new_n519, new_n520, new_n521, new_n522,
    new_n523, new_n524, new_n525, new_n526, new_n527, new_n528_1, new_n529,
    new_n530, new_n531, new_n532, new_n533_1, new_n534, new_n535, new_n536,
    new_n537, new_n538_1, new_n539, new_n540, new_n541, new_n542,
    new_n543_1, new_n544, new_n545, new_n546, new_n547, new_n548_1,
    new_n549, new_n550, new_n551, new_n552, new_n553_1, new_n554, new_n556,
    new_n557, new_n558_1, new_n559, new_n560, new_n561, new_n562,
    new_n563_1, new_n564, new_n565, new_n566, new_n567, new_n568_1,
    new_n569, new_n570, new_n571, new_n572, new_n573_1, new_n574, new_n575,
    new_n576, new_n577, new_n578_1, new_n579, new_n580, new_n581, new_n582,
    new_n583_1, new_n584, new_n585, new_n586, new_n587, new_n588_1,
    new_n589, new_n590, new_n591, new_n592, new_n593_1, new_n595, new_n596,
    new_n597, new_n598_1, new_n599, new_n600, new_n601, new_n602,
    new_n603_1, new_n604, new_n605, new_n606, new_n607_1, new_n608,
    new_n609, new_n610, new_n611_1, new_n612, new_n613, new_n614,
    new_n615_1, new_n616, new_n617, new_n618, new_n619_1, new_n620,
    new_n621, new_n622, new_n623_1, new_n624, new_n625, new_n626,
    new_n627_1, new_n628, new_n629, new_n630, new_n631_1, new_n632,
    new_n633, new_n634, new_n635_1, new_n636, new_n637, new_n638, new_n639,
    new_n640, new_n641, new_n642, new_n643, new_n644, new_n645, new_n646,
    new_n647, new_n648, new_n649, new_n651, new_n652, new_n653, new_n654,
    new_n655, new_n656, new_n657, new_n658, new_n659, new_n660, new_n661,
    new_n662, new_n663, new_n664, new_n665, new_n666, new_n667, new_n668,
    new_n669, new_n670, new_n671, new_n672, new_n673, new_n674, new_n675,
    new_n676, new_n677, new_n678, new_n679, new_n680, n528, n533, n538,
    n543, n548, n553, n558, n563, n568, n573, n578, n583, n588, n593, n598,
    n603, n607, n611, n615, n619, n623, n627, n631, n635;
  XOR2X1   g000(.A(\count_reg[0] ), .B(\count_reg_next[0] ), .Y(n528));
  XOR2X1   g001(.A(\count_reg[1] ), .B(\count_reg_next[1] ), .Y(new_n337));
  AND2X1   g002(.A(\count_reg[0] ), .B(\count_reg_next[0] ), .Y(new_n338));
  XOR2X1   g003(.A(new_n338), .B(new_n337), .Y(n533));
  INVX1    g004(.A(\count_reg[2] ), .Y(new_n340));
  XOR2X1   g005(.A(new_n340), .B(\count_reg_next[2] ), .Y(new_n341));
  AND2X1   g006(.A(\count_reg[1] ), .B(\count_reg_next[1] ), .Y(new_n342));
  AOI21X1  g007(.A0(new_n338), .A1(new_n337), .B0(new_n342), .Y(new_n343));
  XOR2X1   g008(.A(new_n343), .B(new_n341), .Y(n538));
  INVX1    g009(.A(\count_reg[3] ), .Y(new_n345));
  XOR2X1   g010(.A(new_n345), .B(\count_reg_next[3] ), .Y(new_n346));
  INVX1    g011(.A(new_n346), .Y(new_n347));
  AND2X1   g012(.A(\count_reg[2] ), .B(\count_reg_next[2] ), .Y(new_n348));
  INVX1    g013(.A(new_n348), .Y(new_n349));
  OAI21X1  g014(.A0(new_n343), .A1(new_n341), .B0(new_n349), .Y(new_n350));
  XOR2X1   g015(.A(new_n350), .B(new_n347), .Y(n543));
  XOR2X1   g016(.A(\count_reg[4] ), .B(\count_reg_next[4] ), .Y(new_n352));
  NOR3X1   g017(.A(new_n346), .B(new_n343), .C(new_n341), .Y(new_n353));
  NAND2X1  g018(.A(\count_reg[3] ), .B(\count_reg_next[3] ), .Y(new_n354));
  OAI21X1  g019(.A0(new_n349), .A1(new_n346), .B0(new_n354), .Y(new_n355));
  OR2X1    g020(.A(new_n355), .B(new_n353), .Y(new_n356));
  XOR2X1   g021(.A(new_n356), .B(new_n352), .Y(n548));
  INVX1    g022(.A(\count_reg_next[5] ), .Y(new_n358));
  XOR2X1   g023(.A(\count_reg[5] ), .B(new_n358), .Y(new_n359));
  AND2X1   g024(.A(\count_reg[4] ), .B(\count_reg_next[4] ), .Y(new_n360));
  AOI21X1  g025(.A0(new_n356), .A1(new_n352), .B0(new_n360), .Y(new_n361));
  XOR2X1   g026(.A(new_n361), .B(new_n359), .Y(n553));
  INVX1    g027(.A(\count_reg[6] ), .Y(new_n363));
  XOR2X1   g028(.A(new_n363), .B(\count_reg_next[6] ), .Y(new_n364));
  INVX1    g029(.A(new_n359), .Y(new_n365));
  AND2X1   g030(.A(new_n365), .B(new_n352), .Y(new_n366));
  INVX1    g031(.A(\count_reg[5] ), .Y(new_n367));
  NAND2X1  g032(.A(new_n360), .B(new_n365), .Y(new_n368));
  OAI21X1  g033(.A0(new_n367), .A1(new_n358), .B0(new_n368), .Y(new_n369));
  AOI21X1  g034(.A0(new_n366), .A1(new_n356), .B0(new_n369), .Y(new_n370));
  XOR2X1   g035(.A(new_n370), .B(new_n364), .Y(n558));
  XOR2X1   g036(.A(\count_reg[7] ), .B(\count_reg_next[7] ), .Y(new_n372));
  NAND2X1  g037(.A(\count_reg[6] ), .B(\count_reg_next[6] ), .Y(new_n373));
  OAI21X1  g038(.A0(new_n370), .A1(new_n364), .B0(new_n373), .Y(new_n374));
  XOR2X1   g039(.A(new_n374), .B(new_n372), .Y(n563));
  INVX1    g040(.A(\count_reg[0] ), .Y(new_n376));
  INVX1    g041(.A(\in[16] ), .Y(new_n377));
  XOR2X1   g042(.A(\in[8] ), .B(\in[0] ), .Y(new_n378));
  XOR2X1   g043(.A(new_n378), .B(new_n377), .Y(new_n379));
  XOR2X1   g044(.A(new_n379), .B(\in[24] ), .Y(new_n380));
  XOR2X1   g045(.A(new_n380), .B(\in[32] ), .Y(new_n381));
  XOR2X1   g046(.A(new_n381), .B(\in[40] ), .Y(new_n382));
  XOR2X1   g047(.A(new_n382), .B(\in[48] ), .Y(new_n383));
  XOR2X1   g048(.A(new_n383), .B(new_n376), .Y(n568));
  INVX1    g049(.A(\count_reg[1] ), .Y(new_n385));
  XOR2X1   g050(.A(\in[9] ), .B(\in[1] ), .Y(new_n386));
  NAND2X1  g051(.A(\in[8] ), .B(\in[0] ), .Y(new_n387));
  XOR2X1   g052(.A(new_n387), .B(new_n386), .Y(new_n388));
  XOR2X1   g053(.A(new_n388), .B(\in[17] ), .Y(new_n389));
  AND2X1   g054(.A(new_n378), .B(\in[16] ), .Y(new_n390));
  XOR2X1   g055(.A(new_n390), .B(new_n389), .Y(new_n391));
  XOR2X1   g056(.A(new_n391), .B(\in[25] ), .Y(new_n392));
  INVX1    g057(.A(\in[24] ), .Y(new_n393));
  NOR2X1   g058(.A(new_n379), .B(new_n393), .Y(new_n394));
  XOR2X1   g059(.A(new_n394), .B(new_n392), .Y(new_n395));
  XOR2X1   g060(.A(new_n395), .B(\in[33] ), .Y(new_n396));
  INVX1    g061(.A(\in[32] ), .Y(new_n397));
  NOR2X1   g062(.A(new_n380), .B(new_n397), .Y(new_n398));
  XOR2X1   g063(.A(new_n398), .B(new_n396), .Y(new_n399));
  XOR2X1   g064(.A(new_n399), .B(\in[41] ), .Y(new_n400));
  INVX1    g065(.A(new_n381), .Y(new_n401));
  AND2X1   g066(.A(new_n401), .B(\in[40] ), .Y(new_n402));
  XOR2X1   g067(.A(new_n402), .B(new_n400), .Y(new_n403));
  XOR2X1   g068(.A(new_n403), .B(\in[49] ), .Y(new_n404));
  INVX1    g069(.A(\in[48] ), .Y(new_n405));
  NOR2X1   g070(.A(new_n382), .B(new_n405), .Y(new_n406));
  XOR2X1   g071(.A(new_n406), .B(new_n404), .Y(new_n407));
  XOR2X1   g072(.A(new_n407), .B(new_n385), .Y(new_n408));
  NOR2X1   g073(.A(new_n383), .B(new_n376), .Y(new_n409));
  XOR2X1   g074(.A(new_n409), .B(new_n408), .Y(n573));
  INVX1    g075(.A(\in[50] ), .Y(new_n411));
  XOR2X1   g076(.A(\in[10] ), .B(\in[2] ), .Y(new_n412));
  AND2X1   g077(.A(\in[8] ), .B(\in[0] ), .Y(new_n413));
  AND2X1   g078(.A(\in[9] ), .B(\in[1] ), .Y(new_n414));
  AOI21X1  g079(.A0(new_n413), .A1(new_n386), .B0(new_n414), .Y(new_n415));
  XOR2X1   g080(.A(new_n415), .B(new_n412), .Y(new_n416));
  XOR2X1   g081(.A(new_n416), .B(\in[18] ), .Y(new_n417));
  NAND2X1  g082(.A(new_n378), .B(\in[16] ), .Y(new_n418));
  INVX1    g083(.A(\in[17] ), .Y(new_n419));
  OR2X1    g084(.A(new_n388), .B(new_n419), .Y(new_n420));
  OAI21X1  g085(.A0(new_n418), .A1(new_n389), .B0(new_n420), .Y(new_n421));
  XOR2X1   g086(.A(new_n421), .B(new_n417), .Y(new_n422));
  XOR2X1   g087(.A(new_n422), .B(\in[26] ), .Y(new_n423));
  INVX1    g088(.A(new_n394), .Y(new_n424));
  INVX1    g089(.A(\in[25] ), .Y(new_n425));
  OR2X1    g090(.A(new_n391), .B(new_n425), .Y(new_n426));
  OAI21X1  g091(.A0(new_n424), .A1(new_n392), .B0(new_n426), .Y(new_n427));
  XOR2X1   g092(.A(new_n427), .B(new_n423), .Y(new_n428));
  XOR2X1   g093(.A(new_n428), .B(\in[34] ), .Y(new_n429));
  INVX1    g094(.A(new_n398), .Y(new_n430));
  INVX1    g095(.A(\in[33] ), .Y(new_n431));
  OR2X1    g096(.A(new_n395), .B(new_n431), .Y(new_n432));
  OAI21X1  g097(.A0(new_n430), .A1(new_n396), .B0(new_n432), .Y(new_n433));
  XOR2X1   g098(.A(new_n433), .B(new_n429), .Y(new_n434));
  XOR2X1   g099(.A(new_n434), .B(\in[42] ), .Y(new_n435));
  INVX1    g100(.A(new_n402), .Y(new_n436));
  INVX1    g101(.A(\in[41] ), .Y(new_n437));
  OR2X1    g102(.A(new_n399), .B(new_n437), .Y(new_n438));
  OAI21X1  g103(.A0(new_n436), .A1(new_n400), .B0(new_n438), .Y(new_n439));
  XOR2X1   g104(.A(new_n439), .B(new_n435), .Y(new_n440));
  XOR2X1   g105(.A(new_n440), .B(new_n411), .Y(new_n441));
  INVX1    g106(.A(\in[49] ), .Y(new_n442));
  XOR2X1   g107(.A(new_n403), .B(new_n442), .Y(new_n443));
  NOR2X1   g108(.A(new_n403), .B(new_n442), .Y(new_n444));
  AOI21X1  g109(.A0(new_n406), .A1(new_n443), .B0(new_n444), .Y(new_n445));
  XOR2X1   g110(.A(new_n445), .B(new_n441), .Y(new_n446));
  XOR2X1   g111(.A(new_n446), .B(\count_reg[2] ), .Y(new_n447));
  NOR2X1   g112(.A(new_n407), .B(new_n385), .Y(new_n448));
  AOI21X1  g113(.A0(new_n409), .A1(new_n408), .B0(new_n448), .Y(new_n449));
  XOR2X1   g114(.A(new_n449), .B(new_n447), .Y(n578));
  INVX1    g115(.A(\in[43] ), .Y(new_n451));
  INVX1    g116(.A(\in[35] ), .Y(new_n452));
  INVX1    g117(.A(\in[27] ), .Y(new_n453));
  INVX1    g118(.A(\in[19] ), .Y(new_n454));
  INVX1    g119(.A(\in[3] ), .Y(new_n455));
  XOR2X1   g120(.A(\in[11] ), .B(new_n455), .Y(new_n456));
  INVX1    g121(.A(\in[2] ), .Y(new_n457));
  XOR2X1   g122(.A(\in[10] ), .B(new_n457), .Y(new_n458));
  NAND2X1  g123(.A(\in[10] ), .B(\in[2] ), .Y(new_n459));
  OAI21X1  g124(.A0(new_n415), .A1(new_n458), .B0(new_n459), .Y(new_n460));
  XOR2X1   g125(.A(new_n460), .B(new_n456), .Y(new_n461));
  XOR2X1   g126(.A(new_n461), .B(new_n454), .Y(new_n462));
  INVX1    g127(.A(\in[18] ), .Y(new_n463));
  XOR2X1   g128(.A(new_n416), .B(new_n463), .Y(new_n464));
  NOR2X1   g129(.A(new_n416), .B(new_n463), .Y(new_n465));
  AOI21X1  g130(.A0(new_n421), .A1(new_n464), .B0(new_n465), .Y(new_n466));
  XOR2X1   g131(.A(new_n466), .B(new_n462), .Y(new_n467));
  XOR2X1   g132(.A(new_n467), .B(new_n453), .Y(new_n468));
  INVX1    g133(.A(\in[26] ), .Y(new_n469));
  XOR2X1   g134(.A(new_n422), .B(new_n469), .Y(new_n470));
  NOR2X1   g135(.A(new_n422), .B(new_n469), .Y(new_n471));
  AOI21X1  g136(.A0(new_n427), .A1(new_n470), .B0(new_n471), .Y(new_n472));
  XOR2X1   g137(.A(new_n472), .B(new_n468), .Y(new_n473));
  XOR2X1   g138(.A(new_n473), .B(new_n452), .Y(new_n474));
  INVX1    g139(.A(\in[34] ), .Y(new_n475));
  XOR2X1   g140(.A(new_n428), .B(new_n475), .Y(new_n476));
  NOR2X1   g141(.A(new_n428), .B(new_n475), .Y(new_n477));
  AOI21X1  g142(.A0(new_n433), .A1(new_n476), .B0(new_n477), .Y(new_n478));
  XOR2X1   g143(.A(new_n478), .B(new_n474), .Y(new_n479));
  XOR2X1   g144(.A(new_n479), .B(new_n451), .Y(new_n480));
  INVX1    g145(.A(\in[42] ), .Y(new_n481));
  XOR2X1   g146(.A(new_n434), .B(new_n481), .Y(new_n482));
  NOR2X1   g147(.A(new_n434), .B(new_n481), .Y(new_n483));
  AOI21X1  g148(.A0(new_n439), .A1(new_n482), .B0(new_n483), .Y(new_n484));
  XOR2X1   g149(.A(new_n484), .B(new_n480), .Y(new_n485));
  XOR2X1   g150(.A(new_n485), .B(\in[51] ), .Y(new_n486));
  XOR2X1   g151(.A(new_n440), .B(\in[50] ), .Y(new_n487));
  OR2X1    g152(.A(new_n440), .B(new_n411), .Y(new_n488));
  OAI21X1  g153(.A0(new_n445), .A1(new_n487), .B0(new_n488), .Y(new_n489));
  XOR2X1   g154(.A(new_n489), .B(new_n486), .Y(new_n490));
  XOR2X1   g155(.A(new_n490), .B(new_n345), .Y(new_n491));
  OR2X1    g156(.A(new_n446), .B(new_n340), .Y(new_n492));
  OAI21X1  g157(.A0(new_n449), .A1(new_n447), .B0(new_n492), .Y(new_n493));
  XOR2X1   g158(.A(new_n493), .B(new_n491), .Y(n583));
  INVX1    g159(.A(\in[52] ), .Y(new_n495));
  INVX1    g160(.A(\in[44] ), .Y(new_n496));
  INVX1    g161(.A(\in[36] ), .Y(new_n497));
  INVX1    g162(.A(\in[28] ), .Y(new_n498));
  INVX1    g163(.A(\in[20] ), .Y(new_n499));
  XOR2X1   g164(.A(\in[12] ), .B(\in[4] ), .Y(new_n500));
  INVX1    g165(.A(new_n500), .Y(new_n501));
  NOR3X1   g166(.A(new_n456), .B(new_n415), .C(new_n458), .Y(new_n502));
  NAND2X1  g167(.A(\in[11] ), .B(\in[3] ), .Y(new_n503));
  OAI21X1  g168(.A0(new_n459), .A1(new_n456), .B0(new_n503), .Y(new_n504));
  OR2X1    g169(.A(new_n504), .B(new_n502), .Y(new_n505));
  XOR2X1   g170(.A(new_n505), .B(new_n501), .Y(new_n506));
  XOR2X1   g171(.A(new_n506), .B(new_n499), .Y(new_n507));
  XOR2X1   g172(.A(new_n461), .B(\in[19] ), .Y(new_n508));
  NAND2X1  g173(.A(new_n421), .B(new_n464), .Y(new_n509));
  OR2X1    g174(.A(new_n509), .B(new_n508), .Y(new_n510));
  NOR2X1   g175(.A(new_n461), .B(new_n454), .Y(new_n511));
  AOI21X1  g176(.A0(new_n465), .A1(new_n462), .B0(new_n511), .Y(new_n512));
  AND2X1   g177(.A(new_n512), .B(new_n510), .Y(new_n513));
  XOR2X1   g178(.A(new_n513), .B(new_n507), .Y(new_n514));
  XOR2X1   g179(.A(new_n514), .B(new_n498), .Y(new_n515));
  AND2X1   g180(.A(new_n427), .B(new_n470), .Y(new_n516));
  AND2X1   g181(.A(new_n516), .B(new_n468), .Y(new_n517));
  XOR2X1   g182(.A(new_n467), .B(\in[27] ), .Y(new_n518));
  OR2X1    g183(.A(new_n422), .B(new_n469), .Y(new_n519));
  OR2X1    g184(.A(new_n467), .B(new_n453), .Y(new_n520));
  OAI21X1  g185(.A0(new_n519), .A1(new_n518), .B0(new_n520), .Y(new_n521));
  NOR2X1   g186(.A(new_n521), .B(new_n517), .Y(new_n522));
  XOR2X1   g187(.A(new_n522), .B(new_n515), .Y(new_n523));
  XOR2X1   g188(.A(new_n523), .B(new_n497), .Y(new_n524));
  AND2X1   g189(.A(new_n433), .B(new_n476), .Y(new_n525));
  AND2X1   g190(.A(new_n525), .B(new_n474), .Y(new_n526));
  XOR2X1   g191(.A(new_n473), .B(\in[35] ), .Y(new_n527));
  OR2X1    g192(.A(new_n428), .B(new_n475), .Y(new_n528_1));
  OR2X1    g193(.A(new_n473), .B(new_n452), .Y(new_n529));
  OAI21X1  g194(.A0(new_n528_1), .A1(new_n527), .B0(new_n529), .Y(new_n530));
  NOR2X1   g195(.A(new_n530), .B(new_n526), .Y(new_n531));
  XOR2X1   g196(.A(new_n531), .B(new_n524), .Y(new_n532));
  XOR2X1   g197(.A(new_n532), .B(new_n496), .Y(new_n533_1));
  AND2X1   g198(.A(new_n439), .B(new_n482), .Y(new_n534));
  AND2X1   g199(.A(new_n534), .B(new_n480), .Y(new_n535));
  XOR2X1   g200(.A(new_n479), .B(\in[43] ), .Y(new_n536));
  OR2X1    g201(.A(new_n434), .B(new_n481), .Y(new_n537));
  OR2X1    g202(.A(new_n479), .B(new_n451), .Y(new_n538_1));
  OAI21X1  g203(.A0(new_n537), .A1(new_n536), .B0(new_n538_1), .Y(new_n539));
  NOR2X1   g204(.A(new_n539), .B(new_n535), .Y(new_n540));
  XOR2X1   g205(.A(new_n540), .B(new_n533_1), .Y(new_n541));
  XOR2X1   g206(.A(new_n541), .B(new_n495), .Y(new_n542));
  NOR3X1   g207(.A(new_n486), .B(new_n445), .C(new_n487), .Y(new_n543_1));
  INVX1    g208(.A(\in[51] ), .Y(new_n544));
  OR2X1    g209(.A(new_n485), .B(new_n544), .Y(new_n545));
  OAI21X1  g210(.A0(new_n488), .A1(new_n486), .B0(new_n545), .Y(new_n546));
  NOR2X1   g211(.A(new_n546), .B(new_n543_1), .Y(new_n547));
  XOR2X1   g212(.A(new_n547), .B(new_n542), .Y(new_n548_1));
  XOR2X1   g213(.A(new_n548_1), .B(\count_reg[4] ), .Y(new_n549));
  XOR2X1   g214(.A(new_n490), .B(\count_reg[3] ), .Y(new_n550));
  NOR3X1   g215(.A(new_n550), .B(new_n449), .C(new_n447), .Y(new_n551));
  OR2X1    g216(.A(new_n490), .B(new_n345), .Y(new_n552));
  OAI21X1  g217(.A0(new_n492), .A1(new_n550), .B0(new_n552), .Y(new_n553_1));
  NOR2X1   g218(.A(new_n553_1), .B(new_n551), .Y(new_n554));
  XOR2X1   g219(.A(new_n554), .B(new_n549), .Y(n588));
  INVX1    g220(.A(\in[53] ), .Y(new_n556));
  INVX1    g221(.A(\in[45] ), .Y(new_n557));
  INVX1    g222(.A(\in[37] ), .Y(new_n558_1));
  INVX1    g223(.A(\in[29] ), .Y(new_n559));
  INVX1    g224(.A(\in[21] ), .Y(new_n560));
  XOR2X1   g225(.A(\in[13] ), .B(\in[5] ), .Y(new_n561));
  AND2X1   g226(.A(\in[12] ), .B(\in[4] ), .Y(new_n562));
  AOI21X1  g227(.A0(new_n505), .A1(new_n500), .B0(new_n562), .Y(new_n563_1));
  XOR2X1   g228(.A(new_n563_1), .B(new_n561), .Y(new_n564));
  XOR2X1   g229(.A(new_n564), .B(new_n560), .Y(new_n565));
  NAND2X1  g230(.A(new_n512), .B(new_n510), .Y(new_n566));
  NOR2X1   g231(.A(new_n506), .B(new_n499), .Y(new_n567));
  AOI21X1  g232(.A0(new_n566), .A1(new_n507), .B0(new_n567), .Y(new_n568_1));
  XOR2X1   g233(.A(new_n568_1), .B(new_n565), .Y(new_n569));
  XOR2X1   g234(.A(new_n569), .B(new_n559), .Y(new_n570));
  OR2X1    g235(.A(new_n521), .B(new_n517), .Y(new_n571));
  NOR2X1   g236(.A(new_n514), .B(new_n498), .Y(new_n572));
  AOI21X1  g237(.A0(new_n571), .A1(new_n515), .B0(new_n572), .Y(new_n573_1));
  XOR2X1   g238(.A(new_n573_1), .B(new_n570), .Y(new_n574));
  XOR2X1   g239(.A(new_n574), .B(new_n558_1), .Y(new_n575));
  OR2X1    g240(.A(new_n530), .B(new_n526), .Y(new_n576));
  NOR2X1   g241(.A(new_n523), .B(new_n497), .Y(new_n577));
  AOI21X1  g242(.A0(new_n576), .A1(new_n524), .B0(new_n577), .Y(new_n578_1));
  XOR2X1   g243(.A(new_n578_1), .B(new_n575), .Y(new_n579));
  XOR2X1   g244(.A(new_n579), .B(new_n557), .Y(new_n580));
  OR2X1    g245(.A(new_n539), .B(new_n535), .Y(new_n581));
  NOR2X1   g246(.A(new_n532), .B(new_n496), .Y(new_n582));
  AOI21X1  g247(.A0(new_n581), .A1(new_n533_1), .B0(new_n582), .Y(new_n583_1));
  XOR2X1   g248(.A(new_n583_1), .B(new_n580), .Y(new_n584));
  XOR2X1   g249(.A(new_n584), .B(new_n556), .Y(new_n585));
  OR2X1    g250(.A(new_n546), .B(new_n543_1), .Y(new_n586));
  NOR2X1   g251(.A(new_n541), .B(new_n495), .Y(new_n587));
  AOI21X1  g252(.A0(new_n586), .A1(new_n542), .B0(new_n587), .Y(new_n588_1));
  XOR2X1   g253(.A(new_n588_1), .B(new_n585), .Y(new_n589));
  XOR2X1   g254(.A(new_n589), .B(new_n367), .Y(new_n590));
  INVX1    g255(.A(\count_reg[4] ), .Y(new_n591));
  OR2X1    g256(.A(new_n548_1), .B(new_n591), .Y(new_n592));
  OAI21X1  g257(.A0(new_n554), .A1(new_n549), .B0(new_n592), .Y(new_n593_1));
  XOR2X1   g258(.A(new_n593_1), .B(new_n590), .Y(n593));
  INVX1    g259(.A(\in[46] ), .Y(new_n595));
  INVX1    g260(.A(\in[38] ), .Y(new_n596));
  XOR2X1   g261(.A(\in[14] ), .B(\in[6] ), .Y(new_n597));
  INVX1    g262(.A(new_n597), .Y(new_n598_1));
  AND2X1   g263(.A(new_n561), .B(new_n500), .Y(new_n599));
  OAI21X1  g264(.A0(new_n504), .A1(new_n502), .B0(new_n599), .Y(new_n600));
  AND2X1   g265(.A(\in[13] ), .B(\in[5] ), .Y(new_n601));
  AOI21X1  g266(.A0(new_n562), .A1(new_n561), .B0(new_n601), .Y(new_n602));
  AND2X1   g267(.A(new_n602), .B(new_n600), .Y(new_n603_1));
  XOR2X1   g268(.A(new_n603_1), .B(new_n598_1), .Y(new_n604));
  XOR2X1   g269(.A(new_n604), .B(\in[22] ), .Y(new_n605));
  NAND3X1  g270(.A(new_n565), .B(new_n566), .C(new_n507), .Y(new_n606));
  OR2X1    g271(.A(new_n564), .B(new_n560), .Y(new_n607_1));
  NAND2X1  g272(.A(new_n567), .B(new_n565), .Y(new_n608));
  NAND3X1  g273(.A(new_n608), .B(new_n607_1), .C(new_n606), .Y(new_n609));
  XOR2X1   g274(.A(new_n609), .B(new_n605), .Y(new_n610));
  XOR2X1   g275(.A(new_n610), .B(\in[30] ), .Y(new_n611_1));
  XOR2X1   g276(.A(new_n569), .B(\in[29] ), .Y(new_n612));
  NAND2X1  g277(.A(new_n571), .B(new_n515), .Y(new_n613));
  OR2X1    g278(.A(new_n613), .B(new_n612), .Y(new_n614));
  NOR2X1   g279(.A(new_n569), .B(new_n559), .Y(new_n615_1));
  AOI21X1  g280(.A0(new_n572), .A1(new_n570), .B0(new_n615_1), .Y(new_n616));
  AND2X1   g281(.A(new_n616), .B(new_n614), .Y(new_n617));
  XOR2X1   g282(.A(new_n617), .B(new_n611_1), .Y(new_n618));
  XOR2X1   g283(.A(new_n618), .B(new_n596), .Y(new_n619_1));
  AND2X1   g284(.A(new_n576), .B(new_n524), .Y(new_n620));
  AND2X1   g285(.A(new_n620), .B(new_n575), .Y(new_n621));
  XOR2X1   g286(.A(new_n574), .B(\in[37] ), .Y(new_n622));
  OR2X1    g287(.A(new_n523), .B(new_n497), .Y(new_n623_1));
  OR2X1    g288(.A(new_n574), .B(new_n558_1), .Y(new_n624));
  OAI21X1  g289(.A0(new_n623_1), .A1(new_n622), .B0(new_n624), .Y(new_n625));
  NOR2X1   g290(.A(new_n625), .B(new_n621), .Y(new_n626));
  XOR2X1   g291(.A(new_n626), .B(new_n619_1), .Y(new_n627_1));
  XOR2X1   g292(.A(new_n627_1), .B(new_n595), .Y(new_n628));
  AND2X1   g293(.A(new_n581), .B(new_n533_1), .Y(new_n629));
  NAND2X1  g294(.A(new_n629), .B(new_n580), .Y(new_n630));
  NOR2X1   g295(.A(new_n579), .B(new_n557), .Y(new_n631_1));
  AOI21X1  g296(.A0(new_n582), .A1(new_n580), .B0(new_n631_1), .Y(new_n632));
  NAND2X1  g297(.A(new_n632), .B(new_n630), .Y(new_n633));
  XOR2X1   g298(.A(new_n633), .B(new_n628), .Y(new_n634));
  XOR2X1   g299(.A(new_n634), .B(\in[54] ), .Y(new_n635_1));
  AND2X1   g300(.A(new_n586), .B(new_n542), .Y(new_n636));
  AND2X1   g301(.A(new_n636), .B(new_n585), .Y(new_n637));
  XOR2X1   g302(.A(new_n584), .B(\in[53] ), .Y(new_n638));
  OR2X1    g303(.A(new_n541), .B(new_n495), .Y(new_n639));
  OR2X1    g304(.A(new_n584), .B(new_n556), .Y(new_n640));
  OAI21X1  g305(.A0(new_n639), .A1(new_n638), .B0(new_n640), .Y(new_n641));
  NOR2X1   g306(.A(new_n641), .B(new_n637), .Y(new_n642));
  XOR2X1   g307(.A(new_n642), .B(new_n635_1), .Y(new_n643));
  XOR2X1   g308(.A(new_n643), .B(new_n363), .Y(new_n644));
  XOR2X1   g309(.A(new_n589), .B(\count_reg[5] ), .Y(new_n645));
  NOR3X1   g310(.A(new_n645), .B(new_n554), .C(new_n549), .Y(new_n646));
  OR2X1    g311(.A(new_n589), .B(new_n367), .Y(new_n647));
  OAI21X1  g312(.A0(new_n592), .A1(new_n645), .B0(new_n647), .Y(new_n648));
  OR2X1    g313(.A(new_n648), .B(new_n646), .Y(new_n649));
  XOR2X1   g314(.A(new_n649), .B(new_n644), .Y(n598));
  XOR2X1   g315(.A(\in[15] ), .B(\in[7] ), .Y(new_n651));
  NAND2X1  g316(.A(\in[14] ), .B(\in[6] ), .Y(new_n652));
  OAI21X1  g317(.A0(new_n603_1), .A1(new_n598_1), .B0(new_n652), .Y(new_n653));
  XOR2X1   g318(.A(new_n653), .B(new_n651), .Y(new_n654));
  XOR2X1   g319(.A(new_n654), .B(\in[23] ), .Y(new_n655));
  AND2X1   g320(.A(new_n604), .B(\in[22] ), .Y(new_n656));
  AOI21X1  g321(.A0(new_n609), .A1(new_n605), .B0(new_n656), .Y(new_n657));
  XOR2X1   g322(.A(new_n657), .B(new_n655), .Y(new_n658));
  XOR2X1   g323(.A(new_n658), .B(\in[31] ), .Y(new_n659));
  NAND2X1  g324(.A(new_n616), .B(new_n614), .Y(new_n660));
  AND2X1   g325(.A(new_n610), .B(\in[30] ), .Y(new_n661));
  AOI21X1  g326(.A0(new_n660), .A1(new_n611_1), .B0(new_n661), .Y(new_n662));
  XOR2X1   g327(.A(new_n662), .B(new_n659), .Y(new_n663));
  XOR2X1   g328(.A(new_n663), .B(\in[39] ), .Y(new_n664));
  OR2X1    g329(.A(new_n625), .B(new_n621), .Y(new_n665));
  NOR2X1   g330(.A(new_n618), .B(new_n596), .Y(new_n666));
  AOI21X1  g331(.A0(new_n665), .A1(new_n619_1), .B0(new_n666), .Y(new_n667));
  XOR2X1   g332(.A(new_n667), .B(new_n664), .Y(new_n668));
  XOR2X1   g333(.A(new_n668), .B(\in[47] ), .Y(new_n669));
  NOR2X1   g334(.A(new_n627_1), .B(new_n595), .Y(new_n670));
  AOI21X1  g335(.A0(new_n633), .A1(new_n628), .B0(new_n670), .Y(new_n671));
  XOR2X1   g336(.A(new_n671), .B(new_n669), .Y(new_n672));
  XOR2X1   g337(.A(new_n672), .B(\in[55] ), .Y(new_n673));
  OR2X1    g338(.A(new_n641), .B(new_n637), .Y(new_n674));
  AND2X1   g339(.A(new_n634), .B(\in[54] ), .Y(new_n675));
  AOI21X1  g340(.A0(new_n674), .A1(new_n635_1), .B0(new_n675), .Y(new_n676));
  XOR2X1   g341(.A(new_n676), .B(new_n673), .Y(new_n677));
  XOR2X1   g342(.A(new_n677), .B(\count_reg[7] ), .Y(new_n678));
  NOR2X1   g343(.A(new_n643), .B(new_n363), .Y(new_n679));
  AOI21X1  g344(.A0(new_n649), .A1(new_n644), .B0(new_n679), .Y(new_n680));
  XOR2X1   g345(.A(new_n680), .B(new_n678), .Y(n603));
  BUFX1    g346(.A(\count_reg_final[0] ), .Y(\out[0] ));
  BUFX1    g347(.A(\count_reg_final[1] ), .Y(\out[1] ));
  BUFX1    g348(.A(\count_reg_final[2] ), .Y(\out[2] ));
  BUFX1    g349(.A(\count_reg_final[3] ), .Y(\out[3] ));
  BUFX1    g350(.A(\count_reg_final[4] ), .Y(\out[4] ));
  BUFX1    g351(.A(\count_reg_final[5] ), .Y(\out[5] ));
  BUFX1    g352(.A(\count_reg_final[6] ), .Y(\out[6] ));
  BUFX1    g353(.A(\count_reg_final[7] ), .Y(\out[7] ));
  BUFX1    g354(.A(\count_reg_next[0] ), .Y(n607));
  BUFX1    g355(.A(\count_reg_next[1] ), .Y(n611));
  BUFX1    g356(.A(\count_reg_next[2] ), .Y(n615));
  BUFX1    g357(.A(\count_reg_next[3] ), .Y(n619));
  BUFX1    g358(.A(\count_reg_next[4] ), .Y(n623));
  BUFX1    g359(.A(\count_reg_next[5] ), .Y(n627));
  BUFX1    g360(.A(\count_reg_next[6] ), .Y(n631));
  BUFX1    g361(.A(\count_reg_next[7] ), .Y(n635));
  always @ (posedge clock) begin
    \count_reg_final[0]  <= n528;
    \count_reg_final[1]  <= n533;
    \count_reg_final[2]  <= n538;
    \count_reg_final[3]  <= n543;
    \count_reg_final[4]  <= n548;
    \count_reg_final[5]  <= n553;
    \count_reg_final[6]  <= n558;
    \count_reg_final[7]  <= n563;
    \count_reg_next[0]  <= n568;
    \count_reg_next[1]  <= n573;
    \count_reg_next[2]  <= n578;
    \count_reg_next[3]  <= n583;
    \count_reg_next[4]  <= n588;
    \count_reg_next[5]  <= n593;
    \count_reg_next[6]  <= n598;
    \count_reg_next[7]  <= n603;
    \count_reg[0]  <= n607;
    \count_reg[1]  <= n611;
    \count_reg[2]  <= n615;
    \count_reg[3]  <= n619;
    \count_reg[4]  <= n623;
    \count_reg[5]  <= n627;
    \count_reg[6]  <= n631;
    \count_reg[7]  <= n635;
  end
endmodule


