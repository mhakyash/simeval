// Benchmark "dna_sequencer" written by ABC on Wed Jun 26 15:22:26 2024

module dna_sequencer ( clock, 
    CLK, DIN, READ, SHIFT,
    DOUT  );
  input  clock;
  input  CLK, DIN, READ, SHIFT;
  output DOUT;
  reg dout_out, \dna_val[1] , \dna_val[2] , \dna_val[3] , \dna_val[4] ,
    \dna_val[5] , \dna_val[6] , \dna_val[7] , \dna_val[8] , \dna_val[9] ,
    \dna_val[10] , \dna_val[11] , \dna_val[12] , \dna_val[13] ,
    \dna_val[14] , \dna_val[15] , \dna_val[16] , \dna_val[17] ,
    \dna_val[18] , \dna_val[19] , \dna_val[20] , \dna_val[21] ,
    \dna_val[22] , \dna_val[23] , \dna_val[24] , \dna_val[25] ,
    \dna_val[26] , \dna_val[27] , \dna_val[28] , \dna_val[29] ,
    \dna_val[30] , \dna_val[31] , \dna_val[32] , \dna_val[33] ,
    \dna_val[34] , \dna_val[35] , \dna_val[36] , \dna_val[37] ,
    \dna_val[38] , \dna_val[39] , \dna_val[40] , \dna_val[41] ,
    \dna_val[42] , \dna_val[43] , \dna_val[44] , \dna_val[45] ,
    \dna_val[46] , \dna_val[47] , \dna_val[48] , \dna_val[49] ,
    \dna_val[50] , \dna_val[51] , \dna_val[52] , \dna_val[53] ,
    \dna_val[54] , \dna_val[55] , \dna_val[56] , \dna_val[57] ,
    \dna_val[58] , \dna_val[59] , \dna_val[60] , \dna_val[61] ,
    \dna_val[62] , \dna_val[63] , \dna_val[64] , \dna_val[65] ,
    \dna_val[66] , \dna_val[67] , \dna_val[68] , \dna_val[69] ,
    \dna_val[70] , \dna_val[71] , \dna_val[72] , \dna_val[73] ,
    \dna_val[74] , \dna_val[75] , \dna_val[76] , \dna_val[77] ,
    \dna_val[78] , \dna_val[79] , \dna_val[80] , \dna_val[81] ,
    \dna_val[82] , \dna_val[83] , \dna_val[84] , \dna_val[85] ,
    \dna_val[86] , \dna_val[87] , \dna_val[88] , \dna_val[89] ,
    \dna_val[90] , \dna_val[91] , \dna_val[92] , \dna_val[93] ,
    \dna_val[94] , \dna_val[95] ;
  wire new_n294, new_n295, new_n297_1, new_n299, new_n301, new_n303,
    new_n305, new_n307_1, new_n309, new_n311, new_n313, new_n315,
    new_n317_1, new_n319, new_n321, new_n323, new_n325, new_n327_1,
    new_n329, new_n331, new_n333, new_n335, new_n337_1, new_n339, new_n341,
    new_n343, new_n345, new_n347_1, new_n349, new_n351, new_n353, new_n355,
    new_n357_1, new_n359, new_n361, new_n363, new_n365, new_n367_1,
    new_n369, new_n371, new_n373, new_n375, new_n377_1, new_n379, new_n381,
    new_n383, new_n385, new_n387_1, new_n389, new_n391, new_n393, new_n395,
    new_n397_1, new_n399, new_n401, new_n403, new_n405, new_n407_1,
    new_n409, new_n411, new_n413, new_n415, new_n417_1, new_n419, new_n421,
    new_n423, new_n425, new_n427_1, new_n429, new_n431, new_n433, new_n435,
    new_n437_1, new_n439, new_n441, new_n443, new_n445, new_n447_1,
    new_n449, new_n451, new_n453, new_n455, new_n457_1, new_n459, new_n461,
    new_n463, new_n465, new_n467_1, new_n469, new_n471, new_n473, new_n475,
    new_n477_1, new_n479, new_n481, new_n483, new_n485, n12, n17, n22, n27,
    n32, n37, n42, n47, n52, n57, n62, n67, n72, n77, n82, n87, n92, n97,
    n102, n107, n112, n117, n122, n127, n132, n137, n142, n147, n152, n157,
    n162, n167, n172, n177, n182, n187, n192, n197, n202, n207, n212, n217,
    n222, n227, n232, n237, n242, n247, n252, n257, n262, n267, n272, n277,
    n282, n287, n292, n297, n302, n307, n312, n317, n322, n327, n332, n337,
    n342, n347, n352, n357, n362, n367, n372, n377, n382, n387, n392, n397,
    n402, n407, n412, n417, n422, n427, n432, n437, n442, n447, n452, n457,
    n462, n467, n472, n477, n482, n487;
  INVX1    g000(.A(READ), .Y(new_n294));
  MX2X1    g001(.A(dout_out), .B(\dna_val[1] ), .S0(SHIFT), .Y(new_n295));
  AND2X1   g002(.A(new_n295), .B(new_n294), .Y(n12));
  MX2X1    g003(.A(\dna_val[1] ), .B(\dna_val[2] ), .S0(SHIFT), .Y(new_n297_1));
  AND2X1   g004(.A(new_n297_1), .B(new_n294), .Y(n17));
  MX2X1    g005(.A(\dna_val[2] ), .B(\dna_val[3] ), .S0(SHIFT), .Y(new_n299));
  AND2X1   g006(.A(new_n299), .B(new_n294), .Y(n22));
  MX2X1    g007(.A(\dna_val[3] ), .B(\dna_val[4] ), .S0(SHIFT), .Y(new_n301));
  AND2X1   g008(.A(new_n301), .B(new_n294), .Y(n27));
  MX2X1    g009(.A(\dna_val[4] ), .B(\dna_val[5] ), .S0(SHIFT), .Y(new_n303));
  AND2X1   g010(.A(new_n303), .B(new_n294), .Y(n32));
  MX2X1    g011(.A(\dna_val[5] ), .B(\dna_val[6] ), .S0(SHIFT), .Y(new_n305));
  AND2X1   g012(.A(new_n305), .B(new_n294), .Y(n37));
  MX2X1    g013(.A(\dna_val[6] ), .B(\dna_val[7] ), .S0(SHIFT), .Y(new_n307_1));
  AND2X1   g014(.A(new_n307_1), .B(new_n294), .Y(n42));
  MX2X1    g015(.A(\dna_val[7] ), .B(\dna_val[8] ), .S0(SHIFT), .Y(new_n309));
  AND2X1   g016(.A(new_n309), .B(new_n294), .Y(n47));
  MX2X1    g017(.A(\dna_val[8] ), .B(\dna_val[9] ), .S0(SHIFT), .Y(new_n311));
  AND2X1   g018(.A(new_n311), .B(new_n294), .Y(n52));
  MX2X1    g019(.A(\dna_val[9] ), .B(\dna_val[10] ), .S0(SHIFT), .Y(new_n313));
  AND2X1   g020(.A(new_n313), .B(new_n294), .Y(n57));
  MX2X1    g021(.A(\dna_val[10] ), .B(\dna_val[11] ), .S0(SHIFT), .Y(new_n315));
  AND2X1   g022(.A(new_n315), .B(new_n294), .Y(n62));
  MX2X1    g023(.A(\dna_val[11] ), .B(\dna_val[12] ), .S0(SHIFT), .Y(new_n317_1));
  AND2X1   g024(.A(new_n317_1), .B(new_n294), .Y(n67));
  MX2X1    g025(.A(\dna_val[12] ), .B(\dna_val[13] ), .S0(SHIFT), .Y(new_n319));
  AND2X1   g026(.A(new_n319), .B(new_n294), .Y(n72));
  MX2X1    g027(.A(\dna_val[13] ), .B(\dna_val[14] ), .S0(SHIFT), .Y(new_n321));
  AND2X1   g028(.A(new_n321), .B(new_n294), .Y(n77));
  MX2X1    g029(.A(\dna_val[14] ), .B(\dna_val[15] ), .S0(SHIFT), .Y(new_n323));
  AND2X1   g030(.A(new_n323), .B(new_n294), .Y(n82));
  MX2X1    g031(.A(\dna_val[15] ), .B(\dna_val[16] ), .S0(SHIFT), .Y(new_n325));
  AND2X1   g032(.A(new_n325), .B(new_n294), .Y(n87));
  MX2X1    g033(.A(\dna_val[16] ), .B(\dna_val[17] ), .S0(SHIFT), .Y(new_n327_1));
  AND2X1   g034(.A(new_n327_1), .B(new_n294), .Y(n92));
  MX2X1    g035(.A(\dna_val[17] ), .B(\dna_val[18] ), .S0(SHIFT), .Y(new_n329));
  AND2X1   g036(.A(new_n329), .B(new_n294), .Y(n97));
  MX2X1    g037(.A(\dna_val[18] ), .B(\dna_val[19] ), .S0(SHIFT), .Y(new_n331));
  AND2X1   g038(.A(new_n331), .B(new_n294), .Y(n102));
  MX2X1    g039(.A(\dna_val[19] ), .B(\dna_val[20] ), .S0(SHIFT), .Y(new_n333));
  AND2X1   g040(.A(new_n333), .B(new_n294), .Y(n107));
  MX2X1    g041(.A(\dna_val[20] ), .B(\dna_val[21] ), .S0(SHIFT), .Y(new_n335));
  AND2X1   g042(.A(new_n335), .B(new_n294), .Y(n112));
  MX2X1    g043(.A(\dna_val[21] ), .B(\dna_val[22] ), .S0(SHIFT), .Y(new_n337_1));
  AND2X1   g044(.A(new_n337_1), .B(new_n294), .Y(n117));
  MX2X1    g045(.A(\dna_val[22] ), .B(\dna_val[23] ), .S0(SHIFT), .Y(new_n339));
  AND2X1   g046(.A(new_n339), .B(new_n294), .Y(n122));
  MX2X1    g047(.A(\dna_val[23] ), .B(\dna_val[24] ), .S0(SHIFT), .Y(new_n341));
  AND2X1   g048(.A(new_n341), .B(new_n294), .Y(n127));
  MX2X1    g049(.A(\dna_val[24] ), .B(\dna_val[25] ), .S0(SHIFT), .Y(new_n343));
  AND2X1   g050(.A(new_n343), .B(new_n294), .Y(n132));
  MX2X1    g051(.A(\dna_val[25] ), .B(\dna_val[26] ), .S0(SHIFT), .Y(new_n345));
  AND2X1   g052(.A(new_n345), .B(new_n294), .Y(n137));
  MX2X1    g053(.A(\dna_val[26] ), .B(\dna_val[27] ), .S0(SHIFT), .Y(new_n347_1));
  AND2X1   g054(.A(new_n347_1), .B(new_n294), .Y(n142));
  MX2X1    g055(.A(\dna_val[27] ), .B(\dna_val[28] ), .S0(SHIFT), .Y(new_n349));
  AND2X1   g056(.A(new_n349), .B(new_n294), .Y(n147));
  MX2X1    g057(.A(\dna_val[28] ), .B(\dna_val[29] ), .S0(SHIFT), .Y(new_n351));
  AND2X1   g058(.A(new_n351), .B(new_n294), .Y(n152));
  MX2X1    g059(.A(\dna_val[29] ), .B(\dna_val[30] ), .S0(SHIFT), .Y(new_n353));
  AND2X1   g060(.A(new_n353), .B(new_n294), .Y(n157));
  MX2X1    g061(.A(\dna_val[30] ), .B(\dna_val[31] ), .S0(SHIFT), .Y(new_n355));
  AND2X1   g062(.A(new_n355), .B(new_n294), .Y(n162));
  MX2X1    g063(.A(\dna_val[31] ), .B(\dna_val[32] ), .S0(SHIFT), .Y(new_n357_1));
  AND2X1   g064(.A(new_n357_1), .B(new_n294), .Y(n167));
  MX2X1    g065(.A(\dna_val[32] ), .B(\dna_val[33] ), .S0(SHIFT), .Y(new_n359));
  AND2X1   g066(.A(new_n359), .B(new_n294), .Y(n172));
  MX2X1    g067(.A(\dna_val[33] ), .B(\dna_val[34] ), .S0(SHIFT), .Y(new_n361));
  AND2X1   g068(.A(new_n361), .B(new_n294), .Y(n177));
  MX2X1    g069(.A(\dna_val[34] ), .B(\dna_val[35] ), .S0(SHIFT), .Y(new_n363));
  AND2X1   g070(.A(new_n363), .B(new_n294), .Y(n182));
  MX2X1    g071(.A(\dna_val[35] ), .B(\dna_val[36] ), .S0(SHIFT), .Y(new_n365));
  AND2X1   g072(.A(new_n365), .B(new_n294), .Y(n187));
  MX2X1    g073(.A(\dna_val[36] ), .B(\dna_val[37] ), .S0(SHIFT), .Y(new_n367_1));
  AND2X1   g074(.A(new_n367_1), .B(new_n294), .Y(n192));
  MX2X1    g075(.A(\dna_val[37] ), .B(\dna_val[38] ), .S0(SHIFT), .Y(new_n369));
  AND2X1   g076(.A(new_n369), .B(new_n294), .Y(n197));
  MX2X1    g077(.A(\dna_val[38] ), .B(\dna_val[39] ), .S0(SHIFT), .Y(new_n371));
  AND2X1   g078(.A(new_n371), .B(new_n294), .Y(n202));
  MX2X1    g079(.A(\dna_val[39] ), .B(\dna_val[40] ), .S0(SHIFT), .Y(new_n373));
  AND2X1   g080(.A(new_n373), .B(new_n294), .Y(n207));
  MX2X1    g081(.A(\dna_val[40] ), .B(\dna_val[41] ), .S0(SHIFT), .Y(new_n375));
  AND2X1   g082(.A(new_n375), .B(new_n294), .Y(n212));
  MX2X1    g083(.A(\dna_val[41] ), .B(\dna_val[42] ), .S0(SHIFT), .Y(new_n377_1));
  AND2X1   g084(.A(new_n377_1), .B(new_n294), .Y(n217));
  MX2X1    g085(.A(\dna_val[42] ), .B(\dna_val[43] ), .S0(SHIFT), .Y(new_n379));
  AND2X1   g086(.A(new_n379), .B(new_n294), .Y(n222));
  MX2X1    g087(.A(\dna_val[43] ), .B(\dna_val[44] ), .S0(SHIFT), .Y(new_n381));
  AND2X1   g088(.A(new_n381), .B(new_n294), .Y(n227));
  MX2X1    g089(.A(\dna_val[44] ), .B(\dna_val[45] ), .S0(SHIFT), .Y(new_n383));
  AND2X1   g090(.A(new_n383), .B(new_n294), .Y(n232));
  MX2X1    g091(.A(\dna_val[45] ), .B(\dna_val[46] ), .S0(SHIFT), .Y(new_n385));
  AND2X1   g092(.A(new_n385), .B(new_n294), .Y(n237));
  MX2X1    g093(.A(\dna_val[46] ), .B(\dna_val[47] ), .S0(SHIFT), .Y(new_n387_1));
  AND2X1   g094(.A(new_n387_1), .B(new_n294), .Y(n242));
  MX2X1    g095(.A(\dna_val[47] ), .B(\dna_val[48] ), .S0(SHIFT), .Y(new_n389));
  AND2X1   g096(.A(new_n389), .B(new_n294), .Y(n247));
  MX2X1    g097(.A(\dna_val[48] ), .B(\dna_val[49] ), .S0(SHIFT), .Y(new_n391));
  AND2X1   g098(.A(new_n391), .B(new_n294), .Y(n252));
  MX2X1    g099(.A(\dna_val[49] ), .B(\dna_val[50] ), .S0(SHIFT), .Y(new_n393));
  AND2X1   g100(.A(new_n393), .B(new_n294), .Y(n257));
  MX2X1    g101(.A(\dna_val[50] ), .B(\dna_val[51] ), .S0(SHIFT), .Y(new_n395));
  AND2X1   g102(.A(new_n395), .B(new_n294), .Y(n262));
  MX2X1    g103(.A(\dna_val[51] ), .B(\dna_val[52] ), .S0(SHIFT), .Y(new_n397_1));
  AND2X1   g104(.A(new_n397_1), .B(new_n294), .Y(n267));
  MX2X1    g105(.A(\dna_val[52] ), .B(\dna_val[53] ), .S0(SHIFT), .Y(new_n399));
  AND2X1   g106(.A(new_n399), .B(new_n294), .Y(n272));
  MX2X1    g107(.A(\dna_val[53] ), .B(\dna_val[54] ), .S0(SHIFT), .Y(new_n401));
  AND2X1   g108(.A(new_n401), .B(new_n294), .Y(n277));
  MX2X1    g109(.A(\dna_val[54] ), .B(\dna_val[55] ), .S0(SHIFT), .Y(new_n403));
  AND2X1   g110(.A(new_n403), .B(new_n294), .Y(n282));
  MX2X1    g111(.A(\dna_val[55] ), .B(\dna_val[56] ), .S0(SHIFT), .Y(new_n405));
  AND2X1   g112(.A(new_n405), .B(new_n294), .Y(n287));
  MX2X1    g113(.A(\dna_val[56] ), .B(\dna_val[57] ), .S0(SHIFT), .Y(new_n407_1));
  AND2X1   g114(.A(new_n407_1), .B(new_n294), .Y(n292));
  MX2X1    g115(.A(\dna_val[57] ), .B(\dna_val[58] ), .S0(SHIFT), .Y(new_n409));
  AND2X1   g116(.A(new_n409), .B(new_n294), .Y(n297));
  MX2X1    g117(.A(\dna_val[58] ), .B(\dna_val[59] ), .S0(SHIFT), .Y(new_n411));
  AND2X1   g118(.A(new_n411), .B(new_n294), .Y(n302));
  MX2X1    g119(.A(\dna_val[59] ), .B(\dna_val[60] ), .S0(SHIFT), .Y(new_n413));
  AND2X1   g120(.A(new_n413), .B(new_n294), .Y(n307));
  MX2X1    g121(.A(\dna_val[60] ), .B(\dna_val[61] ), .S0(SHIFT), .Y(new_n415));
  AND2X1   g122(.A(new_n415), .B(new_n294), .Y(n312));
  MX2X1    g123(.A(\dna_val[61] ), .B(\dna_val[62] ), .S0(SHIFT), .Y(new_n417_1));
  AND2X1   g124(.A(new_n417_1), .B(new_n294), .Y(n317));
  MX2X1    g125(.A(\dna_val[62] ), .B(\dna_val[63] ), .S0(SHIFT), .Y(new_n419));
  AND2X1   g126(.A(new_n419), .B(new_n294), .Y(n322));
  MX2X1    g127(.A(\dna_val[63] ), .B(\dna_val[64] ), .S0(SHIFT), .Y(new_n421));
  AND2X1   g128(.A(new_n421), .B(new_n294), .Y(n327));
  MX2X1    g129(.A(\dna_val[64] ), .B(\dna_val[65] ), .S0(SHIFT), .Y(new_n423));
  AND2X1   g130(.A(new_n423), .B(new_n294), .Y(n332));
  MX2X1    g131(.A(\dna_val[65] ), .B(\dna_val[66] ), .S0(SHIFT), .Y(new_n425));
  AND2X1   g132(.A(new_n425), .B(new_n294), .Y(n337));
  MX2X1    g133(.A(\dna_val[66] ), .B(\dna_val[67] ), .S0(SHIFT), .Y(new_n427_1));
  AND2X1   g134(.A(new_n427_1), .B(new_n294), .Y(n342));
  MX2X1    g135(.A(\dna_val[67] ), .B(\dna_val[68] ), .S0(SHIFT), .Y(new_n429));
  AND2X1   g136(.A(new_n429), .B(new_n294), .Y(n347));
  MX2X1    g137(.A(\dna_val[68] ), .B(\dna_val[69] ), .S0(SHIFT), .Y(new_n431));
  AND2X1   g138(.A(new_n431), .B(new_n294), .Y(n352));
  MX2X1    g139(.A(\dna_val[69] ), .B(\dna_val[70] ), .S0(SHIFT), .Y(new_n433));
  AND2X1   g140(.A(new_n433), .B(new_n294), .Y(n357));
  MX2X1    g141(.A(\dna_val[70] ), .B(\dna_val[71] ), .S0(SHIFT), .Y(new_n435));
  AND2X1   g142(.A(new_n435), .B(new_n294), .Y(n362));
  MX2X1    g143(.A(\dna_val[71] ), .B(\dna_val[72] ), .S0(SHIFT), .Y(new_n437_1));
  AND2X1   g144(.A(new_n437_1), .B(new_n294), .Y(n367));
  MX2X1    g145(.A(\dna_val[72] ), .B(\dna_val[73] ), .S0(SHIFT), .Y(new_n439));
  AND2X1   g146(.A(new_n439), .B(new_n294), .Y(n372));
  MX2X1    g147(.A(\dna_val[73] ), .B(\dna_val[74] ), .S0(SHIFT), .Y(new_n441));
  AND2X1   g148(.A(new_n441), .B(new_n294), .Y(n377));
  MX2X1    g149(.A(\dna_val[74] ), .B(\dna_val[75] ), .S0(SHIFT), .Y(new_n443));
  AND2X1   g150(.A(new_n443), .B(new_n294), .Y(n382));
  MX2X1    g151(.A(\dna_val[75] ), .B(\dna_val[76] ), .S0(SHIFT), .Y(new_n445));
  AND2X1   g152(.A(new_n445), .B(new_n294), .Y(n387));
  MX2X1    g153(.A(\dna_val[76] ), .B(\dna_val[77] ), .S0(SHIFT), .Y(new_n447_1));
  AND2X1   g154(.A(new_n447_1), .B(new_n294), .Y(n392));
  MX2X1    g155(.A(\dna_val[77] ), .B(\dna_val[78] ), .S0(SHIFT), .Y(new_n449));
  AND2X1   g156(.A(new_n449), .B(new_n294), .Y(n397));
  MX2X1    g157(.A(\dna_val[78] ), .B(\dna_val[79] ), .S0(SHIFT), .Y(new_n451));
  AND2X1   g158(.A(new_n451), .B(new_n294), .Y(n402));
  MX2X1    g159(.A(\dna_val[79] ), .B(\dna_val[80] ), .S0(SHIFT), .Y(new_n453));
  AND2X1   g160(.A(new_n453), .B(new_n294), .Y(n407));
  MX2X1    g161(.A(\dna_val[80] ), .B(\dna_val[81] ), .S0(SHIFT), .Y(new_n455));
  AND2X1   g162(.A(new_n455), .B(new_n294), .Y(n412));
  MX2X1    g163(.A(\dna_val[81] ), .B(\dna_val[82] ), .S0(SHIFT), .Y(new_n457_1));
  AND2X1   g164(.A(new_n457_1), .B(new_n294), .Y(n417));
  MX2X1    g165(.A(\dna_val[82] ), .B(\dna_val[83] ), .S0(SHIFT), .Y(new_n459));
  AND2X1   g166(.A(new_n459), .B(new_n294), .Y(n422));
  MX2X1    g167(.A(\dna_val[83] ), .B(\dna_val[84] ), .S0(SHIFT), .Y(new_n461));
  AND2X1   g168(.A(new_n461), .B(new_n294), .Y(n427));
  MX2X1    g169(.A(\dna_val[84] ), .B(\dna_val[85] ), .S0(SHIFT), .Y(new_n463));
  AND2X1   g170(.A(new_n463), .B(new_n294), .Y(n432));
  MX2X1    g171(.A(\dna_val[85] ), .B(\dna_val[86] ), .S0(SHIFT), .Y(new_n465));
  AND2X1   g172(.A(new_n465), .B(new_n294), .Y(n437));
  MX2X1    g173(.A(\dna_val[86] ), .B(\dna_val[87] ), .S0(SHIFT), .Y(new_n467_1));
  AND2X1   g174(.A(new_n467_1), .B(new_n294), .Y(n442));
  MX2X1    g175(.A(\dna_val[87] ), .B(\dna_val[88] ), .S0(SHIFT), .Y(new_n469));
  AND2X1   g176(.A(new_n469), .B(new_n294), .Y(n447));
  MX2X1    g177(.A(\dna_val[88] ), .B(\dna_val[89] ), .S0(SHIFT), .Y(new_n471));
  AND2X1   g178(.A(new_n471), .B(new_n294), .Y(n452));
  MX2X1    g179(.A(\dna_val[89] ), .B(\dna_val[90] ), .S0(SHIFT), .Y(new_n473));
  AND2X1   g180(.A(new_n473), .B(new_n294), .Y(n457));
  MX2X1    g181(.A(\dna_val[90] ), .B(\dna_val[91] ), .S0(SHIFT), .Y(new_n475));
  AND2X1   g182(.A(new_n475), .B(new_n294), .Y(n462));
  MX2X1    g183(.A(\dna_val[91] ), .B(\dna_val[92] ), .S0(SHIFT), .Y(new_n477_1));
  AND2X1   g184(.A(new_n477_1), .B(new_n294), .Y(n467));
  MX2X1    g185(.A(\dna_val[92] ), .B(\dna_val[93] ), .S0(SHIFT), .Y(new_n479));
  AND2X1   g186(.A(new_n479), .B(new_n294), .Y(n472));
  MX2X1    g187(.A(\dna_val[93] ), .B(\dna_val[94] ), .S0(SHIFT), .Y(new_n481));
  AND2X1   g188(.A(new_n481), .B(new_n294), .Y(n477));
  MX2X1    g189(.A(\dna_val[94] ), .B(\dna_val[95] ), .S0(SHIFT), .Y(new_n483));
  AND2X1   g190(.A(new_n483), .B(new_n294), .Y(n482));
  MX2X1    g191(.A(\dna_val[95] ), .B(DIN), .S0(SHIFT), .Y(new_n485));
  AND2X1   g192(.A(new_n485), .B(new_n294), .Y(n487));
  BUFX1    g193(.A(dout_out), .Y(DOUT));
  always @ (posedge clock) begin
    dout_out <= n12;
    \dna_val[1]  <= n17;
    \dna_val[2]  <= n22;
    \dna_val[3]  <= n27;
    \dna_val[4]  <= n32;
    \dna_val[5]  <= n37;
    \dna_val[6]  <= n42;
    \dna_val[7]  <= n47;
    \dna_val[8]  <= n52;
    \dna_val[9]  <= n57;
    \dna_val[10]  <= n62;
    \dna_val[11]  <= n67;
    \dna_val[12]  <= n72;
    \dna_val[13]  <= n77;
    \dna_val[14]  <= n82;
    \dna_val[15]  <= n87;
    \dna_val[16]  <= n92;
    \dna_val[17]  <= n97;
    \dna_val[18]  <= n102;
    \dna_val[19]  <= n107;
    \dna_val[20]  <= n112;
    \dna_val[21]  <= n117;
    \dna_val[22]  <= n122;
    \dna_val[23]  <= n127;
    \dna_val[24]  <= n132;
    \dna_val[25]  <= n137;
    \dna_val[26]  <= n142;
    \dna_val[27]  <= n147;
    \dna_val[28]  <= n152;
    \dna_val[29]  <= n157;
    \dna_val[30]  <= n162;
    \dna_val[31]  <= n167;
    \dna_val[32]  <= n172;
    \dna_val[33]  <= n177;
    \dna_val[34]  <= n182;
    \dna_val[35]  <= n187;
    \dna_val[36]  <= n192;
    \dna_val[37]  <= n197;
    \dna_val[38]  <= n202;
    \dna_val[39]  <= n207;
    \dna_val[40]  <= n212;
    \dna_val[41]  <= n217;
    \dna_val[42]  <= n222;
    \dna_val[43]  <= n227;
    \dna_val[44]  <= n232;
    \dna_val[45]  <= n237;
    \dna_val[46]  <= n242;
    \dna_val[47]  <= n247;
    \dna_val[48]  <= n252;
    \dna_val[49]  <= n257;
    \dna_val[50]  <= n262;
    \dna_val[51]  <= n267;
    \dna_val[52]  <= n272;
    \dna_val[53]  <= n277;
    \dna_val[54]  <= n282;
    \dna_val[55]  <= n287;
    \dna_val[56]  <= n292;
    \dna_val[57]  <= n297;
    \dna_val[58]  <= n302;
    \dna_val[59]  <= n307;
    \dna_val[60]  <= n312;
    \dna_val[61]  <= n317;
    \dna_val[62]  <= n322;
    \dna_val[63]  <= n327;
    \dna_val[64]  <= n332;
    \dna_val[65]  <= n337;
    \dna_val[66]  <= n342;
    \dna_val[67]  <= n347;
    \dna_val[68]  <= n352;
    \dna_val[69]  <= n357;
    \dna_val[70]  <= n362;
    \dna_val[71]  <= n367;
    \dna_val[72]  <= n372;
    \dna_val[73]  <= n377;
    \dna_val[74]  <= n382;
    \dna_val[75]  <= n387;
    \dna_val[76]  <= n392;
    \dna_val[77]  <= n397;
    \dna_val[78]  <= n402;
    \dna_val[79]  <= n407;
    \dna_val[80]  <= n412;
    \dna_val[81]  <= n417;
    \dna_val[82]  <= n422;
    \dna_val[83]  <= n427;
    \dna_val[84]  <= n432;
    \dna_val[85]  <= n437;
    \dna_val[86]  <= n442;
    \dna_val[87]  <= n447;
    \dna_val[88]  <= n452;
    \dna_val[89]  <= n457;
    \dna_val[90]  <= n462;
    \dna_val[91]  <= n467;
    \dna_val[92]  <= n472;
    \dna_val[93]  <= n477;
    \dna_val[94]  <= n482;
    \dna_val[95]  <= n487;
  end
  initial begin
    \dna_val[1]  <= 1'b0;
    \dna_val[2]  <= 1'b0;
    \dna_val[3]  <= 1'b0;
    \dna_val[4]  <= 1'b0;
    \dna_val[5]  <= 1'b0;
    \dna_val[6]  <= 1'b0;
    \dna_val[7]  <= 1'b0;
    \dna_val[8]  <= 1'b0;
    \dna_val[9]  <= 1'b0;
    \dna_val[10]  <= 1'b0;
    \dna_val[11]  <= 1'b0;
    \dna_val[12]  <= 1'b0;
    \dna_val[13]  <= 1'b0;
    \dna_val[14]  <= 1'b0;
    \dna_val[15]  <= 1'b0;
    \dna_val[16]  <= 1'b0;
    \dna_val[17]  <= 1'b0;
    \dna_val[18]  <= 1'b0;
    \dna_val[19]  <= 1'b0;
    \dna_val[20]  <= 1'b0;
    \dna_val[21]  <= 1'b0;
    \dna_val[22]  <= 1'b0;
    \dna_val[23]  <= 1'b0;
    \dna_val[24]  <= 1'b0;
    \dna_val[25]  <= 1'b0;
    \dna_val[26]  <= 1'b0;
    \dna_val[27]  <= 1'b0;
    \dna_val[28]  <= 1'b0;
    \dna_val[29]  <= 1'b0;
    \dna_val[30]  <= 1'b0;
    \dna_val[31]  <= 1'b0;
    \dna_val[32]  <= 1'b0;
    \dna_val[33]  <= 1'b0;
    \dna_val[34]  <= 1'b0;
    \dna_val[35]  <= 1'b0;
    \dna_val[36]  <= 1'b0;
    \dna_val[37]  <= 1'b0;
    \dna_val[38]  <= 1'b0;
    \dna_val[39]  <= 1'b0;
    \dna_val[40]  <= 1'b0;
    \dna_val[41]  <= 1'b0;
    \dna_val[42]  <= 1'b0;
    \dna_val[43]  <= 1'b0;
    \dna_val[44]  <= 1'b0;
    \dna_val[45]  <= 1'b0;
    \dna_val[46]  <= 1'b0;
    \dna_val[47]  <= 1'b0;
    \dna_val[48]  <= 1'b0;
    \dna_val[49]  <= 1'b0;
    \dna_val[50]  <= 1'b0;
    \dna_val[51]  <= 1'b0;
    \dna_val[52]  <= 1'b0;
    \dna_val[53]  <= 1'b0;
    \dna_val[54]  <= 1'b0;
    \dna_val[55]  <= 1'b0;
    \dna_val[56]  <= 1'b0;
    \dna_val[57]  <= 1'b0;
    \dna_val[58]  <= 1'b0;
    \dna_val[59]  <= 1'b0;
    \dna_val[60]  <= 1'b0;
    \dna_val[61]  <= 1'b0;
    \dna_val[62]  <= 1'b0;
    \dna_val[63]  <= 1'b0;
    \dna_val[64]  <= 1'b0;
    \dna_val[65]  <= 1'b0;
    \dna_val[66]  <= 1'b0;
    \dna_val[67]  <= 1'b0;
    \dna_val[68]  <= 1'b0;
    \dna_val[69]  <= 1'b0;
    \dna_val[70]  <= 1'b0;
    \dna_val[71]  <= 1'b0;
    \dna_val[72]  <= 1'b0;
    \dna_val[73]  <= 1'b0;
    \dna_val[74]  <= 1'b0;
    \dna_val[75]  <= 1'b0;
    \dna_val[76]  <= 1'b0;
    \dna_val[77]  <= 1'b0;
    \dna_val[78]  <= 1'b0;
    \dna_val[79]  <= 1'b0;
    \dna_val[80]  <= 1'b0;
    \dna_val[81]  <= 1'b0;
    \dna_val[82]  <= 1'b0;
    \dna_val[83]  <= 1'b0;
    \dna_val[84]  <= 1'b0;
    \dna_val[85]  <= 1'b0;
    \dna_val[86]  <= 1'b0;
    \dna_val[87]  <= 1'b0;
    \dna_val[88]  <= 1'b0;
    \dna_val[89]  <= 1'b0;
    \dna_val[90]  <= 1'b0;
    \dna_val[91]  <= 1'b0;
    \dna_val[92]  <= 1'b0;
    \dna_val[93]  <= 1'b0;
    \dna_val[94]  <= 1'b0;
    \dna_val[95]  <= 1'b0;
  end
endmodule


