// Benchmark "crc_generator_checker" written by ABC on Wed Jun 26 15:22:00 2024

module crc_generator_checker ( clock, 
    \data_in[0] , \data_in[1] , \data_in[2] , \data_in[3] , \data_in[4] ,
    \data_in[5] , \data_in[6] , \data_in[7] , \crc_in[0] , \crc_in[1] ,
    \crc_in[2] , \crc_in[3] , \crc_in[4] , \crc_in[5] , \crc_in[6] ,
    \crc_in[7] , \crc_in[8] , \crc_in[9] , \crc_in[10] , \crc_in[11] ,
    \crc_in[12] , \crc_in[13] , \crc_in[14] , \crc_in[15] , reset, clk,
    \crc_out[0] , \crc_out[1] , \crc_out[2] , \crc_out[3] , \crc_out[4] ,
    \crc_out[5] , \crc_out[6] , \crc_out[7] , \crc_out[8] , \crc_out[9] ,
    \crc_out[10] , \crc_out[11] , \crc_out[12] , \crc_out[13] ,
    \crc_out[14] , \crc_out[15] , error  );
  input  clock;
  input  \data_in[0] , \data_in[1] , \data_in[2] , \data_in[3] ,
    \data_in[4] , \data_in[5] , \data_in[6] , \data_in[7] , \crc_in[0] ,
    \crc_in[1] , \crc_in[2] , \crc_in[3] , \crc_in[4] , \crc_in[5] ,
    \crc_in[6] , \crc_in[7] , \crc_in[8] , \crc_in[9] , \crc_in[10] ,
    \crc_in[11] , \crc_in[12] , \crc_in[13] , \crc_in[14] , \crc_in[15] ,
    reset, clk;
  output \crc_out[0] , \crc_out[1] , \crc_out[2] , \crc_out[3] , \crc_out[4] ,
    \crc_out[5] , \crc_out[6] , \crc_out[7] , \crc_out[8] , \crc_out[9] ,
    \crc_out[10] , \crc_out[11] , \crc_out[12] , \crc_out[13] ,
    \crc_out[14] , \crc_out[15] , error;
  reg \crc_reg[0] , \crc_reg[1] , \crc_reg[2] , \crc_reg[3] , \crc_reg[4] ,
    \crc_reg[5] , \crc_reg[6] , \crc_reg[7] , \crc_reg[8] , \crc_reg[9] ,
    \crc_reg[10] , \crc_reg[11] , \crc_reg[12] , \crc_reg[13] ,
    \crc_reg[14] , \crc_reg[15] , \crc_gen_shifted[0] ,
    \crc_gen_shifted[1] , \crc_gen_shifted[2] , \crc_gen_shifted[3] ,
    \crc_gen_shifted[4] , \crc_gen_shifted[5] , \crc_gen_shifted[6] ,
    \crc_gen_shifted[7] , \crc_gen_shifted[8] , \crc_gen_shifted[9] ,
    \crc_gen_shifted[10] , \crc_gen_shifted[11] , \crc_gen_shifted[12] ,
    \crc_gen_shifted[13] , \crc_gen_shifted[14] , \crc_gen_shifted[15] ,
    \crc_in_shifted[0] , \crc_in_shifted[1] , \crc_in_shifted[2] ,
    \crc_in_shifted[3] , \crc_in_shifted[4] , \crc_in_shifted[5] ,
    \crc_in_shifted[6] , \crc_in_shifted[7] , \crc_in_shifted[8] ,
    \crc_in_shifted[9] , \crc_in_shifted[10] , \crc_in_shifted[11] ,
    \crc_in_shifted[12] , \crc_in_shifted[13] , \crc_in_shifted[14] ,
    \crc_in_shifted[15] , \data_in_shifted[0] , \data_in_shifted[1] ,
    \data_in_shifted[2] , \data_in_shifted[3] , \data_in_shifted[4] ,
    \data_in_shifted[5] , \data_in_shifted[6] , \data_in_shifted[7] ,
    \crc_gen[0] , \crc_gen[1] , \crc_gen[2] , \crc_gen[3] , \crc_gen[4] ,
    \crc_gen[5] , \crc_gen[6] , \crc_gen[7] , \crc_gen[8] , \crc_gen[9] ,
    \crc_gen[10] , \crc_gen[11] , \crc_gen[12] , \crc_gen[13] ,
    \crc_gen[14] , \crc_gen[15] , \crc_check[0] , \crc_check[1] ,
    \crc_check[2] , \crc_check[3] , \crc_check[4] , \crc_check[5] ,
    \crc_check[6] , \crc_check[7] , \crc_check[8] , \crc_check[9] ,
    \crc_check[10] , \crc_check[11] , \crc_check[12] , \crc_check[13] ,
    \crc_check[14] , \crc_check[15] , \data_reg[0] , \data_reg[1] ,
    \data_reg[2] , \data_reg[3] , \data_reg[4] , \data_reg[5] ,
    \data_reg[6] , \data_reg[7] ;
  wire new_n332, new_n333_1, new_n334, new_n335, new_n336, new_n337,
    new_n338_1, new_n339, new_n340, new_n341, new_n342, new_n343_1,
    new_n344, new_n345, new_n346, new_n347, new_n348_1, new_n349, new_n350,
    new_n351, new_n353_1, new_n354, new_n355, new_n357, new_n358_1,
    new_n360, new_n361, new_n363_1, new_n364, new_n366, new_n367, new_n369,
    new_n370, new_n372, new_n373_1, new_n375, new_n376, new_n378_1,
    new_n380, new_n382, new_n384, new_n386, new_n388_1, new_n390, new_n392,
    n88, n93, n98, n103, n108, n113, n118, n123, n128, n133, n138, n143,
    n148, n153, n158, n163, n168, n173, n178, n183, n188, n193, n198, n203,
    n208, n213, n218, n223, n228, n233, n238, n243, n248, n253, n258, n263,
    n268, n273, n278, n283, n288, n293, n298, n303, n308, n313, n318, n323,
    n328, n333, n338, n343, n348, n353, n358, n363, n368, n373, n378, n383,
    n388, n393, n398, n403, n408, n413, n418, n423, n428, n433, n438, n443,
    n448, n453, n458, n463, n468, n473, n478, n483, n488, n493, n498, n503,
    n508, n513, n518, n523, n528, n533, n538, n543, n548, n553, n558, n563;
  XOR2X1   g000(.A(\crc_in_shifted[10] ), .B(\crc_reg[10] ), .Y(new_n332));
  XOR2X1   g001(.A(\crc_in_shifted[11] ), .B(\crc_reg[11] ), .Y(new_n333_1));
  XOR2X1   g002(.A(\crc_in_shifted[8] ), .B(\crc_reg[8] ), .Y(new_n334));
  XOR2X1   g003(.A(\crc_in_shifted[9] ), .B(\crc_reg[9] ), .Y(new_n335));
  OR4X1    g004(.A(new_n335), .B(new_n334), .C(new_n333_1), .D(new_n332), .Y(new_n336));
  XOR2X1   g005(.A(\crc_in_shifted[14] ), .B(\crc_reg[14] ), .Y(new_n337));
  XOR2X1   g006(.A(\crc_in_shifted[15] ), .B(\crc_reg[15] ), .Y(new_n338_1));
  XOR2X1   g007(.A(\crc_in_shifted[12] ), .B(\crc_reg[12] ), .Y(new_n339));
  XOR2X1   g008(.A(\crc_in_shifted[13] ), .B(\crc_reg[13] ), .Y(new_n340));
  OR4X1    g009(.A(new_n340), .B(new_n339), .C(new_n338_1), .D(new_n337), .Y(new_n341));
  XOR2X1   g010(.A(\crc_in_shifted[2] ), .B(\crc_reg[2] ), .Y(new_n342));
  XOR2X1   g011(.A(\crc_in_shifted[3] ), .B(\crc_reg[3] ), .Y(new_n343_1));
  XOR2X1   g012(.A(\crc_in_shifted[0] ), .B(\crc_reg[0] ), .Y(new_n344));
  XOR2X1   g013(.A(\crc_in_shifted[1] ), .B(\crc_reg[1] ), .Y(new_n345));
  OR4X1    g014(.A(new_n345), .B(new_n344), .C(new_n343_1), .D(new_n342), .Y(new_n346));
  XOR2X1   g015(.A(\crc_in_shifted[6] ), .B(\crc_reg[6] ), .Y(new_n347));
  XOR2X1   g016(.A(\crc_in_shifted[7] ), .B(\crc_reg[7] ), .Y(new_n348_1));
  XOR2X1   g017(.A(\crc_in_shifted[4] ), .B(\crc_reg[4] ), .Y(new_n349));
  XOR2X1   g018(.A(\crc_in_shifted[5] ), .B(\crc_reg[5] ), .Y(new_n350));
  OR4X1    g019(.A(new_n350), .B(new_n349), .C(new_n348_1), .D(new_n347), .Y(new_n351));
  OR4X1    g020(.A(new_n351), .B(new_n346), .C(new_n341), .D(new_n336), .Y(error));
  INVX1    g021(.A(reset), .Y(new_n353_1));
  XOR2X1   g022(.A(\crc_in_shifted[0] ), .B(\crc_gen_shifted[0] ), .Y(new_n354));
  XOR2X1   g023(.A(new_n354), .B(\data_in_shifted[0] ), .Y(new_n355));
  AND2X1   g024(.A(new_n355), .B(new_n353_1), .Y(n88));
  XOR2X1   g025(.A(\crc_in_shifted[1] ), .B(\crc_gen_shifted[1] ), .Y(new_n357));
  XOR2X1   g026(.A(new_n357), .B(\data_in_shifted[1] ), .Y(new_n358_1));
  AND2X1   g027(.A(new_n358_1), .B(new_n353_1), .Y(n93));
  XOR2X1   g028(.A(\crc_in_shifted[2] ), .B(\crc_gen_shifted[2] ), .Y(new_n360));
  XOR2X1   g029(.A(new_n360), .B(\data_in_shifted[2] ), .Y(new_n361));
  AND2X1   g030(.A(new_n361), .B(new_n353_1), .Y(n98));
  XOR2X1   g031(.A(\crc_in_shifted[3] ), .B(\crc_gen_shifted[3] ), .Y(new_n363_1));
  XOR2X1   g032(.A(new_n363_1), .B(\data_in_shifted[3] ), .Y(new_n364));
  AND2X1   g033(.A(new_n364), .B(new_n353_1), .Y(n103));
  XOR2X1   g034(.A(\crc_in_shifted[4] ), .B(\crc_gen_shifted[4] ), .Y(new_n366));
  XOR2X1   g035(.A(new_n366), .B(\data_in_shifted[4] ), .Y(new_n367));
  AND2X1   g036(.A(new_n367), .B(new_n353_1), .Y(n108));
  XOR2X1   g037(.A(\crc_in_shifted[5] ), .B(\crc_gen_shifted[5] ), .Y(new_n369));
  XOR2X1   g038(.A(new_n369), .B(\data_in_shifted[5] ), .Y(new_n370));
  AND2X1   g039(.A(new_n370), .B(new_n353_1), .Y(n113));
  XOR2X1   g040(.A(\crc_in_shifted[6] ), .B(\crc_gen_shifted[6] ), .Y(new_n372));
  XOR2X1   g041(.A(new_n372), .B(\data_in_shifted[6] ), .Y(new_n373_1));
  AND2X1   g042(.A(new_n373_1), .B(new_n353_1), .Y(n118));
  XOR2X1   g043(.A(\crc_in_shifted[7] ), .B(\crc_gen_shifted[7] ), .Y(new_n375));
  XOR2X1   g044(.A(new_n375), .B(\data_in_shifted[7] ), .Y(new_n376));
  AND2X1   g045(.A(new_n376), .B(new_n353_1), .Y(n123));
  XOR2X1   g046(.A(\crc_in_shifted[8] ), .B(\crc_gen_shifted[8] ), .Y(new_n378_1));
  AND2X1   g047(.A(new_n378_1), .B(new_n353_1), .Y(n128));
  XOR2X1   g048(.A(\crc_in_shifted[9] ), .B(\crc_gen_shifted[9] ), .Y(new_n380));
  AND2X1   g049(.A(new_n380), .B(new_n353_1), .Y(n133));
  XOR2X1   g050(.A(\crc_in_shifted[10] ), .B(\crc_gen_shifted[10] ), .Y(new_n382));
  AND2X1   g051(.A(new_n382), .B(new_n353_1), .Y(n138));
  XOR2X1   g052(.A(\crc_in_shifted[11] ), .B(\crc_gen_shifted[11] ), .Y(new_n384));
  AND2X1   g053(.A(new_n384), .B(new_n353_1), .Y(n143));
  XOR2X1   g054(.A(\crc_in_shifted[12] ), .B(\crc_gen_shifted[12] ), .Y(new_n386));
  AND2X1   g055(.A(new_n386), .B(new_n353_1), .Y(n148));
  XOR2X1   g056(.A(\crc_in_shifted[13] ), .B(\crc_gen_shifted[13] ), .Y(new_n388_1));
  AND2X1   g057(.A(new_n388_1), .B(new_n353_1), .Y(n153));
  XOR2X1   g058(.A(\crc_in_shifted[14] ), .B(\crc_gen_shifted[14] ), .Y(new_n390));
  AND2X1   g059(.A(new_n390), .B(new_n353_1), .Y(n158));
  XOR2X1   g060(.A(\crc_in_shifted[15] ), .B(\crc_gen_shifted[15] ), .Y(new_n392));
  AND2X1   g061(.A(new_n392), .B(new_n353_1), .Y(n163));
  AND2X1   g062(.A(\crc_gen[0] ), .B(new_n353_1), .Y(n168));
  AND2X1   g063(.A(\crc_gen[1] ), .B(new_n353_1), .Y(n173));
  AND2X1   g064(.A(\crc_gen[2] ), .B(new_n353_1), .Y(n178));
  AND2X1   g065(.A(\crc_gen[3] ), .B(new_n353_1), .Y(n183));
  AND2X1   g066(.A(\crc_gen[4] ), .B(new_n353_1), .Y(n188));
  AND2X1   g067(.A(\crc_gen[5] ), .B(new_n353_1), .Y(n193));
  AND2X1   g068(.A(\crc_gen[6] ), .B(new_n353_1), .Y(n198));
  AND2X1   g069(.A(\crc_gen[7] ), .B(new_n353_1), .Y(n203));
  AND2X1   g070(.A(\crc_gen[8] ), .B(new_n353_1), .Y(n208));
  AND2X1   g071(.A(\crc_gen[9] ), .B(new_n353_1), .Y(n213));
  AND2X1   g072(.A(\crc_gen[10] ), .B(new_n353_1), .Y(n218));
  AND2X1   g073(.A(\crc_gen[11] ), .B(new_n353_1), .Y(n223));
  AND2X1   g074(.A(\crc_gen[12] ), .B(new_n353_1), .Y(n228));
  AND2X1   g075(.A(\crc_gen[13] ), .B(new_n353_1), .Y(n233));
  AND2X1   g076(.A(\crc_gen[14] ), .B(new_n353_1), .Y(n238));
  AND2X1   g077(.A(\crc_gen[15] ), .B(new_n353_1), .Y(n243));
  AND2X1   g078(.A(\crc_check[0] ), .B(new_n353_1), .Y(n248));
  AND2X1   g079(.A(\crc_check[1] ), .B(new_n353_1), .Y(n253));
  AND2X1   g080(.A(\crc_check[2] ), .B(new_n353_1), .Y(n258));
  AND2X1   g081(.A(\crc_check[3] ), .B(new_n353_1), .Y(n263));
  AND2X1   g082(.A(\crc_check[4] ), .B(new_n353_1), .Y(n268));
  AND2X1   g083(.A(\crc_check[5] ), .B(new_n353_1), .Y(n273));
  AND2X1   g084(.A(\crc_check[6] ), .B(new_n353_1), .Y(n278));
  AND2X1   g085(.A(\crc_check[7] ), .B(new_n353_1), .Y(n283));
  AND2X1   g086(.A(\crc_check[8] ), .B(new_n353_1), .Y(n288));
  AND2X1   g087(.A(\crc_check[9] ), .B(new_n353_1), .Y(n293));
  AND2X1   g088(.A(\crc_check[10] ), .B(new_n353_1), .Y(n298));
  AND2X1   g089(.A(\crc_check[11] ), .B(new_n353_1), .Y(n303));
  AND2X1   g090(.A(\crc_check[12] ), .B(new_n353_1), .Y(n308));
  AND2X1   g091(.A(\crc_check[13] ), .B(new_n353_1), .Y(n313));
  AND2X1   g092(.A(\crc_check[14] ), .B(new_n353_1), .Y(n318));
  AND2X1   g093(.A(\crc_check[15] ), .B(new_n353_1), .Y(n323));
  AND2X1   g094(.A(\data_reg[0] ), .B(new_n353_1), .Y(n328));
  AND2X1   g095(.A(\data_reg[1] ), .B(new_n353_1), .Y(n333));
  AND2X1   g096(.A(\data_reg[2] ), .B(new_n353_1), .Y(n338));
  AND2X1   g097(.A(\data_reg[3] ), .B(new_n353_1), .Y(n343));
  AND2X1   g098(.A(\data_reg[4] ), .B(new_n353_1), .Y(n348));
  AND2X1   g099(.A(\data_reg[5] ), .B(new_n353_1), .Y(n353));
  AND2X1   g100(.A(\data_reg[6] ), .B(new_n353_1), .Y(n358));
  AND2X1   g101(.A(\data_reg[7] ), .B(new_n353_1), .Y(n363));
  AND2X1   g102(.A(\crc_reg[0] ), .B(new_n353_1), .Y(n368));
  AND2X1   g103(.A(\crc_reg[1] ), .B(new_n353_1), .Y(n373));
  AND2X1   g104(.A(\crc_reg[2] ), .B(new_n353_1), .Y(n378));
  AND2X1   g105(.A(\crc_reg[3] ), .B(new_n353_1), .Y(n383));
  AND2X1   g106(.A(\crc_reg[4] ), .B(new_n353_1), .Y(n388));
  AND2X1   g107(.A(\crc_reg[5] ), .B(new_n353_1), .Y(n393));
  AND2X1   g108(.A(\crc_reg[6] ), .B(new_n353_1), .Y(n398));
  AND2X1   g109(.A(\crc_reg[7] ), .B(new_n353_1), .Y(n403));
  AND2X1   g110(.A(\crc_reg[8] ), .B(new_n353_1), .Y(n408));
  AND2X1   g111(.A(\crc_reg[9] ), .B(new_n353_1), .Y(n413));
  AND2X1   g112(.A(\crc_reg[10] ), .B(new_n353_1), .Y(n418));
  AND2X1   g113(.A(\crc_reg[11] ), .B(new_n353_1), .Y(n423));
  AND2X1   g114(.A(\crc_reg[12] ), .B(new_n353_1), .Y(n428));
  AND2X1   g115(.A(\crc_reg[13] ), .B(new_n353_1), .Y(n433));
  AND2X1   g116(.A(\crc_reg[14] ), .B(new_n353_1), .Y(n438));
  AND2X1   g117(.A(\crc_reg[15] ), .B(new_n353_1), .Y(n443));
  AND2X1   g118(.A(new_n353_1), .B(\crc_in[0] ), .Y(n448));
  AND2X1   g119(.A(new_n353_1), .B(\crc_in[1] ), .Y(n453));
  AND2X1   g120(.A(new_n353_1), .B(\crc_in[2] ), .Y(n458));
  AND2X1   g121(.A(new_n353_1), .B(\crc_in[3] ), .Y(n463));
  AND2X1   g122(.A(new_n353_1), .B(\crc_in[4] ), .Y(n468));
  AND2X1   g123(.A(new_n353_1), .B(\crc_in[5] ), .Y(n473));
  AND2X1   g124(.A(new_n353_1), .B(\crc_in[6] ), .Y(n478));
  AND2X1   g125(.A(new_n353_1), .B(\crc_in[7] ), .Y(n483));
  AND2X1   g126(.A(new_n353_1), .B(\crc_in[8] ), .Y(n488));
  AND2X1   g127(.A(new_n353_1), .B(\crc_in[9] ), .Y(n493));
  AND2X1   g128(.A(new_n353_1), .B(\crc_in[10] ), .Y(n498));
  AND2X1   g129(.A(new_n353_1), .B(\crc_in[11] ), .Y(n503));
  AND2X1   g130(.A(new_n353_1), .B(\crc_in[12] ), .Y(n508));
  AND2X1   g131(.A(new_n353_1), .B(\crc_in[13] ), .Y(n513));
  AND2X1   g132(.A(new_n353_1), .B(\crc_in[14] ), .Y(n518));
  AND2X1   g133(.A(new_n353_1), .B(\crc_in[15] ), .Y(n523));
  AND2X1   g134(.A(new_n353_1), .B(\data_in[0] ), .Y(n528));
  AND2X1   g135(.A(new_n353_1), .B(\data_in[1] ), .Y(n533));
  AND2X1   g136(.A(new_n353_1), .B(\data_in[2] ), .Y(n538));
  AND2X1   g137(.A(new_n353_1), .B(\data_in[3] ), .Y(n543));
  AND2X1   g138(.A(new_n353_1), .B(\data_in[4] ), .Y(n548));
  AND2X1   g139(.A(new_n353_1), .B(\data_in[5] ), .Y(n553));
  AND2X1   g140(.A(new_n353_1), .B(\data_in[6] ), .Y(n558));
  AND2X1   g141(.A(new_n353_1), .B(\data_in[7] ), .Y(n563));
  BUFX1    g142(.A(\crc_reg[0] ), .Y(\crc_out[0] ));
  BUFX1    g143(.A(\crc_reg[1] ), .Y(\crc_out[1] ));
  BUFX1    g144(.A(\crc_reg[2] ), .Y(\crc_out[2] ));
  BUFX1    g145(.A(\crc_reg[3] ), .Y(\crc_out[3] ));
  BUFX1    g146(.A(\crc_reg[4] ), .Y(\crc_out[4] ));
  BUFX1    g147(.A(\crc_reg[5] ), .Y(\crc_out[5] ));
  BUFX1    g148(.A(\crc_reg[6] ), .Y(\crc_out[6] ));
  BUFX1    g149(.A(\crc_reg[7] ), .Y(\crc_out[7] ));
  BUFX1    g150(.A(\crc_reg[8] ), .Y(\crc_out[8] ));
  BUFX1    g151(.A(\crc_reg[9] ), .Y(\crc_out[9] ));
  BUFX1    g152(.A(\crc_reg[10] ), .Y(\crc_out[10] ));
  BUFX1    g153(.A(\crc_reg[11] ), .Y(\crc_out[11] ));
  BUFX1    g154(.A(\crc_reg[12] ), .Y(\crc_out[12] ));
  BUFX1    g155(.A(\crc_reg[13] ), .Y(\crc_out[13] ));
  BUFX1    g156(.A(\crc_reg[14] ), .Y(\crc_out[14] ));
  BUFX1    g157(.A(\crc_reg[15] ), .Y(\crc_out[15] ));
  always @ (posedge clock) begin
    \crc_reg[0]  <= n88;
    \crc_reg[1]  <= n93;
    \crc_reg[2]  <= n98;
    \crc_reg[3]  <= n103;
    \crc_reg[4]  <= n108;
    \crc_reg[5]  <= n113;
    \crc_reg[6]  <= n118;
    \crc_reg[7]  <= n123;
    \crc_reg[8]  <= n128;
    \crc_reg[9]  <= n133;
    \crc_reg[10]  <= n138;
    \crc_reg[11]  <= n143;
    \crc_reg[12]  <= n148;
    \crc_reg[13]  <= n153;
    \crc_reg[14]  <= n158;
    \crc_reg[15]  <= n163;
    \crc_gen_shifted[0]  <= n168;
    \crc_gen_shifted[1]  <= n173;
    \crc_gen_shifted[2]  <= n178;
    \crc_gen_shifted[3]  <= n183;
    \crc_gen_shifted[4]  <= n188;
    \crc_gen_shifted[5]  <= n193;
    \crc_gen_shifted[6]  <= n198;
    \crc_gen_shifted[7]  <= n203;
    \crc_gen_shifted[8]  <= n208;
    \crc_gen_shifted[9]  <= n213;
    \crc_gen_shifted[10]  <= n218;
    \crc_gen_shifted[11]  <= n223;
    \crc_gen_shifted[12]  <= n228;
    \crc_gen_shifted[13]  <= n233;
    \crc_gen_shifted[14]  <= n238;
    \crc_gen_shifted[15]  <= n243;
    \crc_in_shifted[0]  <= n248;
    \crc_in_shifted[1]  <= n253;
    \crc_in_shifted[2]  <= n258;
    \crc_in_shifted[3]  <= n263;
    \crc_in_shifted[4]  <= n268;
    \crc_in_shifted[5]  <= n273;
    \crc_in_shifted[6]  <= n278;
    \crc_in_shifted[7]  <= n283;
    \crc_in_shifted[8]  <= n288;
    \crc_in_shifted[9]  <= n293;
    \crc_in_shifted[10]  <= n298;
    \crc_in_shifted[11]  <= n303;
    \crc_in_shifted[12]  <= n308;
    \crc_in_shifted[13]  <= n313;
    \crc_in_shifted[14]  <= n318;
    \crc_in_shifted[15]  <= n323;
    \data_in_shifted[0]  <= n328;
    \data_in_shifted[1]  <= n333;
    \data_in_shifted[2]  <= n338;
    \data_in_shifted[3]  <= n343;
    \data_in_shifted[4]  <= n348;
    \data_in_shifted[5]  <= n353;
    \data_in_shifted[6]  <= n358;
    \data_in_shifted[7]  <= n363;
    \crc_gen[0]  <= n368;
    \crc_gen[1]  <= n373;
    \crc_gen[2]  <= n378;
    \crc_gen[3]  <= n383;
    \crc_gen[4]  <= n388;
    \crc_gen[5]  <= n393;
    \crc_gen[6]  <= n398;
    \crc_gen[7]  <= n403;
    \crc_gen[8]  <= n408;
    \crc_gen[9]  <= n413;
    \crc_gen[10]  <= n418;
    \crc_gen[11]  <= n423;
    \crc_gen[12]  <= n428;
    \crc_gen[13]  <= n433;
    \crc_gen[14]  <= n438;
    \crc_gen[15]  <= n443;
    \crc_check[0]  <= n448;
    \crc_check[1]  <= n453;
    \crc_check[2]  <= n458;
    \crc_check[3]  <= n463;
    \crc_check[4]  <= n468;
    \crc_check[5]  <= n473;
    \crc_check[6]  <= n478;
    \crc_check[7]  <= n483;
    \crc_check[8]  <= n488;
    \crc_check[9]  <= n493;
    \crc_check[10]  <= n498;
    \crc_check[11]  <= n503;
    \crc_check[12]  <= n508;
    \crc_check[13]  <= n513;
    \crc_check[14]  <= n518;
    \crc_check[15]  <= n523;
    \data_reg[0]  <= n528;
    \data_reg[1]  <= n533;
    \data_reg[2]  <= n538;
    \data_reg[3]  <= n543;
    \data_reg[4]  <= n548;
    \data_reg[5]  <= n553;
    \data_reg[6]  <= n558;
    \data_reg[7]  <= n563;
  end
endmodule


