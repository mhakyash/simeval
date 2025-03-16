// Benchmark "transition_detector" written by ABC on Wed Jun 26 15:22:21 2024

module transition_detector ( clock, 
    clk, \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] , \in[6] ,
    \in[7] , \in[8] , \in[9] , \in[10] , \in[11] , \in[12] , \in[13] ,
    \in[14] , \in[15] , \in[16] , \in[17] , \in[18] , \in[19] , \in[20] ,
    \in[21] , \in[22] , \in[23] , \in[24] , \in[25] , \in[26] , \in[27] ,
    \in[28] , \in[29] , \in[30] , \in[31] ,
    \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] , \out[8] , \out[9] , \out[10] , \out[11] , \out[12] ,
    \out[13] , \out[14] , \out[15] , \out[16] , \out[17] , \out[18] ,
    \out[19] , \out[20] , \out[21] , \out[22] , \out[23] , \out[24] ,
    \out[25] , \out[26] , \out[27] , \out[28] , \out[29] , \out[30] ,
    \out[31]   );
  input  clock;
  input  clk, \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] ,
    \in[6] , \in[7] , \in[8] , \in[9] , \in[10] , \in[11] , \in[12] ,
    \in[13] , \in[14] , \in[15] , \in[16] , \in[17] , \in[18] , \in[19] ,
    \in[20] , \in[21] , \in[22] , \in[23] , \in[24] , \in[25] , \in[26] ,
    \in[27] , \in[28] , \in[29] , \in[30] , \in[31] ;
  output \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] , \out[8] , \out[9] , \out[10] , \out[11] , \out[12] ,
    \out[13] , \out[14] , \out[15] , \out[16] , \out[17] , \out[18] ,
    \out[19] , \out[20] , \out[21] , \out[22] , \out[23] , \out[24] ,
    \out[25] , \out[26] , \out[27] , \out[28] , \out[29] , \out[30] ,
    \out[31] ;
  reg \out_hold[31] , \out_hold[30] , \out_hold[29] , \out_hold[28] ,
    \out_hold[27] , \out_hold[26] , \out_hold[25] , \out_hold[24] ,
    \out_hold[23] , \out_hold[22] , \out_hold[21] , \out_hold[20] ,
    \out_hold[19] , \out_hold[18] , \out_hold[17] , \out_hold[16] ,
    \out_hold[15] , \out_hold[14] , \out_hold[13] , \out_hold[12] ,
    \out_hold[11] , \out_hold[10] , \out_hold[9] , \out_hold[8] ,
    \out_hold[7] , \out_hold[6] , \out_hold[5] , \out_hold[4] ,
    \out_hold[3] , \out_hold[2] , \out_hold[1] , \out_hold[0] ,
    \out_reg[0] , \out_reg[1] , \out_reg[2] , \out_reg[3] , \out_reg[4] ,
    \out_reg[5] , \out_reg[6] , \out_reg[7] , \out_reg[8] , \out_reg[9] ,
    \out_reg[10] , \out_reg[11] , \out_reg[12] , \out_reg[13] ,
    \out_reg[14] , \out_reg[15] , \out_reg[16] , \out_reg[17] ,
    \out_reg[18] , \out_reg[19] , \out_reg[20] , \out_reg[21] ,
    \out_reg[22] , \out_reg[23] , \out_reg[24] , \out_reg[25] ,
    \out_reg[26] , \out_reg[27] , \out_reg[28] , \out_reg[29] ,
    \out_reg[30] , \out_reg[31] , \in_reg[0] , \in_reg[1] , \in_reg[2] ,
    \in_reg[3] , \in_reg[4] , \in_reg[5] , \in_reg[6] , \in_reg[7] ,
    \in_reg[8] , \in_reg[9] , \in_reg[10] , \in_reg[11] , \in_reg[12] ,
    \in_reg[13] , \in_reg[14] , \in_reg[15] , \in_reg[16] , \in_reg[17] ,
    \in_reg[18] , \in_reg[19] , \in_reg[20] , \in_reg[21] , \in_reg[22] ,
    \in_reg[23] , \in_reg[24] , \in_reg[25] , \in_reg[26] , \in_reg[27] ,
    \in_reg[28] , \in_reg[29] , \in_reg[30] , \in_reg[31] ;
  wire new_n354, new_n356, new_n357_1, new_n359, new_n360, new_n362_1,
    new_n363, new_n365, new_n366, new_n368, new_n369, new_n371, new_n372_1,
    new_n374, new_n375, new_n377_1, new_n378, new_n380, new_n381, new_n383,
    new_n384, new_n386, new_n387_1, new_n389, new_n390, new_n392_1,
    new_n393, new_n395, new_n396, new_n398, new_n399, new_n401, new_n402_1,
    new_n404, new_n405, new_n407_1, new_n408, new_n410, new_n411, new_n413,
    new_n414, new_n416, new_n417_1, new_n419, new_n420, new_n422_1,
    new_n423, new_n425, new_n426, new_n428, new_n429, new_n431, new_n432_1,
    new_n434, new_n435, new_n437_1, new_n438, new_n440, new_n441, new_n443,
    new_n444, new_n446, new_n447_1, new_n449, new_n450, new_n451_1,
    new_n452, new_n453, new_n454, new_n455_1, new_n456, new_n457, new_n458,
    n132, n137, n142, n147, n152, n157, n162, n167, n172, n177, n182, n187,
    n192, n197, n202, n207, n212, n217, n222, n227, n232, n237, n242, n247,
    n252, n257, n262, n267, n272, n277, n282, n287, n292, n297, n302, n307,
    n312, n317, n322, n327, n332, n337, n342, n347, n352, n357, n362, n367,
    n372, n377, n382, n387, n392, n397, n402, n407, n412, n417, n422, n427,
    n432, n437, n442, n447, n451, n455, n459, n463, n467, n471, n475, n479,
    n483, n487, n491, n495, n499, n503, n507, n511, n515, n519, n523, n527,
    n531, n535, n539, n543, n547, n551, n555, n559, n563, n567, n571, n575;
  INVX1    g000(.A(\out_hold[31] ), .Y(new_n354));
  NAND2X1  g001(.A(\in_reg[31] ), .B(new_n354), .Y(n132));
  INVX1    g002(.A(\out_hold[30] ), .Y(new_n356));
  XOR2X1   g003(.A(\in_reg[31] ), .B(\in_reg[30] ), .Y(new_n357_1));
  NAND2X1  g004(.A(new_n357_1), .B(new_n356), .Y(n137));
  INVX1    g005(.A(\out_hold[29] ), .Y(new_n359));
  XOR2X1   g006(.A(\in_reg[30] ), .B(\in_reg[29] ), .Y(new_n360));
  NAND2X1  g007(.A(new_n360), .B(new_n359), .Y(n142));
  INVX1    g008(.A(\out_hold[28] ), .Y(new_n362_1));
  XOR2X1   g009(.A(\in_reg[29] ), .B(\in_reg[28] ), .Y(new_n363));
  NAND2X1  g010(.A(new_n363), .B(new_n362_1), .Y(n147));
  INVX1    g011(.A(\out_hold[27] ), .Y(new_n365));
  XOR2X1   g012(.A(\in_reg[28] ), .B(\in_reg[27] ), .Y(new_n366));
  NAND2X1  g013(.A(new_n366), .B(new_n365), .Y(n152));
  INVX1    g014(.A(\out_hold[26] ), .Y(new_n368));
  XOR2X1   g015(.A(\in_reg[27] ), .B(\in_reg[26] ), .Y(new_n369));
  NAND2X1  g016(.A(new_n369), .B(new_n368), .Y(n157));
  INVX1    g017(.A(\out_hold[25] ), .Y(new_n371));
  XOR2X1   g018(.A(\in_reg[26] ), .B(\in_reg[25] ), .Y(new_n372_1));
  NAND2X1  g019(.A(new_n372_1), .B(new_n371), .Y(n162));
  INVX1    g020(.A(\out_hold[24] ), .Y(new_n374));
  XOR2X1   g021(.A(\in_reg[25] ), .B(\in_reg[24] ), .Y(new_n375));
  NAND2X1  g022(.A(new_n375), .B(new_n374), .Y(n167));
  INVX1    g023(.A(\out_hold[23] ), .Y(new_n377_1));
  XOR2X1   g024(.A(\in_reg[24] ), .B(\in_reg[23] ), .Y(new_n378));
  NAND2X1  g025(.A(new_n378), .B(new_n377_1), .Y(n172));
  INVX1    g026(.A(\out_hold[22] ), .Y(new_n380));
  XOR2X1   g027(.A(\in_reg[23] ), .B(\in_reg[22] ), .Y(new_n381));
  NAND2X1  g028(.A(new_n381), .B(new_n380), .Y(n177));
  INVX1    g029(.A(\out_hold[21] ), .Y(new_n383));
  XOR2X1   g030(.A(\in_reg[22] ), .B(\in_reg[21] ), .Y(new_n384));
  NAND2X1  g031(.A(new_n384), .B(new_n383), .Y(n182));
  INVX1    g032(.A(\out_hold[20] ), .Y(new_n386));
  XOR2X1   g033(.A(\in_reg[21] ), .B(\in_reg[20] ), .Y(new_n387_1));
  NAND2X1  g034(.A(new_n387_1), .B(new_n386), .Y(n187));
  INVX1    g035(.A(\out_hold[19] ), .Y(new_n389));
  XOR2X1   g036(.A(\in_reg[20] ), .B(\in_reg[19] ), .Y(new_n390));
  NAND2X1  g037(.A(new_n390), .B(new_n389), .Y(n192));
  INVX1    g038(.A(\out_hold[18] ), .Y(new_n392_1));
  XOR2X1   g039(.A(\in_reg[19] ), .B(\in_reg[18] ), .Y(new_n393));
  NAND2X1  g040(.A(new_n393), .B(new_n392_1), .Y(n197));
  INVX1    g041(.A(\out_hold[17] ), .Y(new_n395));
  XOR2X1   g042(.A(\in_reg[18] ), .B(\in_reg[17] ), .Y(new_n396));
  NAND2X1  g043(.A(new_n396), .B(new_n395), .Y(n202));
  INVX1    g044(.A(\out_hold[16] ), .Y(new_n398));
  XOR2X1   g045(.A(\in_reg[17] ), .B(\in_reg[16] ), .Y(new_n399));
  NAND2X1  g046(.A(new_n399), .B(new_n398), .Y(n207));
  INVX1    g047(.A(\out_hold[15] ), .Y(new_n401));
  XOR2X1   g048(.A(\in_reg[16] ), .B(\in_reg[15] ), .Y(new_n402_1));
  NAND2X1  g049(.A(new_n402_1), .B(new_n401), .Y(n212));
  INVX1    g050(.A(\out_hold[14] ), .Y(new_n404));
  XOR2X1   g051(.A(\in_reg[15] ), .B(\in_reg[14] ), .Y(new_n405));
  NAND2X1  g052(.A(new_n405), .B(new_n404), .Y(n217));
  INVX1    g053(.A(\out_hold[13] ), .Y(new_n407_1));
  XOR2X1   g054(.A(\in_reg[14] ), .B(\in_reg[13] ), .Y(new_n408));
  NAND2X1  g055(.A(new_n408), .B(new_n407_1), .Y(n222));
  INVX1    g056(.A(\out_hold[12] ), .Y(new_n410));
  XOR2X1   g057(.A(\in_reg[13] ), .B(\in_reg[12] ), .Y(new_n411));
  NAND2X1  g058(.A(new_n411), .B(new_n410), .Y(n227));
  INVX1    g059(.A(\out_hold[11] ), .Y(new_n413));
  XOR2X1   g060(.A(\in_reg[12] ), .B(\in_reg[11] ), .Y(new_n414));
  NAND2X1  g061(.A(new_n414), .B(new_n413), .Y(n232));
  INVX1    g062(.A(\out_hold[10] ), .Y(new_n416));
  XOR2X1   g063(.A(\in_reg[11] ), .B(\in_reg[10] ), .Y(new_n417_1));
  NAND2X1  g064(.A(new_n417_1), .B(new_n416), .Y(n237));
  INVX1    g065(.A(\out_hold[9] ), .Y(new_n419));
  XOR2X1   g066(.A(\in_reg[10] ), .B(\in_reg[9] ), .Y(new_n420));
  NAND2X1  g067(.A(new_n420), .B(new_n419), .Y(n242));
  INVX1    g068(.A(\out_hold[8] ), .Y(new_n422_1));
  XOR2X1   g069(.A(\in_reg[9] ), .B(\in_reg[8] ), .Y(new_n423));
  NAND2X1  g070(.A(new_n423), .B(new_n422_1), .Y(n247));
  INVX1    g071(.A(\out_hold[7] ), .Y(new_n425));
  XOR2X1   g072(.A(\in_reg[8] ), .B(\in_reg[7] ), .Y(new_n426));
  NAND2X1  g073(.A(new_n426), .B(new_n425), .Y(n252));
  INVX1    g074(.A(\out_hold[6] ), .Y(new_n428));
  XOR2X1   g075(.A(\in_reg[7] ), .B(\in_reg[6] ), .Y(new_n429));
  NAND2X1  g076(.A(new_n429), .B(new_n428), .Y(n257));
  INVX1    g077(.A(\out_hold[5] ), .Y(new_n431));
  XOR2X1   g078(.A(\in_reg[6] ), .B(\in_reg[5] ), .Y(new_n432_1));
  NAND2X1  g079(.A(new_n432_1), .B(new_n431), .Y(n262));
  INVX1    g080(.A(\out_hold[4] ), .Y(new_n434));
  XOR2X1   g081(.A(\in_reg[5] ), .B(\in_reg[4] ), .Y(new_n435));
  NAND2X1  g082(.A(new_n435), .B(new_n434), .Y(n267));
  INVX1    g083(.A(\out_hold[3] ), .Y(new_n437_1));
  XOR2X1   g084(.A(\in_reg[4] ), .B(\in_reg[3] ), .Y(new_n438));
  NAND2X1  g085(.A(new_n438), .B(new_n437_1), .Y(n272));
  INVX1    g086(.A(\out_hold[2] ), .Y(new_n440));
  XOR2X1   g087(.A(\in_reg[3] ), .B(\in_reg[2] ), .Y(new_n441));
  NAND2X1  g088(.A(new_n441), .B(new_n440), .Y(n277));
  INVX1    g089(.A(\out_hold[1] ), .Y(new_n443));
  XOR2X1   g090(.A(\in_reg[2] ), .B(\in_reg[1] ), .Y(new_n444));
  NAND2X1  g091(.A(new_n444), .B(new_n443), .Y(n282));
  INVX1    g092(.A(\out_hold[0] ), .Y(new_n446));
  XOR2X1   g093(.A(\in_reg[1] ), .B(\in_reg[0] ), .Y(new_n447_1));
  NAND2X1  g094(.A(new_n447_1), .B(new_n446), .Y(n287));
  NAND4X1  g095(.A(\in_reg[23] ), .B(\in_reg[22] ), .C(\in_reg[21] ), .D(\in_reg[20] ), .Y(new_n449));
  NAND4X1  g096(.A(\in_reg[19] ), .B(\in_reg[18] ), .C(\in_reg[17] ), .D(\in_reg[16] ), .Y(new_n450));
  NAND4X1  g097(.A(\in_reg[31] ), .B(\in_reg[30] ), .C(\in_reg[29] ), .D(\in_reg[28] ), .Y(new_n451_1));
  NAND4X1  g098(.A(\in_reg[27] ), .B(\in_reg[26] ), .C(\in_reg[25] ), .D(\in_reg[24] ), .Y(new_n452));
  NOR4X1   g099(.A(new_n452), .B(new_n451_1), .C(new_n450), .D(new_n449), .Y(new_n453));
  NAND4X1  g100(.A(\in_reg[7] ), .B(\in_reg[6] ), .C(\in_reg[5] ), .D(\in_reg[4] ), .Y(new_n454));
  NAND4X1  g101(.A(\in_reg[3] ), .B(\in_reg[2] ), .C(\in_reg[1] ), .D(\in_reg[0] ), .Y(new_n455_1));
  NAND4X1  g102(.A(\in_reg[15] ), .B(\in_reg[14] ), .C(\in_reg[13] ), .D(\in_reg[12] ), .Y(new_n456));
  NAND4X1  g103(.A(\in_reg[11] ), .B(\in_reg[10] ), .C(\in_reg[9] ), .D(\in_reg[8] ), .Y(new_n457));
  NOR4X1   g104(.A(new_n457), .B(new_n456), .C(new_n455_1), .D(new_n454), .Y(new_n458));
  AOI21X1  g105(.A0(new_n458), .A1(new_n453), .B0(new_n446), .Y(n292));
  AOI21X1  g106(.A0(new_n458), .A1(new_n453), .B0(new_n443), .Y(n297));
  AOI21X1  g107(.A0(new_n458), .A1(new_n453), .B0(new_n440), .Y(n302));
  AOI21X1  g108(.A0(new_n458), .A1(new_n453), .B0(new_n437_1), .Y(n307));
  AOI21X1  g109(.A0(new_n458), .A1(new_n453), .B0(new_n434), .Y(n312));
  AOI21X1  g110(.A0(new_n458), .A1(new_n453), .B0(new_n431), .Y(n317));
  AOI21X1  g111(.A0(new_n458), .A1(new_n453), .B0(new_n428), .Y(n322));
  AOI21X1  g112(.A0(new_n458), .A1(new_n453), .B0(new_n425), .Y(n327));
  AOI21X1  g113(.A0(new_n458), .A1(new_n453), .B0(new_n422_1), .Y(n332));
  AOI21X1  g114(.A0(new_n458), .A1(new_n453), .B0(new_n419), .Y(n337));
  AOI21X1  g115(.A0(new_n458), .A1(new_n453), .B0(new_n416), .Y(n342));
  AOI21X1  g116(.A0(new_n458), .A1(new_n453), .B0(new_n413), .Y(n347));
  AOI21X1  g117(.A0(new_n458), .A1(new_n453), .B0(new_n410), .Y(n352));
  AOI21X1  g118(.A0(new_n458), .A1(new_n453), .B0(new_n407_1), .Y(n357));
  AOI21X1  g119(.A0(new_n458), .A1(new_n453), .B0(new_n404), .Y(n362));
  AOI21X1  g120(.A0(new_n458), .A1(new_n453), .B0(new_n401), .Y(n367));
  AOI21X1  g121(.A0(new_n458), .A1(new_n453), .B0(new_n398), .Y(n372));
  AOI21X1  g122(.A0(new_n458), .A1(new_n453), .B0(new_n395), .Y(n377));
  AOI21X1  g123(.A0(new_n458), .A1(new_n453), .B0(new_n392_1), .Y(n382));
  AOI21X1  g124(.A0(new_n458), .A1(new_n453), .B0(new_n389), .Y(n387));
  AOI21X1  g125(.A0(new_n458), .A1(new_n453), .B0(new_n386), .Y(n392));
  AOI21X1  g126(.A0(new_n458), .A1(new_n453), .B0(new_n383), .Y(n397));
  AOI21X1  g127(.A0(new_n458), .A1(new_n453), .B0(new_n380), .Y(n402));
  AOI21X1  g128(.A0(new_n458), .A1(new_n453), .B0(new_n377_1), .Y(n407));
  AOI21X1  g129(.A0(new_n458), .A1(new_n453), .B0(new_n374), .Y(n412));
  AOI21X1  g130(.A0(new_n458), .A1(new_n453), .B0(new_n371), .Y(n417));
  AOI21X1  g131(.A0(new_n458), .A1(new_n453), .B0(new_n368), .Y(n422));
  AOI21X1  g132(.A0(new_n458), .A1(new_n453), .B0(new_n365), .Y(n427));
  AOI21X1  g133(.A0(new_n458), .A1(new_n453), .B0(new_n362_1), .Y(n432));
  AOI21X1  g134(.A0(new_n458), .A1(new_n453), .B0(new_n359), .Y(n437));
  AOI21X1  g135(.A0(new_n458), .A1(new_n453), .B0(new_n356), .Y(n442));
  AOI21X1  g136(.A0(new_n458), .A1(new_n453), .B0(new_n354), .Y(n447));
  BUFX1    g137(.A(\out_reg[0] ), .Y(\out[0] ));
  BUFX1    g138(.A(\out_reg[1] ), .Y(\out[1] ));
  BUFX1    g139(.A(\out_reg[2] ), .Y(\out[2] ));
  BUFX1    g140(.A(\out_reg[3] ), .Y(\out[3] ));
  BUFX1    g141(.A(\out_reg[4] ), .Y(\out[4] ));
  BUFX1    g142(.A(\out_reg[5] ), .Y(\out[5] ));
  BUFX1    g143(.A(\out_reg[6] ), .Y(\out[6] ));
  BUFX1    g144(.A(\out_reg[7] ), .Y(\out[7] ));
  BUFX1    g145(.A(\out_reg[8] ), .Y(\out[8] ));
  BUFX1    g146(.A(\out_reg[9] ), .Y(\out[9] ));
  BUFX1    g147(.A(\out_reg[10] ), .Y(\out[10] ));
  BUFX1    g148(.A(\out_reg[11] ), .Y(\out[11] ));
  BUFX1    g149(.A(\out_reg[12] ), .Y(\out[12] ));
  BUFX1    g150(.A(\out_reg[13] ), .Y(\out[13] ));
  BUFX1    g151(.A(\out_reg[14] ), .Y(\out[14] ));
  BUFX1    g152(.A(\out_reg[15] ), .Y(\out[15] ));
  BUFX1    g153(.A(\out_reg[16] ), .Y(\out[16] ));
  BUFX1    g154(.A(\out_reg[17] ), .Y(\out[17] ));
  BUFX1    g155(.A(\out_reg[18] ), .Y(\out[18] ));
  BUFX1    g156(.A(\out_reg[19] ), .Y(\out[19] ));
  BUFX1    g157(.A(\out_reg[20] ), .Y(\out[20] ));
  BUFX1    g158(.A(\out_reg[21] ), .Y(\out[21] ));
  BUFX1    g159(.A(\out_reg[22] ), .Y(\out[22] ));
  BUFX1    g160(.A(\out_reg[23] ), .Y(\out[23] ));
  BUFX1    g161(.A(\out_reg[24] ), .Y(\out[24] ));
  BUFX1    g162(.A(\out_reg[25] ), .Y(\out[25] ));
  BUFX1    g163(.A(\out_reg[26] ), .Y(\out[26] ));
  BUFX1    g164(.A(\out_reg[27] ), .Y(\out[27] ));
  BUFX1    g165(.A(\out_reg[28] ), .Y(\out[28] ));
  BUFX1    g166(.A(\out_reg[29] ), .Y(\out[29] ));
  BUFX1    g167(.A(\out_reg[30] ), .Y(\out[30] ));
  BUFX1    g168(.A(\out_reg[31] ), .Y(\out[31] ));
  BUFX1    g169(.A(\in[0] ), .Y(n451));
  BUFX1    g170(.A(\in[1] ), .Y(n455));
  BUFX1    g171(.A(\in[2] ), .Y(n459));
  BUFX1    g172(.A(\in[3] ), .Y(n463));
  BUFX1    g173(.A(\in[4] ), .Y(n467));
  BUFX1    g174(.A(\in[5] ), .Y(n471));
  BUFX1    g175(.A(\in[6] ), .Y(n475));
  BUFX1    g176(.A(\in[7] ), .Y(n479));
  BUFX1    g177(.A(\in[8] ), .Y(n483));
  BUFX1    g178(.A(\in[9] ), .Y(n487));
  BUFX1    g179(.A(\in[10] ), .Y(n491));
  BUFX1    g180(.A(\in[11] ), .Y(n495));
  BUFX1    g181(.A(\in[12] ), .Y(n499));
  BUFX1    g182(.A(\in[13] ), .Y(n503));
  BUFX1    g183(.A(\in[14] ), .Y(n507));
  BUFX1    g184(.A(\in[15] ), .Y(n511));
  BUFX1    g185(.A(\in[16] ), .Y(n515));
  BUFX1    g186(.A(\in[17] ), .Y(n519));
  BUFX1    g187(.A(\in[18] ), .Y(n523));
  BUFX1    g188(.A(\in[19] ), .Y(n527));
  BUFX1    g189(.A(\in[20] ), .Y(n531));
  BUFX1    g190(.A(\in[21] ), .Y(n535));
  BUFX1    g191(.A(\in[22] ), .Y(n539));
  BUFX1    g192(.A(\in[23] ), .Y(n543));
  BUFX1    g193(.A(\in[24] ), .Y(n547));
  BUFX1    g194(.A(\in[25] ), .Y(n551));
  BUFX1    g195(.A(\in[26] ), .Y(n555));
  BUFX1    g196(.A(\in[27] ), .Y(n559));
  BUFX1    g197(.A(\in[28] ), .Y(n563));
  BUFX1    g198(.A(\in[29] ), .Y(n567));
  BUFX1    g199(.A(\in[30] ), .Y(n571));
  BUFX1    g200(.A(\in[31] ), .Y(n575));
  always @ (posedge clock) begin
    \out_hold[31]  <= n132;
    \out_hold[30]  <= n137;
    \out_hold[29]  <= n142;
    \out_hold[28]  <= n147;
    \out_hold[27]  <= n152;
    \out_hold[26]  <= n157;
    \out_hold[25]  <= n162;
    \out_hold[24]  <= n167;
    \out_hold[23]  <= n172;
    \out_hold[22]  <= n177;
    \out_hold[21]  <= n182;
    \out_hold[20]  <= n187;
    \out_hold[19]  <= n192;
    \out_hold[18]  <= n197;
    \out_hold[17]  <= n202;
    \out_hold[16]  <= n207;
    \out_hold[15]  <= n212;
    \out_hold[14]  <= n217;
    \out_hold[13]  <= n222;
    \out_hold[12]  <= n227;
    \out_hold[11]  <= n232;
    \out_hold[10]  <= n237;
    \out_hold[9]  <= n242;
    \out_hold[8]  <= n247;
    \out_hold[7]  <= n252;
    \out_hold[6]  <= n257;
    \out_hold[5]  <= n262;
    \out_hold[4]  <= n267;
    \out_hold[3]  <= n272;
    \out_hold[2]  <= n277;
    \out_hold[1]  <= n282;
    \out_hold[0]  <= n287;
    \out_reg[0]  <= n292;
    \out_reg[1]  <= n297;
    \out_reg[2]  <= n302;
    \out_reg[3]  <= n307;
    \out_reg[4]  <= n312;
    \out_reg[5]  <= n317;
    \out_reg[6]  <= n322;
    \out_reg[7]  <= n327;
    \out_reg[8]  <= n332;
    \out_reg[9]  <= n337;
    \out_reg[10]  <= n342;
    \out_reg[11]  <= n347;
    \out_reg[12]  <= n352;
    \out_reg[13]  <= n357;
    \out_reg[14]  <= n362;
    \out_reg[15]  <= n367;
    \out_reg[16]  <= n372;
    \out_reg[17]  <= n377;
    \out_reg[18]  <= n382;
    \out_reg[19]  <= n387;
    \out_reg[20]  <= n392;
    \out_reg[21]  <= n397;
    \out_reg[22]  <= n402;
    \out_reg[23]  <= n407;
    \out_reg[24]  <= n412;
    \out_reg[25]  <= n417;
    \out_reg[26]  <= n422;
    \out_reg[27]  <= n427;
    \out_reg[28]  <= n432;
    \out_reg[29]  <= n437;
    \out_reg[30]  <= n442;
    \out_reg[31]  <= n447;
    \in_reg[0]  <= n451;
    \in_reg[1]  <= n455;
    \in_reg[2]  <= n459;
    \in_reg[3]  <= n463;
    \in_reg[4]  <= n467;
    \in_reg[5]  <= n471;
    \in_reg[6]  <= n475;
    \in_reg[7]  <= n479;
    \in_reg[8]  <= n483;
    \in_reg[9]  <= n487;
    \in_reg[10]  <= n491;
    \in_reg[11]  <= n495;
    \in_reg[12]  <= n499;
    \in_reg[13]  <= n503;
    \in_reg[14]  <= n507;
    \in_reg[15]  <= n511;
    \in_reg[16]  <= n515;
    \in_reg[17]  <= n519;
    \in_reg[18]  <= n523;
    \in_reg[19]  <= n527;
    \in_reg[20]  <= n531;
    \in_reg[21]  <= n535;
    \in_reg[22]  <= n539;
    \in_reg[23]  <= n543;
    \in_reg[24]  <= n547;
    \in_reg[25]  <= n551;
    \in_reg[26]  <= n555;
    \in_reg[27]  <= n559;
    \in_reg[28]  <= n563;
    \in_reg[29]  <= n567;
    \in_reg[30]  <= n571;
    \in_reg[31]  <= n575;
  end
endmodule


