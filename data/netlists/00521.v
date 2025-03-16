// Benchmark "TDC" written by ABC on Wed Jun 26 15:22:13 2024

module TDC ( clock, 
    in1, in2, clk,
    \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] , \out[8] , \out[9] , \out[10] , \out[11] , \out[12] ,
    \out[13] , \out[14] , \out[15] , \out[16] , \out[17] , \out[18] ,
    \out[19] , \out[20] , \out[21] , \out[22] , \out[23] , \out[24] ,
    \out[25] , \out[26] , \out[27] , \out[28] , \out[29] , \out[30] ,
    \out[31]   );
  input  clock;
  input  in1, in2, clk;
  output \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] , \out[8] , \out[9] , \out[10] , \out[11] , \out[12] ,
    \out[13] , \out[14] , \out[15] , \out[16] , \out[17] , \out[18] ,
    \out[19] , \out[20] , \out[21] , \out[22] , \out[23] , \out[24] ,
    \out[25] , \out[26] , \out[27] , \out[28] , \out[29] , \out[30] ,
    \out[31] ;
  reg \counter[0] , \counter[1] , \counter[2] , \counter[3] , \counter[4] ,
    \counter[5] , \counter[6] , \counter[7] , \counter[8] , \counter[9] ,
    \counter[10] , \counter[11] , \counter[12] , \counter[13] ,
    \counter[14] , \counter[15] , \counter[16] , \counter[17] ,
    \counter[18] , \counter[19] , \counter[20] , \counter[21] ,
    \counter[22] , \counter[23] , \counter[24] , \counter[25] ,
    \counter[26] , \counter[27] , \counter[28] , \counter[29] ,
    \counter[30] , \counter[31] , \out[0] , \out[1] , \out[2] , \out[3] ,
    \out[4] , \out[5] , \out[6] , \out[7] , \out[8] , \out[9] , \out[10] ,
    \out[11] , \out[12] , \out[13] , \out[14] , \out[15] , \out[16] ,
    \out[17] , \out[18] , \out[19] , \out[20] , \out[21] , \out[22] ,
    \out[23] , \out[24] , \out[25] , \out[26] , \out[27] , \out[28] ,
    \out[29] , \out[30] , \out[31] , \state[0] , \state[1] ;
  wire new_n234, new_n235, new_n236_1, new_n237, new_n238, new_n239,
    new_n241, new_n242, new_n243, new_n245, new_n246, new_n247, new_n248_1,
    new_n250, new_n251, new_n252_1, new_n253, new_n255, new_n256_1,
    new_n257, new_n258, new_n260_1, new_n261, new_n262, new_n263, new_n265,
    new_n266, new_n267, new_n268_1, new_n270, new_n271, new_n272_1,
    new_n273, new_n275, new_n276_1, new_n277, new_n278, new_n279, new_n281,
    new_n282, new_n283, new_n284_1, new_n286, new_n287, new_n288_1,
    new_n289, new_n291, new_n292_1, new_n293, new_n294, new_n296_1,
    new_n297, new_n298, new_n299, new_n300_1, new_n302, new_n303,
    new_n304_1, new_n305, new_n307, new_n308_1, new_n309, new_n310,
    new_n312_1, new_n313, new_n314, new_n315, new_n317, new_n318, new_n319,
    new_n320_1, new_n321, new_n323, new_n324_1, new_n325, new_n326,
    new_n328_1, new_n329, new_n330, new_n331, new_n333, new_n334, new_n335,
    new_n336_1, new_n338, new_n339, new_n340_1, new_n341, new_n342,
    new_n344_1, new_n345, new_n346, new_n347, new_n349, new_n350, new_n351,
    new_n352_1, new_n354, new_n355, new_n356_1, new_n357, new_n359,
    new_n360_1, new_n361, new_n362, new_n363, new_n364, new_n366, new_n367,
    new_n368, new_n369, new_n371, new_n372, new_n373, new_n374, new_n375,
    new_n377, new_n378, new_n379, new_n380, new_n382, new_n383, new_n384,
    new_n385, new_n386, new_n388, new_n389, new_n390, new_n391, new_n393,
    new_n394, new_n395, new_n396, new_n398, new_n399, new_n400, new_n401,
    new_n403, new_n405, new_n407, new_n409, new_n411, new_n413, new_n415,
    new_n417, new_n419, new_n421, new_n423, new_n425, new_n427, new_n429,
    new_n431, new_n433, new_n435, new_n437, new_n439, new_n441, new_n443,
    new_n445, new_n447, new_n449, new_n451, new_n453, new_n455, new_n457,
    new_n459, new_n461, new_n463, new_n465, new_n467, new_n468, new_n470,
    n72, n77, n82, n87, n92, n97, n102, n107, n112, n117, n122, n127, n132,
    n137, n142, n147, n152, n157, n162, n167, n172, n177, n182, n187, n192,
    n197, n202, n207, n212, n217, n222, n227, n232, n236, n240, n244, n248,
    n252, n256, n260, n264, n268, n272, n276, n280, n284, n288, n292, n296,
    n300, n304, n308, n312, n316, n320, n324, n328, n332, n336, n340, n344,
    n348, n352, n356, n360, n365;
  INVX1    g000(.A(\counter[0] ), .Y(new_n234));
  NOR2X1   g001(.A(\state[1] ), .B(\state[0] ), .Y(new_n235));
  INVX1    g002(.A(new_n235), .Y(new_n236_1));
  XOR2X1   g003(.A(\counter[0] ), .B(in2), .Y(new_n237));
  INVX1    g004(.A(\state[1] ), .Y(new_n238));
  OR2X1    g005(.A(new_n235), .B(new_n238), .Y(new_n239));
  OAI22X1  g006(.A0(new_n239), .A1(new_n237), .B0(new_n236_1), .B1(new_n234), .Y(n72));
  INVX1    g007(.A(\counter[1] ), .Y(new_n241));
  XOR2X1   g008(.A(\counter[1] ), .B(new_n234), .Y(new_n242));
  MX2X1    g009(.A(new_n242), .B(new_n241), .S0(in2), .Y(new_n243));
  OAI22X1  g010(.A0(new_n243), .A1(new_n239), .B0(new_n236_1), .B1(new_n241), .Y(n77));
  INVX1    g011(.A(\counter[2] ), .Y(new_n245));
  AND2X1   g012(.A(\counter[1] ), .B(\counter[0] ), .Y(new_n246));
  XOR2X1   g013(.A(new_n246), .B(new_n245), .Y(new_n247));
  MX2X1    g014(.A(new_n247), .B(new_n245), .S0(in2), .Y(new_n248_1));
  OAI22X1  g015(.A0(new_n248_1), .A1(new_n239), .B0(new_n236_1), .B1(new_n245), .Y(n82));
  INVX1    g016(.A(\counter[3] ), .Y(new_n250));
  NAND3X1  g017(.A(\counter[2] ), .B(\counter[1] ), .C(\counter[0] ), .Y(new_n251));
  XOR2X1   g018(.A(new_n251), .B(\counter[3] ), .Y(new_n252_1));
  MX2X1    g019(.A(new_n252_1), .B(new_n250), .S0(in2), .Y(new_n253));
  OAI22X1  g020(.A0(new_n253), .A1(new_n239), .B0(new_n236_1), .B1(new_n250), .Y(n87));
  INVX1    g021(.A(\counter[4] ), .Y(new_n255));
  NAND4X1  g022(.A(\counter[3] ), .B(\counter[2] ), .C(\counter[1] ), .D(\counter[0] ), .Y(new_n256_1));
  XOR2X1   g023(.A(new_n256_1), .B(\counter[4] ), .Y(new_n257));
  MX2X1    g024(.A(new_n257), .B(new_n255), .S0(in2), .Y(new_n258));
  OAI22X1  g025(.A0(new_n258), .A1(new_n239), .B0(new_n236_1), .B1(new_n255), .Y(n92));
  INVX1    g026(.A(\counter[5] ), .Y(new_n260_1));
  NOR2X1   g027(.A(new_n256_1), .B(new_n255), .Y(new_n261));
  XOR2X1   g028(.A(new_n261), .B(new_n260_1), .Y(new_n262));
  MX2X1    g029(.A(new_n262), .B(new_n260_1), .S0(in2), .Y(new_n263));
  OAI22X1  g030(.A0(new_n263), .A1(new_n239), .B0(new_n236_1), .B1(new_n260_1), .Y(n97));
  INVX1    g031(.A(\counter[6] ), .Y(new_n265));
  NOR3X1   g032(.A(new_n256_1), .B(new_n260_1), .C(new_n255), .Y(new_n266));
  XOR2X1   g033(.A(new_n266), .B(new_n265), .Y(new_n267));
  MX2X1    g034(.A(new_n267), .B(new_n265), .S0(in2), .Y(new_n268_1));
  OAI22X1  g035(.A0(new_n268_1), .A1(new_n239), .B0(new_n236_1), .B1(new_n265), .Y(n102));
  INVX1    g036(.A(\counter[7] ), .Y(new_n270));
  NOR4X1   g037(.A(new_n256_1), .B(new_n265), .C(new_n260_1), .D(new_n255), .Y(new_n271));
  XOR2X1   g038(.A(new_n271), .B(new_n270), .Y(new_n272_1));
  MX2X1    g039(.A(new_n272_1), .B(new_n270), .S0(in2), .Y(new_n273));
  OAI22X1  g040(.A0(new_n273), .A1(new_n239), .B0(new_n236_1), .B1(new_n270), .Y(n107));
  INVX1    g041(.A(\counter[8] ), .Y(new_n275));
  NAND4X1  g042(.A(\counter[7] ), .B(\counter[6] ), .C(\counter[5] ), .D(\counter[4] ), .Y(new_n276_1));
  NOR2X1   g043(.A(new_n276_1), .B(new_n256_1), .Y(new_n277));
  XOR2X1   g044(.A(new_n277), .B(new_n275), .Y(new_n278));
  MX2X1    g045(.A(new_n278), .B(new_n275), .S0(in2), .Y(new_n279));
  OAI22X1  g046(.A0(new_n279), .A1(new_n239), .B0(new_n236_1), .B1(new_n275), .Y(n112));
  INVX1    g047(.A(\counter[9] ), .Y(new_n281));
  NOR3X1   g048(.A(new_n276_1), .B(new_n256_1), .C(new_n275), .Y(new_n282));
  XOR2X1   g049(.A(new_n282), .B(new_n281), .Y(new_n283));
  MX2X1    g050(.A(new_n283), .B(new_n281), .S0(in2), .Y(new_n284_1));
  OAI22X1  g051(.A0(new_n284_1), .A1(new_n239), .B0(new_n236_1), .B1(new_n281), .Y(n117));
  INVX1    g052(.A(\counter[10] ), .Y(new_n286));
  NOR4X1   g053(.A(new_n276_1), .B(new_n256_1), .C(new_n281), .D(new_n275), .Y(new_n287));
  XOR2X1   g054(.A(new_n287), .B(new_n286), .Y(new_n288_1));
  MX2X1    g055(.A(new_n288_1), .B(new_n286), .S0(in2), .Y(new_n289));
  OAI22X1  g056(.A0(new_n289), .A1(new_n239), .B0(new_n236_1), .B1(new_n286), .Y(n122));
  INVX1    g057(.A(\counter[11] ), .Y(new_n291));
  AND2X1   g058(.A(new_n287), .B(\counter[10] ), .Y(new_n292_1));
  XOR2X1   g059(.A(new_n292_1), .B(new_n291), .Y(new_n293));
  MX2X1    g060(.A(new_n293), .B(new_n291), .S0(in2), .Y(new_n294));
  OAI22X1  g061(.A0(new_n294), .A1(new_n239), .B0(new_n236_1), .B1(new_n291), .Y(n127));
  INVX1    g062(.A(\counter[12] ), .Y(new_n296_1));
  NAND4X1  g063(.A(\counter[11] ), .B(\counter[10] ), .C(\counter[9] ), .D(\counter[8] ), .Y(new_n297));
  NOR3X1   g064(.A(new_n297), .B(new_n276_1), .C(new_n256_1), .Y(new_n298));
  XOR2X1   g065(.A(new_n298), .B(new_n296_1), .Y(new_n299));
  MX2X1    g066(.A(new_n299), .B(new_n296_1), .S0(in2), .Y(new_n300_1));
  OAI22X1  g067(.A0(new_n300_1), .A1(new_n239), .B0(new_n236_1), .B1(new_n296_1), .Y(n132));
  INVX1    g068(.A(\counter[13] ), .Y(new_n302));
  NOR4X1   g069(.A(new_n297), .B(new_n276_1), .C(new_n256_1), .D(new_n296_1), .Y(new_n303));
  XOR2X1   g070(.A(new_n303), .B(new_n302), .Y(new_n304_1));
  MX2X1    g071(.A(new_n304_1), .B(new_n302), .S0(in2), .Y(new_n305));
  OAI22X1  g072(.A0(new_n305), .A1(new_n239), .B0(new_n236_1), .B1(new_n302), .Y(n137));
  INVX1    g073(.A(\counter[14] ), .Y(new_n307));
  NAND3X1  g074(.A(new_n298), .B(\counter[13] ), .C(\counter[12] ), .Y(new_n308_1));
  XOR2X1   g075(.A(new_n308_1), .B(\counter[14] ), .Y(new_n309));
  MX2X1    g076(.A(new_n309), .B(new_n307), .S0(in2), .Y(new_n310));
  OAI22X1  g077(.A0(new_n310), .A1(new_n239), .B0(new_n236_1), .B1(new_n307), .Y(n142));
  INVX1    g078(.A(\counter[15] ), .Y(new_n312_1));
  NAND4X1  g079(.A(new_n298), .B(\counter[14] ), .C(\counter[13] ), .D(\counter[12] ), .Y(new_n313));
  XOR2X1   g080(.A(new_n313), .B(\counter[15] ), .Y(new_n314));
  MX2X1    g081(.A(new_n314), .B(new_n312_1), .S0(in2), .Y(new_n315));
  OAI22X1  g082(.A0(new_n315), .A1(new_n239), .B0(new_n236_1), .B1(new_n312_1), .Y(n147));
  INVX1    g083(.A(\counter[16] ), .Y(new_n317));
  NAND4X1  g084(.A(\counter[15] ), .B(\counter[14] ), .C(\counter[13] ), .D(\counter[12] ), .Y(new_n318));
  OR4X1    g085(.A(new_n318), .B(new_n297), .C(new_n276_1), .D(new_n256_1), .Y(new_n319));
  XOR2X1   g086(.A(new_n319), .B(\counter[16] ), .Y(new_n320_1));
  MX2X1    g087(.A(new_n320_1), .B(new_n317), .S0(in2), .Y(new_n321));
  OAI22X1  g088(.A0(new_n321), .A1(new_n239), .B0(new_n236_1), .B1(new_n317), .Y(n152));
  INVX1    g089(.A(\counter[17] ), .Y(new_n323));
  NOR2X1   g090(.A(new_n319), .B(new_n317), .Y(new_n324_1));
  XOR2X1   g091(.A(new_n324_1), .B(new_n323), .Y(new_n325));
  MX2X1    g092(.A(new_n325), .B(new_n323), .S0(in2), .Y(new_n326));
  OAI22X1  g093(.A0(new_n326), .A1(new_n239), .B0(new_n236_1), .B1(new_n323), .Y(n157));
  INVX1    g094(.A(\counter[18] ), .Y(new_n328_1));
  NOR3X1   g095(.A(new_n319), .B(new_n323), .C(new_n317), .Y(new_n329));
  XOR2X1   g096(.A(new_n329), .B(new_n328_1), .Y(new_n330));
  MX2X1    g097(.A(new_n330), .B(new_n328_1), .S0(in2), .Y(new_n331));
  OAI22X1  g098(.A0(new_n331), .A1(new_n239), .B0(new_n236_1), .B1(new_n328_1), .Y(n162));
  INVX1    g099(.A(\counter[19] ), .Y(new_n333));
  NOR4X1   g100(.A(new_n319), .B(new_n328_1), .C(new_n323), .D(new_n317), .Y(new_n334));
  XOR2X1   g101(.A(new_n334), .B(new_n333), .Y(new_n335));
  MX2X1    g102(.A(new_n335), .B(new_n333), .S0(in2), .Y(new_n336_1));
  OAI22X1  g103(.A0(new_n336_1), .A1(new_n239), .B0(new_n236_1), .B1(new_n333), .Y(n167));
  INVX1    g104(.A(\counter[20] ), .Y(new_n338));
  NAND4X1  g105(.A(\counter[19] ), .B(\counter[18] ), .C(\counter[17] ), .D(\counter[16] ), .Y(new_n339));
  NOR2X1   g106(.A(new_n339), .B(new_n319), .Y(new_n340_1));
  XOR2X1   g107(.A(new_n340_1), .B(new_n338), .Y(new_n341));
  MX2X1    g108(.A(new_n341), .B(new_n338), .S0(in2), .Y(new_n342));
  OAI22X1  g109(.A0(new_n342), .A1(new_n239), .B0(new_n236_1), .B1(new_n338), .Y(n172));
  INVX1    g110(.A(\counter[21] ), .Y(new_n344_1));
  NOR3X1   g111(.A(new_n339), .B(new_n319), .C(new_n338), .Y(new_n345));
  XOR2X1   g112(.A(new_n345), .B(new_n344_1), .Y(new_n346));
  MX2X1    g113(.A(new_n346), .B(new_n344_1), .S0(in2), .Y(new_n347));
  OAI22X1  g114(.A0(new_n347), .A1(new_n239), .B0(new_n236_1), .B1(new_n344_1), .Y(n177));
  INVX1    g115(.A(\counter[22] ), .Y(new_n349));
  NOR4X1   g116(.A(new_n339), .B(new_n319), .C(new_n344_1), .D(new_n338), .Y(new_n350));
  XOR2X1   g117(.A(new_n350), .B(new_n349), .Y(new_n351));
  MX2X1    g118(.A(new_n351), .B(new_n349), .S0(in2), .Y(new_n352_1));
  OAI22X1  g119(.A0(new_n352_1), .A1(new_n239), .B0(new_n236_1), .B1(new_n349), .Y(n182));
  INVX1    g120(.A(\counter[23] ), .Y(new_n354));
  AND2X1   g121(.A(new_n350), .B(\counter[22] ), .Y(new_n355));
  XOR2X1   g122(.A(new_n355), .B(new_n354), .Y(new_n356_1));
  MX2X1    g123(.A(new_n356_1), .B(new_n354), .S0(in2), .Y(new_n357));
  OAI22X1  g124(.A0(new_n357), .A1(new_n239), .B0(new_n236_1), .B1(new_n354), .Y(n187));
  INVX1    g125(.A(\counter[24] ), .Y(new_n359));
  NAND4X1  g126(.A(\counter[23] ), .B(\counter[22] ), .C(\counter[21] ), .D(\counter[20] ), .Y(new_n360_1));
  OR2X1    g127(.A(new_n360_1), .B(new_n339), .Y(new_n361));
  NOR2X1   g128(.A(new_n361), .B(new_n319), .Y(new_n362));
  XOR2X1   g129(.A(new_n362), .B(new_n359), .Y(new_n363));
  MX2X1    g130(.A(new_n363), .B(new_n359), .S0(in2), .Y(new_n364));
  OAI22X1  g131(.A0(new_n364), .A1(new_n239), .B0(new_n236_1), .B1(new_n359), .Y(n192));
  INVX1    g132(.A(\counter[25] ), .Y(new_n366));
  NOR3X1   g133(.A(new_n361), .B(new_n319), .C(new_n359), .Y(new_n367));
  XOR2X1   g134(.A(new_n367), .B(new_n366), .Y(new_n368));
  MX2X1    g135(.A(new_n368), .B(new_n366), .S0(in2), .Y(new_n369));
  OAI22X1  g136(.A0(new_n369), .A1(new_n239), .B0(new_n236_1), .B1(new_n366), .Y(n197));
  INVX1    g137(.A(\counter[26] ), .Y(new_n371));
  NAND2X1  g138(.A(\counter[25] ), .B(\counter[24] ), .Y(new_n372));
  NOR3X1   g139(.A(new_n372), .B(new_n361), .C(new_n319), .Y(new_n373));
  XOR2X1   g140(.A(new_n373), .B(new_n371), .Y(new_n374));
  MX2X1    g141(.A(new_n374), .B(new_n371), .S0(in2), .Y(new_n375));
  OAI22X1  g142(.A0(new_n375), .A1(new_n239), .B0(new_n236_1), .B1(new_n371), .Y(n202));
  INVX1    g143(.A(\counter[27] ), .Y(new_n377));
  NOR4X1   g144(.A(new_n372), .B(new_n361), .C(new_n319), .D(new_n371), .Y(new_n378));
  XOR2X1   g145(.A(new_n378), .B(new_n377), .Y(new_n379));
  MX2X1    g146(.A(new_n379), .B(new_n377), .S0(in2), .Y(new_n380));
  OAI22X1  g147(.A0(new_n380), .A1(new_n239), .B0(new_n236_1), .B1(new_n377), .Y(n207));
  INVX1    g148(.A(\counter[28] ), .Y(new_n382));
  NAND4X1  g149(.A(\counter[27] ), .B(\counter[26] ), .C(\counter[25] ), .D(\counter[24] ), .Y(new_n383));
  OR4X1    g150(.A(new_n383), .B(new_n360_1), .C(new_n339), .D(new_n319), .Y(new_n384));
  XOR2X1   g151(.A(new_n384), .B(\counter[28] ), .Y(new_n385));
  MX2X1    g152(.A(new_n385), .B(new_n382), .S0(in2), .Y(new_n386));
  OAI22X1  g153(.A0(new_n386), .A1(new_n239), .B0(new_n236_1), .B1(new_n382), .Y(n212));
  INVX1    g154(.A(\counter[29] ), .Y(new_n388));
  NOR4X1   g155(.A(new_n383), .B(new_n361), .C(new_n319), .D(new_n382), .Y(new_n389));
  XOR2X1   g156(.A(new_n389), .B(new_n388), .Y(new_n390));
  MX2X1    g157(.A(new_n390), .B(new_n388), .S0(in2), .Y(new_n391));
  OAI22X1  g158(.A0(new_n391), .A1(new_n239), .B0(new_n236_1), .B1(new_n388), .Y(n217));
  INVX1    g159(.A(\counter[30] ), .Y(new_n393));
  NOR3X1   g160(.A(new_n384), .B(new_n388), .C(new_n382), .Y(new_n394));
  XOR2X1   g161(.A(new_n394), .B(new_n393), .Y(new_n395));
  MX2X1    g162(.A(new_n395), .B(new_n393), .S0(in2), .Y(new_n396));
  OAI22X1  g163(.A0(new_n396), .A1(new_n239), .B0(new_n236_1), .B1(new_n393), .Y(n222));
  INVX1    g164(.A(\counter[31] ), .Y(new_n398));
  NOR4X1   g165(.A(new_n384), .B(new_n393), .C(new_n388), .D(new_n382), .Y(new_n399));
  XOR2X1   g166(.A(new_n399), .B(new_n398), .Y(new_n400));
  MX2X1    g167(.A(new_n400), .B(new_n398), .S0(in2), .Y(new_n401));
  OAI22X1  g168(.A0(new_n401), .A1(new_n239), .B0(new_n236_1), .B1(new_n398), .Y(n227));
  MX2X1    g169(.A(\out[0] ), .B(\counter[0] ), .S0(in2), .Y(new_n403));
  MX2X1    g170(.A(new_n403), .B(\out[0] ), .S0(new_n238), .Y(n232));
  MX2X1    g171(.A(\out[1] ), .B(\counter[1] ), .S0(in2), .Y(new_n405));
  MX2X1    g172(.A(new_n405), .B(\out[1] ), .S0(new_n238), .Y(n236));
  MX2X1    g173(.A(\out[2] ), .B(\counter[2] ), .S0(in2), .Y(new_n407));
  MX2X1    g174(.A(new_n407), .B(\out[2] ), .S0(new_n238), .Y(n240));
  MX2X1    g175(.A(\out[3] ), .B(\counter[3] ), .S0(in2), .Y(new_n409));
  MX2X1    g176(.A(new_n409), .B(\out[3] ), .S0(new_n238), .Y(n244));
  MX2X1    g177(.A(\out[4] ), .B(\counter[4] ), .S0(in2), .Y(new_n411));
  MX2X1    g178(.A(new_n411), .B(\out[4] ), .S0(new_n238), .Y(n248));
  MX2X1    g179(.A(\out[5] ), .B(\counter[5] ), .S0(in2), .Y(new_n413));
  MX2X1    g180(.A(new_n413), .B(\out[5] ), .S0(new_n238), .Y(n252));
  MX2X1    g181(.A(\out[6] ), .B(\counter[6] ), .S0(in2), .Y(new_n415));
  MX2X1    g182(.A(new_n415), .B(\out[6] ), .S0(new_n238), .Y(n256));
  MX2X1    g183(.A(\out[7] ), .B(\counter[7] ), .S0(in2), .Y(new_n417));
  MX2X1    g184(.A(new_n417), .B(\out[7] ), .S0(new_n238), .Y(n260));
  MX2X1    g185(.A(\out[8] ), .B(\counter[8] ), .S0(in2), .Y(new_n419));
  MX2X1    g186(.A(new_n419), .B(\out[8] ), .S0(new_n238), .Y(n264));
  MX2X1    g187(.A(\out[9] ), .B(\counter[9] ), .S0(in2), .Y(new_n421));
  MX2X1    g188(.A(new_n421), .B(\out[9] ), .S0(new_n238), .Y(n268));
  MX2X1    g189(.A(\out[10] ), .B(\counter[10] ), .S0(in2), .Y(new_n423));
  MX2X1    g190(.A(new_n423), .B(\out[10] ), .S0(new_n238), .Y(n272));
  MX2X1    g191(.A(\out[11] ), .B(\counter[11] ), .S0(in2), .Y(new_n425));
  MX2X1    g192(.A(new_n425), .B(\out[11] ), .S0(new_n238), .Y(n276));
  MX2X1    g193(.A(\out[12] ), .B(\counter[12] ), .S0(in2), .Y(new_n427));
  MX2X1    g194(.A(new_n427), .B(\out[12] ), .S0(new_n238), .Y(n280));
  MX2X1    g195(.A(\out[13] ), .B(\counter[13] ), .S0(in2), .Y(new_n429));
  MX2X1    g196(.A(new_n429), .B(\out[13] ), .S0(new_n238), .Y(n284));
  MX2X1    g197(.A(\out[14] ), .B(\counter[14] ), .S0(in2), .Y(new_n431));
  MX2X1    g198(.A(new_n431), .B(\out[14] ), .S0(new_n238), .Y(n288));
  MX2X1    g199(.A(\out[15] ), .B(\counter[15] ), .S0(in2), .Y(new_n433));
  MX2X1    g200(.A(new_n433), .B(\out[15] ), .S0(new_n238), .Y(n292));
  MX2X1    g201(.A(\out[16] ), .B(\counter[16] ), .S0(in2), .Y(new_n435));
  MX2X1    g202(.A(new_n435), .B(\out[16] ), .S0(new_n238), .Y(n296));
  MX2X1    g203(.A(\out[17] ), .B(\counter[17] ), .S0(in2), .Y(new_n437));
  MX2X1    g204(.A(new_n437), .B(\out[17] ), .S0(new_n238), .Y(n300));
  MX2X1    g205(.A(\out[18] ), .B(\counter[18] ), .S0(in2), .Y(new_n439));
  MX2X1    g206(.A(new_n439), .B(\out[18] ), .S0(new_n238), .Y(n304));
  MX2X1    g207(.A(\out[19] ), .B(\counter[19] ), .S0(in2), .Y(new_n441));
  MX2X1    g208(.A(new_n441), .B(\out[19] ), .S0(new_n238), .Y(n308));
  MX2X1    g209(.A(\out[20] ), .B(\counter[20] ), .S0(in2), .Y(new_n443));
  MX2X1    g210(.A(new_n443), .B(\out[20] ), .S0(new_n238), .Y(n312));
  MX2X1    g211(.A(\out[21] ), .B(\counter[21] ), .S0(in2), .Y(new_n445));
  MX2X1    g212(.A(new_n445), .B(\out[21] ), .S0(new_n238), .Y(n316));
  MX2X1    g213(.A(\out[22] ), .B(\counter[22] ), .S0(in2), .Y(new_n447));
  MX2X1    g214(.A(new_n447), .B(\out[22] ), .S0(new_n238), .Y(n320));
  MX2X1    g215(.A(\out[23] ), .B(\counter[23] ), .S0(in2), .Y(new_n449));
  MX2X1    g216(.A(new_n449), .B(\out[23] ), .S0(new_n238), .Y(n324));
  MX2X1    g217(.A(\out[24] ), .B(\counter[24] ), .S0(in2), .Y(new_n451));
  MX2X1    g218(.A(new_n451), .B(\out[24] ), .S0(new_n238), .Y(n328));
  MX2X1    g219(.A(\out[25] ), .B(\counter[25] ), .S0(in2), .Y(new_n453));
  MX2X1    g220(.A(new_n453), .B(\out[25] ), .S0(new_n238), .Y(n332));
  MX2X1    g221(.A(\out[26] ), .B(\counter[26] ), .S0(in2), .Y(new_n455));
  MX2X1    g222(.A(new_n455), .B(\out[26] ), .S0(new_n238), .Y(n336));
  MX2X1    g223(.A(\out[27] ), .B(\counter[27] ), .S0(in2), .Y(new_n457));
  MX2X1    g224(.A(new_n457), .B(\out[27] ), .S0(new_n238), .Y(n340));
  MX2X1    g225(.A(\out[28] ), .B(\counter[28] ), .S0(in2), .Y(new_n459));
  MX2X1    g226(.A(new_n459), .B(\out[28] ), .S0(new_n238), .Y(n344));
  MX2X1    g227(.A(\out[29] ), .B(\counter[29] ), .S0(in2), .Y(new_n461));
  MX2X1    g228(.A(new_n461), .B(\out[29] ), .S0(new_n238), .Y(n348));
  MX2X1    g229(.A(\out[30] ), .B(\counter[30] ), .S0(in2), .Y(new_n463));
  MX2X1    g230(.A(new_n463), .B(\out[30] ), .S0(new_n238), .Y(n352));
  MX2X1    g231(.A(\out[31] ), .B(\counter[31] ), .S0(in2), .Y(new_n465));
  MX2X1    g232(.A(new_n465), .B(\out[31] ), .S0(new_n238), .Y(n356));
  INVX1    g233(.A(\state[0] ), .Y(new_n467));
  NAND2X1  g234(.A(\state[1] ), .B(in2), .Y(new_n468));
  OAI21X1  g235(.A0(new_n467), .A1(in1), .B0(new_n468), .Y(n360));
  NAND2X1  g236(.A(\state[0] ), .B(in1), .Y(new_n470));
  OAI21X1  g237(.A0(new_n238), .A1(in2), .B0(new_n470), .Y(n365));
  always @ (posedge clock) begin
    \counter[0]  <= n72;
    \counter[1]  <= n77;
    \counter[2]  <= n82;
    \counter[3]  <= n87;
    \counter[4]  <= n92;
    \counter[5]  <= n97;
    \counter[6]  <= n102;
    \counter[7]  <= n107;
    \counter[8]  <= n112;
    \counter[9]  <= n117;
    \counter[10]  <= n122;
    \counter[11]  <= n127;
    \counter[12]  <= n132;
    \counter[13]  <= n137;
    \counter[14]  <= n142;
    \counter[15]  <= n147;
    \counter[16]  <= n152;
    \counter[17]  <= n157;
    \counter[18]  <= n162;
    \counter[19]  <= n167;
    \counter[20]  <= n172;
    \counter[21]  <= n177;
    \counter[22]  <= n182;
    \counter[23]  <= n187;
    \counter[24]  <= n192;
    \counter[25]  <= n197;
    \counter[26]  <= n202;
    \counter[27]  <= n207;
    \counter[28]  <= n212;
    \counter[29]  <= n217;
    \counter[30]  <= n222;
    \counter[31]  <= n227;
    \out[0]  <= n232;
    \out[1]  <= n236;
    \out[2]  <= n240;
    \out[3]  <= n244;
    \out[4]  <= n248;
    \out[5]  <= n252;
    \out[6]  <= n256;
    \out[7]  <= n260;
    \out[8]  <= n264;
    \out[9]  <= n268;
    \out[10]  <= n272;
    \out[11]  <= n276;
    \out[12]  <= n280;
    \out[13]  <= n284;
    \out[14]  <= n288;
    \out[15]  <= n292;
    \out[16]  <= n296;
    \out[17]  <= n300;
    \out[18]  <= n304;
    \out[19]  <= n308;
    \out[20]  <= n312;
    \out[21]  <= n316;
    \out[22]  <= n320;
    \out[23]  <= n324;
    \out[24]  <= n328;
    \out[25]  <= n332;
    \out[26]  <= n336;
    \out[27]  <= n340;
    \out[28]  <= n344;
    \out[29]  <= n348;
    \out[30]  <= n352;
    \out[31]  <= n356;
    \state[0]  <= n360;
    \state[1]  <= n365;
  end
endmodule


