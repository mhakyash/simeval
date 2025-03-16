// Benchmark "divider" written by ABC on Wed Jun 26 15:22:01 2024

module divider ( clock, 
    X,
    Y, Z  );
  input  clock;
  input  X;
  output Y, Z;
  reg Y, Z, \counter_1[0] , \counter_1[1] , \counter_1[2] , \counter_1[3] ,
    \counter_1[4] , \counter_1[5] , \counter_1[6] , \counter_1[7] ,
    \counter_1[8] , \counter_1[9] , \counter_1[10] , \counter_1[11] ,
    \counter_1[12] , \counter_1[13] , \counter_1[14] , \counter_1[15] ,
    \counter_1[16] , \counter_1[17] , \counter_1[18] , \counter_1[19] ,
    \counter_1[20] , \counter_1[21] , \counter_1[22] , \counter_1[23] ,
    \counter_1[24] , \counter_1[25] , \counter_1[26] , \counter_1[27] ,
    \counter_1[28] , \counter_1[29] , \counter_1[30] , \counter_1[31] ,
    \counter_2[0] , \counter_2[1] , \counter_2[2] , \counter_2[3] ,
    \counter_2[4] , \counter_2[5] , \counter_2[6] , \counter_2[7] ,
    \counter_2[8] , \counter_2[9] , \counter_2[10] , \counter_2[11] ,
    \counter_2[12] , \counter_2[13] , \counter_2[14] , \counter_2[15] ,
    \counter_2[16] , \counter_2[17] , \counter_2[18] , \counter_2[19] ,
    \counter_2[20] , \counter_2[21] , \counter_2[22] , \counter_2[23] ,
    \counter_2[24] , \counter_2[25] , \counter_2[26] , \counter_2[27] ,
    \counter_2[28] , \counter_2[29] , \counter_2[30] , \counter_2[31] ;
  wire new_n202, new_n203, new_n204, new_n205, new_n206_1, new_n207,
    new_n208, new_n209, new_n210, new_n211_1, new_n212, new_n213, new_n215,
    new_n216_1, new_n217, new_n218, new_n219, new_n220, new_n221_1,
    new_n222, new_n223, new_n224, new_n225, new_n226_1, new_n227, new_n230,
    new_n231_1, new_n233, new_n234, new_n236_1, new_n237, new_n239,
    new_n240, new_n241_1, new_n243, new_n244, new_n246_1, new_n247,
    new_n248, new_n250, new_n251_1, new_n253, new_n254, new_n255, new_n257,
    new_n258, new_n259, new_n261_1, new_n262, new_n263, new_n265,
    new_n266_1, new_n268, new_n269, new_n270, new_n272, new_n273, new_n275,
    new_n276_1, new_n277, new_n279, new_n280, new_n282, new_n283, new_n284,
    new_n285, new_n287, new_n288, new_n290, new_n291_1, new_n292, new_n294,
    new_n295, new_n296_1, new_n298, new_n299, new_n300, new_n302, new_n303,
    new_n304, new_n306_1, new_n307, new_n308, new_n310, new_n311_1,
    new_n312, new_n314, new_n315, new_n316_1, new_n317, new_n319, new_n320,
    new_n321_1, new_n323, new_n324, new_n325, new_n327, new_n328, new_n329,
    new_n331_1, new_n332, new_n333, new_n335, new_n336, new_n337, new_n339,
    new_n340, new_n341, new_n343, new_n344, new_n345, new_n346, new_n347,
    new_n350, new_n351, new_n353, new_n354, new_n356, new_n357, new_n359,
    new_n360, new_n362, new_n363, new_n365, new_n366, new_n367, new_n369,
    new_n370, new_n372, new_n373, new_n374, new_n376, new_n377, new_n378,
    new_n380, new_n381, new_n382, new_n384, new_n385, new_n387, new_n388,
    new_n389, new_n391, new_n392, new_n394, new_n395, new_n396, new_n398,
    new_n399, new_n401, new_n402, new_n403, new_n404, new_n406, new_n407,
    new_n409, new_n410, new_n411, new_n413, new_n414, new_n415, new_n417,
    new_n418, new_n419, new_n421, new_n422, new_n423, new_n425, new_n426,
    new_n427, new_n429, new_n430, new_n431, new_n433, new_n434, new_n435,
    new_n436, new_n438, new_n439, new_n440, new_n442, new_n443, new_n444,
    new_n446, new_n447, new_n448, new_n450, new_n451, new_n452, new_n454,
    new_n455, new_n456, new_n458, new_n459, new_n460, new_n462, new_n463,
    new_n464, new_n465, new_n466, n8, n12, n16, n21, n26, n31, n36, n41,
    n46, n51, n56, n61, n66, n71, n76, n81, n86, n91, n96, n101, n106,
    n111, n116, n121, n126, n131, n136, n141, n146, n151, n156, n161, n166,
    n171, n176, n181, n186, n191, n196, n201, n206, n211, n216, n221, n226,
    n231, n236, n241, n246, n251, n256, n261, n266, n271, n276, n281, n286,
    n291, n296, n301, n306, n311, n316, n321, n326, n331;
  OR4X1    g000(.A(\counter_1[23] ), .B(\counter_1[22] ), .C(\counter_1[21] ), .D(\counter_1[20] ), .Y(new_n202));
  OR4X1    g001(.A(\counter_1[19] ), .B(\counter_1[18] ), .C(\counter_1[17] ), .D(\counter_1[16] ), .Y(new_n203));
  OR4X1    g002(.A(\counter_1[31] ), .B(\counter_1[30] ), .C(\counter_1[29] ), .D(\counter_1[28] ), .Y(new_n204));
  OR4X1    g003(.A(\counter_1[27] ), .B(\counter_1[26] ), .C(\counter_1[25] ), .D(\counter_1[24] ), .Y(new_n205));
  OR4X1    g004(.A(new_n205), .B(new_n204), .C(new_n203), .D(new_n202), .Y(new_n206_1));
  OR4X1    g005(.A(\counter_1[7] ), .B(\counter_1[6] ), .C(\counter_1[5] ), .D(\counter_1[4] ), .Y(new_n207));
  INVX1    g006(.A(\counter_1[1] ), .Y(new_n208));
  INVX1    g007(.A(\counter_1[3] ), .Y(new_n209));
  OR4X1    g008(.A(new_n209), .B(\counter_1[2] ), .C(new_n208), .D(\counter_1[0] ), .Y(new_n210));
  OR4X1    g009(.A(\counter_1[15] ), .B(\counter_1[14] ), .C(\counter_1[13] ), .D(\counter_1[12] ), .Y(new_n211_1));
  OR4X1    g010(.A(\counter_1[11] ), .B(\counter_1[10] ), .C(\counter_1[9] ), .D(\counter_1[8] ), .Y(new_n212));
  OR2X1    g011(.A(new_n212), .B(new_n211_1), .Y(new_n213));
  NOR4X1   g012(.A(new_n213), .B(new_n210), .C(new_n207), .D(new_n206_1), .Y(n8));
  OR4X1    g013(.A(\counter_2[23] ), .B(\counter_2[22] ), .C(\counter_2[21] ), .D(\counter_2[20] ), .Y(new_n215));
  OR4X1    g014(.A(\counter_2[19] ), .B(\counter_2[18] ), .C(\counter_2[17] ), .D(\counter_2[16] ), .Y(new_n216_1));
  OR4X1    g015(.A(\counter_2[31] ), .B(\counter_2[30] ), .C(\counter_2[29] ), .D(\counter_2[28] ), .Y(new_n217));
  OR4X1    g016(.A(\counter_2[27] ), .B(\counter_2[26] ), .C(\counter_2[25] ), .D(\counter_2[24] ), .Y(new_n218));
  OR4X1    g017(.A(new_n218), .B(new_n217), .C(new_n216_1), .D(new_n215), .Y(new_n219));
  INVX1    g018(.A(\counter_2[4] ), .Y(new_n220));
  OR4X1    g019(.A(\counter_2[7] ), .B(\counter_2[6] ), .C(\counter_2[5] ), .D(new_n220), .Y(new_n221_1));
  INVX1    g020(.A(\counter_2[3] ), .Y(new_n222));
  NOR2X1   g021(.A(\counter_2[1] ), .B(\counter_2[0] ), .Y(new_n223));
  NAND3X1  g022(.A(new_n223), .B(new_n222), .C(\counter_2[2] ), .Y(new_n224));
  OR4X1    g023(.A(\counter_2[15] ), .B(\counter_2[14] ), .C(\counter_2[13] ), .D(\counter_2[12] ), .Y(new_n225));
  OR4X1    g024(.A(\counter_2[11] ), .B(\counter_2[10] ), .C(\counter_2[9] ), .D(\counter_2[8] ), .Y(new_n226_1));
  OR2X1    g025(.A(new_n226_1), .B(new_n225), .Y(new_n227));
  NOR4X1   g026(.A(new_n227), .B(new_n224), .C(new_n221_1), .D(new_n219), .Y(n12));
  NOR2X1   g027(.A(n8), .B(\counter_1[0] ), .Y(n16));
  OR4X1    g028(.A(new_n213), .B(new_n210), .C(new_n207), .D(new_n206_1), .Y(new_n230));
  XOR2X1   g029(.A(\counter_1[1] ), .B(\counter_1[0] ), .Y(new_n231_1));
  AND2X1   g030(.A(new_n231_1), .B(new_n230), .Y(n21));
  AND2X1   g031(.A(\counter_1[1] ), .B(\counter_1[0] ), .Y(new_n233));
  XOR2X1   g032(.A(new_n233), .B(\counter_1[2] ), .Y(new_n234));
  AND2X1   g033(.A(new_n234), .B(new_n230), .Y(n26));
  NAND3X1  g034(.A(\counter_1[2] ), .B(\counter_1[1] ), .C(\counter_1[0] ), .Y(new_n236_1));
  XOR2X1   g035(.A(new_n236_1), .B(new_n209), .Y(new_n237));
  AND2X1   g036(.A(new_n237), .B(new_n230), .Y(n31));
  INVX1    g037(.A(\counter_1[4] ), .Y(new_n239));
  NAND4X1  g038(.A(\counter_1[3] ), .B(\counter_1[2] ), .C(\counter_1[1] ), .D(\counter_1[0] ), .Y(new_n240));
  XOR2X1   g039(.A(new_n240), .B(new_n239), .Y(new_n241_1));
  AND2X1   g040(.A(new_n241_1), .B(new_n230), .Y(n36));
  NOR2X1   g041(.A(new_n240), .B(new_n239), .Y(new_n243));
  XOR2X1   g042(.A(new_n243), .B(\counter_1[5] ), .Y(new_n244));
  AND2X1   g043(.A(new_n244), .B(new_n230), .Y(n41));
  NAND2X1  g044(.A(\counter_1[5] ), .B(\counter_1[4] ), .Y(new_n246_1));
  NOR2X1   g045(.A(new_n246_1), .B(new_n240), .Y(new_n247));
  XOR2X1   g046(.A(new_n247), .B(\counter_1[6] ), .Y(new_n248));
  AND2X1   g047(.A(new_n248), .B(new_n230), .Y(n46));
  AND2X1   g048(.A(new_n247), .B(\counter_1[6] ), .Y(new_n250));
  XOR2X1   g049(.A(new_n250), .B(\counter_1[7] ), .Y(new_n251_1));
  AND2X1   g050(.A(new_n251_1), .B(new_n230), .Y(n51));
  NAND4X1  g051(.A(\counter_1[7] ), .B(\counter_1[6] ), .C(\counter_1[5] ), .D(\counter_1[4] ), .Y(new_n253));
  NOR2X1   g052(.A(new_n253), .B(new_n240), .Y(new_n254));
  XOR2X1   g053(.A(new_n254), .B(\counter_1[8] ), .Y(new_n255));
  AND2X1   g054(.A(new_n255), .B(new_n230), .Y(n56));
  INVX1    g055(.A(\counter_1[8] ), .Y(new_n257));
  NOR3X1   g056(.A(new_n253), .B(new_n240), .C(new_n257), .Y(new_n258));
  XOR2X1   g057(.A(new_n258), .B(\counter_1[9] ), .Y(new_n259));
  AND2X1   g058(.A(new_n259), .B(new_n230), .Y(n61));
  NAND2X1  g059(.A(\counter_1[9] ), .B(\counter_1[8] ), .Y(new_n261_1));
  NOR3X1   g060(.A(new_n261_1), .B(new_n253), .C(new_n240), .Y(new_n262));
  XOR2X1   g061(.A(new_n262), .B(\counter_1[10] ), .Y(new_n263));
  AND2X1   g062(.A(new_n263), .B(new_n230), .Y(n66));
  AND2X1   g063(.A(new_n262), .B(\counter_1[10] ), .Y(new_n265));
  XOR2X1   g064(.A(new_n265), .B(\counter_1[11] ), .Y(new_n266_1));
  AND2X1   g065(.A(new_n266_1), .B(new_n230), .Y(n71));
  NAND4X1  g066(.A(\counter_1[11] ), .B(\counter_1[10] ), .C(\counter_1[9] ), .D(\counter_1[8] ), .Y(new_n268));
  NOR3X1   g067(.A(new_n268), .B(new_n253), .C(new_n240), .Y(new_n269));
  XOR2X1   g068(.A(new_n269), .B(\counter_1[12] ), .Y(new_n270));
  AND2X1   g069(.A(new_n270), .B(new_n230), .Y(n76));
  AND2X1   g070(.A(new_n269), .B(\counter_1[12] ), .Y(new_n272));
  XOR2X1   g071(.A(new_n272), .B(\counter_1[13] ), .Y(new_n273));
  AND2X1   g072(.A(new_n273), .B(new_n230), .Y(n81));
  NAND2X1  g073(.A(\counter_1[13] ), .B(\counter_1[12] ), .Y(new_n275));
  NOR4X1   g074(.A(new_n275), .B(new_n268), .C(new_n253), .D(new_n240), .Y(new_n276_1));
  XOR2X1   g075(.A(new_n276_1), .B(\counter_1[14] ), .Y(new_n277));
  AND2X1   g076(.A(new_n277), .B(new_n230), .Y(n86));
  AND2X1   g077(.A(new_n276_1), .B(\counter_1[14] ), .Y(new_n279));
  XOR2X1   g078(.A(new_n279), .B(\counter_1[15] ), .Y(new_n280));
  AND2X1   g079(.A(new_n280), .B(new_n230), .Y(n91));
  INVX1    g080(.A(\counter_1[16] ), .Y(new_n282));
  NAND4X1  g081(.A(\counter_1[15] ), .B(\counter_1[14] ), .C(\counter_1[13] ), .D(\counter_1[12] ), .Y(new_n283));
  OR4X1    g082(.A(new_n283), .B(new_n268), .C(new_n253), .D(new_n240), .Y(new_n284));
  XOR2X1   g083(.A(new_n284), .B(new_n282), .Y(new_n285));
  AND2X1   g084(.A(new_n285), .B(new_n230), .Y(n96));
  NOR2X1   g085(.A(new_n284), .B(new_n282), .Y(new_n287));
  XOR2X1   g086(.A(new_n287), .B(\counter_1[17] ), .Y(new_n288));
  AND2X1   g087(.A(new_n288), .B(new_n230), .Y(n101));
  INVX1    g088(.A(\counter_1[17] ), .Y(new_n290));
  NOR3X1   g089(.A(new_n284), .B(new_n290), .C(new_n282), .Y(new_n291_1));
  XOR2X1   g090(.A(new_n291_1), .B(\counter_1[18] ), .Y(new_n292));
  AND2X1   g091(.A(new_n292), .B(new_n230), .Y(n106));
  INVX1    g092(.A(\counter_1[18] ), .Y(new_n294));
  NOR4X1   g093(.A(new_n284), .B(new_n294), .C(new_n290), .D(new_n282), .Y(new_n295));
  XOR2X1   g094(.A(new_n295), .B(\counter_1[19] ), .Y(new_n296_1));
  AND2X1   g095(.A(new_n296_1), .B(new_n230), .Y(n111));
  NAND4X1  g096(.A(\counter_1[19] ), .B(\counter_1[18] ), .C(\counter_1[17] ), .D(\counter_1[16] ), .Y(new_n298));
  NOR2X1   g097(.A(new_n298), .B(new_n284), .Y(new_n299));
  XOR2X1   g098(.A(new_n299), .B(\counter_1[20] ), .Y(new_n300));
  AND2X1   g099(.A(new_n300), .B(new_n230), .Y(n116));
  INVX1    g100(.A(\counter_1[20] ), .Y(new_n302));
  NOR3X1   g101(.A(new_n298), .B(new_n284), .C(new_n302), .Y(new_n303));
  XOR2X1   g102(.A(new_n303), .B(\counter_1[21] ), .Y(new_n304));
  AND2X1   g103(.A(new_n304), .B(new_n230), .Y(n121));
  NAND2X1  g104(.A(\counter_1[21] ), .B(\counter_1[20] ), .Y(new_n306_1));
  NOR3X1   g105(.A(new_n306_1), .B(new_n298), .C(new_n284), .Y(new_n307));
  XOR2X1   g106(.A(new_n307), .B(\counter_1[22] ), .Y(new_n308));
  AND2X1   g107(.A(new_n308), .B(new_n230), .Y(n126));
  INVX1    g108(.A(\counter_1[22] ), .Y(new_n310));
  NOR4X1   g109(.A(new_n306_1), .B(new_n298), .C(new_n284), .D(new_n310), .Y(new_n311_1));
  XOR2X1   g110(.A(new_n311_1), .B(\counter_1[23] ), .Y(new_n312));
  AND2X1   g111(.A(new_n312), .B(new_n230), .Y(n131));
  NAND4X1  g112(.A(\counter_1[23] ), .B(\counter_1[22] ), .C(\counter_1[21] ), .D(\counter_1[20] ), .Y(new_n314));
  OR2X1    g113(.A(new_n314), .B(new_n298), .Y(new_n315));
  OAI21X1  g114(.A0(new_n315), .A1(new_n284), .B0(\counter_1[24] ), .Y(new_n316_1));
  OR4X1    g115(.A(new_n314), .B(new_n298), .C(new_n284), .D(\counter_1[24] ), .Y(new_n317));
  AOI21X1  g116(.A0(new_n317), .A1(new_n316_1), .B0(n8), .Y(n136));
  INVX1    g117(.A(\counter_1[24] ), .Y(new_n319));
  NOR3X1   g118(.A(new_n315), .B(new_n284), .C(new_n319), .Y(new_n320));
  XOR2X1   g119(.A(new_n320), .B(\counter_1[25] ), .Y(new_n321_1));
  AND2X1   g120(.A(new_n321_1), .B(new_n230), .Y(n141));
  NAND2X1  g121(.A(\counter_1[25] ), .B(\counter_1[24] ), .Y(new_n323));
  NOR3X1   g122(.A(new_n323), .B(new_n315), .C(new_n284), .Y(new_n324));
  XOR2X1   g123(.A(new_n324), .B(\counter_1[26] ), .Y(new_n325));
  AND2X1   g124(.A(new_n325), .B(new_n230), .Y(n146));
  INVX1    g125(.A(\counter_1[26] ), .Y(new_n327));
  NOR4X1   g126(.A(new_n323), .B(new_n315), .C(new_n284), .D(new_n327), .Y(new_n328));
  XOR2X1   g127(.A(new_n328), .B(\counter_1[27] ), .Y(new_n329));
  AND2X1   g128(.A(new_n329), .B(new_n230), .Y(n151));
  NAND4X1  g129(.A(\counter_1[27] ), .B(\counter_1[26] ), .C(\counter_1[25] ), .D(\counter_1[24] ), .Y(new_n331_1));
  NOR3X1   g130(.A(new_n331_1), .B(new_n315), .C(new_n284), .Y(new_n332));
  XOR2X1   g131(.A(new_n332), .B(\counter_1[28] ), .Y(new_n333));
  AND2X1   g132(.A(new_n333), .B(new_n230), .Y(n156));
  INVX1    g133(.A(\counter_1[28] ), .Y(new_n335));
  NOR4X1   g134(.A(new_n331_1), .B(new_n315), .C(new_n284), .D(new_n335), .Y(new_n336));
  XOR2X1   g135(.A(new_n336), .B(\counter_1[29] ), .Y(new_n337));
  AND2X1   g136(.A(new_n337), .B(new_n230), .Y(n161));
  NAND2X1  g137(.A(\counter_1[29] ), .B(\counter_1[28] ), .Y(new_n339));
  NOR4X1   g138(.A(new_n339), .B(new_n331_1), .C(new_n315), .D(new_n284), .Y(new_n340));
  XOR2X1   g139(.A(new_n340), .B(\counter_1[30] ), .Y(new_n341));
  AND2X1   g140(.A(new_n341), .B(new_n230), .Y(n166));
  INVX1    g141(.A(\counter_1[30] ), .Y(new_n343));
  OR4X1    g142(.A(new_n339), .B(new_n331_1), .C(new_n315), .D(new_n284), .Y(new_n344));
  OAI21X1  g143(.A0(new_n344), .A1(new_n343), .B0(\counter_1[31] ), .Y(new_n345));
  INVX1    g144(.A(\counter_1[31] ), .Y(new_n346));
  NAND3X1  g145(.A(new_n340), .B(new_n346), .C(\counter_1[30] ), .Y(new_n347));
  AOI21X1  g146(.A0(new_n347), .A1(new_n345), .B0(n8), .Y(n171));
  NOR2X1   g147(.A(n12), .B(\counter_2[0] ), .Y(n176));
  OR4X1    g148(.A(new_n227), .B(new_n224), .C(new_n221_1), .D(new_n219), .Y(new_n350));
  XOR2X1   g149(.A(\counter_2[1] ), .B(\counter_2[0] ), .Y(new_n351));
  AND2X1   g150(.A(new_n351), .B(new_n350), .Y(n181));
  AND2X1   g151(.A(\counter_2[1] ), .B(\counter_2[0] ), .Y(new_n353));
  XOR2X1   g152(.A(new_n353), .B(\counter_2[2] ), .Y(new_n354));
  AND2X1   g153(.A(new_n354), .B(new_n350), .Y(n186));
  NAND3X1  g154(.A(\counter_2[2] ), .B(\counter_2[1] ), .C(\counter_2[0] ), .Y(new_n356));
  XOR2X1   g155(.A(new_n356), .B(new_n222), .Y(new_n357));
  AND2X1   g156(.A(new_n357), .B(new_n350), .Y(n191));
  NAND4X1  g157(.A(\counter_2[3] ), .B(\counter_2[2] ), .C(\counter_2[1] ), .D(\counter_2[0] ), .Y(new_n359));
  XOR2X1   g158(.A(new_n359), .B(new_n220), .Y(new_n360));
  AND2X1   g159(.A(new_n360), .B(new_n350), .Y(n196));
  NOR2X1   g160(.A(new_n359), .B(new_n220), .Y(new_n362));
  XOR2X1   g161(.A(new_n362), .B(\counter_2[5] ), .Y(new_n363));
  AND2X1   g162(.A(new_n363), .B(new_n350), .Y(n201));
  NAND2X1  g163(.A(\counter_2[5] ), .B(\counter_2[4] ), .Y(new_n365));
  NOR2X1   g164(.A(new_n365), .B(new_n359), .Y(new_n366));
  XOR2X1   g165(.A(new_n366), .B(\counter_2[6] ), .Y(new_n367));
  AND2X1   g166(.A(new_n367), .B(new_n350), .Y(n206));
  AND2X1   g167(.A(new_n366), .B(\counter_2[6] ), .Y(new_n369));
  XOR2X1   g168(.A(new_n369), .B(\counter_2[7] ), .Y(new_n370));
  AND2X1   g169(.A(new_n370), .B(new_n350), .Y(n211));
  NAND4X1  g170(.A(\counter_2[7] ), .B(\counter_2[6] ), .C(\counter_2[5] ), .D(\counter_2[4] ), .Y(new_n372));
  NOR2X1   g171(.A(new_n372), .B(new_n359), .Y(new_n373));
  XOR2X1   g172(.A(new_n373), .B(\counter_2[8] ), .Y(new_n374));
  AND2X1   g173(.A(new_n374), .B(new_n350), .Y(n216));
  INVX1    g174(.A(\counter_2[8] ), .Y(new_n376));
  NOR3X1   g175(.A(new_n372), .B(new_n359), .C(new_n376), .Y(new_n377));
  XOR2X1   g176(.A(new_n377), .B(\counter_2[9] ), .Y(new_n378));
  AND2X1   g177(.A(new_n378), .B(new_n350), .Y(n221));
  NAND2X1  g178(.A(\counter_2[9] ), .B(\counter_2[8] ), .Y(new_n380));
  NOR3X1   g179(.A(new_n380), .B(new_n372), .C(new_n359), .Y(new_n381));
  XOR2X1   g180(.A(new_n381), .B(\counter_2[10] ), .Y(new_n382));
  AND2X1   g181(.A(new_n382), .B(new_n350), .Y(n226));
  AND2X1   g182(.A(new_n381), .B(\counter_2[10] ), .Y(new_n384));
  XOR2X1   g183(.A(new_n384), .B(\counter_2[11] ), .Y(new_n385));
  AND2X1   g184(.A(new_n385), .B(new_n350), .Y(n231));
  NAND4X1  g185(.A(\counter_2[11] ), .B(\counter_2[10] ), .C(\counter_2[9] ), .D(\counter_2[8] ), .Y(new_n387));
  NOR3X1   g186(.A(new_n387), .B(new_n372), .C(new_n359), .Y(new_n388));
  XOR2X1   g187(.A(new_n388), .B(\counter_2[12] ), .Y(new_n389));
  AND2X1   g188(.A(new_n389), .B(new_n350), .Y(n236));
  AND2X1   g189(.A(new_n388), .B(\counter_2[12] ), .Y(new_n391));
  XOR2X1   g190(.A(new_n391), .B(\counter_2[13] ), .Y(new_n392));
  AND2X1   g191(.A(new_n392), .B(new_n350), .Y(n241));
  NAND2X1  g192(.A(\counter_2[13] ), .B(\counter_2[12] ), .Y(new_n394));
  NOR4X1   g193(.A(new_n394), .B(new_n387), .C(new_n372), .D(new_n359), .Y(new_n395));
  XOR2X1   g194(.A(new_n395), .B(\counter_2[14] ), .Y(new_n396));
  AND2X1   g195(.A(new_n396), .B(new_n350), .Y(n246));
  AND2X1   g196(.A(new_n395), .B(\counter_2[14] ), .Y(new_n398));
  XOR2X1   g197(.A(new_n398), .B(\counter_2[15] ), .Y(new_n399));
  AND2X1   g198(.A(new_n399), .B(new_n350), .Y(n251));
  INVX1    g199(.A(\counter_2[16] ), .Y(new_n401));
  NAND4X1  g200(.A(\counter_2[15] ), .B(\counter_2[14] ), .C(\counter_2[13] ), .D(\counter_2[12] ), .Y(new_n402));
  OR4X1    g201(.A(new_n402), .B(new_n387), .C(new_n372), .D(new_n359), .Y(new_n403));
  XOR2X1   g202(.A(new_n403), .B(new_n401), .Y(new_n404));
  AND2X1   g203(.A(new_n404), .B(new_n350), .Y(n256));
  NOR2X1   g204(.A(new_n403), .B(new_n401), .Y(new_n406));
  XOR2X1   g205(.A(new_n406), .B(\counter_2[17] ), .Y(new_n407));
  AND2X1   g206(.A(new_n407), .B(new_n350), .Y(n261));
  INVX1    g207(.A(\counter_2[17] ), .Y(new_n409));
  NOR3X1   g208(.A(new_n403), .B(new_n409), .C(new_n401), .Y(new_n410));
  XOR2X1   g209(.A(new_n410), .B(\counter_2[18] ), .Y(new_n411));
  AND2X1   g210(.A(new_n411), .B(new_n350), .Y(n266));
  INVX1    g211(.A(\counter_2[18] ), .Y(new_n413));
  NOR4X1   g212(.A(new_n403), .B(new_n413), .C(new_n409), .D(new_n401), .Y(new_n414));
  XOR2X1   g213(.A(new_n414), .B(\counter_2[19] ), .Y(new_n415));
  AND2X1   g214(.A(new_n415), .B(new_n350), .Y(n271));
  NAND4X1  g215(.A(\counter_2[19] ), .B(\counter_2[18] ), .C(\counter_2[17] ), .D(\counter_2[16] ), .Y(new_n417));
  NOR2X1   g216(.A(new_n417), .B(new_n403), .Y(new_n418));
  XOR2X1   g217(.A(new_n418), .B(\counter_2[20] ), .Y(new_n419));
  AND2X1   g218(.A(new_n419), .B(new_n350), .Y(n276));
  INVX1    g219(.A(\counter_2[20] ), .Y(new_n421));
  NOR3X1   g220(.A(new_n417), .B(new_n403), .C(new_n421), .Y(new_n422));
  XOR2X1   g221(.A(new_n422), .B(\counter_2[21] ), .Y(new_n423));
  AND2X1   g222(.A(new_n423), .B(new_n350), .Y(n281));
  NAND2X1  g223(.A(\counter_2[21] ), .B(\counter_2[20] ), .Y(new_n425));
  NOR3X1   g224(.A(new_n425), .B(new_n417), .C(new_n403), .Y(new_n426));
  XOR2X1   g225(.A(new_n426), .B(\counter_2[22] ), .Y(new_n427));
  AND2X1   g226(.A(new_n427), .B(new_n350), .Y(n286));
  INVX1    g227(.A(\counter_2[22] ), .Y(new_n429));
  NOR4X1   g228(.A(new_n425), .B(new_n417), .C(new_n403), .D(new_n429), .Y(new_n430));
  XOR2X1   g229(.A(new_n430), .B(\counter_2[23] ), .Y(new_n431));
  AND2X1   g230(.A(new_n431), .B(new_n350), .Y(n291));
  NAND4X1  g231(.A(\counter_2[23] ), .B(\counter_2[22] ), .C(\counter_2[21] ), .D(\counter_2[20] ), .Y(new_n433));
  OR2X1    g232(.A(new_n433), .B(new_n417), .Y(new_n434));
  OAI21X1  g233(.A0(new_n434), .A1(new_n403), .B0(\counter_2[24] ), .Y(new_n435));
  OR4X1    g234(.A(new_n433), .B(new_n417), .C(new_n403), .D(\counter_2[24] ), .Y(new_n436));
  AOI21X1  g235(.A0(new_n436), .A1(new_n435), .B0(n12), .Y(n296));
  INVX1    g236(.A(\counter_2[24] ), .Y(new_n438));
  NOR3X1   g237(.A(new_n434), .B(new_n403), .C(new_n438), .Y(new_n439));
  XOR2X1   g238(.A(new_n439), .B(\counter_2[25] ), .Y(new_n440));
  AND2X1   g239(.A(new_n440), .B(new_n350), .Y(n301));
  NAND2X1  g240(.A(\counter_2[25] ), .B(\counter_2[24] ), .Y(new_n442));
  NOR3X1   g241(.A(new_n442), .B(new_n434), .C(new_n403), .Y(new_n443));
  XOR2X1   g242(.A(new_n443), .B(\counter_2[26] ), .Y(new_n444));
  AND2X1   g243(.A(new_n444), .B(new_n350), .Y(n306));
  INVX1    g244(.A(\counter_2[26] ), .Y(new_n446));
  NOR4X1   g245(.A(new_n442), .B(new_n434), .C(new_n403), .D(new_n446), .Y(new_n447));
  XOR2X1   g246(.A(new_n447), .B(\counter_2[27] ), .Y(new_n448));
  AND2X1   g247(.A(new_n448), .B(new_n350), .Y(n311));
  NAND4X1  g248(.A(\counter_2[27] ), .B(\counter_2[26] ), .C(\counter_2[25] ), .D(\counter_2[24] ), .Y(new_n450));
  NOR3X1   g249(.A(new_n450), .B(new_n434), .C(new_n403), .Y(new_n451));
  XOR2X1   g250(.A(new_n451), .B(\counter_2[28] ), .Y(new_n452));
  AND2X1   g251(.A(new_n452), .B(new_n350), .Y(n316));
  INVX1    g252(.A(\counter_2[28] ), .Y(new_n454));
  NOR4X1   g253(.A(new_n450), .B(new_n434), .C(new_n403), .D(new_n454), .Y(new_n455));
  XOR2X1   g254(.A(new_n455), .B(\counter_2[29] ), .Y(new_n456));
  AND2X1   g255(.A(new_n456), .B(new_n350), .Y(n321));
  NAND2X1  g256(.A(\counter_2[29] ), .B(\counter_2[28] ), .Y(new_n458));
  NOR4X1   g257(.A(new_n458), .B(new_n450), .C(new_n434), .D(new_n403), .Y(new_n459));
  XOR2X1   g258(.A(new_n459), .B(\counter_2[30] ), .Y(new_n460));
  AND2X1   g259(.A(new_n460), .B(new_n350), .Y(n326));
  INVX1    g260(.A(\counter_2[30] ), .Y(new_n462));
  OR4X1    g261(.A(new_n458), .B(new_n450), .C(new_n434), .D(new_n403), .Y(new_n463));
  OAI21X1  g262(.A0(new_n463), .A1(new_n462), .B0(\counter_2[31] ), .Y(new_n464));
  INVX1    g263(.A(\counter_2[31] ), .Y(new_n465));
  NAND3X1  g264(.A(new_n459), .B(new_n465), .C(\counter_2[30] ), .Y(new_n466));
  AOI21X1  g265(.A0(new_n466), .A1(new_n464), .B0(n12), .Y(n331));
  always @ (posedge clock) begin
    Y <= n8;
    Z <= n12;
    \counter_1[0]  <= n16;
    \counter_1[1]  <= n21;
    \counter_1[2]  <= n26;
    \counter_1[3]  <= n31;
    \counter_1[4]  <= n36;
    \counter_1[5]  <= n41;
    \counter_1[6]  <= n46;
    \counter_1[7]  <= n51;
    \counter_1[8]  <= n56;
    \counter_1[9]  <= n61;
    \counter_1[10]  <= n66;
    \counter_1[11]  <= n71;
    \counter_1[12]  <= n76;
    \counter_1[13]  <= n81;
    \counter_1[14]  <= n86;
    \counter_1[15]  <= n91;
    \counter_1[16]  <= n96;
    \counter_1[17]  <= n101;
    \counter_1[18]  <= n106;
    \counter_1[19]  <= n111;
    \counter_1[20]  <= n116;
    \counter_1[21]  <= n121;
    \counter_1[22]  <= n126;
    \counter_1[23]  <= n131;
    \counter_1[24]  <= n136;
    \counter_1[25]  <= n141;
    \counter_1[26]  <= n146;
    \counter_1[27]  <= n151;
    \counter_1[28]  <= n156;
    \counter_1[29]  <= n161;
    \counter_1[30]  <= n166;
    \counter_1[31]  <= n171;
    \counter_2[0]  <= n176;
    \counter_2[1]  <= n181;
    \counter_2[2]  <= n186;
    \counter_2[3]  <= n191;
    \counter_2[4]  <= n196;
    \counter_2[5]  <= n201;
    \counter_2[6]  <= n206;
    \counter_2[7]  <= n211;
    \counter_2[8]  <= n216;
    \counter_2[9]  <= n221;
    \counter_2[10]  <= n226;
    \counter_2[11]  <= n231;
    \counter_2[12]  <= n236;
    \counter_2[13]  <= n241;
    \counter_2[14]  <= n246;
    \counter_2[15]  <= n251;
    \counter_2[16]  <= n256;
    \counter_2[17]  <= n261;
    \counter_2[18]  <= n266;
    \counter_2[19]  <= n271;
    \counter_2[20]  <= n276;
    \counter_2[21]  <= n281;
    \counter_2[22]  <= n286;
    \counter_2[23]  <= n291;
    \counter_2[24]  <= n296;
    \counter_2[25]  <= n301;
    \counter_2[26]  <= n306;
    \counter_2[27]  <= n311;
    \counter_2[28]  <= n316;
    \counter_2[29]  <= n321;
    \counter_2[30]  <= n326;
    \counter_2[31]  <= n331;
  end
endmodule


