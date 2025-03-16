// Benchmark "rising_edge_detector" written by ABC on Wed Jun 26 15:22:25 2024

module rising_edge_detector ( clock, 
    clk, reset, \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] ,
    \in[6] , \in[7] , \in[8] , \in[9] , \in[10] , \in[11] , \in[12] ,
    \in[13] , \in[14] , \in[15] , \in[16] , \in[17] , \in[18] , \in[19] ,
    \in[20] , \in[21] , \in[22] , \in[23] , \in[24] , \in[25] , \in[26] ,
    \in[27] , \in[28] , \in[29] , \in[30] , \in[31] ,
    \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] , \out[8] , \out[9] , \out[10] , \out[11] , \out[12] ,
    \out[13] , \out[14] , \out[15] , \out[16] , \out[17] , \out[18] ,
    \out[19] , \out[20] , \out[21] , \out[22] , \out[23] , \out[24] ,
    \out[25] , \out[26] , \out[27] , \out[28] , \out[29] , \out[30] ,
    \out[31]   );
  input  clock;
  input  clk, reset, \in[0] , \in[1] , \in[2] , \in[3] , \in[4] ,
    \in[5] , \in[6] , \in[7] , \in[8] , \in[9] , \in[10] , \in[11] ,
    \in[12] , \in[13] , \in[14] , \in[15] , \in[16] , \in[17] , \in[18] ,
    \in[19] , \in[20] , \in[21] , \in[22] , \in[23] , \in[24] , \in[25] ,
    \in[26] , \in[27] , \in[28] , \in[29] , \in[30] , \in[31] ;
  output \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] , \out[8] , \out[9] , \out[10] , \out[11] , \out[12] ,
    \out[13] , \out[14] , \out[15] , \out[16] , \out[17] , \out[18] ,
    \out[19] , \out[20] , \out[21] , \out[22] , \out[23] , \out[24] ,
    \out[25] , \out[26] , \out[27] , \out[28] , \out[29] , \out[30] ,
    \out[31] ;
  reg \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] , \out[8] , \out[9] , \out[10] , \out[11] , \out[12] ,
    \out[13] , \out[14] , \out[15] , \out[16] , \out[17] , \out[18] ,
    \out[19] , \out[20] , \out[21] , \out[22] , \out[23] , \out[24] ,
    \out[25] , \out[26] , \out[27] , \out[28] , \out[29] , \out[30] ,
    \out[31] , \curr[0] , \curr[1] , \curr[2] , \curr[3] , \curr[4] ,
    \curr[5] , \curr[6] , \curr[7] , \curr[8] , \curr[9] , \curr[10] ,
    \curr[11] , \curr[12] , \curr[13] , \curr[14] , \curr[15] , \curr[16] ,
    \curr[17] , \curr[18] , \curr[19] , \curr[20] , \curr[21] , \curr[22] ,
    \curr[23] , \curr[24] , \curr[25] , \curr[26] , \curr[27] , \curr[28] ,
    \curr[29] , \curr[30] , \curr[31] , \prev[0] , \prev[1] , \prev[2] ,
    \prev[3] , \prev[4] , \prev[5] , \prev[6] , \prev[7] , \prev[8] ,
    \prev[9] , \prev[10] , \prev[11] , \prev[12] , \prev[13] , \prev[14] ,
    \prev[15] , \prev[16] , \prev[17] , \prev[18] , \prev[19] , \prev[20] ,
    \prev[21] , \prev[22] , \prev[23] , \prev[24] , \prev[25] , \prev[26] ,
    \prev[27] , \prev[28] , \prev[29] , \prev[30] , \prev[31] ;
  wire new_n355, new_n357_1, new_n359, new_n361, new_n363, new_n365,
    new_n367_1, new_n369, new_n371, new_n373, new_n375, new_n377_1,
    new_n379, new_n381, new_n383, new_n385, new_n387_1, new_n389, new_n391,
    new_n393, new_n395, new_n397_1, new_n399, new_n401, new_n403, new_n405,
    new_n407_1, new_n409, new_n411, new_n413, new_n415, new_n417_1,
    new_n419, n134, n138, n142, n146, n150, n154, n158, n162, n166, n170,
    n174, n178, n182, n186, n190, n194, n198, n202, n206, n210, n214, n218,
    n222, n226, n230, n234, n238, n242, n246, n250, n254, n258, n262, n267,
    n272, n277, n282, n287, n292, n297, n302, n307, n312, n317, n322, n327,
    n332, n337, n342, n347, n352, n357, n362, n367, n372, n377, n382, n387,
    n392, n397, n402, n407, n412, n417, n422, n427, n432, n437, n442, n447,
    n452, n457, n462, n467, n472, n477, n482, n487, n492, n497, n502, n507,
    n512, n517, n522, n527, n532, n537, n542, n547, n552, n557, n562, n567,
    n572, n577;
  INVX1    g000(.A(\curr[0] ), .Y(new_n355));
  NOR3X1   g001(.A(\prev[0] ), .B(new_n355), .C(reset), .Y(n134));
  INVX1    g002(.A(\curr[1] ), .Y(new_n357_1));
  NOR3X1   g003(.A(\prev[1] ), .B(new_n357_1), .C(reset), .Y(n138));
  INVX1    g004(.A(\curr[2] ), .Y(new_n359));
  NOR3X1   g005(.A(\prev[2] ), .B(new_n359), .C(reset), .Y(n142));
  INVX1    g006(.A(\curr[3] ), .Y(new_n361));
  NOR3X1   g007(.A(\prev[3] ), .B(new_n361), .C(reset), .Y(n146));
  INVX1    g008(.A(\curr[4] ), .Y(new_n363));
  NOR3X1   g009(.A(\prev[4] ), .B(new_n363), .C(reset), .Y(n150));
  INVX1    g010(.A(\curr[5] ), .Y(new_n365));
  NOR3X1   g011(.A(\prev[5] ), .B(new_n365), .C(reset), .Y(n154));
  INVX1    g012(.A(\curr[6] ), .Y(new_n367_1));
  NOR3X1   g013(.A(\prev[6] ), .B(new_n367_1), .C(reset), .Y(n158));
  INVX1    g014(.A(\curr[7] ), .Y(new_n369));
  NOR3X1   g015(.A(\prev[7] ), .B(new_n369), .C(reset), .Y(n162));
  INVX1    g016(.A(\curr[8] ), .Y(new_n371));
  NOR3X1   g017(.A(\prev[8] ), .B(new_n371), .C(reset), .Y(n166));
  INVX1    g018(.A(\curr[9] ), .Y(new_n373));
  NOR3X1   g019(.A(\prev[9] ), .B(new_n373), .C(reset), .Y(n170));
  INVX1    g020(.A(\curr[10] ), .Y(new_n375));
  NOR3X1   g021(.A(\prev[10] ), .B(new_n375), .C(reset), .Y(n174));
  INVX1    g022(.A(\curr[11] ), .Y(new_n377_1));
  NOR3X1   g023(.A(\prev[11] ), .B(new_n377_1), .C(reset), .Y(n178));
  INVX1    g024(.A(\curr[12] ), .Y(new_n379));
  NOR3X1   g025(.A(\prev[12] ), .B(new_n379), .C(reset), .Y(n182));
  INVX1    g026(.A(\curr[13] ), .Y(new_n381));
  NOR3X1   g027(.A(\prev[13] ), .B(new_n381), .C(reset), .Y(n186));
  INVX1    g028(.A(\curr[14] ), .Y(new_n383));
  NOR3X1   g029(.A(\prev[14] ), .B(new_n383), .C(reset), .Y(n190));
  INVX1    g030(.A(\curr[15] ), .Y(new_n385));
  NOR3X1   g031(.A(\prev[15] ), .B(new_n385), .C(reset), .Y(n194));
  INVX1    g032(.A(\curr[16] ), .Y(new_n387_1));
  NOR3X1   g033(.A(\prev[16] ), .B(new_n387_1), .C(reset), .Y(n198));
  INVX1    g034(.A(\curr[17] ), .Y(new_n389));
  NOR3X1   g035(.A(\prev[17] ), .B(new_n389), .C(reset), .Y(n202));
  INVX1    g036(.A(\curr[18] ), .Y(new_n391));
  NOR3X1   g037(.A(\prev[18] ), .B(new_n391), .C(reset), .Y(n206));
  INVX1    g038(.A(\curr[19] ), .Y(new_n393));
  NOR3X1   g039(.A(\prev[19] ), .B(new_n393), .C(reset), .Y(n210));
  INVX1    g040(.A(\curr[20] ), .Y(new_n395));
  NOR3X1   g041(.A(\prev[20] ), .B(new_n395), .C(reset), .Y(n214));
  INVX1    g042(.A(\curr[21] ), .Y(new_n397_1));
  NOR3X1   g043(.A(\prev[21] ), .B(new_n397_1), .C(reset), .Y(n218));
  INVX1    g044(.A(\curr[22] ), .Y(new_n399));
  NOR3X1   g045(.A(\prev[22] ), .B(new_n399), .C(reset), .Y(n222));
  INVX1    g046(.A(\curr[23] ), .Y(new_n401));
  NOR3X1   g047(.A(\prev[23] ), .B(new_n401), .C(reset), .Y(n226));
  INVX1    g048(.A(\curr[24] ), .Y(new_n403));
  NOR3X1   g049(.A(\prev[24] ), .B(new_n403), .C(reset), .Y(n230));
  INVX1    g050(.A(\curr[25] ), .Y(new_n405));
  NOR3X1   g051(.A(\prev[25] ), .B(new_n405), .C(reset), .Y(n234));
  INVX1    g052(.A(\curr[26] ), .Y(new_n407_1));
  NOR3X1   g053(.A(\prev[26] ), .B(new_n407_1), .C(reset), .Y(n238));
  INVX1    g054(.A(\curr[27] ), .Y(new_n409));
  NOR3X1   g055(.A(\prev[27] ), .B(new_n409), .C(reset), .Y(n242));
  INVX1    g056(.A(\curr[28] ), .Y(new_n411));
  NOR3X1   g057(.A(\prev[28] ), .B(new_n411), .C(reset), .Y(n246));
  INVX1    g058(.A(\curr[29] ), .Y(new_n413));
  NOR3X1   g059(.A(\prev[29] ), .B(new_n413), .C(reset), .Y(n250));
  INVX1    g060(.A(\curr[30] ), .Y(new_n415));
  NOR3X1   g061(.A(\prev[30] ), .B(new_n415), .C(reset), .Y(n254));
  INVX1    g062(.A(\curr[31] ), .Y(new_n417_1));
  NOR3X1   g063(.A(\prev[31] ), .B(new_n417_1), .C(reset), .Y(n258));
  INVX1    g064(.A(reset), .Y(new_n419));
  AND2X1   g065(.A(\in[0] ), .B(new_n419), .Y(n262));
  AND2X1   g066(.A(\in[1] ), .B(new_n419), .Y(n267));
  AND2X1   g067(.A(\in[2] ), .B(new_n419), .Y(n272));
  AND2X1   g068(.A(\in[3] ), .B(new_n419), .Y(n277));
  AND2X1   g069(.A(\in[4] ), .B(new_n419), .Y(n282));
  AND2X1   g070(.A(\in[5] ), .B(new_n419), .Y(n287));
  AND2X1   g071(.A(\in[6] ), .B(new_n419), .Y(n292));
  AND2X1   g072(.A(\in[7] ), .B(new_n419), .Y(n297));
  AND2X1   g073(.A(\in[8] ), .B(new_n419), .Y(n302));
  AND2X1   g074(.A(\in[9] ), .B(new_n419), .Y(n307));
  AND2X1   g075(.A(\in[10] ), .B(new_n419), .Y(n312));
  AND2X1   g076(.A(\in[11] ), .B(new_n419), .Y(n317));
  AND2X1   g077(.A(\in[12] ), .B(new_n419), .Y(n322));
  AND2X1   g078(.A(\in[13] ), .B(new_n419), .Y(n327));
  AND2X1   g079(.A(\in[14] ), .B(new_n419), .Y(n332));
  AND2X1   g080(.A(\in[15] ), .B(new_n419), .Y(n337));
  AND2X1   g081(.A(\in[16] ), .B(new_n419), .Y(n342));
  AND2X1   g082(.A(\in[17] ), .B(new_n419), .Y(n347));
  AND2X1   g083(.A(\in[18] ), .B(new_n419), .Y(n352));
  AND2X1   g084(.A(\in[19] ), .B(new_n419), .Y(n357));
  AND2X1   g085(.A(\in[20] ), .B(new_n419), .Y(n362));
  AND2X1   g086(.A(\in[21] ), .B(new_n419), .Y(n367));
  AND2X1   g087(.A(\in[22] ), .B(new_n419), .Y(n372));
  AND2X1   g088(.A(\in[23] ), .B(new_n419), .Y(n377));
  AND2X1   g089(.A(\in[24] ), .B(new_n419), .Y(n382));
  AND2X1   g090(.A(\in[25] ), .B(new_n419), .Y(n387));
  AND2X1   g091(.A(\in[26] ), .B(new_n419), .Y(n392));
  AND2X1   g092(.A(\in[27] ), .B(new_n419), .Y(n397));
  AND2X1   g093(.A(\in[28] ), .B(new_n419), .Y(n402));
  AND2X1   g094(.A(\in[29] ), .B(new_n419), .Y(n407));
  AND2X1   g095(.A(\in[30] ), .B(new_n419), .Y(n412));
  AND2X1   g096(.A(\in[31] ), .B(new_n419), .Y(n417));
  AND2X1   g097(.A(\curr[0] ), .B(new_n419), .Y(n422));
  AND2X1   g098(.A(\curr[1] ), .B(new_n419), .Y(n427));
  AND2X1   g099(.A(\curr[2] ), .B(new_n419), .Y(n432));
  AND2X1   g100(.A(\curr[3] ), .B(new_n419), .Y(n437));
  AND2X1   g101(.A(\curr[4] ), .B(new_n419), .Y(n442));
  AND2X1   g102(.A(\curr[5] ), .B(new_n419), .Y(n447));
  AND2X1   g103(.A(\curr[6] ), .B(new_n419), .Y(n452));
  AND2X1   g104(.A(\curr[7] ), .B(new_n419), .Y(n457));
  AND2X1   g105(.A(\curr[8] ), .B(new_n419), .Y(n462));
  AND2X1   g106(.A(\curr[9] ), .B(new_n419), .Y(n467));
  AND2X1   g107(.A(\curr[10] ), .B(new_n419), .Y(n472));
  AND2X1   g108(.A(\curr[11] ), .B(new_n419), .Y(n477));
  AND2X1   g109(.A(\curr[12] ), .B(new_n419), .Y(n482));
  AND2X1   g110(.A(\curr[13] ), .B(new_n419), .Y(n487));
  AND2X1   g111(.A(\curr[14] ), .B(new_n419), .Y(n492));
  AND2X1   g112(.A(\curr[15] ), .B(new_n419), .Y(n497));
  AND2X1   g113(.A(\curr[16] ), .B(new_n419), .Y(n502));
  AND2X1   g114(.A(\curr[17] ), .B(new_n419), .Y(n507));
  AND2X1   g115(.A(\curr[18] ), .B(new_n419), .Y(n512));
  AND2X1   g116(.A(\curr[19] ), .B(new_n419), .Y(n517));
  AND2X1   g117(.A(\curr[20] ), .B(new_n419), .Y(n522));
  AND2X1   g118(.A(\curr[21] ), .B(new_n419), .Y(n527));
  AND2X1   g119(.A(\curr[22] ), .B(new_n419), .Y(n532));
  AND2X1   g120(.A(\curr[23] ), .B(new_n419), .Y(n537));
  AND2X1   g121(.A(\curr[24] ), .B(new_n419), .Y(n542));
  AND2X1   g122(.A(\curr[25] ), .B(new_n419), .Y(n547));
  AND2X1   g123(.A(\curr[26] ), .B(new_n419), .Y(n552));
  AND2X1   g124(.A(\curr[27] ), .B(new_n419), .Y(n557));
  AND2X1   g125(.A(\curr[28] ), .B(new_n419), .Y(n562));
  AND2X1   g126(.A(\curr[29] ), .B(new_n419), .Y(n567));
  AND2X1   g127(.A(\curr[30] ), .B(new_n419), .Y(n572));
  AND2X1   g128(.A(\curr[31] ), .B(new_n419), .Y(n577));
  always @ (posedge clock) begin
    \out[0]  <= n134;
    \out[1]  <= n138;
    \out[2]  <= n142;
    \out[3]  <= n146;
    \out[4]  <= n150;
    \out[5]  <= n154;
    \out[6]  <= n158;
    \out[7]  <= n162;
    \out[8]  <= n166;
    \out[9]  <= n170;
    \out[10]  <= n174;
    \out[11]  <= n178;
    \out[12]  <= n182;
    \out[13]  <= n186;
    \out[14]  <= n190;
    \out[15]  <= n194;
    \out[16]  <= n198;
    \out[17]  <= n202;
    \out[18]  <= n206;
    \out[19]  <= n210;
    \out[20]  <= n214;
    \out[21]  <= n218;
    \out[22]  <= n222;
    \out[23]  <= n226;
    \out[24]  <= n230;
    \out[25]  <= n234;
    \out[26]  <= n238;
    \out[27]  <= n242;
    \out[28]  <= n246;
    \out[29]  <= n250;
    \out[30]  <= n254;
    \out[31]  <= n258;
    \curr[0]  <= n262;
    \curr[1]  <= n267;
    \curr[2]  <= n272;
    \curr[3]  <= n277;
    \curr[4]  <= n282;
    \curr[5]  <= n287;
    \curr[6]  <= n292;
    \curr[7]  <= n297;
    \curr[8]  <= n302;
    \curr[9]  <= n307;
    \curr[10]  <= n312;
    \curr[11]  <= n317;
    \curr[12]  <= n322;
    \curr[13]  <= n327;
    \curr[14]  <= n332;
    \curr[15]  <= n337;
    \curr[16]  <= n342;
    \curr[17]  <= n347;
    \curr[18]  <= n352;
    \curr[19]  <= n357;
    \curr[20]  <= n362;
    \curr[21]  <= n367;
    \curr[22]  <= n372;
    \curr[23]  <= n377;
    \curr[24]  <= n382;
    \curr[25]  <= n387;
    \curr[26]  <= n392;
    \curr[27]  <= n397;
    \curr[28]  <= n402;
    \curr[29]  <= n407;
    \curr[30]  <= n412;
    \curr[31]  <= n417;
    \prev[0]  <= n422;
    \prev[1]  <= n427;
    \prev[2]  <= n432;
    \prev[3]  <= n437;
    \prev[4]  <= n442;
    \prev[5]  <= n447;
    \prev[6]  <= n452;
    \prev[7]  <= n457;
    \prev[8]  <= n462;
    \prev[9]  <= n467;
    \prev[10]  <= n472;
    \prev[11]  <= n477;
    \prev[12]  <= n482;
    \prev[13]  <= n487;
    \prev[14]  <= n492;
    \prev[15]  <= n497;
    \prev[16]  <= n502;
    \prev[17]  <= n507;
    \prev[18]  <= n512;
    \prev[19]  <= n517;
    \prev[20]  <= n522;
    \prev[21]  <= n527;
    \prev[22]  <= n532;
    \prev[23]  <= n537;
    \prev[24]  <= n542;
    \prev[25]  <= n547;
    \prev[26]  <= n552;
    \prev[27]  <= n557;
    \prev[28]  <= n562;
    \prev[29]  <= n567;
    \prev[30]  <= n572;
    \prev[31]  <= n577;
  end
endmodule


