// Benchmark "gps_receiver" written by ABC on Wed Jun 26 15:22:20 2024

module gps_receiver ( clock, 
    clk, rst, gps_rx,
    \latitude[0] , \latitude[1] , \latitude[2] , \latitude[3] ,
    \latitude[4] , \latitude[5] , \latitude[6] , \latitude[7] ,
    \latitude[8] , \latitude[9] , \latitude[10] , \latitude[11] ,
    \latitude[12] , \latitude[13] , \latitude[14] , \latitude[15] ,
    \latitude[16] , \latitude[17] , \latitude[18] , \latitude[19] ,
    \latitude[20] , \latitude[21] , \latitude[22] , \latitude[23] ,
    \latitude[24] , \latitude[25] , \latitude[26] , \latitude[27] ,
    \latitude[28] , \latitude[29] , \latitude[30] , \latitude[31] ,
    \longitude[0] , \longitude[1] , \longitude[2] , \longitude[3] ,
    \longitude[4] , \longitude[5] , \longitude[6] , \longitude[7] ,
    \longitude[8] , \longitude[9] , \longitude[10] , \longitude[11] ,
    \longitude[12] , \longitude[13] , \longitude[14] , \longitude[15] ,
    \longitude[16] , \longitude[17] , \longitude[18] , \longitude[19] ,
    \longitude[20] , \longitude[21] , \longitude[22] , \longitude[23] ,
    \longitude[24] , \longitude[25] , \longitude[26] , \longitude[27] ,
    \longitude[28] , \longitude[29] , \longitude[30] , \longitude[31] ,
    \altitude[0] , \altitude[1] , \altitude[2] , \altitude[3] ,
    \altitude[4] , \altitude[5] , \altitude[6] , \altitude[7] ,
    \altitude[8] , \altitude[9] , \altitude[10] , \altitude[11] ,
    \altitude[12] , \altitude[13] , \altitude[14] , \altitude[15]   );
  input  clock;
  input  clk, rst, gps_rx;
  output \latitude[0] , \latitude[1] , \latitude[2] , \latitude[3] ,
    \latitude[4] , \latitude[5] , \latitude[6] , \latitude[7] ,
    \latitude[8] , \latitude[9] , \latitude[10] , \latitude[11] ,
    \latitude[12] , \latitude[13] , \latitude[14] , \latitude[15] ,
    \latitude[16] , \latitude[17] , \latitude[18] , \latitude[19] ,
    \latitude[20] , \latitude[21] , \latitude[22] , \latitude[23] ,
    \latitude[24] , \latitude[25] , \latitude[26] , \latitude[27] ,
    \latitude[28] , \latitude[29] , \latitude[30] , \latitude[31] ,
    \longitude[0] , \longitude[1] , \longitude[2] , \longitude[3] ,
    \longitude[4] , \longitude[5] , \longitude[6] , \longitude[7] ,
    \longitude[8] , \longitude[9] , \longitude[10] , \longitude[11] ,
    \longitude[12] , \longitude[13] , \longitude[14] , \longitude[15] ,
    \longitude[16] , \longitude[17] , \longitude[18] , \longitude[19] ,
    \longitude[20] , \longitude[21] , \longitude[22] , \longitude[23] ,
    \longitude[24] , \longitude[25] , \longitude[26] , \longitude[27] ,
    \longitude[28] , \longitude[29] , \longitude[30] , \longitude[31] ,
    \altitude[0] , \altitude[1] , \altitude[2] , \altitude[3] ,
    \altitude[4] , \altitude[5] , \altitude[6] , \altitude[7] ,
    \altitude[8] , \altitude[9] , \altitude[10] , \altitude[11] ,
    \altitude[12] , \altitude[13] , \altitude[14] , \altitude[15] ;
  reg \state[0] , \state[1] , \altitude[0] , \altitude[1] , \altitude[2] ,
    \altitude[3] , \altitude[4] , \altitude[5] , \altitude[6] ,
    \altitude[7] , \altitude[8] , \altitude[9] , \altitude[10] ,
    \altitude[11] , \altitude[12] , \altitude[13] , \altitude[14] ,
    \altitude[15] , \longitude[0] , \longitude[1] , \longitude[2] ,
    \longitude[3] , \longitude[4] , \longitude[5] , \longitude[6] ,
    \longitude[7] , \longitude[8] , \longitude[9] , \longitude[10] ,
    \longitude[11] , \longitude[12] , \longitude[13] , \longitude[14] ,
    \longitude[15] , \longitude[16] , \longitude[17] , \longitude[18] ,
    \longitude[19] , \longitude[20] , \longitude[21] , \longitude[22] ,
    \longitude[23] , \longitude[24] , \longitude[25] , \longitude[26] ,
    \longitude[27] , \longitude[28] , \longitude[29] , \longitude[30] ,
    \longitude[31] , \latitude[0] , \latitude[1] , \latitude[2] ,
    \latitude[3] , \latitude[4] , \latitude[5] , \latitude[6] ,
    \latitude[7] , \latitude[8] , \latitude[9] , \latitude[10] ,
    \latitude[11] , \latitude[12] , \latitude[13] , \latitude[14] ,
    \latitude[15] , \latitude[16] , \latitude[17] , \latitude[18] ,
    \latitude[19] , \latitude[20] , \latitude[21] , \latitude[22] ,
    \latitude[23] , \latitude[24] , \latitude[25] , \latitude[26] ,
    \latitude[27] , \latitude[28] , \latitude[29] , \latitude[30] ,
    \latitude[31] , \satellite_data[0] , \satellite_data[1] ,
    \satellite_data[2] , \satellite_data[3] , \satellite_data[4] ,
    \satellite_data[5] , \satellite_data[6] , \satellite_data[7] ,
    \satellite_data[8] , \satellite_data[9] , \satellite_data[10] ,
    \satellite_data[11] , \satellite_data[12] , \satellite_data[13] ,
    \satellite_data[14] , \satellite_data[15] , \satellite_data[16] ,
    \satellite_data[17] , \satellite_data[18] , \satellite_data[19] ,
    \satellite_data[20] , \satellite_data[21] , \satellite_data[22] ,
    \satellite_data[23] , \satellite_data[24] , \satellite_data[25] ,
    \satellite_data[26] , \satellite_data[27] , \satellite_data[28] ,
    \satellite_data[29] , \satellite_data[30] , \satellite_data[31] ,
    \bit_count[0] , \bit_count[1] , \bit_count[2] , \bit_count[3] ,
    \bit_count[4] , \bit_count[5] , \bit_count[6] , \bit_count[7] ,
    \data[0] , \data[1] , \data[2] , \data[3] , \data[4] , \data[5] ,
    \data[6] , \data[7] , \data[8] , \data[9] , \data[10] , \data[11] ,
    \data[12] , \data[13] , \data[14] , \data[15] , \data[16] , \data[17] ,
    \data[18] , \data[19] , \data[20] , \data[21] , \data[22] , \data[23] ;
  wire new_n522, new_n523_1, new_n524, new_n525, new_n526, new_n527,
    new_n528_1, new_n529, new_n531, new_n532, new_n533_1, new_n534,
    new_n536, new_n537, new_n538_1, new_n539, new_n540, new_n541, new_n542,
    new_n543_1, new_n544, new_n545, new_n546, new_n547, new_n548_1,
    new_n550, new_n552, new_n554, new_n556, new_n558_1, new_n560, new_n562,
    new_n564, new_n566, new_n568_1, new_n570, new_n572, new_n574, new_n576,
    new_n578_1, new_n580, new_n582, new_n584, new_n586, new_n588_1,
    new_n590, new_n592, new_n594, new_n596, new_n598_1, new_n600, new_n602,
    new_n604, new_n606, new_n608_1, new_n610, new_n612, new_n614, new_n616,
    new_n618_1, new_n620, new_n622, new_n624, new_n626, new_n628_1,
    new_n630, new_n632, new_n634, new_n636, new_n638_1, new_n640, new_n642,
    new_n644, new_n646, new_n648_1, new_n650, new_n652, new_n654, new_n656,
    new_n658_1, new_n660, new_n662, new_n664, new_n666, new_n668_1,
    new_n670, new_n672, new_n674, new_n676, new_n678_1, new_n680, new_n682,
    new_n684, new_n686, new_n688_1, new_n690, new_n692, new_n694, new_n696,
    new_n698_1, new_n700, new_n702, new_n704, new_n706, new_n708_1,
    new_n709, new_n711, new_n712, new_n714, new_n715, new_n717, new_n718_1,
    new_n720, new_n721, new_n723_1, new_n724, new_n726, new_n727, new_n729,
    new_n730, new_n732, new_n733_1, new_n735, new_n736, new_n738_1,
    new_n739, new_n741, new_n742, new_n744, new_n745, new_n747, new_n748_1,
    new_n750, new_n751, new_n753_1, new_n754, new_n756, new_n757, new_n759,
    new_n760, new_n762, new_n763_1, new_n765, new_n766, new_n768_1,
    new_n769, new_n771, new_n772, new_n774, new_n775, new_n777, new_n778_1,
    new_n780, new_n781, new_n783_1, new_n784, new_n786, new_n787, new_n789,
    new_n790, new_n792, new_n793_1, new_n795, new_n796, new_n798_1,
    new_n799, new_n801, new_n802, new_n804, new_n805, new_n806, new_n807,
    new_n808_1, new_n809, new_n811, new_n812, new_n813_1, new_n814,
    new_n815, new_n816, new_n818, new_n819, new_n820, new_n821, new_n822,
    new_n823, new_n824, new_n826, new_n827, new_n828, new_n829, new_n831,
    new_n832, new_n833, new_n834, new_n836, new_n837, new_n838, new_n839,
    new_n840, new_n842, new_n843, new_n844, new_n845, new_n846, new_n848,
    new_n849, new_n850, new_n851, new_n852, new_n854, new_n856, new_n857,
    new_n859, new_n860, new_n862, new_n863, new_n865, new_n866, new_n868,
    new_n869, new_n871, new_n872, new_n874, new_n875, new_n877, new_n878,
    new_n880, new_n881, new_n883, new_n884, new_n886, new_n887, new_n889,
    new_n890, new_n892, new_n893, new_n895, new_n896, new_n898, new_n899,
    new_n901, new_n902, new_n904, new_n905, new_n907, new_n908, new_n910,
    new_n911, new_n913, new_n914, new_n916, new_n917, new_n919, new_n920,
    new_n922, new_n923, n168, n173, n178, n182, n186, n190, n194, n198,
    n202, n206, n210, n214, n218, n222, n226, n230, n234, n238, n242, n246,
    n250, n254, n258, n262, n266, n270, n274, n278, n282, n286, n290, n294,
    n298, n302, n306, n310, n314, n318, n322, n326, n330, n334, n338, n342,
    n346, n350, n354, n358, n362, n366, n370, n374, n378, n382, n386, n390,
    n394, n398, n402, n406, n410, n414, n418, n422, n426, n430, n434, n438,
    n442, n446, n450, n454, n458, n462, n466, n470, n474, n478, n482, n486,
    n490, n494, n498, n503, n508, n513, n518, n523, n528, n533, n538, n543,
    n548, n553, n558, n563, n568, n573, n578, n583, n588, n593, n598, n603,
    n608, n613, n618, n623, n628, n633, n638, n643, n648, n653, n658, n663,
    n668, n673, n678, n683, n688, n693, n698, n703, n708, n713, n718, n723,
    n728, n733, n738, n743, n748, n753, n758, n763, n768, n773, n778, n783,
    n788, n793, n798, n803, n808, n813;
  INVX1    g000(.A(\bit_count[4] ), .Y(new_n522));
  OR4X1    g001(.A(\bit_count[7] ), .B(\bit_count[6] ), .C(\bit_count[5] ), .D(new_n522), .Y(new_n523_1));
  INVX1    g002(.A(\bit_count[3] ), .Y(new_n524));
  OR4X1    g003(.A(new_n524), .B(\bit_count[2] ), .C(\bit_count[1] ), .D(\bit_count[0] ), .Y(new_n525));
  OR2X1    g004(.A(new_n525), .B(new_n523_1), .Y(new_n526));
  INVX1    g005(.A(\state[1] ), .Y(new_n527));
  OR2X1    g006(.A(new_n527), .B(rst), .Y(new_n528_1));
  AOI21X1  g007(.A0(\state[0] ), .A1(gps_rx), .B0(rst), .Y(new_n529));
  OAI21X1  g008(.A0(new_n528_1), .A1(new_n526), .B0(new_n529), .Y(n168));
  NOR2X1   g009(.A(new_n525), .B(new_n523_1), .Y(new_n531));
  INVX1    g010(.A(rst), .Y(new_n532));
  INVX1    g011(.A(gps_rx), .Y(new_n533_1));
  NAND3X1  g012(.A(\state[0] ), .B(new_n533_1), .C(new_n532), .Y(new_n534));
  OAI21X1  g013(.A0(new_n528_1), .A1(new_n531), .B0(new_n534), .Y(n173));
  INVX1    g014(.A(\altitude[0] ), .Y(new_n536));
  OR4X1    g015(.A(\satellite_data[23] ), .B(\satellite_data[22] ), .C(\satellite_data[21] ), .D(\satellite_data[20] ), .Y(new_n537));
  OR4X1    g016(.A(\satellite_data[19] ), .B(\satellite_data[18] ), .C(\satellite_data[17] ), .D(\satellite_data[16] ), .Y(new_n538_1));
  OR4X1    g017(.A(\satellite_data[31] ), .B(\satellite_data[30] ), .C(\satellite_data[29] ), .D(\satellite_data[28] ), .Y(new_n539));
  OR4X1    g018(.A(\satellite_data[27] ), .B(\satellite_data[26] ), .C(\satellite_data[25] ), .D(\satellite_data[24] ), .Y(new_n540));
  NOR4X1   g019(.A(new_n540), .B(new_n539), .C(new_n538_1), .D(new_n537), .Y(new_n541));
  OR4X1    g020(.A(\satellite_data[7] ), .B(\satellite_data[6] ), .C(\satellite_data[5] ), .D(\satellite_data[4] ), .Y(new_n542));
  OR4X1    g021(.A(\satellite_data[3] ), .B(\satellite_data[2] ), .C(\satellite_data[1] ), .D(\satellite_data[0] ), .Y(new_n543_1));
  OR4X1    g022(.A(\satellite_data[15] ), .B(\satellite_data[14] ), .C(\satellite_data[13] ), .D(\satellite_data[12] ), .Y(new_n544));
  OR4X1    g023(.A(\satellite_data[11] ), .B(\satellite_data[10] ), .C(\satellite_data[9] ), .D(\satellite_data[8] ), .Y(new_n545));
  NOR4X1   g024(.A(new_n545), .B(new_n544), .C(new_n543_1), .D(new_n542), .Y(new_n546));
  AND2X1   g025(.A(new_n546), .B(new_n541), .Y(new_n547));
  INVX1    g026(.A(new_n547), .Y(new_n548_1));
  AOI21X1  g027(.A0(new_n548_1), .A1(new_n532), .B0(new_n536), .Y(n178));
  INVX1    g028(.A(\altitude[1] ), .Y(new_n550));
  AOI21X1  g029(.A0(new_n548_1), .A1(new_n532), .B0(new_n550), .Y(n182));
  INVX1    g030(.A(\altitude[2] ), .Y(new_n552));
  OAI21X1  g031(.A0(new_n547), .A1(rst), .B0(new_n552), .Y(n186));
  INVX1    g032(.A(\altitude[3] ), .Y(new_n554));
  AOI21X1  g033(.A0(new_n548_1), .A1(new_n532), .B0(new_n554), .Y(n190));
  INVX1    g034(.A(\altitude[4] ), .Y(new_n556));
  OAI21X1  g035(.A0(new_n547), .A1(rst), .B0(new_n556), .Y(n194));
  INVX1    g036(.A(\altitude[5] ), .Y(new_n558_1));
  OAI21X1  g037(.A0(new_n547), .A1(rst), .B0(new_n558_1), .Y(n198));
  INVX1    g038(.A(\altitude[6] ), .Y(new_n560));
  AOI21X1  g039(.A0(new_n548_1), .A1(new_n532), .B0(new_n560), .Y(n202));
  INVX1    g040(.A(\altitude[7] ), .Y(new_n562));
  AOI21X1  g041(.A0(new_n548_1), .A1(new_n532), .B0(new_n562), .Y(n206));
  INVX1    g042(.A(\altitude[8] ), .Y(new_n564));
  AOI21X1  g043(.A0(new_n548_1), .A1(new_n532), .B0(new_n564), .Y(n210));
  INVX1    g044(.A(\altitude[9] ), .Y(new_n566));
  OAI21X1  g045(.A0(new_n547), .A1(rst), .B0(new_n566), .Y(n214));
  INVX1    g046(.A(\altitude[10] ), .Y(new_n568_1));
  AOI21X1  g047(.A0(new_n548_1), .A1(new_n532), .B0(new_n568_1), .Y(n218));
  INVX1    g048(.A(\altitude[11] ), .Y(new_n570));
  AOI21X1  g049(.A0(new_n548_1), .A1(new_n532), .B0(new_n570), .Y(n222));
  INVX1    g050(.A(\altitude[12] ), .Y(new_n572));
  OAI21X1  g051(.A0(new_n547), .A1(rst), .B0(new_n572), .Y(n226));
  INVX1    g052(.A(\altitude[13] ), .Y(new_n574));
  AOI21X1  g053(.A0(new_n548_1), .A1(new_n532), .B0(new_n574), .Y(n230));
  INVX1    g054(.A(\altitude[14] ), .Y(new_n576));
  AOI21X1  g055(.A0(new_n548_1), .A1(new_n532), .B0(new_n576), .Y(n234));
  INVX1    g056(.A(\altitude[15] ), .Y(new_n578_1));
  AOI21X1  g057(.A0(new_n548_1), .A1(new_n532), .B0(new_n578_1), .Y(n238));
  INVX1    g058(.A(\longitude[0] ), .Y(new_n580));
  OAI21X1  g059(.A0(new_n547), .A1(rst), .B0(new_n580), .Y(n242));
  INVX1    g060(.A(\longitude[1] ), .Y(new_n582));
  AOI21X1  g061(.A0(new_n548_1), .A1(new_n532), .B0(new_n582), .Y(n246));
  INVX1    g062(.A(\longitude[2] ), .Y(new_n584));
  AOI21X1  g063(.A0(new_n548_1), .A1(new_n532), .B0(new_n584), .Y(n250));
  INVX1    g064(.A(\longitude[3] ), .Y(new_n586));
  AOI21X1  g065(.A0(new_n548_1), .A1(new_n532), .B0(new_n586), .Y(n254));
  INVX1    g066(.A(\longitude[4] ), .Y(new_n588_1));
  AOI21X1  g067(.A0(new_n548_1), .A1(new_n532), .B0(new_n588_1), .Y(n258));
  INVX1    g068(.A(\longitude[5] ), .Y(new_n590));
  OAI21X1  g069(.A0(new_n547), .A1(rst), .B0(new_n590), .Y(n262));
  INVX1    g070(.A(\longitude[6] ), .Y(new_n592));
  AOI21X1  g071(.A0(new_n548_1), .A1(new_n532), .B0(new_n592), .Y(n266));
  INVX1    g072(.A(\longitude[7] ), .Y(new_n594));
  AOI21X1  g073(.A0(new_n548_1), .A1(new_n532), .B0(new_n594), .Y(n270));
  INVX1    g074(.A(\longitude[8] ), .Y(new_n596));
  OAI21X1  g075(.A0(new_n547), .A1(rst), .B0(new_n596), .Y(n274));
  INVX1    g076(.A(\longitude[9] ), .Y(new_n598_1));
  OAI21X1  g077(.A0(new_n547), .A1(rst), .B0(new_n598_1), .Y(n278));
  INVX1    g078(.A(\longitude[10] ), .Y(new_n600));
  AOI21X1  g079(.A0(new_n548_1), .A1(new_n532), .B0(new_n600), .Y(n282));
  INVX1    g080(.A(\longitude[11] ), .Y(new_n602));
  AOI21X1  g081(.A0(new_n548_1), .A1(new_n532), .B0(new_n602), .Y(n286));
  INVX1    g082(.A(\longitude[12] ), .Y(new_n604));
  AOI21X1  g083(.A0(new_n548_1), .A1(new_n532), .B0(new_n604), .Y(n290));
  INVX1    g084(.A(\longitude[13] ), .Y(new_n606));
  AOI21X1  g085(.A0(new_n548_1), .A1(new_n532), .B0(new_n606), .Y(n294));
  INVX1    g086(.A(\longitude[14] ), .Y(new_n608_1));
  OAI21X1  g087(.A0(new_n547), .A1(rst), .B0(new_n608_1), .Y(n298));
  INVX1    g088(.A(\longitude[15] ), .Y(new_n610));
  AOI21X1  g089(.A0(new_n548_1), .A1(new_n532), .B0(new_n610), .Y(n302));
  INVX1    g090(.A(\longitude[16] ), .Y(new_n612));
  OAI21X1  g091(.A0(new_n547), .A1(rst), .B0(new_n612), .Y(n306));
  INVX1    g092(.A(\longitude[17] ), .Y(new_n614));
  AOI21X1  g093(.A0(new_n548_1), .A1(new_n532), .B0(new_n614), .Y(n310));
  INVX1    g094(.A(\longitude[18] ), .Y(new_n616));
  OAI21X1  g095(.A0(new_n547), .A1(rst), .B0(new_n616), .Y(n314));
  INVX1    g096(.A(\longitude[19] ), .Y(new_n618_1));
  AOI21X1  g097(.A0(new_n548_1), .A1(new_n532), .B0(new_n618_1), .Y(n318));
  INVX1    g098(.A(\longitude[20] ), .Y(new_n620));
  AOI21X1  g099(.A0(new_n548_1), .A1(new_n532), .B0(new_n620), .Y(n322));
  INVX1    g100(.A(\longitude[21] ), .Y(new_n622));
  OAI21X1  g101(.A0(new_n547), .A1(rst), .B0(new_n622), .Y(n326));
  INVX1    g102(.A(\longitude[22] ), .Y(new_n624));
  OAI21X1  g103(.A0(new_n547), .A1(rst), .B0(new_n624), .Y(n330));
  INVX1    g104(.A(\longitude[23] ), .Y(new_n626));
  AOI21X1  g105(.A0(new_n548_1), .A1(new_n532), .B0(new_n626), .Y(n334));
  INVX1    g106(.A(\longitude[24] ), .Y(new_n628_1));
  OAI21X1  g107(.A0(new_n547), .A1(rst), .B0(new_n628_1), .Y(n338));
  INVX1    g108(.A(\longitude[25] ), .Y(new_n630));
  OAI21X1  g109(.A0(new_n547), .A1(rst), .B0(new_n630), .Y(n342));
  INVX1    g110(.A(\longitude[26] ), .Y(new_n632));
  OAI21X1  g111(.A0(new_n547), .A1(rst), .B0(new_n632), .Y(n346));
  INVX1    g112(.A(\longitude[27] ), .Y(new_n634));
  AOI21X1  g113(.A0(new_n548_1), .A1(new_n532), .B0(new_n634), .Y(n350));
  INVX1    g114(.A(\longitude[28] ), .Y(new_n636));
  AOI21X1  g115(.A0(new_n548_1), .A1(new_n532), .B0(new_n636), .Y(n354));
  INVX1    g116(.A(\longitude[29] ), .Y(new_n638_1));
  AOI21X1  g117(.A0(new_n548_1), .A1(new_n532), .B0(new_n638_1), .Y(n358));
  INVX1    g118(.A(\longitude[30] ), .Y(new_n640));
  AOI21X1  g119(.A0(new_n548_1), .A1(new_n532), .B0(new_n640), .Y(n362));
  INVX1    g120(.A(\longitude[31] ), .Y(new_n642));
  OAI21X1  g121(.A0(new_n547), .A1(rst), .B0(new_n642), .Y(n366));
  INVX1    g122(.A(\latitude[0] ), .Y(new_n644));
  AOI21X1  g123(.A0(new_n548_1), .A1(new_n532), .B0(new_n644), .Y(n370));
  INVX1    g124(.A(\latitude[1] ), .Y(new_n646));
  AOI21X1  g125(.A0(new_n548_1), .A1(new_n532), .B0(new_n646), .Y(n374));
  INVX1    g126(.A(\latitude[2] ), .Y(new_n648_1));
  AOI21X1  g127(.A0(new_n548_1), .A1(new_n532), .B0(new_n648_1), .Y(n378));
  INVX1    g128(.A(\latitude[3] ), .Y(new_n650));
  OAI21X1  g129(.A0(new_n547), .A1(rst), .B0(new_n650), .Y(n382));
  INVX1    g130(.A(\latitude[4] ), .Y(new_n652));
  OAI21X1  g131(.A0(new_n547), .A1(rst), .B0(new_n652), .Y(n386));
  INVX1    g132(.A(\latitude[5] ), .Y(new_n654));
  OAI21X1  g133(.A0(new_n547), .A1(rst), .B0(new_n654), .Y(n390));
  INVX1    g134(.A(\latitude[6] ), .Y(new_n656));
  OAI21X1  g135(.A0(new_n547), .A1(rst), .B0(new_n656), .Y(n394));
  INVX1    g136(.A(\latitude[7] ), .Y(new_n658_1));
  AOI21X1  g137(.A0(new_n548_1), .A1(new_n532), .B0(new_n658_1), .Y(n398));
  INVX1    g138(.A(\latitude[8] ), .Y(new_n660));
  AOI21X1  g139(.A0(new_n548_1), .A1(new_n532), .B0(new_n660), .Y(n402));
  INVX1    g140(.A(\latitude[9] ), .Y(new_n662));
  OAI21X1  g141(.A0(new_n547), .A1(rst), .B0(new_n662), .Y(n406));
  INVX1    g142(.A(\latitude[10] ), .Y(new_n664));
  OAI21X1  g143(.A0(new_n547), .A1(rst), .B0(new_n664), .Y(n410));
  INVX1    g144(.A(\latitude[11] ), .Y(new_n666));
  AOI21X1  g145(.A0(new_n548_1), .A1(new_n532), .B0(new_n666), .Y(n414));
  INVX1    g146(.A(\latitude[12] ), .Y(new_n668_1));
  OAI21X1  g147(.A0(new_n547), .A1(rst), .B0(new_n668_1), .Y(n418));
  INVX1    g148(.A(\latitude[13] ), .Y(new_n670));
  AOI21X1  g149(.A0(new_n548_1), .A1(new_n532), .B0(new_n670), .Y(n422));
  INVX1    g150(.A(\latitude[14] ), .Y(new_n672));
  OAI21X1  g151(.A0(new_n547), .A1(rst), .B0(new_n672), .Y(n426));
  INVX1    g152(.A(\latitude[15] ), .Y(new_n674));
  AOI21X1  g153(.A0(new_n548_1), .A1(new_n532), .B0(new_n674), .Y(n430));
  INVX1    g154(.A(\latitude[16] ), .Y(new_n676));
  AOI21X1  g155(.A0(new_n548_1), .A1(new_n532), .B0(new_n676), .Y(n434));
  INVX1    g156(.A(\latitude[17] ), .Y(new_n678_1));
  AOI21X1  g157(.A0(new_n548_1), .A1(new_n532), .B0(new_n678_1), .Y(n438));
  INVX1    g158(.A(\latitude[18] ), .Y(new_n680));
  OAI21X1  g159(.A0(new_n547), .A1(rst), .B0(new_n680), .Y(n442));
  INVX1    g160(.A(\latitude[19] ), .Y(new_n682));
  AOI21X1  g161(.A0(new_n548_1), .A1(new_n532), .B0(new_n682), .Y(n446));
  INVX1    g162(.A(\latitude[20] ), .Y(new_n684));
  OAI21X1  g163(.A0(new_n547), .A1(rst), .B0(new_n684), .Y(n450));
  INVX1    g164(.A(\latitude[21] ), .Y(new_n686));
  OAI21X1  g165(.A0(new_n547), .A1(rst), .B0(new_n686), .Y(n454));
  INVX1    g166(.A(\latitude[22] ), .Y(new_n688_1));
  AOI21X1  g167(.A0(new_n548_1), .A1(new_n532), .B0(new_n688_1), .Y(n458));
  INVX1    g168(.A(\latitude[23] ), .Y(new_n690));
  AOI21X1  g169(.A0(new_n548_1), .A1(new_n532), .B0(new_n690), .Y(n462));
  INVX1    g170(.A(\latitude[24] ), .Y(new_n692));
  AOI21X1  g171(.A0(new_n548_1), .A1(new_n532), .B0(new_n692), .Y(n466));
  INVX1    g172(.A(\latitude[25] ), .Y(new_n694));
  OAI21X1  g173(.A0(new_n547), .A1(rst), .B0(new_n694), .Y(n470));
  INVX1    g174(.A(\latitude[26] ), .Y(new_n696));
  AOI21X1  g175(.A0(new_n548_1), .A1(new_n532), .B0(new_n696), .Y(n474));
  INVX1    g176(.A(\latitude[27] ), .Y(new_n698_1));
  AOI21X1  g177(.A0(new_n548_1), .A1(new_n532), .B0(new_n698_1), .Y(n478));
  INVX1    g178(.A(\latitude[28] ), .Y(new_n700));
  OAI21X1  g179(.A0(new_n547), .A1(rst), .B0(new_n700), .Y(n482));
  INVX1    g180(.A(\latitude[29] ), .Y(new_n702));
  AOI21X1  g181(.A0(new_n548_1), .A1(new_n532), .B0(new_n702), .Y(n486));
  INVX1    g182(.A(\latitude[30] ), .Y(new_n704));
  AOI21X1  g183(.A0(new_n548_1), .A1(new_n532), .B0(new_n704), .Y(n490));
  INVX1    g184(.A(\latitude[31] ), .Y(new_n706));
  AOI21X1  g185(.A0(new_n548_1), .A1(new_n532), .B0(new_n706), .Y(n494));
  MX2X1    g186(.A(\data[0] ), .B(\satellite_data[0] ), .S0(new_n526), .Y(new_n708_1));
  MX2X1    g187(.A(new_n708_1), .B(\satellite_data[0] ), .S0(new_n527), .Y(new_n709));
  AND2X1   g188(.A(new_n709), .B(new_n532), .Y(n498));
  MX2X1    g189(.A(\data[1] ), .B(\satellite_data[1] ), .S0(new_n526), .Y(new_n711));
  MX2X1    g190(.A(new_n711), .B(\satellite_data[1] ), .S0(new_n527), .Y(new_n712));
  AND2X1   g191(.A(new_n712), .B(new_n532), .Y(n503));
  MX2X1    g192(.A(\data[2] ), .B(\satellite_data[2] ), .S0(new_n526), .Y(new_n714));
  MX2X1    g193(.A(new_n714), .B(\satellite_data[2] ), .S0(new_n527), .Y(new_n715));
  AND2X1   g194(.A(new_n715), .B(new_n532), .Y(n508));
  MX2X1    g195(.A(\data[3] ), .B(\satellite_data[3] ), .S0(new_n526), .Y(new_n717));
  MX2X1    g196(.A(new_n717), .B(\satellite_data[3] ), .S0(new_n527), .Y(new_n718_1));
  AND2X1   g197(.A(new_n718_1), .B(new_n532), .Y(n513));
  MX2X1    g198(.A(\data[4] ), .B(\satellite_data[4] ), .S0(new_n526), .Y(new_n720));
  MX2X1    g199(.A(new_n720), .B(\satellite_data[4] ), .S0(new_n527), .Y(new_n721));
  AND2X1   g200(.A(new_n721), .B(new_n532), .Y(n518));
  MX2X1    g201(.A(\data[5] ), .B(\satellite_data[5] ), .S0(new_n526), .Y(new_n723_1));
  MX2X1    g202(.A(new_n723_1), .B(\satellite_data[5] ), .S0(new_n527), .Y(new_n724));
  AND2X1   g203(.A(new_n724), .B(new_n532), .Y(n523));
  MX2X1    g204(.A(\data[6] ), .B(\satellite_data[6] ), .S0(new_n526), .Y(new_n726));
  MX2X1    g205(.A(new_n726), .B(\satellite_data[6] ), .S0(new_n527), .Y(new_n727));
  AND2X1   g206(.A(new_n727), .B(new_n532), .Y(n528));
  MX2X1    g207(.A(\data[7] ), .B(\satellite_data[7] ), .S0(new_n526), .Y(new_n729));
  MX2X1    g208(.A(new_n729), .B(\satellite_data[7] ), .S0(new_n527), .Y(new_n730));
  AND2X1   g209(.A(new_n730), .B(new_n532), .Y(n533));
  MX2X1    g210(.A(\data[8] ), .B(\satellite_data[8] ), .S0(new_n526), .Y(new_n732));
  MX2X1    g211(.A(new_n732), .B(\satellite_data[8] ), .S0(new_n527), .Y(new_n733_1));
  AND2X1   g212(.A(new_n733_1), .B(new_n532), .Y(n538));
  MX2X1    g213(.A(\data[9] ), .B(\satellite_data[9] ), .S0(new_n526), .Y(new_n735));
  MX2X1    g214(.A(new_n735), .B(\satellite_data[9] ), .S0(new_n527), .Y(new_n736));
  AND2X1   g215(.A(new_n736), .B(new_n532), .Y(n543));
  MX2X1    g216(.A(\data[10] ), .B(\satellite_data[10] ), .S0(new_n526), .Y(new_n738_1));
  MX2X1    g217(.A(new_n738_1), .B(\satellite_data[10] ), .S0(new_n527), .Y(new_n739));
  AND2X1   g218(.A(new_n739), .B(new_n532), .Y(n548));
  MX2X1    g219(.A(\data[11] ), .B(\satellite_data[11] ), .S0(new_n526), .Y(new_n741));
  MX2X1    g220(.A(new_n741), .B(\satellite_data[11] ), .S0(new_n527), .Y(new_n742));
  AND2X1   g221(.A(new_n742), .B(new_n532), .Y(n553));
  MX2X1    g222(.A(\data[12] ), .B(\satellite_data[12] ), .S0(new_n526), .Y(new_n744));
  MX2X1    g223(.A(new_n744), .B(\satellite_data[12] ), .S0(new_n527), .Y(new_n745));
  AND2X1   g224(.A(new_n745), .B(new_n532), .Y(n558));
  MX2X1    g225(.A(\data[13] ), .B(\satellite_data[13] ), .S0(new_n526), .Y(new_n747));
  MX2X1    g226(.A(new_n747), .B(\satellite_data[13] ), .S0(new_n527), .Y(new_n748_1));
  AND2X1   g227(.A(new_n748_1), .B(new_n532), .Y(n563));
  MX2X1    g228(.A(\data[14] ), .B(\satellite_data[14] ), .S0(new_n526), .Y(new_n750));
  MX2X1    g229(.A(new_n750), .B(\satellite_data[14] ), .S0(new_n527), .Y(new_n751));
  AND2X1   g230(.A(new_n751), .B(new_n532), .Y(n568));
  MX2X1    g231(.A(\data[15] ), .B(\satellite_data[15] ), .S0(new_n526), .Y(new_n753_1));
  MX2X1    g232(.A(new_n753_1), .B(\satellite_data[15] ), .S0(new_n527), .Y(new_n754));
  AND2X1   g233(.A(new_n754), .B(new_n532), .Y(n573));
  MX2X1    g234(.A(\data[16] ), .B(\satellite_data[16] ), .S0(new_n526), .Y(new_n756));
  MX2X1    g235(.A(new_n756), .B(\satellite_data[16] ), .S0(new_n527), .Y(new_n757));
  AND2X1   g236(.A(new_n757), .B(new_n532), .Y(n578));
  MX2X1    g237(.A(\data[17] ), .B(\satellite_data[17] ), .S0(new_n526), .Y(new_n759));
  MX2X1    g238(.A(new_n759), .B(\satellite_data[17] ), .S0(new_n527), .Y(new_n760));
  AND2X1   g239(.A(new_n760), .B(new_n532), .Y(n583));
  MX2X1    g240(.A(\data[18] ), .B(\satellite_data[18] ), .S0(new_n526), .Y(new_n762));
  MX2X1    g241(.A(new_n762), .B(\satellite_data[18] ), .S0(new_n527), .Y(new_n763_1));
  AND2X1   g242(.A(new_n763_1), .B(new_n532), .Y(n588));
  MX2X1    g243(.A(\data[19] ), .B(\satellite_data[19] ), .S0(new_n526), .Y(new_n765));
  MX2X1    g244(.A(new_n765), .B(\satellite_data[19] ), .S0(new_n527), .Y(new_n766));
  AND2X1   g245(.A(new_n766), .B(new_n532), .Y(n593));
  MX2X1    g246(.A(\data[20] ), .B(\satellite_data[20] ), .S0(new_n526), .Y(new_n768_1));
  MX2X1    g247(.A(new_n768_1), .B(\satellite_data[20] ), .S0(new_n527), .Y(new_n769));
  AND2X1   g248(.A(new_n769), .B(new_n532), .Y(n598));
  MX2X1    g249(.A(\data[21] ), .B(\satellite_data[21] ), .S0(new_n526), .Y(new_n771));
  MX2X1    g250(.A(new_n771), .B(\satellite_data[21] ), .S0(new_n527), .Y(new_n772));
  AND2X1   g251(.A(new_n772), .B(new_n532), .Y(n603));
  MX2X1    g252(.A(\data[22] ), .B(\satellite_data[22] ), .S0(new_n526), .Y(new_n774));
  MX2X1    g253(.A(new_n774), .B(\satellite_data[22] ), .S0(new_n527), .Y(new_n775));
  AND2X1   g254(.A(new_n775), .B(new_n532), .Y(n608));
  MX2X1    g255(.A(\data[23] ), .B(\satellite_data[23] ), .S0(new_n526), .Y(new_n777));
  MX2X1    g256(.A(new_n777), .B(\satellite_data[23] ), .S0(new_n527), .Y(new_n778_1));
  AND2X1   g257(.A(new_n778_1), .B(new_n532), .Y(n613));
  MX2X1    g258(.A(\satellite_data[24] ), .B(\satellite_data[0] ), .S0(new_n531), .Y(new_n780));
  MX2X1    g259(.A(new_n780), .B(\satellite_data[24] ), .S0(new_n527), .Y(new_n781));
  AND2X1   g260(.A(new_n781), .B(new_n532), .Y(n618));
  MX2X1    g261(.A(\satellite_data[25] ), .B(\satellite_data[1] ), .S0(new_n531), .Y(new_n783_1));
  MX2X1    g262(.A(new_n783_1), .B(\satellite_data[25] ), .S0(new_n527), .Y(new_n784));
  AND2X1   g263(.A(new_n784), .B(new_n532), .Y(n623));
  MX2X1    g264(.A(\satellite_data[26] ), .B(\satellite_data[2] ), .S0(new_n531), .Y(new_n786));
  MX2X1    g265(.A(new_n786), .B(\satellite_data[26] ), .S0(new_n527), .Y(new_n787));
  AND2X1   g266(.A(new_n787), .B(new_n532), .Y(n628));
  MX2X1    g267(.A(\satellite_data[27] ), .B(\satellite_data[3] ), .S0(new_n531), .Y(new_n789));
  MX2X1    g268(.A(new_n789), .B(\satellite_data[27] ), .S0(new_n527), .Y(new_n790));
  AND2X1   g269(.A(new_n790), .B(new_n532), .Y(n633));
  MX2X1    g270(.A(\satellite_data[28] ), .B(\satellite_data[4] ), .S0(new_n531), .Y(new_n792));
  MX2X1    g271(.A(new_n792), .B(\satellite_data[28] ), .S0(new_n527), .Y(new_n793_1));
  AND2X1   g272(.A(new_n793_1), .B(new_n532), .Y(n638));
  MX2X1    g273(.A(\satellite_data[29] ), .B(\satellite_data[5] ), .S0(new_n531), .Y(new_n795));
  MX2X1    g274(.A(new_n795), .B(\satellite_data[29] ), .S0(new_n527), .Y(new_n796));
  AND2X1   g275(.A(new_n796), .B(new_n532), .Y(n643));
  MX2X1    g276(.A(\satellite_data[30] ), .B(\satellite_data[6] ), .S0(new_n531), .Y(new_n798_1));
  MX2X1    g277(.A(new_n798_1), .B(\satellite_data[30] ), .S0(new_n527), .Y(new_n799));
  AND2X1   g278(.A(new_n799), .B(new_n532), .Y(n648));
  MX2X1    g279(.A(\satellite_data[31] ), .B(\satellite_data[7] ), .S0(new_n531), .Y(new_n801));
  MX2X1    g280(.A(new_n801), .B(\satellite_data[31] ), .S0(new_n527), .Y(new_n802));
  AND2X1   g281(.A(new_n802), .B(new_n532), .Y(n653));
  NOR2X1   g282(.A(\state[1] ), .B(\state[0] ), .Y(new_n804));
  NAND2X1  g283(.A(new_n804), .B(\bit_count[0] ), .Y(new_n805));
  NOR3X1   g284(.A(new_n531), .B(\bit_count[0] ), .C(new_n527), .Y(new_n806));
  AND2X1   g285(.A(\state[0] ), .B(gps_rx), .Y(new_n807));
  AND2X1   g286(.A(new_n807), .B(\bit_count[0] ), .Y(new_n808_1));
  OAI22X1  g287(.A0(new_n808_1), .A1(new_n806), .B0(\state[1] ), .B1(\state[0] ), .Y(new_n809));
  AOI21X1  g288(.A0(new_n809), .A1(new_n805), .B0(rst), .Y(n658));
  NAND2X1  g289(.A(new_n804), .B(\bit_count[1] ), .Y(new_n811));
  INVX1    g290(.A(\bit_count[0] ), .Y(new_n812));
  XOR2X1   g291(.A(\bit_count[1] ), .B(new_n812), .Y(new_n813_1));
  NOR3X1   g292(.A(new_n813_1), .B(new_n531), .C(new_n527), .Y(new_n814));
  AND2X1   g293(.A(new_n807), .B(\bit_count[1] ), .Y(new_n815));
  OAI22X1  g294(.A0(new_n815), .A1(new_n814), .B0(\state[1] ), .B1(\state[0] ), .Y(new_n816));
  AOI21X1  g295(.A0(new_n816), .A1(new_n811), .B0(rst), .Y(n663));
  INVX1    g296(.A(\bit_count[2] ), .Y(new_n818));
  INVX1    g297(.A(new_n807), .Y(new_n819));
  AND2X1   g298(.A(\bit_count[1] ), .B(\bit_count[0] ), .Y(new_n820));
  XOR2X1   g299(.A(new_n820), .B(new_n818), .Y(new_n821));
  OAI21X1  g300(.A0(new_n525), .A1(new_n523_1), .B0(\state[1] ), .Y(new_n822));
  OAI22X1  g301(.A0(new_n822), .A1(new_n821), .B0(new_n819), .B1(new_n818), .Y(new_n823));
  MX2X1    g302(.A(new_n823), .B(\bit_count[2] ), .S0(new_n804), .Y(new_n824));
  AND2X1   g303(.A(new_n824), .B(new_n532), .Y(n668));
  NAND3X1  g304(.A(\bit_count[2] ), .B(\bit_count[1] ), .C(\bit_count[0] ), .Y(new_n826));
  XOR2X1   g305(.A(new_n826), .B(\bit_count[3] ), .Y(new_n827));
  OAI22X1  g306(.A0(new_n827), .A1(new_n822), .B0(new_n819), .B1(new_n524), .Y(new_n828));
  MX2X1    g307(.A(new_n828), .B(\bit_count[3] ), .S0(new_n804), .Y(new_n829));
  AND2X1   g308(.A(new_n829), .B(new_n532), .Y(n673));
  NAND4X1  g309(.A(\bit_count[3] ), .B(\bit_count[2] ), .C(\bit_count[1] ), .D(\bit_count[0] ), .Y(new_n831));
  XOR2X1   g310(.A(new_n831), .B(\bit_count[4] ), .Y(new_n832));
  OAI22X1  g311(.A0(new_n832), .A1(new_n822), .B0(new_n819), .B1(new_n522), .Y(new_n833));
  MX2X1    g312(.A(new_n833), .B(\bit_count[4] ), .S0(new_n804), .Y(new_n834));
  AND2X1   g313(.A(new_n834), .B(new_n532), .Y(n678));
  INVX1    g314(.A(\bit_count[5] ), .Y(new_n836));
  NOR2X1   g315(.A(new_n831), .B(new_n522), .Y(new_n837));
  XOR2X1   g316(.A(new_n837), .B(new_n836), .Y(new_n838));
  OAI22X1  g317(.A0(new_n838), .A1(new_n822), .B0(new_n819), .B1(new_n836), .Y(new_n839));
  MX2X1    g318(.A(new_n839), .B(\bit_count[5] ), .S0(new_n804), .Y(new_n840));
  AND2X1   g319(.A(new_n840), .B(new_n532), .Y(n683));
  INVX1    g320(.A(\bit_count[6] ), .Y(new_n842));
  NOR3X1   g321(.A(new_n831), .B(new_n836), .C(new_n522), .Y(new_n843));
  XOR2X1   g322(.A(new_n843), .B(new_n842), .Y(new_n844));
  OAI22X1  g323(.A0(new_n844), .A1(new_n822), .B0(new_n819), .B1(new_n842), .Y(new_n845));
  MX2X1    g324(.A(new_n845), .B(\bit_count[6] ), .S0(new_n804), .Y(new_n846));
  AND2X1   g325(.A(new_n846), .B(new_n532), .Y(n688));
  INVX1    g326(.A(\bit_count[7] ), .Y(new_n848));
  NOR4X1   g327(.A(new_n831), .B(new_n842), .C(new_n836), .D(new_n522), .Y(new_n849));
  XOR2X1   g328(.A(new_n849), .B(new_n848), .Y(new_n850));
  OAI22X1  g329(.A0(new_n850), .A1(new_n822), .B0(new_n819), .B1(new_n848), .Y(new_n851));
  MX2X1    g330(.A(new_n851), .B(\bit_count[7] ), .S0(new_n804), .Y(new_n852));
  AND2X1   g331(.A(new_n852), .B(new_n532), .Y(n693));
  MX2X1    g332(.A(\data[0] ), .B(gps_rx), .S0(\state[1] ), .Y(new_n854));
  AND2X1   g333(.A(new_n854), .B(new_n532), .Y(n698));
  NAND2X1  g334(.A(\data[1] ), .B(new_n527), .Y(new_n856));
  NAND3X1  g335(.A(new_n526), .B(\data[0] ), .C(\state[1] ), .Y(new_n857));
  AOI21X1  g336(.A0(new_n857), .A1(new_n856), .B0(rst), .Y(n703));
  NAND2X1  g337(.A(\data[2] ), .B(new_n527), .Y(new_n859));
  NAND3X1  g338(.A(new_n526), .B(\data[1] ), .C(\state[1] ), .Y(new_n860));
  AOI21X1  g339(.A0(new_n860), .A1(new_n859), .B0(rst), .Y(n708));
  NAND2X1  g340(.A(\data[3] ), .B(new_n527), .Y(new_n862));
  NAND3X1  g341(.A(new_n526), .B(\data[2] ), .C(\state[1] ), .Y(new_n863));
  AOI21X1  g342(.A0(new_n863), .A1(new_n862), .B0(rst), .Y(n713));
  NAND2X1  g343(.A(\data[4] ), .B(new_n527), .Y(new_n865));
  NAND3X1  g344(.A(new_n526), .B(\data[3] ), .C(\state[1] ), .Y(new_n866));
  AOI21X1  g345(.A0(new_n866), .A1(new_n865), .B0(rst), .Y(n718));
  NAND2X1  g346(.A(\data[5] ), .B(new_n527), .Y(new_n868));
  NAND3X1  g347(.A(new_n526), .B(\data[4] ), .C(\state[1] ), .Y(new_n869));
  AOI21X1  g348(.A0(new_n869), .A1(new_n868), .B0(rst), .Y(n723));
  NAND2X1  g349(.A(\data[6] ), .B(new_n527), .Y(new_n871));
  NAND3X1  g350(.A(new_n526), .B(\data[5] ), .C(\state[1] ), .Y(new_n872));
  AOI21X1  g351(.A0(new_n872), .A1(new_n871), .B0(rst), .Y(n728));
  NAND2X1  g352(.A(\data[7] ), .B(new_n527), .Y(new_n874));
  NAND3X1  g353(.A(new_n526), .B(\data[6] ), .C(\state[1] ), .Y(new_n875));
  AOI21X1  g354(.A0(new_n875), .A1(new_n874), .B0(rst), .Y(n733));
  NAND2X1  g355(.A(\data[8] ), .B(new_n527), .Y(new_n877));
  NAND3X1  g356(.A(new_n526), .B(\data[7] ), .C(\state[1] ), .Y(new_n878));
  AOI21X1  g357(.A0(new_n878), .A1(new_n877), .B0(rst), .Y(n738));
  NAND2X1  g358(.A(\data[9] ), .B(new_n527), .Y(new_n880));
  NAND3X1  g359(.A(new_n526), .B(\data[8] ), .C(\state[1] ), .Y(new_n881));
  AOI21X1  g360(.A0(new_n881), .A1(new_n880), .B0(rst), .Y(n743));
  NAND2X1  g361(.A(\data[10] ), .B(new_n527), .Y(new_n883));
  NAND3X1  g362(.A(new_n526), .B(\data[9] ), .C(\state[1] ), .Y(new_n884));
  AOI21X1  g363(.A0(new_n884), .A1(new_n883), .B0(rst), .Y(n748));
  NAND2X1  g364(.A(\data[11] ), .B(new_n527), .Y(new_n886));
  NAND3X1  g365(.A(new_n526), .B(\data[10] ), .C(\state[1] ), .Y(new_n887));
  AOI21X1  g366(.A0(new_n887), .A1(new_n886), .B0(rst), .Y(n753));
  NAND2X1  g367(.A(\data[12] ), .B(new_n527), .Y(new_n889));
  NAND3X1  g368(.A(new_n526), .B(\data[11] ), .C(\state[1] ), .Y(new_n890));
  AOI21X1  g369(.A0(new_n890), .A1(new_n889), .B0(rst), .Y(n758));
  NAND2X1  g370(.A(\data[13] ), .B(new_n527), .Y(new_n892));
  NAND3X1  g371(.A(new_n526), .B(\data[12] ), .C(\state[1] ), .Y(new_n893));
  AOI21X1  g372(.A0(new_n893), .A1(new_n892), .B0(rst), .Y(n763));
  NAND2X1  g373(.A(\data[14] ), .B(new_n527), .Y(new_n895));
  NAND3X1  g374(.A(new_n526), .B(\data[13] ), .C(\state[1] ), .Y(new_n896));
  AOI21X1  g375(.A0(new_n896), .A1(new_n895), .B0(rst), .Y(n768));
  NAND2X1  g376(.A(\data[15] ), .B(new_n527), .Y(new_n898));
  NAND3X1  g377(.A(new_n526), .B(\data[14] ), .C(\state[1] ), .Y(new_n899));
  AOI21X1  g378(.A0(new_n899), .A1(new_n898), .B0(rst), .Y(n773));
  NAND2X1  g379(.A(\data[16] ), .B(new_n527), .Y(new_n901));
  NAND3X1  g380(.A(new_n526), .B(\data[15] ), .C(\state[1] ), .Y(new_n902));
  AOI21X1  g381(.A0(new_n902), .A1(new_n901), .B0(rst), .Y(n778));
  NAND2X1  g382(.A(\data[17] ), .B(new_n527), .Y(new_n904));
  NAND3X1  g383(.A(new_n526), .B(\data[16] ), .C(\state[1] ), .Y(new_n905));
  AOI21X1  g384(.A0(new_n905), .A1(new_n904), .B0(rst), .Y(n783));
  NAND2X1  g385(.A(\data[18] ), .B(new_n527), .Y(new_n907));
  NAND3X1  g386(.A(new_n526), .B(\data[17] ), .C(\state[1] ), .Y(new_n908));
  AOI21X1  g387(.A0(new_n908), .A1(new_n907), .B0(rst), .Y(n788));
  NAND2X1  g388(.A(\data[19] ), .B(new_n527), .Y(new_n910));
  NAND3X1  g389(.A(new_n526), .B(\data[18] ), .C(\state[1] ), .Y(new_n911));
  AOI21X1  g390(.A0(new_n911), .A1(new_n910), .B0(rst), .Y(n793));
  NAND2X1  g391(.A(\data[20] ), .B(new_n527), .Y(new_n913));
  NAND3X1  g392(.A(new_n526), .B(\data[19] ), .C(\state[1] ), .Y(new_n914));
  AOI21X1  g393(.A0(new_n914), .A1(new_n913), .B0(rst), .Y(n798));
  NAND2X1  g394(.A(\data[21] ), .B(new_n527), .Y(new_n916));
  NAND3X1  g395(.A(new_n526), .B(\data[20] ), .C(\state[1] ), .Y(new_n917));
  AOI21X1  g396(.A0(new_n917), .A1(new_n916), .B0(rst), .Y(n803));
  NAND2X1  g397(.A(\data[22] ), .B(new_n527), .Y(new_n919));
  NAND3X1  g398(.A(new_n526), .B(\data[21] ), .C(\state[1] ), .Y(new_n920));
  AOI21X1  g399(.A0(new_n920), .A1(new_n919), .B0(rst), .Y(n808));
  NAND2X1  g400(.A(\data[23] ), .B(new_n527), .Y(new_n922));
  NAND3X1  g401(.A(new_n526), .B(\data[22] ), .C(\state[1] ), .Y(new_n923));
  AOI21X1  g402(.A0(new_n923), .A1(new_n922), .B0(rst), .Y(n813));
  always @ (posedge clock) begin
    \state[0]  <= n168;
    \state[1]  <= n173;
    \altitude[0]  <= n178;
    \altitude[1]  <= n182;
    \altitude[2]  <= n186;
    \altitude[3]  <= n190;
    \altitude[4]  <= n194;
    \altitude[5]  <= n198;
    \altitude[6]  <= n202;
    \altitude[7]  <= n206;
    \altitude[8]  <= n210;
    \altitude[9]  <= n214;
    \altitude[10]  <= n218;
    \altitude[11]  <= n222;
    \altitude[12]  <= n226;
    \altitude[13]  <= n230;
    \altitude[14]  <= n234;
    \altitude[15]  <= n238;
    \longitude[0]  <= n242;
    \longitude[1]  <= n246;
    \longitude[2]  <= n250;
    \longitude[3]  <= n254;
    \longitude[4]  <= n258;
    \longitude[5]  <= n262;
    \longitude[6]  <= n266;
    \longitude[7]  <= n270;
    \longitude[8]  <= n274;
    \longitude[9]  <= n278;
    \longitude[10]  <= n282;
    \longitude[11]  <= n286;
    \longitude[12]  <= n290;
    \longitude[13]  <= n294;
    \longitude[14]  <= n298;
    \longitude[15]  <= n302;
    \longitude[16]  <= n306;
    \longitude[17]  <= n310;
    \longitude[18]  <= n314;
    \longitude[19]  <= n318;
    \longitude[20]  <= n322;
    \longitude[21]  <= n326;
    \longitude[22]  <= n330;
    \longitude[23]  <= n334;
    \longitude[24]  <= n338;
    \longitude[25]  <= n342;
    \longitude[26]  <= n346;
    \longitude[27]  <= n350;
    \longitude[28]  <= n354;
    \longitude[29]  <= n358;
    \longitude[30]  <= n362;
    \longitude[31]  <= n366;
    \latitude[0]  <= n370;
    \latitude[1]  <= n374;
    \latitude[2]  <= n378;
    \latitude[3]  <= n382;
    \latitude[4]  <= n386;
    \latitude[5]  <= n390;
    \latitude[6]  <= n394;
    \latitude[7]  <= n398;
    \latitude[8]  <= n402;
    \latitude[9]  <= n406;
    \latitude[10]  <= n410;
    \latitude[11]  <= n414;
    \latitude[12]  <= n418;
    \latitude[13]  <= n422;
    \latitude[14]  <= n426;
    \latitude[15]  <= n430;
    \latitude[16]  <= n434;
    \latitude[17]  <= n438;
    \latitude[18]  <= n442;
    \latitude[19]  <= n446;
    \latitude[20]  <= n450;
    \latitude[21]  <= n454;
    \latitude[22]  <= n458;
    \latitude[23]  <= n462;
    \latitude[24]  <= n466;
    \latitude[25]  <= n470;
    \latitude[26]  <= n474;
    \latitude[27]  <= n478;
    \latitude[28]  <= n482;
    \latitude[29]  <= n486;
    \latitude[30]  <= n490;
    \latitude[31]  <= n494;
    \satellite_data[0]  <= n498;
    \satellite_data[1]  <= n503;
    \satellite_data[2]  <= n508;
    \satellite_data[3]  <= n513;
    \satellite_data[4]  <= n518;
    \satellite_data[5]  <= n523;
    \satellite_data[6]  <= n528;
    \satellite_data[7]  <= n533;
    \satellite_data[8]  <= n538;
    \satellite_data[9]  <= n543;
    \satellite_data[10]  <= n548;
    \satellite_data[11]  <= n553;
    \satellite_data[12]  <= n558;
    \satellite_data[13]  <= n563;
    \satellite_data[14]  <= n568;
    \satellite_data[15]  <= n573;
    \satellite_data[16]  <= n578;
    \satellite_data[17]  <= n583;
    \satellite_data[18]  <= n588;
    \satellite_data[19]  <= n593;
    \satellite_data[20]  <= n598;
    \satellite_data[21]  <= n603;
    \satellite_data[22]  <= n608;
    \satellite_data[23]  <= n613;
    \satellite_data[24]  <= n618;
    \satellite_data[25]  <= n623;
    \satellite_data[26]  <= n628;
    \satellite_data[27]  <= n633;
    \satellite_data[28]  <= n638;
    \satellite_data[29]  <= n643;
    \satellite_data[30]  <= n648;
    \satellite_data[31]  <= n653;
    \bit_count[0]  <= n658;
    \bit_count[1]  <= n663;
    \bit_count[2]  <= n668;
    \bit_count[3]  <= n673;
    \bit_count[4]  <= n678;
    \bit_count[5]  <= n683;
    \bit_count[6]  <= n688;
    \bit_count[7]  <= n693;
    \data[0]  <= n698;
    \data[1]  <= n703;
    \data[2]  <= n708;
    \data[3]  <= n713;
    \data[4]  <= n718;
    \data[5]  <= n723;
    \data[6]  <= n728;
    \data[7]  <= n733;
    \data[8]  <= n738;
    \data[9]  <= n743;
    \data[10]  <= n748;
    \data[11]  <= n753;
    \data[12]  <= n758;
    \data[13]  <= n763;
    \data[14]  <= n768;
    \data[15]  <= n773;
    \data[16]  <= n778;
    \data[17]  <= n783;
    \data[18]  <= n788;
    \data[19]  <= n793;
    \data[20]  <= n798;
    \data[21]  <= n803;
    \data[22]  <= n808;
    \data[23]  <= n813;
  end
endmodule


