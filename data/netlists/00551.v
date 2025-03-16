// Benchmark "pipelined_adder" written by ABC on Wed Jun 26 15:22:13 2024

module pipelined_adder ( 
    \a[0] , \a[1] , \a[2] , \a[3] , \a[4] , \a[5] , \a[6] , \a[7] , \a[8] ,
    \a[9] , \a[10] , \a[11] , \a[12] , \a[13] , \a[14] , \a[15] , \a[16] ,
    \a[17] , \a[18] , \a[19] , \a[20] , \a[21] , \a[22] , \a[23] , \a[24] ,
    \a[25] , \a[26] , \a[27] , \a[28] , \a[29] , \a[30] , \a[31] , \a[32] ,
    \a[33] , \a[34] , \a[35] , \a[36] , \a[37] , \a[38] , \a[39] , \a[40] ,
    \a[41] , \a[42] , \a[43] , \a[44] , \a[45] , \a[46] , \a[47] , \a[48] ,
    \a[49] , \a[50] , \a[51] , \a[52] , \a[53] , \a[54] , \a[55] , \a[56] ,
    \a[57] , \a[58] , \a[59] , \a[60] , \a[61] , \a[62] , \a[63] , \a[64] ,
    \a[65] , \a[66] , \a[67] , \a[68] , \a[69] , \a[70] , \a[71] , \a[72] ,
    \a[73] , \a[74] , \a[75] , \a[76] , \a[77] , \a[78] , \a[79] , \a[80] ,
    \a[81] , \a[82] , \a[83] , \a[84] , \a[85] , \a[86] , \a[87] , \a[88] ,
    \a[89] , \a[90] , \a[91] , \a[92] , \a[93] , \a[94] , \a[95] , \a[96] ,
    \a[97] , \a[98] , \a[99] , \b[0] , \b[1] , \b[2] , \b[3] , \b[4] ,
    \b[5] , \b[6] , \b[7] , \b[8] , \b[9] , \b[10] , \b[11] , \b[12] ,
    \b[13] , \b[14] , \b[15] , \b[16] , \b[17] , \b[18] , \b[19] , \b[20] ,
    \b[21] , \b[22] , \b[23] , \b[24] , \b[25] , \b[26] , \b[27] , \b[28] ,
    \b[29] , \b[30] , \b[31] , \b[32] , \b[33] , \b[34] , \b[35] , \b[36] ,
    \b[37] , \b[38] , \b[39] , \b[40] , \b[41] , \b[42] , \b[43] , \b[44] ,
    \b[45] , \b[46] , \b[47] , \b[48] , \b[49] , \b[50] , \b[51] , \b[52] ,
    \b[53] , \b[54] , \b[55] , \b[56] , \b[57] , \b[58] , \b[59] , \b[60] ,
    \b[61] , \b[62] , \b[63] , \b[64] , \b[65] , \b[66] , \b[67] , \b[68] ,
    \b[69] , \b[70] , \b[71] , \b[72] , \b[73] , \b[74] , \b[75] , \b[76] ,
    \b[77] , \b[78] , \b[79] , \b[80] , \b[81] , \b[82] , \b[83] , \b[84] ,
    \b[85] , \b[86] , \b[87] , \b[88] , \b[89] , \b[90] , \b[91] , \b[92] ,
    \b[93] , \b[94] , \b[95] , \b[96] , \b[97] , \b[98] , \b[99] , cin,
    \sum[0] , \sum[1] , \sum[2] , \sum[3] , \sum[4] , \sum[5] , \sum[6] ,
    \sum[7] , \sum[8] , \sum[9] , \sum[10] , \sum[11] , \sum[12] ,
    \sum[13] , \sum[14] , \sum[15] , \sum[16] , \sum[17] , \sum[18] ,
    \sum[19] , \sum[20] , \sum[21] , \sum[22] , \sum[23] , \sum[24] ,
    \sum[25] , \sum[26] , \sum[27] , \sum[28] , \sum[29] , \sum[30] ,
    \sum[31] , \sum[32] , \sum[33] , \sum[34] , \sum[35] , \sum[36] ,
    \sum[37] , \sum[38] , \sum[39] , \sum[40] , \sum[41] , \sum[42] ,
    \sum[43] , \sum[44] , \sum[45] , \sum[46] , \sum[47] , \sum[48] ,
    \sum[49] , \sum[50] , \sum[51] , \sum[52] , \sum[53] , \sum[54] ,
    \sum[55] , \sum[56] , \sum[57] , \sum[58] , \sum[59] , \sum[60] ,
    \sum[61] , \sum[62] , \sum[63] , \sum[64] , \sum[65] , \sum[66] ,
    \sum[67] , \sum[68] , \sum[69] , \sum[70] , \sum[71] , \sum[72] ,
    \sum[73] , \sum[74] , \sum[75] , \sum[76] , \sum[77] , \sum[78] ,
    \sum[79] , \sum[80] , \sum[81] , \sum[82] , \sum[83] , \sum[84] ,
    \sum[85] , \sum[86] , \sum[87] , \sum[88] , \sum[89] , \sum[90] ,
    \sum[91] , \sum[92] , \sum[93] , \sum[94] , \sum[95] , \sum[96] ,
    \sum[97] , \sum[98] , \sum[99] , cout  );
  input  \a[0] , \a[1] , \a[2] , \a[3] , \a[4] , \a[5] , \a[6] , \a[7] ,
    \a[8] , \a[9] , \a[10] , \a[11] , \a[12] , \a[13] , \a[14] , \a[15] ,
    \a[16] , \a[17] , \a[18] , \a[19] , \a[20] , \a[21] , \a[22] , \a[23] ,
    \a[24] , \a[25] , \a[26] , \a[27] , \a[28] , \a[29] , \a[30] , \a[31] ,
    \a[32] , \a[33] , \a[34] , \a[35] , \a[36] , \a[37] , \a[38] , \a[39] ,
    \a[40] , \a[41] , \a[42] , \a[43] , \a[44] , \a[45] , \a[46] , \a[47] ,
    \a[48] , \a[49] , \a[50] , \a[51] , \a[52] , \a[53] , \a[54] , \a[55] ,
    \a[56] , \a[57] , \a[58] , \a[59] , \a[60] , \a[61] , \a[62] , \a[63] ,
    \a[64] , \a[65] , \a[66] , \a[67] , \a[68] , \a[69] , \a[70] , \a[71] ,
    \a[72] , \a[73] , \a[74] , \a[75] , \a[76] , \a[77] , \a[78] , \a[79] ,
    \a[80] , \a[81] , \a[82] , \a[83] , \a[84] , \a[85] , \a[86] , \a[87] ,
    \a[88] , \a[89] , \a[90] , \a[91] , \a[92] , \a[93] , \a[94] , \a[95] ,
    \a[96] , \a[97] , \a[98] , \a[99] , \b[0] , \b[1] , \b[2] , \b[3] ,
    \b[4] , \b[5] , \b[6] , \b[7] , \b[8] , \b[9] , \b[10] , \b[11] ,
    \b[12] , \b[13] , \b[14] , \b[15] , \b[16] , \b[17] , \b[18] , \b[19] ,
    \b[20] , \b[21] , \b[22] , \b[23] , \b[24] , \b[25] , \b[26] , \b[27] ,
    \b[28] , \b[29] , \b[30] , \b[31] , \b[32] , \b[33] , \b[34] , \b[35] ,
    \b[36] , \b[37] , \b[38] , \b[39] , \b[40] , \b[41] , \b[42] , \b[43] ,
    \b[44] , \b[45] , \b[46] , \b[47] , \b[48] , \b[49] , \b[50] , \b[51] ,
    \b[52] , \b[53] , \b[54] , \b[55] , \b[56] , \b[57] , \b[58] , \b[59] ,
    \b[60] , \b[61] , \b[62] , \b[63] , \b[64] , \b[65] , \b[66] , \b[67] ,
    \b[68] , \b[69] , \b[70] , \b[71] , \b[72] , \b[73] , \b[74] , \b[75] ,
    \b[76] , \b[77] , \b[78] , \b[79] , \b[80] , \b[81] , \b[82] , \b[83] ,
    \b[84] , \b[85] , \b[86] , \b[87] , \b[88] , \b[89] , \b[90] , \b[91] ,
    \b[92] , \b[93] , \b[94] , \b[95] , \b[96] , \b[97] , \b[98] , \b[99] ,
    cin;
  output \sum[0] , \sum[1] , \sum[2] , \sum[3] , \sum[4] , \sum[5] , \sum[6] ,
    \sum[7] , \sum[8] , \sum[9] , \sum[10] , \sum[11] , \sum[12] ,
    \sum[13] , \sum[14] , \sum[15] , \sum[16] , \sum[17] , \sum[18] ,
    \sum[19] , \sum[20] , \sum[21] , \sum[22] , \sum[23] , \sum[24] ,
    \sum[25] , \sum[26] , \sum[27] , \sum[28] , \sum[29] , \sum[30] ,
    \sum[31] , \sum[32] , \sum[33] , \sum[34] , \sum[35] , \sum[36] ,
    \sum[37] , \sum[38] , \sum[39] , \sum[40] , \sum[41] , \sum[42] ,
    \sum[43] , \sum[44] , \sum[45] , \sum[46] , \sum[47] , \sum[48] ,
    \sum[49] , \sum[50] , \sum[51] , \sum[52] , \sum[53] , \sum[54] ,
    \sum[55] , \sum[56] , \sum[57] , \sum[58] , \sum[59] , \sum[60] ,
    \sum[61] , \sum[62] , \sum[63] , \sum[64] , \sum[65] , \sum[66] ,
    \sum[67] , \sum[68] , \sum[69] , \sum[70] , \sum[71] , \sum[72] ,
    \sum[73] , \sum[74] , \sum[75] , \sum[76] , \sum[77] , \sum[78] ,
    \sum[79] , \sum[80] , \sum[81] , \sum[82] , \sum[83] , \sum[84] ,
    \sum[85] , \sum[86] , \sum[87] , \sum[88] , \sum[89] , \sum[90] ,
    \sum[91] , \sum[92] , \sum[93] , \sum[94] , \sum[95] , \sum[96] ,
    \sum[97] , \sum[98] , \sum[99] , cout;
  wire new_n303, new_n305, new_n307, new_n309, new_n311, new_n313, new_n315,
    new_n317, new_n319, new_n321, new_n323, new_n325, new_n327, new_n329,
    new_n331, new_n333, new_n335, new_n337, new_n339, new_n341, new_n343,
    new_n345, new_n347, new_n349, new_n351, new_n353, new_n355, new_n357,
    new_n359, new_n361, new_n363, new_n365, new_n367, new_n369, new_n371,
    new_n373, new_n375, new_n377, new_n379, new_n381, new_n383, new_n385,
    new_n387, new_n389, new_n391, new_n393, new_n395, new_n397, new_n399,
    new_n401;
  XOR2X1   g000(.A(\b[0] ), .B(\a[0] ), .Y(new_n303));
  XOR2X1   g001(.A(new_n303), .B(cin), .Y(\sum[0] ));
  XOR2X1   g002(.A(\b[1] ), .B(\a[1] ), .Y(new_n305));
  XOR2X1   g003(.A(new_n305), .B(\sum[0] ), .Y(\sum[1] ));
  XOR2X1   g004(.A(\b[2] ), .B(\a[2] ), .Y(new_n307));
  XOR2X1   g005(.A(new_n307), .B(\sum[1] ), .Y(\sum[2] ));
  XOR2X1   g006(.A(\b[3] ), .B(\a[3] ), .Y(new_n309));
  XOR2X1   g007(.A(new_n309), .B(\sum[2] ), .Y(\sum[3] ));
  XOR2X1   g008(.A(\b[4] ), .B(\a[4] ), .Y(new_n311));
  XOR2X1   g009(.A(new_n311), .B(\sum[3] ), .Y(\sum[4] ));
  XOR2X1   g010(.A(\b[5] ), .B(\a[5] ), .Y(new_n313));
  XOR2X1   g011(.A(new_n313), .B(\sum[4] ), .Y(\sum[5] ));
  XOR2X1   g012(.A(\b[6] ), .B(\a[6] ), .Y(new_n315));
  XOR2X1   g013(.A(new_n315), .B(\sum[5] ), .Y(\sum[6] ));
  XOR2X1   g014(.A(\b[7] ), .B(\a[7] ), .Y(new_n317));
  XOR2X1   g015(.A(new_n317), .B(\sum[6] ), .Y(\sum[7] ));
  XOR2X1   g016(.A(\b[8] ), .B(\a[8] ), .Y(new_n319));
  XOR2X1   g017(.A(new_n319), .B(\sum[7] ), .Y(\sum[8] ));
  XOR2X1   g018(.A(\b[9] ), .B(\a[9] ), .Y(new_n321));
  XOR2X1   g019(.A(new_n321), .B(\sum[8] ), .Y(\sum[9] ));
  XOR2X1   g020(.A(\b[10] ), .B(\a[10] ), .Y(new_n323));
  XOR2X1   g021(.A(new_n323), .B(\sum[9] ), .Y(\sum[10] ));
  XOR2X1   g022(.A(\b[11] ), .B(\a[11] ), .Y(new_n325));
  XOR2X1   g023(.A(new_n325), .B(\sum[10] ), .Y(\sum[11] ));
  XOR2X1   g024(.A(\b[12] ), .B(\a[12] ), .Y(new_n327));
  XOR2X1   g025(.A(new_n327), .B(\sum[11] ), .Y(\sum[12] ));
  XOR2X1   g026(.A(\b[13] ), .B(\a[13] ), .Y(new_n329));
  XOR2X1   g027(.A(new_n329), .B(\sum[12] ), .Y(\sum[13] ));
  XOR2X1   g028(.A(\b[14] ), .B(\a[14] ), .Y(new_n331));
  XOR2X1   g029(.A(new_n331), .B(\sum[13] ), .Y(\sum[14] ));
  XOR2X1   g030(.A(\b[15] ), .B(\a[15] ), .Y(new_n333));
  XOR2X1   g031(.A(new_n333), .B(\sum[14] ), .Y(\sum[15] ));
  XOR2X1   g032(.A(\b[16] ), .B(\a[16] ), .Y(new_n335));
  XOR2X1   g033(.A(new_n335), .B(\sum[15] ), .Y(\sum[16] ));
  XOR2X1   g034(.A(\b[17] ), .B(\a[17] ), .Y(new_n337));
  XOR2X1   g035(.A(new_n337), .B(\sum[16] ), .Y(\sum[17] ));
  XOR2X1   g036(.A(\b[18] ), .B(\a[18] ), .Y(new_n339));
  XOR2X1   g037(.A(new_n339), .B(\sum[17] ), .Y(\sum[18] ));
  XOR2X1   g038(.A(\b[19] ), .B(\a[19] ), .Y(new_n341));
  XOR2X1   g039(.A(new_n341), .B(\sum[18] ), .Y(\sum[19] ));
  XOR2X1   g040(.A(\b[20] ), .B(\a[20] ), .Y(new_n343));
  XOR2X1   g041(.A(new_n343), .B(\sum[19] ), .Y(\sum[20] ));
  XOR2X1   g042(.A(\b[21] ), .B(\a[21] ), .Y(new_n345));
  XOR2X1   g043(.A(new_n345), .B(\sum[20] ), .Y(\sum[21] ));
  XOR2X1   g044(.A(\b[22] ), .B(\a[22] ), .Y(new_n347));
  XOR2X1   g045(.A(new_n347), .B(\sum[21] ), .Y(\sum[22] ));
  XOR2X1   g046(.A(\b[23] ), .B(\a[23] ), .Y(new_n349));
  XOR2X1   g047(.A(new_n349), .B(\sum[22] ), .Y(\sum[23] ));
  XOR2X1   g048(.A(\b[24] ), .B(\a[24] ), .Y(new_n351));
  XOR2X1   g049(.A(new_n351), .B(\sum[23] ), .Y(\sum[24] ));
  XOR2X1   g050(.A(\b[25] ), .B(\a[25] ), .Y(new_n353));
  XOR2X1   g051(.A(new_n353), .B(\sum[24] ), .Y(\sum[25] ));
  XOR2X1   g052(.A(\b[26] ), .B(\a[26] ), .Y(new_n355));
  XOR2X1   g053(.A(new_n355), .B(\sum[25] ), .Y(\sum[26] ));
  XOR2X1   g054(.A(\b[27] ), .B(\a[27] ), .Y(new_n357));
  XOR2X1   g055(.A(new_n357), .B(\sum[26] ), .Y(\sum[27] ));
  XOR2X1   g056(.A(\b[28] ), .B(\a[28] ), .Y(new_n359));
  XOR2X1   g057(.A(new_n359), .B(\sum[27] ), .Y(\sum[28] ));
  XOR2X1   g058(.A(\b[29] ), .B(\a[29] ), .Y(new_n361));
  XOR2X1   g059(.A(new_n361), .B(\sum[28] ), .Y(\sum[29] ));
  XOR2X1   g060(.A(\b[30] ), .B(\a[30] ), .Y(new_n363));
  XOR2X1   g061(.A(new_n363), .B(\sum[29] ), .Y(\sum[30] ));
  XOR2X1   g062(.A(\b[31] ), .B(\a[31] ), .Y(new_n365));
  XOR2X1   g063(.A(new_n365), .B(\sum[30] ), .Y(\sum[31] ));
  XOR2X1   g064(.A(\b[32] ), .B(\a[32] ), .Y(new_n367));
  XOR2X1   g065(.A(new_n367), .B(\sum[31] ), .Y(\sum[32] ));
  XOR2X1   g066(.A(\b[33] ), .B(\a[33] ), .Y(new_n369));
  XOR2X1   g067(.A(new_n369), .B(\sum[32] ), .Y(\sum[33] ));
  XOR2X1   g068(.A(\b[34] ), .B(\a[34] ), .Y(new_n371));
  XOR2X1   g069(.A(new_n371), .B(\sum[33] ), .Y(\sum[34] ));
  XOR2X1   g070(.A(\b[35] ), .B(\a[35] ), .Y(new_n373));
  XOR2X1   g071(.A(new_n373), .B(\sum[34] ), .Y(\sum[35] ));
  XOR2X1   g072(.A(\b[36] ), .B(\a[36] ), .Y(new_n375));
  XOR2X1   g073(.A(new_n375), .B(\sum[35] ), .Y(\sum[36] ));
  XOR2X1   g074(.A(\b[37] ), .B(\a[37] ), .Y(new_n377));
  XOR2X1   g075(.A(new_n377), .B(\sum[36] ), .Y(\sum[37] ));
  XOR2X1   g076(.A(\b[38] ), .B(\a[38] ), .Y(new_n379));
  XOR2X1   g077(.A(new_n379), .B(\sum[37] ), .Y(\sum[38] ));
  XOR2X1   g078(.A(\b[39] ), .B(\a[39] ), .Y(new_n381));
  XOR2X1   g079(.A(new_n381), .B(\sum[38] ), .Y(\sum[39] ));
  XOR2X1   g080(.A(\b[40] ), .B(\a[40] ), .Y(new_n383));
  XOR2X1   g081(.A(new_n383), .B(\sum[39] ), .Y(\sum[40] ));
  XOR2X1   g082(.A(\b[41] ), .B(\a[41] ), .Y(new_n385));
  XOR2X1   g083(.A(new_n385), .B(\sum[40] ), .Y(\sum[41] ));
  XOR2X1   g084(.A(\b[42] ), .B(\a[42] ), .Y(new_n387));
  XOR2X1   g085(.A(new_n387), .B(\sum[41] ), .Y(\sum[42] ));
  XOR2X1   g086(.A(\b[43] ), .B(\a[43] ), .Y(new_n389));
  XOR2X1   g087(.A(new_n389), .B(\sum[42] ), .Y(\sum[43] ));
  XOR2X1   g088(.A(\b[44] ), .B(\a[44] ), .Y(new_n391));
  XOR2X1   g089(.A(new_n391), .B(\sum[43] ), .Y(\sum[44] ));
  XOR2X1   g090(.A(\b[45] ), .B(\a[45] ), .Y(new_n393));
  XOR2X1   g091(.A(new_n393), .B(\sum[44] ), .Y(\sum[45] ));
  XOR2X1   g092(.A(\b[46] ), .B(\a[46] ), .Y(new_n395));
  XOR2X1   g093(.A(new_n395), .B(\sum[45] ), .Y(\sum[46] ));
  XOR2X1   g094(.A(\b[47] ), .B(\a[47] ), .Y(new_n397));
  XOR2X1   g095(.A(new_n397), .B(\sum[46] ), .Y(\sum[47] ));
  XOR2X1   g096(.A(\b[48] ), .B(\a[48] ), .Y(new_n399));
  XOR2X1   g097(.A(new_n399), .B(\sum[47] ), .Y(\sum[48] ));
  XOR2X1   g098(.A(\b[49] ), .B(\a[49] ), .Y(new_n401));
  XOR2X1   g099(.A(new_n401), .B(\sum[48] ), .Y(\sum[49] ));
  ZERO     g100(.Y(\sum[50] ));
  ZERO     g101(.Y(\sum[51] ));
  ZERO     g102(.Y(\sum[52] ));
  ZERO     g103(.Y(\sum[53] ));
  ZERO     g104(.Y(\sum[54] ));
  ZERO     g105(.Y(\sum[55] ));
  ZERO     g106(.Y(\sum[56] ));
  ZERO     g107(.Y(\sum[57] ));
  ZERO     g108(.Y(\sum[58] ));
  ZERO     g109(.Y(\sum[59] ));
  ZERO     g110(.Y(\sum[60] ));
  ZERO     g111(.Y(\sum[61] ));
  ZERO     g112(.Y(\sum[62] ));
  ZERO     g113(.Y(\sum[63] ));
  ZERO     g114(.Y(\sum[64] ));
  ZERO     g115(.Y(\sum[65] ));
  ZERO     g116(.Y(\sum[66] ));
  ZERO     g117(.Y(\sum[67] ));
  ZERO     g118(.Y(\sum[68] ));
  ZERO     g119(.Y(\sum[69] ));
  ZERO     g120(.Y(\sum[70] ));
  ZERO     g121(.Y(\sum[71] ));
  ZERO     g122(.Y(\sum[72] ));
  ZERO     g123(.Y(\sum[73] ));
  ZERO     g124(.Y(\sum[74] ));
  ZERO     g125(.Y(\sum[75] ));
  ZERO     g126(.Y(\sum[76] ));
  ZERO     g127(.Y(\sum[77] ));
  ZERO     g128(.Y(\sum[78] ));
  ZERO     g129(.Y(\sum[79] ));
  ZERO     g130(.Y(\sum[80] ));
  ZERO     g131(.Y(\sum[81] ));
  ZERO     g132(.Y(\sum[82] ));
  ZERO     g133(.Y(\sum[83] ));
  ZERO     g134(.Y(\sum[84] ));
  ZERO     g135(.Y(\sum[85] ));
  ZERO     g136(.Y(\sum[86] ));
  ZERO     g137(.Y(\sum[87] ));
  ZERO     g138(.Y(\sum[88] ));
  ZERO     g139(.Y(\sum[89] ));
  ZERO     g140(.Y(\sum[90] ));
  ZERO     g141(.Y(\sum[91] ));
  ZERO     g142(.Y(\sum[92] ));
  ZERO     g143(.Y(\sum[93] ));
  ZERO     g144(.Y(\sum[94] ));
  ZERO     g145(.Y(\sum[95] ));
  ZERO     g146(.Y(\sum[96] ));
  ZERO     g147(.Y(\sum[97] ));
  ZERO     g148(.Y(\sum[98] ));
  ZERO     g149(.Y(\sum[99] ));
  ZERO     g150(.Y(cout));
endmodule


