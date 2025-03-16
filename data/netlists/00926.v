// Benchmark "Servo_Control_Block" written by ABC on Wed Jun 26 15:22:24 2024

module Servo_Control_Block ( clock, 
    clk, \pwm[0] , \pwm[1] , \pwm[2] , \pwm[3] , \pwm[4] , \pwm[5] ,
    \pwm[6] , \pwm[7] , \pwm[8] , \pwm[9] , \pwm[10] , \pwm[11] ,
    \pwm[12] , \pwm[13] , \pwm[14] , \pwm[15] ,
    \servo[0] , \servo[1] , \servo[2] , \servo[3] , \servo[4] , \servo[5] ,
    \servo[6] , \servo[7] , \servo[8] , \servo[9] , \servo[10] ,
    \servo[11] , \servo[12] , \servo[13] , \servo[14] , \servo[15]   );
  input  clock;
  input  clk, \pwm[0] , \pwm[1] , \pwm[2] , \pwm[3] , \pwm[4] , \pwm[5] ,
    \pwm[6] , \pwm[7] , \pwm[8] , \pwm[9] , \pwm[10] , \pwm[11] ,
    \pwm[12] , \pwm[13] , \pwm[14] , \pwm[15] ;
  output \servo[0] , \servo[1] , \servo[2] , \servo[3] , \servo[4] ,
    \servo[5] , \servo[6] , \servo[7] , \servo[8] , \servo[9] ,
    \servo[10] , \servo[11] , \servo[12] , \servo[13] , \servo[14] ,
    \servo[15] ;
  reg \servo_counter[0] , \servo_counter[1] , \servo_counter[2] ,
    \servo_counter[3] , \servo_counter[4] , \servo_counter[5] ,
    \servo_counter[6] , \servo_counter[7] , \servo_counter[8] ,
    \servo_counter[9] , \servo_counter[10] , \servo_counter[11] ,
    \servo_counter[12] , \servo_counter[13] , \servo_counter[14] ,
    \servo_counter[15] , \pwm_width[0] , \pwm_width[1] , \pwm_width[2] ,
    \pwm_width[3] , \pwm_width[4] , \pwm_width[5] , \pwm_width[6] ,
    \pwm_width[7] , \pwm_width[8] , \pwm_width[9] , \pwm_width[10] ,
    \pwm_width[11] , \pwm_width[12] , \pwm_width[13] , \pwm_width[14] ,
    \pwm_width[15] , \servo[0] , \pwm_counter[0] , \pwm_counter[1] ,
    \pwm_counter[2] , \pwm_counter[3] , \pwm_counter[4] , \pwm_counter[5] ,
    \pwm_counter[6] , \pwm_counter[7] , \pwm_counter[8] , \pwm_counter[9] ,
    \pwm_counter[10] , \pwm_counter[11] , \pwm_counter[12] ,
    \pwm_counter[13] , \pwm_counter[14] , \pwm_counter[15] ;
  wire new_n196, new_n197, new_n198_1, new_n199, new_n200, new_n201,
    new_n203_1, new_n205, new_n206, new_n208_1, new_n209, new_n211,
    new_n212, new_n214, new_n215, new_n216, new_n218_1, new_n219, new_n221,
    new_n222, new_n224, new_n225, new_n226, new_n227, new_n229, new_n230,
    new_n231, new_n233, new_n234, new_n236, new_n237_1, new_n239, new_n240,
    new_n241, new_n242_1, new_n244, new_n245, new_n246, new_n248, new_n249,
    new_n251, new_n252_1, new_n254, new_n255, new_n256, new_n257_1,
    new_n258, new_n259, new_n260, new_n261, new_n262_1, new_n263, new_n264,
    new_n265, new_n266, new_n267_1, new_n268, new_n269, new_n270, new_n271,
    new_n272_1, new_n273, new_n274, new_n275, new_n276, new_n277_1,
    new_n278, new_n279, new_n280, new_n281, new_n282_1, new_n283, new_n284,
    new_n285, new_n286, new_n287_1, new_n288, new_n289, new_n290, new_n291,
    new_n292_1, new_n293, new_n294, new_n295, new_n296, new_n297_1,
    new_n298, new_n299, new_n300, new_n301, new_n302_1, new_n303, new_n304,
    new_n305, new_n306, new_n307_1, new_n308, new_n309, new_n310, new_n311,
    new_n312, new_n313, new_n314, new_n315, new_n316, new_n317, new_n318,
    new_n319, new_n320, new_n321, new_n322, new_n323, new_n324, new_n325,
    new_n326, new_n327, new_n328, new_n329, new_n330, new_n331, new_n332,
    new_n333, new_n334, new_n335, new_n336, new_n337, new_n338, new_n339,
    new_n340, new_n341, new_n342, new_n343, new_n344, new_n345, new_n346,
    new_n347, new_n348, new_n349, new_n350, new_n351, new_n352, new_n353,
    new_n354, new_n355, new_n356, new_n357, new_n358, new_n359, new_n360,
    new_n361, new_n362, new_n363, new_n364, new_n365, new_n366, new_n367,
    new_n368, new_n369, new_n370, new_n371, new_n372, new_n373, new_n374,
    new_n375, new_n376, new_n377, new_n378, new_n379, new_n380, new_n381,
    new_n382, new_n383, new_n384, new_n385, new_n386, new_n387, new_n388,
    new_n389, new_n390, new_n391, new_n392, new_n393, new_n394, new_n395,
    new_n396, new_n397, new_n398, new_n399, new_n400, new_n401, new_n402,
    new_n403, new_n404, new_n405, new_n406, new_n407, new_n408, new_n409,
    new_n410, new_n411, new_n412, new_n413, new_n414, new_n415, new_n416,
    new_n417, new_n418, new_n419, new_n420, new_n421, new_n422, new_n423,
    new_n424, new_n425, new_n426, new_n427, new_n428, new_n429, new_n430,
    new_n431, new_n432, new_n433, new_n434, new_n435, new_n436, new_n437,
    new_n438, new_n439, new_n440, new_n441, new_n442, new_n443, new_n444,
    new_n445, new_n446, new_n447, new_n448, new_n449, new_n450, new_n451,
    new_n452, new_n453, new_n454, new_n455, new_n456, new_n457, new_n458,
    new_n459, new_n460, new_n461, new_n462, new_n463, new_n464, new_n465,
    new_n466, new_n467, new_n468, new_n469, new_n470, new_n471, new_n472,
    new_n473, new_n474, new_n475, new_n476, new_n477, new_n478, new_n479,
    new_n480, new_n481, new_n482, new_n483, new_n484, new_n485, new_n486,
    new_n487, new_n488, new_n489, new_n490, new_n491, new_n492, new_n493,
    new_n494, new_n495, new_n496, new_n497, new_n498, new_n499, new_n500,
    new_n501, new_n502, new_n503, new_n504, new_n505, new_n506, new_n507,
    new_n508, new_n509, new_n510, new_n511, new_n512, new_n513, new_n514,
    new_n515, new_n516, new_n517, new_n518, new_n519, new_n520, new_n521,
    new_n522, new_n523, new_n524, new_n525, new_n526, new_n527, new_n528,
    new_n529, new_n530, new_n531, new_n532, new_n533, new_n534, new_n535,
    new_n536, new_n537, new_n538, new_n539, new_n540, new_n541, new_n542,
    new_n543, new_n544, new_n545, new_n546, new_n547, new_n548, new_n549,
    new_n550, new_n551, new_n552, new_n553, new_n554, new_n555, new_n556,
    new_n557, new_n558, new_n559, new_n560, new_n561, new_n562, new_n563,
    new_n564, new_n565, new_n566, new_n567, new_n568, new_n569, new_n570,
    new_n571, new_n572, new_n573, new_n574, new_n575, new_n576, new_n577,
    new_n578, new_n579, new_n580, new_n581, new_n582, new_n583, new_n584,
    new_n585, new_n586, new_n587, new_n588, new_n589, new_n590, new_n591,
    new_n592, new_n593, new_n594, new_n595, new_n596, new_n597, new_n598,
    new_n599, new_n600, new_n601, new_n602, new_n603, new_n604, new_n605,
    new_n606, new_n607, new_n608, new_n609, new_n610, new_n611, new_n612,
    new_n613, new_n614, new_n615, new_n616, new_n617, new_n618, new_n619,
    new_n620, new_n621, new_n622, new_n623, new_n624, new_n625, new_n626,
    new_n627, new_n628, new_n629, new_n630, new_n631, new_n632, new_n633,
    new_n634, new_n635, new_n636, new_n637, new_n638, new_n639, new_n640,
    new_n641, new_n642, new_n643, new_n644, new_n645, new_n646, new_n647,
    new_n648, new_n649, new_n650, new_n651, new_n652, new_n653, new_n654,
    new_n655, new_n656, new_n657, new_n658, new_n659, new_n660, new_n661,
    new_n662, new_n663, new_n664, new_n665, new_n666, new_n667, new_n668,
    new_n669, new_n670, new_n671, new_n672, new_n673, new_n674, new_n675,
    new_n676, new_n677, new_n678, new_n679, new_n680, new_n681, new_n682,
    new_n683, new_n684, new_n685, new_n686, new_n687, new_n688, new_n689,
    new_n690, new_n691, new_n692, new_n693, new_n694, new_n695, new_n696,
    new_n697, new_n698, new_n699, new_n700, new_n701, new_n702, new_n703,
    new_n704, new_n705, new_n706, new_n707, new_n708, new_n709, new_n710,
    new_n711, new_n712, new_n713, new_n714, new_n715, new_n716, new_n717,
    new_n718, new_n719, new_n720, new_n721, new_n722, new_n723, new_n724,
    new_n725, new_n726, new_n727, new_n728, new_n729, new_n730, new_n731,
    new_n732, new_n733, new_n734, new_n735, new_n736, new_n737, new_n738,
    new_n739, new_n740, new_n741, new_n742, new_n743, new_n744, new_n745,
    new_n746, new_n747, new_n748, new_n749, new_n750, new_n751, new_n752,
    new_n753, new_n754, new_n755, new_n756, new_n757, new_n758, new_n759,
    new_n760, new_n761, new_n762, new_n763, new_n764, new_n765, new_n766,
    new_n767, new_n768, new_n769, new_n770, new_n771, new_n772, new_n773,
    new_n774, new_n775, new_n776, new_n777, new_n778, new_n779, new_n780,
    new_n781, new_n782, new_n783, new_n784, new_n785, new_n786, new_n787,
    new_n788, new_n789, new_n790, new_n791, new_n792, new_n793, new_n794,
    new_n795, new_n796, new_n797, new_n798, new_n799, new_n800, new_n801,
    new_n802, new_n803, new_n804, new_n805, new_n806, new_n807, new_n808,
    new_n809, new_n810, new_n811, new_n812, new_n813, new_n814, new_n815,
    new_n816, new_n817, new_n818, new_n819, new_n820, new_n821, new_n822,
    new_n823, new_n824, new_n825, new_n826, new_n827, new_n828, new_n829,
    new_n830, new_n831, new_n832, new_n833, new_n834, new_n835, new_n836,
    new_n837, new_n838, new_n839, new_n840, new_n841, new_n842, new_n843,
    new_n844, new_n845, new_n846, new_n847, new_n848, new_n849, new_n850,
    new_n851, new_n852, new_n853, new_n854, new_n855, new_n856, new_n857,
    new_n858, new_n859, new_n860, new_n861, new_n862, new_n863, new_n864,
    new_n865, new_n866, new_n867, new_n868, new_n869, new_n870, new_n871,
    new_n872, new_n873, new_n874, new_n875, new_n876, new_n877, new_n878,
    new_n879, new_n880, new_n881, new_n882, new_n883, new_n884, new_n885,
    new_n886, new_n887, new_n888, new_n889, new_n890, new_n891, new_n892,
    new_n893, new_n894, new_n895, new_n896, new_n897, new_n898, new_n899,
    new_n900, new_n901, new_n902, new_n903, new_n904, new_n905, new_n906,
    new_n907, new_n908, new_n909, new_n910, new_n911, new_n912, new_n913,
    new_n914, new_n915, new_n916, new_n917, new_n918, new_n919, new_n920,
    new_n921, new_n922, new_n923, new_n924, new_n925, new_n926, new_n927,
    new_n928, new_n929, new_n930, new_n931, new_n932, new_n933, new_n934,
    new_n935, new_n936, new_n937, new_n938, new_n939, new_n940, new_n941,
    new_n942, new_n943, new_n944, new_n945, new_n946, new_n947, new_n948,
    new_n949, new_n950, new_n951, new_n952, new_n953, new_n954, new_n955,
    new_n956, new_n957, new_n958, new_n959, new_n960, new_n961, new_n962,
    new_n963, new_n964, new_n965, new_n966, new_n967, new_n968, new_n969,
    new_n970, new_n971, new_n972, new_n973, new_n974, new_n975, new_n976,
    new_n977, new_n978, new_n979, new_n980, new_n981, new_n982, new_n983,
    new_n984, new_n985, new_n986, new_n987, new_n988, new_n989, new_n990,
    new_n991, new_n992, new_n993, new_n994, new_n995, new_n996, new_n997,
    new_n999, new_n1000, new_n1002, new_n1003, new_n1004, new_n1005,
    new_n1006, new_n1007, new_n1008, new_n1009, new_n1010, new_n1011,
    new_n1012, new_n1013, new_n1014, new_n1015, new_n1016, new_n1017,
    new_n1018, new_n1019, new_n1020, new_n1021, new_n1022, new_n1023,
    new_n1024, new_n1025, new_n1026, new_n1027, new_n1028, new_n1029,
    new_n1030, new_n1031, new_n1032, new_n1033, new_n1034, new_n1035,
    new_n1036, new_n1037, new_n1038, new_n1039, new_n1040, new_n1041,
    new_n1042, new_n1043, new_n1044, new_n1045, new_n1046, new_n1047,
    new_n1048, new_n1049, new_n1050, new_n1051, new_n1052, new_n1053,
    new_n1054, new_n1055, new_n1056, new_n1057, new_n1058, new_n1059,
    new_n1060, new_n1061, new_n1062, new_n1063, new_n1064, new_n1065,
    new_n1066, new_n1067, new_n1068, new_n1069, new_n1070, new_n1071,
    new_n1072, new_n1073, new_n1074, new_n1075, new_n1076, new_n1077,
    new_n1078, new_n1079, new_n1080, new_n1081, new_n1082, new_n1083,
    new_n1084, new_n1085, new_n1086, new_n1087, new_n1088, new_n1089,
    new_n1090, new_n1091, new_n1092, new_n1093, new_n1094, new_n1095,
    new_n1096, new_n1097, new_n1098, new_n1099, new_n1100, new_n1101,
    new_n1102, new_n1103, new_n1104, new_n1105, new_n1106, new_n1107,
    new_n1108, new_n1109, new_n1110, new_n1111, new_n1112, new_n1113,
    new_n1114, new_n1115, new_n1116, new_n1117, new_n1118, new_n1119,
    new_n1120, new_n1121, new_n1122, new_n1123, new_n1124, new_n1125,
    new_n1126, new_n1127, new_n1128, new_n1129, new_n1130, new_n1131,
    new_n1132, new_n1133, new_n1134, new_n1135, new_n1136, new_n1137,
    new_n1138, new_n1139, new_n1140, new_n1141, new_n1142, new_n1143,
    new_n1144, new_n1145, new_n1146, new_n1147, new_n1148, new_n1149,
    new_n1150, new_n1151, new_n1152, new_n1153, new_n1154, new_n1155,
    new_n1156, new_n1157, new_n1158, new_n1159, new_n1160, new_n1161,
    new_n1162, new_n1163, new_n1164, new_n1165, new_n1166, new_n1167,
    new_n1168, new_n1169, new_n1170, new_n1171, new_n1172, new_n1173,
    new_n1174, new_n1175, new_n1176, new_n1177, new_n1178, new_n1179,
    new_n1180, new_n1181, new_n1182, new_n1183, new_n1184, new_n1185,
    new_n1186, new_n1187, new_n1188, new_n1189, new_n1190, new_n1191,
    new_n1192, new_n1193, new_n1194, new_n1195, new_n1196, new_n1197,
    new_n1198, new_n1199, new_n1200, new_n1201, new_n1202, new_n1203,
    new_n1204, new_n1205, new_n1206, new_n1207, new_n1208, new_n1209,
    new_n1210, new_n1211, new_n1212, new_n1213, new_n1214, new_n1215,
    new_n1216, new_n1217, new_n1218, new_n1219, new_n1220, new_n1221,
    new_n1222, new_n1223, new_n1224, new_n1225, new_n1226, new_n1227,
    new_n1228, new_n1229, new_n1230, new_n1231, new_n1232, new_n1233,
    new_n1234, new_n1235, new_n1236, new_n1237, new_n1238, new_n1239,
    new_n1240, new_n1241, new_n1242, new_n1243, new_n1244, new_n1245,
    new_n1246, new_n1247, new_n1248, new_n1249, new_n1250, new_n1251,
    new_n1252, new_n1253, new_n1254, new_n1255, new_n1256, new_n1257,
    new_n1258, new_n1259, new_n1260, new_n1261, new_n1262, new_n1263,
    new_n1264, new_n1265, new_n1266, new_n1267, new_n1268, new_n1269,
    new_n1270, new_n1271, new_n1272, new_n1273, new_n1274, new_n1275,
    new_n1276, new_n1277, new_n1278, new_n1279, new_n1281, new_n1282,
    new_n1283, new_n1284, new_n1285, new_n1286, new_n1287, new_n1288,
    new_n1289, new_n1290, new_n1291, new_n1292, new_n1293, new_n1294,
    new_n1295, new_n1296, new_n1297, new_n1298, new_n1299, new_n1300,
    new_n1301, new_n1302, new_n1303, new_n1304, new_n1305, new_n1306,
    new_n1307, new_n1308, new_n1309, new_n1310, new_n1311, new_n1312,
    new_n1313, new_n1314, new_n1315, new_n1316, new_n1317, new_n1318,
    new_n1319, new_n1320, new_n1321, new_n1322, new_n1323, new_n1324,
    new_n1325, new_n1326, new_n1327, new_n1328, new_n1329, new_n1330,
    new_n1331, new_n1332, new_n1333, new_n1334, new_n1335, new_n1336,
    new_n1337, new_n1338, new_n1339, new_n1340, new_n1341, new_n1342,
    new_n1343, new_n1344, new_n1345, new_n1346, new_n1347, new_n1348,
    new_n1349, new_n1350, new_n1351, new_n1352, new_n1353, new_n1354,
    new_n1355, new_n1356, new_n1357, new_n1358, new_n1359, new_n1360,
    new_n1361, new_n1362, new_n1363, new_n1364, new_n1365, new_n1366,
    new_n1367, new_n1368, new_n1369, new_n1370, new_n1371, new_n1372,
    new_n1373, new_n1374, new_n1375, new_n1376, new_n1377, new_n1378,
    new_n1379, new_n1380, new_n1381, new_n1382, new_n1383, new_n1384,
    new_n1385, new_n1386, new_n1387, new_n1388, new_n1389, new_n1390,
    new_n1391, new_n1392, new_n1393, new_n1394, new_n1395, new_n1396,
    new_n1397, new_n1398, new_n1399, new_n1400, new_n1401, new_n1402,
    new_n1403, new_n1404, new_n1405, new_n1406, new_n1407, new_n1408,
    new_n1409, new_n1410, new_n1411, new_n1412, new_n1413, new_n1414,
    new_n1415, new_n1416, new_n1417, new_n1418, new_n1419, new_n1420,
    new_n1421, new_n1422, new_n1423, new_n1424, new_n1425, new_n1426,
    new_n1427, new_n1428, new_n1429, new_n1430, new_n1431, new_n1432,
    new_n1433, new_n1434, new_n1435, new_n1436, new_n1437, new_n1438,
    new_n1439, new_n1440, new_n1441, new_n1442, new_n1443, new_n1444,
    new_n1445, new_n1446, new_n1447, new_n1448, new_n1449, new_n1450,
    new_n1451, new_n1452, new_n1453, new_n1454, new_n1455, new_n1456,
    new_n1457, new_n1458, new_n1459, new_n1460, new_n1461, new_n1462,
    new_n1463, new_n1464, new_n1465, new_n1466, new_n1467, new_n1468,
    new_n1469, new_n1470, new_n1471, new_n1472, new_n1473, new_n1474,
    new_n1475, new_n1476, new_n1477, new_n1478, new_n1479, new_n1480,
    new_n1481, new_n1482, new_n1483, new_n1484, new_n1485, new_n1486,
    new_n1487, new_n1488, new_n1489, new_n1490, new_n1491, new_n1492,
    new_n1493, new_n1494, new_n1495, new_n1496, new_n1497, new_n1498,
    new_n1499, new_n1500, new_n1501, new_n1502, new_n1503, new_n1504,
    new_n1505, new_n1506, new_n1507, new_n1508, new_n1510, new_n1511,
    new_n1512, new_n1513, new_n1514, new_n1515, new_n1516, new_n1517,
    new_n1518, new_n1519, new_n1520, new_n1521, new_n1522, new_n1523,
    new_n1524, new_n1525, new_n1526, new_n1527, new_n1528, new_n1529,
    new_n1530, new_n1531, new_n1532, new_n1533, new_n1534, new_n1535,
    new_n1536, new_n1537, new_n1538, new_n1539, new_n1540, new_n1541,
    new_n1542, new_n1543, new_n1544, new_n1545, new_n1546, new_n1547,
    new_n1548, new_n1549, new_n1550, new_n1551, new_n1552, new_n1553,
    new_n1554, new_n1555, new_n1556, new_n1557, new_n1558, new_n1559,
    new_n1560, new_n1561, new_n1562, new_n1563, new_n1564, new_n1565,
    new_n1566, new_n1567, new_n1568, new_n1569, new_n1570, new_n1571,
    new_n1572, new_n1573, new_n1574, new_n1575, new_n1576, new_n1577,
    new_n1578, new_n1579, new_n1580, new_n1581, new_n1582, new_n1583,
    new_n1584, new_n1585, new_n1586, new_n1587, new_n1588, new_n1589,
    new_n1590, new_n1591, new_n1592, new_n1593, new_n1594, new_n1595,
    new_n1596, new_n1597, new_n1598, new_n1599, new_n1600, new_n1601,
    new_n1602, new_n1603, new_n1604, new_n1605, new_n1606, new_n1607,
    new_n1608, new_n1609, new_n1610, new_n1611, new_n1612, new_n1613,
    new_n1614, new_n1615, new_n1616, new_n1617, new_n1618, new_n1619,
    new_n1620, new_n1621, new_n1622, new_n1623, new_n1624, new_n1625,
    new_n1626, new_n1627, new_n1628, new_n1629, new_n1630, new_n1631,
    new_n1632, new_n1633, new_n1634, new_n1635, new_n1636, new_n1637,
    new_n1638, new_n1639, new_n1640, new_n1641, new_n1642, new_n1643,
    new_n1644, new_n1645, new_n1646, new_n1647, new_n1648, new_n1649,
    new_n1650, new_n1651, new_n1652, new_n1653, new_n1654, new_n1655,
    new_n1656, new_n1657, new_n1658, new_n1659, new_n1660, new_n1661,
    new_n1662, new_n1663, new_n1664, new_n1665, new_n1666, new_n1667,
    new_n1668, new_n1669, new_n1670, new_n1671, new_n1672, new_n1673,
    new_n1674, new_n1675, new_n1676, new_n1677, new_n1678, new_n1679,
    new_n1680, new_n1681, new_n1682, new_n1683, new_n1684, new_n1685,
    new_n1686, new_n1687, new_n1688, new_n1689, new_n1690, new_n1691,
    new_n1692, new_n1693, new_n1694, new_n1695, new_n1696, new_n1697,
    new_n1698, new_n1699, new_n1700, new_n1701, new_n1702, new_n1703,
    new_n1704, new_n1705, new_n1706, new_n1707, new_n1708, new_n1709,
    new_n1710, new_n1711, new_n1712, new_n1713, new_n1714, new_n1715,
    new_n1716, new_n1717, new_n1718, new_n1719, new_n1720, new_n1721,
    new_n1722, new_n1723, new_n1724, new_n1725, new_n1726, new_n1727,
    new_n1728, new_n1729, new_n1730, new_n1731, new_n1732, new_n1733,
    new_n1734, new_n1735, new_n1736, new_n1737, new_n1738, new_n1739,
    new_n1740, new_n1741, new_n1742, new_n1743, new_n1744, new_n1745,
    new_n1746, new_n1747, new_n1748, new_n1749, new_n1750, new_n1751,
    new_n1752, new_n1753, new_n1754, new_n1755, new_n1756, new_n1757,
    new_n1758, new_n1759, new_n1760, new_n1761, new_n1762, new_n1763,
    new_n1764, new_n1765, new_n1766, new_n1767, new_n1768, new_n1769,
    new_n1770, new_n1771, new_n1772, new_n1773, new_n1774, new_n1775,
    new_n1776, new_n1777, new_n1778, new_n1779, new_n1780, new_n1781,
    new_n1782, new_n1783, new_n1784, new_n1785, new_n1786, new_n1787,
    new_n1788, new_n1789, new_n1790, new_n1791, new_n1792, new_n1793,
    new_n1794, new_n1795, new_n1796, new_n1797, new_n1798, new_n1799,
    new_n1800, new_n1801, new_n1802, new_n1803, new_n1804, new_n1805,
    new_n1806, new_n1807, new_n1808, new_n1809, new_n1810, new_n1811,
    new_n1812, new_n1813, new_n1814, new_n1815, new_n1816, new_n1817,
    new_n1818, new_n1819, new_n1820, new_n1821, new_n1822, new_n1823,
    new_n1824, new_n1825, new_n1826, new_n1827, new_n1828, new_n1829,
    new_n1830, new_n1831, new_n1832, new_n1833, new_n1834, new_n1835,
    new_n1836, new_n1837, new_n1838, new_n1839, new_n1840, new_n1841,
    new_n1842, new_n1843, new_n1844, new_n1845, new_n1846, new_n1847,
    new_n1848, new_n1849, new_n1850, new_n1851, new_n1852, new_n1853,
    new_n1854, new_n1855, new_n1856, new_n1857, new_n1858, new_n1859,
    new_n1860, new_n1861, new_n1862, new_n1863, new_n1864, new_n1865,
    new_n1866, new_n1867, new_n1868, new_n1869, new_n1870, new_n1871,
    new_n1872, new_n1873, new_n1874, new_n1875, new_n1876, new_n1877,
    new_n1878, new_n1879, new_n1880, new_n1881, new_n1882, new_n1883,
    new_n1884, new_n1885, new_n1886, new_n1887, new_n1888, new_n1889,
    new_n1890, new_n1891, new_n1892, new_n1893, new_n1894, new_n1895,
    new_n1896, new_n1897, new_n1898, new_n1899, new_n1900, new_n1901,
    new_n1902, new_n1903, new_n1904, new_n1905, new_n1906, new_n1907,
    new_n1908, new_n1909, new_n1910, new_n1911, new_n1912, new_n1913,
    new_n1914, new_n1915, new_n1916, new_n1917, new_n1918, new_n1919,
    new_n1920, new_n1921, new_n1922, new_n1923, new_n1924, new_n1925,
    new_n1926, new_n1927, new_n1928, new_n1929, new_n1930, new_n1931,
    new_n1932, new_n1933, new_n1934, new_n1935, new_n1936, new_n1937,
    new_n1938, new_n1939, new_n1940, new_n1941, new_n1942, new_n1943,
    new_n1944, new_n1945, new_n1946, new_n1947, new_n1948, new_n1949,
    new_n1950, new_n1951, new_n1953, new_n1954, new_n1956, new_n1957,
    new_n1960, new_n1962, new_n1963, new_n1965, new_n1966, new_n1967,
    new_n1968, new_n1969, new_n1971, new_n1972, new_n1973, new_n1974,
    new_n1976, new_n1977, new_n1978, new_n1979, new_n1980, new_n1981,
    new_n1982, new_n1984, new_n1985, new_n1986, new_n1987, new_n1989,
    new_n1990, new_n1992, new_n1993, new_n1994, new_n1995, new_n1997,
    new_n1998, new_n1999, new_n2000, new_n2005, new_n2006, new_n2007,
    new_n2008, new_n2009, new_n2010, new_n2011, new_n2012, new_n2013,
    new_n2014, new_n2015, new_n2016, new_n2017, new_n2018, new_n2019,
    new_n2020, new_n2021, new_n2022, new_n2023, new_n2024, new_n2025,
    new_n2026, new_n2027, new_n2028, new_n2029, new_n2030, new_n2031,
    new_n2032, new_n2033, new_n2034, new_n2035, new_n2036, new_n2037,
    new_n2038, new_n2039, new_n2040, new_n2041, new_n2042, new_n2043,
    new_n2044, new_n2045, new_n2046, new_n2047, new_n2048, new_n2049,
    new_n2050, new_n2051, new_n2052, new_n2053, new_n2054, new_n2055,
    new_n2056, new_n2057, new_n2058, new_n2059, new_n2060, new_n2061,
    new_n2062, new_n2063, new_n2064, new_n2065, new_n2067, new_n2069,
    new_n2071, new_n2072, new_n2074, new_n2075, new_n2077, new_n2078,
    new_n2080, new_n2081, new_n2083, new_n2084, new_n2086, new_n2087,
    new_n2089, new_n2090, new_n2091, new_n2093, new_n2094, new_n2095,
    new_n2097, new_n2098, new_n2099, new_n2101, new_n2102, new_n2104,
    new_n2105, new_n2106, new_n2108, new_n2109, new_n2111, new_n2112,
    new_n2113, new_n2115, new_n2116, n68, n73, n78, n83, n88, n93, n98,
    n103, n108, n113, n118, n123, n128, n133, n138, n143, n148, n153, n158,
    n163, n168, n173, n178, n183, n188, n193, n198, n203, n208, n213, n218,
    n223, n228, n232, n237, n242, n247, n252, n257, n262, n267, n272, n277,
    n282, n287, n292, n297, n302, n307;
  INVX1    g0000(.A(\servo_counter[0] ), .Y(new_n196));
  NOR4X1   g0001(.A(\servo_counter[15] ), .B(\servo_counter[14] ), .C(\servo_counter[1] ), .D(\servo_counter[0] ), .Y(new_n197));
  NOR4X1   g0002(.A(\servo_counter[13] ), .B(\servo_counter[12] ), .C(\servo_counter[3] ), .D(\servo_counter[2] ), .Y(new_n198_1));
  NOR4X1   g0003(.A(\servo_counter[7] ), .B(\servo_counter[6] ), .C(\servo_counter[5] ), .D(\servo_counter[4] ), .Y(new_n199));
  NOR4X1   g0004(.A(\servo_counter[11] ), .B(\servo_counter[10] ), .C(\servo_counter[9] ), .D(\servo_counter[8] ), .Y(new_n200));
  NAND4X1  g0005(.A(new_n200), .B(new_n199), .C(new_n198_1), .D(new_n197), .Y(new_n201));
  AND2X1   g0006(.A(new_n201), .B(new_n196), .Y(n68));
  XOR2X1   g0007(.A(\servo_counter[1] ), .B(new_n196), .Y(new_n203_1));
  AND2X1   g0008(.A(new_n203_1), .B(new_n201), .Y(n73));
  NOR2X1   g0009(.A(\servo_counter[1] ), .B(\servo_counter[0] ), .Y(new_n205));
  XOR2X1   g0010(.A(new_n205), .B(\servo_counter[2] ), .Y(new_n206));
  AND2X1   g0011(.A(new_n206), .B(new_n201), .Y(n78));
  NOR3X1   g0012(.A(\servo_counter[2] ), .B(\servo_counter[1] ), .C(\servo_counter[0] ), .Y(new_n208_1));
  XOR2X1   g0013(.A(new_n208_1), .B(\servo_counter[3] ), .Y(new_n209));
  AND2X1   g0014(.A(new_n209), .B(new_n201), .Y(n83));
  NOR4X1   g0015(.A(\servo_counter[3] ), .B(\servo_counter[2] ), .C(\servo_counter[1] ), .D(\servo_counter[0] ), .Y(new_n211));
  XOR2X1   g0016(.A(new_n211), .B(\servo_counter[4] ), .Y(new_n212));
  AND2X1   g0017(.A(new_n212), .B(new_n201), .Y(n88));
  INVX1    g0018(.A(new_n211), .Y(new_n214));
  NOR2X1   g0019(.A(new_n214), .B(\servo_counter[4] ), .Y(new_n215));
  XOR2X1   g0020(.A(new_n215), .B(\servo_counter[5] ), .Y(new_n216));
  AND2X1   g0021(.A(new_n216), .B(new_n201), .Y(n93));
  NOR3X1   g0022(.A(new_n214), .B(\servo_counter[5] ), .C(\servo_counter[4] ), .Y(new_n218_1));
  XOR2X1   g0023(.A(new_n218_1), .B(\servo_counter[6] ), .Y(new_n219));
  AND2X1   g0024(.A(new_n219), .B(new_n201), .Y(n98));
  NOR4X1   g0025(.A(new_n214), .B(\servo_counter[6] ), .C(\servo_counter[5] ), .D(\servo_counter[4] ), .Y(new_n221));
  XOR2X1   g0026(.A(new_n221), .B(\servo_counter[7] ), .Y(new_n222));
  AND2X1   g0027(.A(new_n222), .B(new_n201), .Y(n103));
  NOR4X1   g0028(.A(\servo_counter[7] ), .B(\servo_counter[6] ), .C(\servo_counter[5] ), .D(\servo_counter[4] ), .Y(new_n224));
  INVX1    g0029(.A(new_n224), .Y(new_n225));
  AOI21X1  g0030(.A0(new_n214), .A1(new_n199), .B0(new_n225), .Y(new_n226));
  XOR2X1   g0031(.A(new_n226), .B(\servo_counter[8] ), .Y(new_n227));
  AND2X1   g0032(.A(new_n227), .B(new_n201), .Y(n108));
  INVX1    g0033(.A(new_n226), .Y(new_n229));
  NOR2X1   g0034(.A(new_n229), .B(\servo_counter[8] ), .Y(new_n230));
  XOR2X1   g0035(.A(new_n230), .B(\servo_counter[9] ), .Y(new_n231));
  AND2X1   g0036(.A(new_n231), .B(new_n201), .Y(n113));
  NOR3X1   g0037(.A(new_n229), .B(\servo_counter[9] ), .C(\servo_counter[8] ), .Y(new_n233));
  XOR2X1   g0038(.A(new_n233), .B(\servo_counter[10] ), .Y(new_n234));
  AND2X1   g0039(.A(new_n234), .B(new_n201), .Y(n118));
  NOR4X1   g0040(.A(new_n229), .B(\servo_counter[10] ), .C(\servo_counter[9] ), .D(\servo_counter[8] ), .Y(new_n236));
  XOR2X1   g0041(.A(new_n236), .B(\servo_counter[11] ), .Y(new_n237_1));
  AND2X1   g0042(.A(new_n237_1), .B(new_n201), .Y(n123));
  NAND2X1  g0043(.A(new_n229), .B(new_n200), .Y(new_n239));
  NOR4X1   g0044(.A(\servo_counter[11] ), .B(\servo_counter[10] ), .C(\servo_counter[9] ), .D(\servo_counter[8] ), .Y(new_n240));
  AND2X1   g0045(.A(new_n240), .B(new_n239), .Y(new_n241));
  XOR2X1   g0046(.A(new_n241), .B(\servo_counter[12] ), .Y(new_n242_1));
  AND2X1   g0047(.A(new_n242_1), .B(new_n201), .Y(n128));
  INVX1    g0048(.A(new_n241), .Y(new_n244));
  NOR2X1   g0049(.A(new_n244), .B(\servo_counter[12] ), .Y(new_n245));
  XOR2X1   g0050(.A(new_n245), .B(\servo_counter[13] ), .Y(new_n246));
  AND2X1   g0051(.A(new_n246), .B(new_n201), .Y(n133));
  NOR3X1   g0052(.A(new_n244), .B(\servo_counter[13] ), .C(\servo_counter[12] ), .Y(new_n248));
  XOR2X1   g0053(.A(new_n248), .B(\servo_counter[14] ), .Y(new_n249));
  AND2X1   g0054(.A(new_n249), .B(new_n201), .Y(n138));
  NOR4X1   g0055(.A(new_n244), .B(\servo_counter[14] ), .C(\servo_counter[13] ), .D(\servo_counter[12] ), .Y(new_n251));
  XOR2X1   g0056(.A(new_n251), .B(\servo_counter[15] ), .Y(new_n252_1));
  AND2X1   g0057(.A(new_n252_1), .B(new_n201), .Y(n143));
  INVX1    g0058(.A(\pwm[6] ), .Y(new_n254));
  INVX1    g0059(.A(\pwm[7] ), .Y(new_n255));
  INVX1    g0060(.A(\pwm[8] ), .Y(new_n256));
  NOR3X1   g0061(.A(new_n256), .B(new_n255), .C(new_n254), .Y(new_n257_1));
  INVX1    g0062(.A(new_n257_1), .Y(new_n258));
  AND2X1   g0063(.A(\pwm[10] ), .B(\pwm[9] ), .Y(new_n259));
  INVX1    g0064(.A(\pwm[11] ), .Y(new_n260));
  XOR2X1   g0065(.A(\pwm[10] ), .B(\pwm[9] ), .Y(new_n261));
  XOR2X1   g0066(.A(new_n261), .B(new_n260), .Y(new_n262_1));
  XOR2X1   g0067(.A(new_n262_1), .B(new_n259), .Y(new_n263));
  XOR2X1   g0068(.A(new_n263), .B(\pwm[13] ), .Y(new_n264));
  OR2X1    g0069(.A(new_n264), .B(new_n258), .Y(new_n265));
  XOR2X1   g0070(.A(new_n264), .B(new_n257_1), .Y(new_n266));
  AND2X1   g0071(.A(\pwm[11] ), .B(\pwm[9] ), .Y(new_n267_1));
  AND2X1   g0072(.A(new_n267_1), .B(new_n261), .Y(new_n268));
  XOR2X1   g0073(.A(new_n267_1), .B(new_n261), .Y(new_n269));
  AOI21X1  g0074(.A0(new_n269), .A1(\pwm[12] ), .B0(new_n268), .Y(new_n270));
  OAI21X1  g0075(.A0(new_n270), .A1(new_n266), .B0(new_n265), .Y(new_n271));
  INVX1    g0076(.A(new_n271), .Y(new_n272_1));
  AND2X1   g0077(.A(\pwm[7] ), .B(\pwm[6] ), .Y(new_n273));
  XOR2X1   g0078(.A(\pwm[7] ), .B(\pwm[6] ), .Y(new_n274));
  AOI21X1  g0079(.A0(new_n274), .A1(\pwm[8] ), .B0(new_n273), .Y(new_n275));
  XOR2X1   g0080(.A(\pwm[8] ), .B(new_n255), .Y(new_n276));
  NOR2X1   g0081(.A(new_n276), .B(new_n275), .Y(new_n277_1));
  XOR2X1   g0082(.A(new_n261), .B(\pwm[11] ), .Y(new_n278));
  AOI21X1  g0083(.A0(new_n261), .A1(\pwm[11] ), .B0(new_n259), .Y(new_n279));
  XOR2X1   g0084(.A(new_n279), .B(new_n278), .Y(new_n280));
  INVX1    g0085(.A(\pwm[12] ), .Y(new_n281));
  XOR2X1   g0086(.A(\pwm[14] ), .B(new_n281), .Y(new_n282_1));
  XOR2X1   g0087(.A(new_n282_1), .B(new_n280), .Y(new_n283));
  XOR2X1   g0088(.A(new_n283), .B(new_n277_1), .Y(new_n284));
  NAND3X1  g0089(.A(\pwm[11] ), .B(\pwm[10] ), .C(\pwm[9] ), .Y(new_n285));
  INVX1    g0090(.A(\pwm[13] ), .Y(new_n286));
  OR2X1    g0091(.A(new_n263), .B(new_n286), .Y(new_n287_1));
  AND2X1   g0092(.A(new_n287_1), .B(new_n285), .Y(new_n288));
  XOR2X1   g0093(.A(new_n288), .B(new_n284), .Y(new_n289));
  OR2X1    g0094(.A(new_n256), .B(\pwm[7] ), .Y(new_n290));
  XOR2X1   g0095(.A(new_n290), .B(new_n289), .Y(new_n291));
  XOR2X1   g0096(.A(new_n264), .B(new_n258), .Y(new_n292_1));
  XOR2X1   g0097(.A(new_n270), .B(new_n292_1), .Y(new_n293));
  NAND2X1  g0098(.A(\pwm[7] ), .B(\pwm[6] ), .Y(new_n294));
  XOR2X1   g0099(.A(\pwm[7] ), .B(new_n254), .Y(new_n295));
  OAI21X1  g0100(.A0(new_n295), .A1(new_n256), .B0(new_n294), .Y(new_n296));
  XOR2X1   g0101(.A(new_n276), .B(new_n296), .Y(new_n297_1));
  OR2X1    g0102(.A(new_n297_1), .B(new_n293), .Y(new_n298));
  XOR2X1   g0103(.A(new_n298), .B(new_n291), .Y(new_n299));
  XOR2X1   g0104(.A(new_n299), .B(new_n272_1), .Y(new_n300));
  XOR2X1   g0105(.A(new_n297_1), .B(new_n293), .Y(new_n301));
  XOR2X1   g0106(.A(new_n274), .B(\pwm[8] ), .Y(new_n302_1));
  XOR2X1   g0107(.A(new_n302_1), .B(new_n275), .Y(new_n303));
  INVX1    g0108(.A(new_n303), .Y(new_n304));
  XOR2X1   g0109(.A(new_n274), .B(new_n256), .Y(new_n305));
  AND2X1   g0110(.A(\pwm[5] ), .B(\pwm[4] ), .Y(new_n306));
  XOR2X1   g0111(.A(new_n306), .B(new_n305), .Y(new_n307_1));
  XOR2X1   g0112(.A(new_n307_1), .B(new_n275), .Y(new_n308));
  NAND3X1  g0113(.A(new_n308), .B(new_n304), .C(\pwm[5] ), .Y(new_n309));
  NAND2X1  g0114(.A(new_n306), .B(new_n302_1), .Y(new_n310));
  OAI21X1  g0115(.A0(new_n307_1), .A1(new_n275), .B0(new_n310), .Y(new_n311));
  XOR2X1   g0116(.A(new_n269), .B(new_n281), .Y(new_n312));
  XOR2X1   g0117(.A(new_n312), .B(new_n311), .Y(new_n313));
  AND2X1   g0118(.A(new_n308), .B(\pwm[5] ), .Y(new_n314));
  XOR2X1   g0119(.A(new_n314), .B(new_n303), .Y(new_n315));
  OAI21X1  g0120(.A0(new_n315), .A1(new_n313), .B0(new_n309), .Y(new_n316));
  NAND2X1  g0121(.A(new_n316), .B(new_n301), .Y(new_n317));
  XOR2X1   g0122(.A(new_n306), .B(new_n302_1), .Y(new_n318));
  AND2X1   g0123(.A(new_n306), .B(new_n302_1), .Y(new_n319));
  AOI21X1  g0124(.A0(new_n318), .A1(new_n296), .B0(new_n319), .Y(new_n320));
  OR2X1    g0125(.A(new_n312), .B(new_n320), .Y(new_n321));
  XOR2X1   g0126(.A(new_n270), .B(new_n266), .Y(new_n322));
  XOR2X1   g0127(.A(new_n297_1), .B(new_n322), .Y(new_n323));
  XOR2X1   g0128(.A(new_n316), .B(new_n323), .Y(new_n324));
  OAI21X1  g0129(.A0(new_n324), .A1(new_n321), .B0(new_n317), .Y(new_n325));
  XOR2X1   g0130(.A(new_n325), .B(new_n300), .Y(new_n326));
  XOR2X1   g0131(.A(new_n324), .B(new_n321), .Y(new_n327));
  XOR2X1   g0132(.A(new_n315), .B(new_n313), .Y(new_n328));
  XOR2X1   g0133(.A(new_n307_1), .B(new_n296), .Y(new_n329));
  XOR2X1   g0134(.A(new_n329), .B(\pwm[5] ), .Y(new_n330));
  XOR2X1   g0135(.A(\pwm[5] ), .B(\pwm[4] ), .Y(new_n331));
  XOR2X1   g0136(.A(new_n307_1), .B(new_n294), .Y(new_n332));
  OAI21X1  g0137(.A0(new_n332), .A1(\pwm[3] ), .B0(new_n331), .Y(new_n333));
  OR2X1    g0138(.A(new_n333), .B(new_n330), .Y(new_n334));
  OAI21X1  g0139(.A0(new_n307_1), .A1(new_n294), .B0(new_n310), .Y(new_n335));
  INVX1    g0140(.A(\pwm[9] ), .Y(new_n336));
  XOR2X1   g0141(.A(\pwm[11] ), .B(new_n336), .Y(new_n337));
  XOR2X1   g0142(.A(new_n337), .B(new_n335), .Y(new_n338));
  INVX1    g0143(.A(\pwm[5] ), .Y(new_n339));
  XOR2X1   g0144(.A(new_n329), .B(new_n339), .Y(new_n340));
  XOR2X1   g0145(.A(new_n333), .B(new_n340), .Y(new_n341));
  OAI21X1  g0146(.A0(new_n341), .A1(new_n338), .B0(new_n334), .Y(new_n342));
  NAND2X1  g0147(.A(new_n342), .B(new_n328), .Y(new_n343));
  AOI21X1  g0148(.A0(new_n318), .A1(new_n273), .B0(new_n319), .Y(new_n344));
  NOR2X1   g0149(.A(new_n337), .B(new_n344), .Y(new_n345));
  INVX1    g0150(.A(new_n345), .Y(new_n346));
  XOR2X1   g0151(.A(new_n312), .B(new_n320), .Y(new_n347));
  XOR2X1   g0152(.A(new_n315), .B(new_n347), .Y(new_n348));
  XOR2X1   g0153(.A(new_n342), .B(new_n348), .Y(new_n349));
  OAI21X1  g0154(.A0(new_n349), .A1(new_n346), .B0(new_n343), .Y(new_n350));
  AND2X1   g0155(.A(new_n350), .B(new_n327), .Y(new_n351));
  XOR2X1   g0156(.A(new_n351), .B(new_n326), .Y(new_n352));
  XOR2X1   g0157(.A(new_n350), .B(new_n327), .Y(new_n353));
  XOR2X1   g0158(.A(new_n349), .B(new_n346), .Y(new_n354));
  XOR2X1   g0159(.A(new_n341), .B(new_n338), .Y(new_n355));
  XOR2X1   g0160(.A(new_n307_1), .B(new_n273), .Y(new_n356));
  INVX1    g0161(.A(\pwm[3] ), .Y(new_n357));
  NAND2X1  g0162(.A(new_n331), .B(new_n357), .Y(new_n358));
  XOR2X1   g0163(.A(new_n358), .B(new_n356), .Y(new_n359));
  XOR2X1   g0164(.A(new_n331), .B(new_n357), .Y(new_n360));
  XOR2X1   g0165(.A(\pwm[4] ), .B(\pwm[2] ), .Y(new_n361));
  XOR2X1   g0166(.A(new_n361), .B(\pwm[5] ), .Y(new_n362));
  OAI21X1  g0167(.A0(new_n362), .A1(\pwm[1] ), .B0(\pwm[3] ), .Y(new_n363));
  OR2X1    g0168(.A(new_n363), .B(new_n360), .Y(new_n364));
  AND2X1   g0169(.A(\pwm[4] ), .B(\pwm[2] ), .Y(new_n365));
  AOI21X1  g0170(.A0(new_n361), .A1(\pwm[5] ), .B0(new_n365), .Y(new_n366));
  XOR2X1   g0171(.A(new_n366), .B(new_n274), .Y(new_n367));
  AND2X1   g0172(.A(\pwm[8] ), .B(\pwm[6] ), .Y(new_n368));
  XOR2X1   g0173(.A(new_n368), .B(new_n367), .Y(new_n369));
  XOR2X1   g0174(.A(new_n331), .B(\pwm[3] ), .Y(new_n370));
  XOR2X1   g0175(.A(new_n363), .B(new_n370), .Y(new_n371));
  OAI21X1  g0176(.A0(new_n371), .A1(new_n369), .B0(new_n364), .Y(new_n372));
  NAND2X1  g0177(.A(new_n372), .B(new_n359), .Y(new_n373));
  XOR2X1   g0178(.A(new_n366), .B(new_n295), .Y(new_n374));
  NOR2X1   g0179(.A(new_n366), .B(new_n295), .Y(new_n375));
  AOI21X1  g0180(.A0(new_n368), .A1(new_n374), .B0(new_n375), .Y(new_n376));
  XOR2X1   g0181(.A(new_n376), .B(\pwm[10] ), .Y(new_n377));
  XOR2X1   g0182(.A(new_n358), .B(new_n332), .Y(new_n378));
  XOR2X1   g0183(.A(new_n372), .B(new_n378), .Y(new_n379));
  OAI21X1  g0184(.A0(new_n379), .A1(new_n377), .B0(new_n373), .Y(new_n380));
  NAND2X1  g0185(.A(new_n380), .B(new_n355), .Y(new_n381));
  INVX1    g0186(.A(\pwm[10] ), .Y(new_n382));
  NOR2X1   g0187(.A(new_n376), .B(new_n382), .Y(new_n383));
  INVX1    g0188(.A(new_n383), .Y(new_n384));
  XOR2X1   g0189(.A(new_n337), .B(new_n344), .Y(new_n385));
  XOR2X1   g0190(.A(new_n341), .B(new_n385), .Y(new_n386));
  XOR2X1   g0191(.A(new_n380), .B(new_n386), .Y(new_n387));
  OAI21X1  g0192(.A0(new_n387), .A1(new_n384), .B0(new_n381), .Y(new_n388));
  AND2X1   g0193(.A(new_n388), .B(new_n354), .Y(new_n389));
  AND2X1   g0194(.A(new_n389), .B(new_n353), .Y(new_n390));
  XOR2X1   g0195(.A(new_n389), .B(new_n353), .Y(new_n391));
  XOR2X1   g0196(.A(\pwm[8] ), .B(new_n254), .Y(new_n392));
  NOR2X1   g0197(.A(new_n392), .B(new_n366), .Y(new_n393));
  NAND2X1  g0198(.A(new_n393), .B(\pwm[9] ), .Y(new_n394));
  XOR2X1   g0199(.A(new_n379), .B(new_n377), .Y(new_n395));
  XOR2X1   g0200(.A(new_n368), .B(new_n374), .Y(new_n396));
  XOR2X1   g0201(.A(new_n371), .B(new_n396), .Y(new_n397));
  OR2X1    g0202(.A(new_n357), .B(\pwm[1] ), .Y(new_n398));
  XOR2X1   g0203(.A(new_n398), .B(new_n362), .Y(new_n399));
  INVX1    g0204(.A(\pwm[1] ), .Y(new_n400));
  XOR2X1   g0205(.A(\pwm[3] ), .B(new_n400), .Y(new_n401));
  AND2X1   g0206(.A(\pwm[3] ), .B(\pwm[0] ), .Y(new_n402));
  XOR2X1   g0207(.A(\pwm[3] ), .B(\pwm[0] ), .Y(new_n403));
  AOI21X1  g0208(.A0(new_n403), .A1(\pwm[1] ), .B0(new_n402), .Y(new_n404));
  NOR2X1   g0209(.A(new_n404), .B(new_n401), .Y(new_n405));
  XOR2X1   g0210(.A(new_n404), .B(new_n401), .Y(new_n406));
  AOI21X1  g0211(.A0(new_n406), .A1(new_n362), .B0(new_n405), .Y(new_n407));
  NOR2X1   g0212(.A(new_n407), .B(new_n399), .Y(new_n408));
  XOR2X1   g0213(.A(new_n392), .B(new_n366), .Y(new_n409));
  XOR2X1   g0214(.A(new_n407), .B(new_n399), .Y(new_n410));
  AOI21X1  g0215(.A0(new_n410), .A1(new_n409), .B0(new_n408), .Y(new_n411));
  NOR2X1   g0216(.A(new_n411), .B(new_n397), .Y(new_n412));
  XOR2X1   g0217(.A(new_n393), .B(new_n336), .Y(new_n413));
  INVX1    g0218(.A(new_n413), .Y(new_n414));
  XOR2X1   g0219(.A(new_n411), .B(new_n397), .Y(new_n415));
  AOI21X1  g0220(.A0(new_n415), .A1(new_n414), .B0(new_n412), .Y(new_n416));
  XOR2X1   g0221(.A(new_n416), .B(new_n395), .Y(new_n417));
  XOR2X1   g0222(.A(new_n417), .B(new_n394), .Y(new_n418));
  XOR2X1   g0223(.A(new_n415), .B(new_n413), .Y(new_n419));
  XOR2X1   g0224(.A(new_n410), .B(new_n409), .Y(new_n420));
  XOR2X1   g0225(.A(new_n406), .B(new_n362), .Y(new_n421));
  INVX1    g0226(.A(new_n361), .Y(new_n422));
  NAND3X1  g0227(.A(\pwm[3] ), .B(\pwm[1] ), .C(\pwm[0] ), .Y(new_n423));
  XOR2X1   g0228(.A(new_n403), .B(\pwm[1] ), .Y(new_n424));
  XOR2X1   g0229(.A(new_n424), .B(new_n404), .Y(new_n425));
  OAI21X1  g0230(.A0(new_n425), .A1(new_n422), .B0(new_n423), .Y(new_n426));
  NAND2X1  g0231(.A(new_n426), .B(new_n421), .Y(new_n427));
  XOR2X1   g0232(.A(new_n365), .B(new_n255), .Y(new_n428));
  INVX1    g0233(.A(new_n362), .Y(new_n429));
  XOR2X1   g0234(.A(new_n406), .B(new_n429), .Y(new_n430));
  XOR2X1   g0235(.A(new_n426), .B(new_n430), .Y(new_n431));
  OAI21X1  g0236(.A0(new_n431), .A1(new_n428), .B0(new_n427), .Y(new_n432));
  AND2X1   g0237(.A(new_n432), .B(new_n420), .Y(new_n433));
  AND2X1   g0238(.A(new_n365), .B(\pwm[7] ), .Y(new_n434));
  XOR2X1   g0239(.A(new_n432), .B(new_n420), .Y(new_n435));
  AOI21X1  g0240(.A0(new_n435), .A1(new_n434), .B0(new_n433), .Y(new_n436));
  NOR2X1   g0241(.A(new_n436), .B(new_n419), .Y(new_n437));
  XOR2X1   g0242(.A(new_n437), .B(new_n418), .Y(new_n438));
  XOR2X1   g0243(.A(new_n436), .B(new_n419), .Y(new_n439));
  XOR2X1   g0244(.A(new_n435), .B(new_n434), .Y(new_n440));
  XOR2X1   g0245(.A(new_n431), .B(new_n428), .Y(new_n441));
  XOR2X1   g0246(.A(new_n425), .B(new_n422), .Y(new_n442));
  NAND3X1  g0247(.A(\pwm[3] ), .B(\pwm[1] ), .C(\pwm[0] ), .Y(new_n443));
  INVX1    g0248(.A(\pwm[2] ), .Y(new_n444));
  XOR2X1   g0249(.A(\pwm[5] ), .B(new_n444), .Y(new_n445));
  XOR2X1   g0250(.A(new_n403), .B(new_n400), .Y(new_n446));
  AND2X1   g0251(.A(\pwm[1] ), .B(\pwm[0] ), .Y(new_n447));
  XOR2X1   g0252(.A(new_n447), .B(new_n446), .Y(new_n448));
  OAI21X1  g0253(.A0(new_n448), .A1(new_n445), .B0(new_n443), .Y(new_n449));
  NAND2X1  g0254(.A(new_n449), .B(new_n442), .Y(new_n450));
  AND2X1   g0255(.A(\pwm[5] ), .B(\pwm[2] ), .Y(new_n451));
  XOR2X1   g0256(.A(new_n451), .B(new_n254), .Y(new_n452));
  XOR2X1   g0257(.A(new_n425), .B(new_n361), .Y(new_n453));
  XOR2X1   g0258(.A(new_n449), .B(new_n453), .Y(new_n454));
  OAI21X1  g0259(.A0(new_n454), .A1(new_n452), .B0(new_n450), .Y(new_n455));
  NAND2X1  g0260(.A(new_n455), .B(new_n441), .Y(new_n456));
  AND2X1   g0261(.A(new_n451), .B(\pwm[6] ), .Y(new_n457));
  INVX1    g0262(.A(new_n457), .Y(new_n458));
  INVX1    g0263(.A(new_n428), .Y(new_n459));
  XOR2X1   g0264(.A(new_n431), .B(new_n459), .Y(new_n460));
  XOR2X1   g0265(.A(new_n455), .B(new_n460), .Y(new_n461));
  OAI21X1  g0266(.A0(new_n461), .A1(new_n458), .B0(new_n456), .Y(new_n462));
  AND2X1   g0267(.A(new_n462), .B(new_n440), .Y(new_n463));
  AND2X1   g0268(.A(new_n463), .B(new_n439), .Y(new_n464));
  XOR2X1   g0269(.A(new_n464), .B(new_n438), .Y(new_n465));
  XOR2X1   g0270(.A(new_n463), .B(new_n439), .Y(new_n466));
  XOR2X1   g0271(.A(new_n462), .B(new_n440), .Y(new_n467));
  XOR2X1   g0272(.A(new_n461), .B(new_n458), .Y(new_n468));
  XOR2X1   g0273(.A(new_n454), .B(new_n452), .Y(new_n469));
  INVX1    g0274(.A(new_n365), .Y(new_n470));
  XOR2X1   g0275(.A(new_n448), .B(new_n445), .Y(new_n471));
  INVX1    g0276(.A(\pwm[0] ), .Y(new_n472));
  XOR2X1   g0277(.A(\pwm[1] ), .B(new_n472), .Y(new_n473));
  OR2X1    g0278(.A(new_n473), .B(new_n404), .Y(new_n474));
  INVX1    g0279(.A(new_n473), .Y(new_n475));
  XOR2X1   g0280(.A(new_n475), .B(new_n404), .Y(new_n476));
  OAI21X1  g0281(.A0(new_n476), .A1(new_n422), .B0(new_n474), .Y(new_n477));
  NAND2X1  g0282(.A(new_n477), .B(new_n471), .Y(new_n478));
  INVX1    g0283(.A(new_n471), .Y(new_n479));
  XOR2X1   g0284(.A(new_n477), .B(new_n479), .Y(new_n480));
  OAI21X1  g0285(.A0(new_n480), .A1(new_n470), .B0(new_n478), .Y(new_n481));
  AND2X1   g0286(.A(new_n481), .B(new_n469), .Y(new_n482));
  AND2X1   g0287(.A(new_n482), .B(new_n468), .Y(new_n483));
  AND2X1   g0288(.A(new_n483), .B(new_n467), .Y(new_n484));
  XOR2X1   g0289(.A(new_n484), .B(new_n466), .Y(new_n485));
  AND2X1   g0290(.A(new_n485), .B(new_n465), .Y(new_n486));
  XOR2X1   g0291(.A(new_n388), .B(new_n354), .Y(new_n487));
  XOR2X1   g0292(.A(new_n387), .B(new_n384), .Y(new_n488));
  AND2X1   g0293(.A(new_n415), .B(new_n414), .Y(new_n489));
  OAI21X1  g0294(.A0(new_n489), .A1(new_n412), .B0(new_n395), .Y(new_n490));
  OAI21X1  g0295(.A0(new_n417), .A1(new_n394), .B0(new_n490), .Y(new_n491));
  AND2X1   g0296(.A(new_n491), .B(new_n488), .Y(new_n492));
  XOR2X1   g0297(.A(new_n492), .B(new_n487), .Y(new_n493));
  XOR2X1   g0298(.A(new_n491), .B(new_n488), .Y(new_n494));
  AND2X1   g0299(.A(new_n437), .B(new_n418), .Y(new_n495));
  XOR2X1   g0300(.A(new_n495), .B(new_n494), .Y(new_n496));
  AND2X1   g0301(.A(new_n496), .B(new_n493), .Y(new_n497));
  XOR2X1   g0302(.A(new_n483), .B(new_n467), .Y(new_n498));
  XOR2X1   g0303(.A(new_n482), .B(new_n468), .Y(new_n499));
  XOR2X1   g0304(.A(new_n481), .B(new_n469), .Y(new_n500));
  XOR2X1   g0305(.A(new_n480), .B(new_n470), .Y(new_n501));
  XOR2X1   g0306(.A(new_n476), .B(new_n361), .Y(new_n502));
  NOR4X1   g0307(.A(new_n502), .B(new_n446), .C(new_n444), .D(new_n472), .Y(new_n503));
  AND2X1   g0308(.A(new_n503), .B(new_n501), .Y(new_n504));
  AND2X1   g0309(.A(new_n504), .B(new_n500), .Y(new_n505));
  AND2X1   g0310(.A(new_n505), .B(new_n499), .Y(new_n506));
  AND2X1   g0311(.A(new_n506), .B(new_n498), .Y(new_n507));
  NAND3X1  g0312(.A(new_n507), .B(new_n497), .C(new_n486), .Y(new_n508));
  NAND2X1  g0313(.A(new_n463), .B(new_n439), .Y(new_n509));
  XOR2X1   g0314(.A(new_n509), .B(new_n438), .Y(new_n510));
  NAND2X1  g0315(.A(new_n464), .B(new_n438), .Y(new_n511));
  NAND2X1  g0316(.A(new_n484), .B(new_n466), .Y(new_n512));
  OAI21X1  g0317(.A0(new_n512), .A1(new_n510), .B0(new_n511), .Y(new_n513));
  NAND2X1  g0318(.A(new_n491), .B(new_n488), .Y(new_n514));
  XOR2X1   g0319(.A(new_n514), .B(new_n487), .Y(new_n515));
  NAND3X1  g0320(.A(new_n491), .B(new_n488), .C(new_n487), .Y(new_n516));
  NAND2X1  g0321(.A(new_n495), .B(new_n494), .Y(new_n517));
  OAI21X1  g0322(.A0(new_n517), .A1(new_n515), .B0(new_n516), .Y(new_n518));
  AOI21X1  g0323(.A0(new_n513), .A1(new_n497), .B0(new_n518), .Y(new_n519));
  NAND2X1  g0324(.A(new_n519), .B(new_n508), .Y(new_n520));
  AOI21X1  g0325(.A0(new_n520), .A1(new_n391), .B0(new_n390), .Y(new_n521));
  XOR2X1   g0326(.A(new_n521), .B(new_n352), .Y(new_n522));
  AND2X1   g0327(.A(\pwm[14] ), .B(\pwm[13] ), .Y(new_n523));
  OAI21X1  g0328(.A0(new_n523), .A1(\pwm[14] ), .B0(\pwm[15] ), .Y(new_n524));
  NAND3X1  g0329(.A(\pwm[15] ), .B(\pwm[14] ), .C(\pwm[13] ), .Y(new_n525));
  INVX1    g0330(.A(\pwm[15] ), .Y(new_n526));
  MX2X1    g0331(.A(new_n526), .B(new_n286), .S0(\pwm[14] ), .Y(new_n527));
  XOR2X1   g0332(.A(new_n527), .B(new_n525), .Y(new_n528));
  INVX1    g0333(.A(new_n528), .Y(new_n529));
  XOR2X1   g0334(.A(new_n523), .B(new_n526), .Y(new_n530));
  XOR2X1   g0335(.A(new_n530), .B(\pwm[14] ), .Y(new_n531));
  INVX1    g0336(.A(new_n531), .Y(new_n532));
  XOR2X1   g0337(.A(\pwm[13] ), .B(\pwm[12] ), .Y(new_n533));
  INVX1    g0338(.A(new_n533), .Y(new_n534));
  XOR2X1   g0339(.A(new_n534), .B(\pwm[14] ), .Y(new_n535));
  XOR2X1   g0340(.A(new_n533), .B(\pwm[14] ), .Y(new_n536));
  OAI21X1  g0341(.A0(new_n536), .A1(\pwm[10] ), .B0(\pwm[11] ), .Y(new_n537));
  NOR2X1   g0342(.A(new_n537), .B(new_n535), .Y(new_n538));
  AND2X1   g0343(.A(\pwm[13] ), .B(\pwm[12] ), .Y(new_n539));
  AOI21X1  g0344(.A0(new_n533), .A1(\pwm[14] ), .B0(new_n539), .Y(new_n540));
  XOR2X1   g0345(.A(new_n540), .B(new_n538), .Y(new_n541));
  XOR2X1   g0346(.A(new_n541), .B(new_n526), .Y(new_n542));
  XOR2X1   g0347(.A(\pwm[14] ), .B(new_n286), .Y(new_n543));
  INVX1    g0348(.A(new_n543), .Y(new_n544));
  AND2X1   g0349(.A(new_n544), .B(new_n542), .Y(new_n545));
  INVX1    g0350(.A(new_n540), .Y(new_n546));
  NOR2X1   g0351(.A(new_n541), .B(new_n526), .Y(new_n547));
  AOI21X1  g0352(.A0(new_n546), .A1(new_n538), .B0(new_n547), .Y(new_n548));
  XOR2X1   g0353(.A(new_n545), .B(new_n531), .Y(new_n549));
  NOR2X1   g0354(.A(new_n549), .B(new_n548), .Y(new_n550));
  AOI21X1  g0355(.A0(new_n545), .A1(new_n532), .B0(new_n550), .Y(new_n551));
  NOR3X1   g0356(.A(new_n551), .B(new_n529), .C(new_n524), .Y(new_n552));
  NAND2X1  g0357(.A(new_n483), .B(new_n467), .Y(new_n553));
  XOR2X1   g0358(.A(new_n553), .B(new_n466), .Y(new_n554));
  OR2X1    g0359(.A(new_n554), .B(new_n510), .Y(new_n555));
  NAND2X1  g0360(.A(new_n496), .B(new_n493), .Y(new_n556));
  INVX1    g0361(.A(new_n507), .Y(new_n557));
  NOR3X1   g0362(.A(new_n557), .B(new_n556), .C(new_n555), .Y(new_n558));
  AND2X1   g0363(.A(new_n464), .B(new_n438), .Y(new_n559));
  AND2X1   g0364(.A(new_n484), .B(new_n466), .Y(new_n560));
  AOI21X1  g0365(.A0(new_n560), .A1(new_n465), .B0(new_n559), .Y(new_n561));
  AND2X1   g0366(.A(new_n492), .B(new_n487), .Y(new_n562));
  AND2X1   g0367(.A(new_n495), .B(new_n494), .Y(new_n563));
  AOI21X1  g0368(.A0(new_n563), .A1(new_n493), .B0(new_n562), .Y(new_n564));
  OAI21X1  g0369(.A0(new_n561), .A1(new_n556), .B0(new_n564), .Y(new_n565));
  XOR2X1   g0370(.A(new_n549), .B(new_n548), .Y(new_n566));
  XOR2X1   g0371(.A(new_n543), .B(new_n542), .Y(new_n567));
  XOR2X1   g0372(.A(\pwm[11] ), .B(new_n382), .Y(new_n568));
  OR2X1    g0373(.A(new_n568), .B(new_n279), .Y(new_n569));
  XOR2X1   g0374(.A(\pwm[11] ), .B(\pwm[10] ), .Y(new_n570));
  XOR2X1   g0375(.A(new_n570), .B(new_n279), .Y(new_n571));
  OAI21X1  g0376(.A0(new_n571), .A1(new_n535), .B0(new_n569), .Y(new_n572));
  OR2X1    g0377(.A(new_n260), .B(\pwm[10] ), .Y(new_n573));
  XOR2X1   g0378(.A(new_n573), .B(new_n535), .Y(new_n574));
  AND2X1   g0379(.A(new_n574), .B(new_n572), .Y(new_n575));
  XOR2X1   g0380(.A(new_n575), .B(new_n540), .Y(new_n576));
  XOR2X1   g0381(.A(new_n576), .B(\pwm[15] ), .Y(new_n577));
  XOR2X1   g0382(.A(new_n537), .B(new_n536), .Y(new_n578));
  NOR3X1   g0383(.A(new_n578), .B(new_n577), .C(new_n567), .Y(new_n579));
  NAND3X1  g0384(.A(new_n574), .B(new_n572), .C(new_n546), .Y(new_n580));
  OAI21X1  g0385(.A0(new_n576), .A1(new_n526), .B0(new_n580), .Y(new_n581));
  INVX1    g0386(.A(new_n581), .Y(new_n582));
  NOR2X1   g0387(.A(new_n578), .B(new_n577), .Y(new_n583));
  XOR2X1   g0388(.A(new_n583), .B(new_n567), .Y(new_n584));
  NOR2X1   g0389(.A(new_n584), .B(new_n582), .Y(new_n585));
  NOR2X1   g0390(.A(new_n585), .B(new_n579), .Y(new_n586));
  XOR2X1   g0391(.A(new_n586), .B(new_n566), .Y(new_n587));
  XOR2X1   g0392(.A(new_n584), .B(new_n582), .Y(new_n588));
  XOR2X1   g0393(.A(new_n578), .B(new_n577), .Y(new_n589));
  NAND3X1  g0394(.A(\pwm[11] ), .B(\pwm[10] ), .C(\pwm[9] ), .Y(new_n590));
  OAI21X1  g0395(.A0(new_n534), .A1(new_n280), .B0(new_n590), .Y(new_n591));
  XOR2X1   g0396(.A(new_n571), .B(new_n535), .Y(new_n592));
  AND2X1   g0397(.A(new_n592), .B(new_n591), .Y(new_n593));
  XOR2X1   g0398(.A(new_n593), .B(new_n540), .Y(new_n594));
  XOR2X1   g0399(.A(new_n594), .B(\pwm[15] ), .Y(new_n595));
  INVX1    g0400(.A(new_n574), .Y(new_n596));
  XOR2X1   g0401(.A(new_n596), .B(new_n572), .Y(new_n597));
  OR2X1    g0402(.A(new_n597), .B(new_n595), .Y(new_n598));
  INVX1    g0403(.A(new_n598), .Y(new_n599));
  NAND3X1  g0404(.A(new_n592), .B(new_n591), .C(new_n546), .Y(new_n600));
  OAI21X1  g0405(.A0(new_n594), .A1(new_n526), .B0(new_n600), .Y(new_n601));
  INVX1    g0406(.A(new_n601), .Y(new_n602));
  XOR2X1   g0407(.A(new_n598), .B(new_n589), .Y(new_n603));
  NOR2X1   g0408(.A(new_n603), .B(new_n602), .Y(new_n604));
  AOI21X1  g0409(.A0(new_n599), .A1(new_n589), .B0(new_n604), .Y(new_n605));
  XOR2X1   g0410(.A(new_n605), .B(new_n588), .Y(new_n606));
  XOR2X1   g0411(.A(new_n603), .B(new_n602), .Y(new_n607));
  XOR2X1   g0412(.A(new_n594), .B(new_n526), .Y(new_n608));
  XOR2X1   g0413(.A(new_n597), .B(new_n608), .Y(new_n609));
  AND2X1   g0414(.A(\pwm[8] ), .B(\pwm[7] ), .Y(new_n610));
  INVX1    g0415(.A(new_n610), .Y(new_n611));
  XOR2X1   g0416(.A(new_n279), .B(new_n262_1), .Y(new_n612));
  XOR2X1   g0417(.A(new_n534), .B(new_n612), .Y(new_n613));
  OR2X1    g0418(.A(new_n613), .B(new_n611), .Y(new_n614));
  OR2X1    g0419(.A(new_n282_1), .B(new_n280), .Y(new_n615));
  AND2X1   g0420(.A(new_n615), .B(new_n590), .Y(new_n616));
  XOR2X1   g0421(.A(new_n613), .B(new_n610), .Y(new_n617));
  OR2X1    g0422(.A(new_n617), .B(new_n616), .Y(new_n618));
  AND2X1   g0423(.A(new_n618), .B(new_n614), .Y(new_n619));
  XOR2X1   g0424(.A(new_n619), .B(new_n539), .Y(new_n620));
  INVX1    g0425(.A(new_n592), .Y(new_n621));
  XOR2X1   g0426(.A(new_n621), .B(new_n591), .Y(new_n622));
  NOR3X1   g0427(.A(new_n622), .B(new_n620), .C(new_n609), .Y(new_n623));
  NOR4X1   g0428(.A(new_n619), .B(new_n609), .C(new_n286), .D(new_n281), .Y(new_n624));
  NOR2X1   g0429(.A(new_n624), .B(new_n623), .Y(new_n625));
  XOR2X1   g0430(.A(new_n625), .B(new_n607), .Y(new_n626));
  OAI21X1  g0431(.A0(new_n617), .A1(new_n616), .B0(new_n614), .Y(new_n627));
  AND2X1   g0432(.A(new_n627), .B(new_n539), .Y(new_n628));
  INVX1    g0433(.A(new_n628), .Y(new_n629));
  NOR2X1   g0434(.A(new_n622), .B(new_n620), .Y(new_n630));
  XOR2X1   g0435(.A(new_n630), .B(new_n609), .Y(new_n631));
  XOR2X1   g0436(.A(new_n631), .B(new_n629), .Y(new_n632));
  XOR2X1   g0437(.A(new_n627), .B(new_n539), .Y(new_n633));
  XOR2X1   g0438(.A(new_n622), .B(new_n633), .Y(new_n634));
  OAI21X1  g0439(.A0(new_n282_1), .A1(new_n280), .B0(new_n590), .Y(new_n635));
  XOR2X1   g0440(.A(new_n617), .B(new_n635), .Y(new_n636));
  NOR3X1   g0441(.A(new_n636), .B(new_n290), .C(new_n289), .Y(new_n637));
  OAI21X1  g0442(.A0(new_n263), .A1(new_n286), .B0(new_n285), .Y(new_n638));
  AND2X1   g0443(.A(new_n283), .B(new_n277_1), .Y(new_n639));
  AOI21X1  g0444(.A0(new_n638), .A1(new_n284), .B0(new_n639), .Y(new_n640));
  AND2X1   g0445(.A(\pwm[14] ), .B(\pwm[12] ), .Y(new_n641));
  XOR2X1   g0446(.A(new_n641), .B(new_n640), .Y(new_n642));
  XOR2X1   g0447(.A(new_n642), .B(new_n526), .Y(new_n643));
  XOR2X1   g0448(.A(new_n617), .B(new_n616), .Y(new_n644));
  NOR2X1   g0449(.A(new_n290), .B(new_n289), .Y(new_n645));
  XOR2X1   g0450(.A(new_n645), .B(new_n644), .Y(new_n646));
  AOI21X1  g0451(.A0(new_n646), .A1(new_n643), .B0(new_n637), .Y(new_n647));
  NOR2X1   g0452(.A(new_n647), .B(new_n634), .Y(new_n648));
  NAND2X1  g0453(.A(\pwm[14] ), .B(\pwm[12] ), .Y(new_n649));
  OR2X1    g0454(.A(new_n649), .B(new_n640), .Y(new_n650));
  OAI21X1  g0455(.A0(new_n642), .A1(new_n526), .B0(new_n650), .Y(new_n651));
  XOR2X1   g0456(.A(new_n647), .B(new_n634), .Y(new_n652));
  AOI21X1  g0457(.A0(new_n652), .A1(new_n651), .B0(new_n648), .Y(new_n653));
  XOR2X1   g0458(.A(new_n653), .B(new_n632), .Y(new_n654));
  NOR4X1   g0459(.A(new_n654), .B(new_n626), .C(new_n606), .D(new_n587), .Y(new_n655));
  NAND2X1  g0460(.A(new_n350), .B(new_n327), .Y(new_n656));
  XOR2X1   g0461(.A(new_n656), .B(new_n326), .Y(new_n657));
  NAND2X1  g0462(.A(new_n388), .B(new_n354), .Y(new_n658));
  XOR2X1   g0463(.A(new_n658), .B(new_n353), .Y(new_n659));
  XOR2X1   g0464(.A(new_n652), .B(new_n651), .Y(new_n660));
  XOR2X1   g0465(.A(new_n646), .B(new_n643), .Y(new_n661));
  NOR2X1   g0466(.A(new_n297_1), .B(new_n293), .Y(new_n662));
  NAND2X1  g0467(.A(new_n662), .B(new_n291), .Y(new_n663));
  OAI21X1  g0468(.A0(new_n299), .A1(new_n272_1), .B0(new_n663), .Y(new_n664));
  NAND2X1  g0469(.A(new_n664), .B(new_n661), .Y(new_n665));
  XOR2X1   g0470(.A(new_n665), .B(new_n660), .Y(new_n666));
  XOR2X1   g0471(.A(new_n664), .B(new_n661), .Y(new_n667));
  NAND2X1  g0472(.A(new_n325), .B(new_n300), .Y(new_n668));
  XOR2X1   g0473(.A(new_n668), .B(new_n667), .Y(new_n669));
  NOR4X1   g0474(.A(new_n669), .B(new_n666), .C(new_n659), .D(new_n657), .Y(new_n670));
  AND2X1   g0475(.A(new_n670), .B(new_n655), .Y(new_n671));
  OAI21X1  g0476(.A0(new_n565), .A1(new_n558), .B0(new_n671), .Y(new_n672));
  OR2X1    g0477(.A(new_n669), .B(new_n666), .Y(new_n673));
  AND2X1   g0478(.A(new_n351), .B(new_n326), .Y(new_n674));
  AOI21X1  g0479(.A0(new_n390), .A1(new_n352), .B0(new_n674), .Y(new_n675));
  AND2X1   g0480(.A(new_n664), .B(new_n661), .Y(new_n676));
  XOR2X1   g0481(.A(new_n676), .B(new_n660), .Y(new_n677));
  AND2X1   g0482(.A(new_n676), .B(new_n660), .Y(new_n678));
  AND2X1   g0483(.A(new_n325), .B(new_n300), .Y(new_n679));
  AND2X1   g0484(.A(new_n679), .B(new_n667), .Y(new_n680));
  AOI21X1  g0485(.A0(new_n680), .A1(new_n677), .B0(new_n678), .Y(new_n681));
  OAI21X1  g0486(.A0(new_n675), .A1(new_n673), .B0(new_n681), .Y(new_n682));
  OR2X1    g0487(.A(new_n606), .B(new_n587), .Y(new_n683));
  INVX1    g0488(.A(new_n626), .Y(new_n684));
  XOR2X1   g0489(.A(new_n603), .B(new_n601), .Y(new_n685));
  NOR2X1   g0490(.A(new_n625), .B(new_n685), .Y(new_n686));
  XOR2X1   g0491(.A(new_n631), .B(new_n628), .Y(new_n687));
  NOR2X1   g0492(.A(new_n653), .B(new_n687), .Y(new_n688));
  AOI21X1  g0493(.A0(new_n688), .A1(new_n684), .B0(new_n686), .Y(new_n689));
  INVX1    g0494(.A(new_n566), .Y(new_n690));
  XOR2X1   g0495(.A(new_n586), .B(new_n690), .Y(new_n691));
  NOR2X1   g0496(.A(new_n586), .B(new_n690), .Y(new_n692));
  XOR2X1   g0497(.A(new_n584), .B(new_n581), .Y(new_n693));
  NOR2X1   g0498(.A(new_n605), .B(new_n693), .Y(new_n694));
  AOI21X1  g0499(.A0(new_n694), .A1(new_n691), .B0(new_n692), .Y(new_n695));
  OAI21X1  g0500(.A0(new_n689), .A1(new_n683), .B0(new_n695), .Y(new_n696));
  AOI21X1  g0501(.A0(new_n682), .A1(new_n655), .B0(new_n696), .Y(new_n697));
  NAND2X1  g0502(.A(new_n697), .B(new_n672), .Y(new_n698));
  XOR2X1   g0503(.A(new_n551), .B(new_n528), .Y(new_n699));
  NOR2X1   g0504(.A(new_n699), .B(new_n524), .Y(new_n700));
  AND2X1   g0505(.A(new_n700), .B(new_n698), .Y(new_n701));
  OR2X1    g0506(.A(new_n701), .B(new_n552), .Y(new_n702));
  NOR2X1   g0507(.A(new_n551), .B(new_n529), .Y(new_n703));
  INVX1    g0508(.A(new_n699), .Y(new_n704));
  AOI21X1  g0509(.A0(new_n704), .A1(new_n698), .B0(new_n703), .Y(new_n705));
  XOR2X1   g0510(.A(new_n705), .B(new_n524), .Y(new_n706));
  XOR2X1   g0511(.A(new_n704), .B(new_n698), .Y(new_n707));
  NAND3X1  g0512(.A(new_n707), .B(new_n706), .C(new_n702), .Y(new_n708));
  NOR2X1   g0513(.A(new_n654), .B(new_n626), .Y(new_n709));
  INVX1    g0514(.A(new_n669), .Y(new_n710));
  AND2X1   g0515(.A(new_n391), .B(new_n352), .Y(new_n711));
  NAND3X1  g0516(.A(new_n711), .B(new_n710), .C(new_n677), .Y(new_n712));
  AOI21X1  g0517(.A0(new_n519), .A1(new_n508), .B0(new_n712), .Y(new_n713));
  OAI21X1  g0518(.A0(new_n713), .A1(new_n682), .B0(new_n709), .Y(new_n714));
  AOI21X1  g0519(.A0(new_n714), .A1(new_n689), .B0(new_n606), .Y(new_n715));
  NOR2X1   g0520(.A(new_n715), .B(new_n694), .Y(new_n716));
  XOR2X1   g0521(.A(new_n716), .B(new_n691), .Y(new_n717));
  OAI21X1  g0522(.A0(new_n565), .A1(new_n558), .B0(new_n711), .Y(new_n718));
  AOI21X1  g0523(.A0(new_n718), .A1(new_n675), .B0(new_n669), .Y(new_n719));
  NOR2X1   g0524(.A(new_n719), .B(new_n680), .Y(new_n720));
  XOR2X1   g0525(.A(new_n720), .B(new_n677), .Y(new_n721));
  XOR2X1   g0526(.A(new_n521), .B(new_n657), .Y(new_n722));
  AND2X1   g0527(.A(new_n519), .B(new_n508), .Y(new_n723));
  XOR2X1   g0528(.A(new_n723), .B(new_n659), .Y(new_n724));
  AND2X1   g0529(.A(new_n718), .B(new_n675), .Y(new_n725));
  XOR2X1   g0530(.A(new_n725), .B(new_n669), .Y(new_n726));
  NAND3X1  g0531(.A(new_n726), .B(new_n724), .C(new_n722), .Y(new_n727));
  NAND2X1  g0532(.A(new_n714), .B(new_n689), .Y(new_n728));
  XOR2X1   g0533(.A(new_n728), .B(new_n606), .Y(new_n729));
  OR2X1    g0534(.A(new_n675), .B(new_n673), .Y(new_n730));
  AND2X1   g0535(.A(new_n681), .B(new_n730), .Y(new_n731));
  OAI21X1  g0536(.A0(new_n565), .A1(new_n558), .B0(new_n670), .Y(new_n732));
  AOI21X1  g0537(.A0(new_n732), .A1(new_n731), .B0(new_n654), .Y(new_n733));
  NOR3X1   g0538(.A(new_n733), .B(new_n688), .C(new_n626), .Y(new_n734));
  INVX1    g0539(.A(new_n688), .Y(new_n735));
  INVX1    g0540(.A(new_n654), .Y(new_n736));
  OAI21X1  g0541(.A0(new_n713), .A1(new_n682), .B0(new_n736), .Y(new_n737));
  AOI21X1  g0542(.A0(new_n737), .A1(new_n735), .B0(new_n684), .Y(new_n738));
  AND2X1   g0543(.A(new_n732), .B(new_n731), .Y(new_n739));
  XOR2X1   g0544(.A(new_n739), .B(new_n654), .Y(new_n740));
  OAI21X1  g0545(.A0(new_n738), .A1(new_n734), .B0(new_n740), .Y(new_n741));
  OR4X1    g0546(.A(new_n741), .B(new_n729), .C(new_n727), .D(new_n721), .Y(new_n742));
  OAI21X1  g0547(.A0(new_n557), .A1(new_n555), .B0(new_n561), .Y(new_n743));
  AOI21X1  g0548(.A0(new_n743), .A1(new_n496), .B0(new_n563), .Y(new_n744));
  XOR2X1   g0549(.A(new_n744), .B(new_n493), .Y(new_n745));
  AOI21X1  g0550(.A0(new_n507), .A1(new_n486), .B0(new_n513), .Y(new_n746));
  XOR2X1   g0551(.A(new_n746), .B(new_n496), .Y(new_n747));
  AOI21X1  g0552(.A0(new_n507), .A1(new_n485), .B0(new_n560), .Y(new_n748));
  XOR2X1   g0553(.A(new_n748), .B(new_n465), .Y(new_n749));
  XOR2X1   g0554(.A(new_n507), .B(new_n554), .Y(new_n750));
  OR2X1    g0555(.A(new_n750), .B(new_n749), .Y(new_n751));
  XOR2X1   g0556(.A(new_n506), .B(new_n498), .Y(new_n752));
  XOR2X1   g0557(.A(new_n505), .B(new_n499), .Y(new_n753));
  INVX1    g0558(.A(new_n753), .Y(new_n754));
  XOR2X1   g0559(.A(new_n504), .B(new_n500), .Y(new_n755));
  INVX1    g0560(.A(new_n755), .Y(new_n756));
  XOR2X1   g0561(.A(new_n503), .B(new_n501), .Y(new_n757));
  INVX1    g0562(.A(new_n757), .Y(new_n758));
  NAND4X1  g0563(.A(new_n758), .B(new_n756), .C(new_n754), .D(new_n752), .Y(new_n759));
  OR4X1    g0564(.A(new_n759), .B(new_n751), .C(new_n747), .D(new_n745), .Y(new_n760));
  AND2X1   g0565(.A(\pwm[2] ), .B(\pwm[0] ), .Y(new_n761));
  AND2X1   g0566(.A(new_n761), .B(new_n424), .Y(new_n762));
  XOR2X1   g0567(.A(new_n762), .B(new_n502), .Y(new_n763));
  XOR2X1   g0568(.A(new_n761), .B(new_n446), .Y(new_n764));
  XOR2X1   g0569(.A(\pwm[2] ), .B(\pwm[0] ), .Y(new_n765));
  NOR2X1   g0570(.A(new_n765), .B(\pwm[1] ), .Y(new_n766));
  NAND4X1  g0571(.A(new_n766), .B(new_n764), .C(new_n763), .D(new_n472), .Y(new_n767));
  OR2X1    g0572(.A(new_n767), .B(new_n760), .Y(new_n768));
  OR4X1    g0573(.A(new_n768), .B(new_n742), .C(new_n717), .D(new_n708), .Y(new_n769));
  NOR2X1   g0574(.A(new_n757), .B(new_n755), .Y(new_n770));
  INVX1    g0575(.A(new_n770), .Y(new_n771));
  OAI21X1  g0576(.A0(new_n771), .A1(new_n753), .B0(new_n752), .Y(new_n772));
  OR4X1    g0577(.A(new_n772), .B(new_n751), .C(new_n747), .D(new_n745), .Y(new_n773));
  INVX1    g0578(.A(new_n763), .Y(new_n774));
  INVX1    g0579(.A(new_n764), .Y(new_n775));
  OR2X1    g0580(.A(new_n765), .B(\pwm[1] ), .Y(new_n776));
  NOR4X1   g0581(.A(new_n776), .B(new_n766), .C(new_n775), .D(new_n774), .Y(new_n777));
  OR2X1    g0582(.A(new_n777), .B(new_n760), .Y(new_n778));
  AND2X1   g0583(.A(new_n778), .B(new_n773), .Y(new_n779));
  OR4X1    g0584(.A(new_n779), .B(new_n742), .C(new_n717), .D(new_n708), .Y(new_n780));
  AND2X1   g0585(.A(new_n780), .B(new_n769), .Y(new_n781));
  OAI21X1  g0586(.A0(new_n777), .A1(new_n760), .B0(new_n773), .Y(new_n782));
  AND2X1   g0587(.A(new_n782), .B(new_n724), .Y(new_n783));
  XOR2X1   g0588(.A(new_n783), .B(new_n522), .Y(new_n784));
  MX2X1    g0589(.A(new_n784), .B(new_n522), .S0(new_n781), .Y(new_n785));
  XOR2X1   g0590(.A(new_n723), .B(new_n391), .Y(new_n786));
  XOR2X1   g0591(.A(new_n782), .B(new_n786), .Y(new_n787));
  MX2X1    g0592(.A(new_n787), .B(new_n786), .S0(new_n781), .Y(new_n788));
  NOR2X1   g0593(.A(new_n786), .B(new_n522), .Y(new_n789));
  AND2X1   g0594(.A(new_n782), .B(new_n789), .Y(new_n790));
  AND2X1   g0595(.A(new_n790), .B(new_n726), .Y(new_n791));
  XOR2X1   g0596(.A(new_n791), .B(new_n721), .Y(new_n792));
  MX2X1    g0597(.A(new_n792), .B(new_n721), .S0(new_n781), .Y(new_n793));
  INVX1    g0598(.A(new_n726), .Y(new_n794));
  XOR2X1   g0599(.A(new_n790), .B(new_n794), .Y(new_n795));
  MX2X1    g0600(.A(new_n795), .B(new_n794), .S0(new_n781), .Y(new_n796));
  OR4X1    g0601(.A(new_n796), .B(new_n793), .C(new_n788), .D(new_n785), .Y(new_n797));
  NOR2X1   g0602(.A(new_n738), .B(new_n734), .Y(new_n798));
  INVX1    g0603(.A(new_n740), .Y(new_n799));
  XOR2X1   g0604(.A(new_n720), .B(new_n666), .Y(new_n800));
  NAND4X1  g0605(.A(new_n782), .B(new_n726), .C(new_n789), .D(new_n800), .Y(new_n801));
  NOR2X1   g0606(.A(new_n801), .B(new_n799), .Y(new_n802));
  XOR2X1   g0607(.A(new_n802), .B(new_n798), .Y(new_n803));
  MX2X1    g0608(.A(new_n803), .B(new_n798), .S0(new_n781), .Y(new_n804));
  XOR2X1   g0609(.A(new_n801), .B(new_n740), .Y(new_n805));
  MX2X1    g0610(.A(new_n805), .B(new_n799), .S0(new_n781), .Y(new_n806));
  NOR3X1   g0611(.A(new_n801), .B(new_n741), .C(new_n729), .Y(new_n807));
  XOR2X1   g0612(.A(new_n807), .B(new_n717), .Y(new_n808));
  MX2X1    g0613(.A(new_n808), .B(new_n717), .S0(new_n781), .Y(new_n809));
  NOR2X1   g0614(.A(new_n801), .B(new_n741), .Y(new_n810));
  XOR2X1   g0615(.A(new_n810), .B(new_n729), .Y(new_n811));
  MX2X1    g0616(.A(new_n811), .B(new_n729), .S0(new_n781), .Y(new_n812));
  OR4X1    g0617(.A(new_n812), .B(new_n809), .C(new_n806), .D(new_n804), .Y(new_n813));
  OR2X1    g0618(.A(new_n742), .B(new_n717), .Y(new_n814));
  NOR4X1   g0619(.A(new_n782), .B(new_n768), .C(new_n814), .D(new_n708), .Y(new_n815));
  INVX1    g0620(.A(new_n706), .Y(new_n816));
  INVX1    g0621(.A(new_n707), .Y(new_n817));
  NOR4X1   g0622(.A(new_n768), .B(new_n742), .C(new_n717), .D(new_n708), .Y(new_n818));
  NOR4X1   g0623(.A(new_n779), .B(new_n742), .C(new_n717), .D(new_n708), .Y(new_n819));
  OR2X1    g0624(.A(new_n819), .B(new_n818), .Y(new_n820));
  NOR3X1   g0625(.A(new_n779), .B(new_n742), .C(new_n717), .Y(new_n821));
  OR4X1    g0626(.A(new_n820), .B(new_n817), .C(new_n816), .D(new_n702), .Y(new_n822));
  OR4X1    g0627(.A(new_n822), .B(new_n815), .C(new_n813), .D(new_n797), .Y(new_n823));
  NOR3X1   g0628(.A(new_n819), .B(new_n818), .C(new_n749), .Y(new_n824));
  OAI21X1  g0629(.A0(new_n777), .A1(new_n759), .B0(new_n772), .Y(new_n825));
  INVX1    g0630(.A(new_n825), .Y(new_n826));
  NOR2X1   g0631(.A(new_n826), .B(new_n750), .Y(new_n827));
  XOR2X1   g0632(.A(new_n827), .B(new_n749), .Y(new_n828));
  AOI21X1  g0633(.A0(new_n780), .A1(new_n769), .B0(new_n828), .Y(new_n829));
  NOR3X1   g0634(.A(new_n819), .B(new_n818), .C(new_n750), .Y(new_n830));
  XOR2X1   g0635(.A(new_n825), .B(new_n750), .Y(new_n831));
  AOI21X1  g0636(.A0(new_n780), .A1(new_n769), .B0(new_n831), .Y(new_n832));
  OAI22X1  g0637(.A0(new_n832), .A1(new_n830), .B0(new_n829), .B1(new_n824), .Y(new_n833));
  NOR3X1   g0638(.A(new_n819), .B(new_n818), .C(new_n745), .Y(new_n834));
  OR2X1    g0639(.A(new_n826), .B(new_n751), .Y(new_n835));
  NOR2X1   g0640(.A(new_n835), .B(new_n747), .Y(new_n836));
  XOR2X1   g0641(.A(new_n836), .B(new_n745), .Y(new_n837));
  AOI21X1  g0642(.A0(new_n780), .A1(new_n769), .B0(new_n837), .Y(new_n838));
  NOR3X1   g0643(.A(new_n819), .B(new_n818), .C(new_n747), .Y(new_n839));
  NOR2X1   g0644(.A(new_n826), .B(new_n751), .Y(new_n840));
  XOR2X1   g0645(.A(new_n840), .B(new_n747), .Y(new_n841));
  AOI21X1  g0646(.A0(new_n780), .A1(new_n769), .B0(new_n841), .Y(new_n842));
  OAI22X1  g0647(.A0(new_n842), .A1(new_n839), .B0(new_n838), .B1(new_n834), .Y(new_n843));
  INVX1    g0648(.A(new_n752), .Y(new_n844));
  NOR3X1   g0649(.A(new_n819), .B(new_n818), .C(new_n844), .Y(new_n845));
  INVX1    g0650(.A(new_n777), .Y(new_n846));
  NOR4X1   g0651(.A(new_n846), .B(new_n757), .C(new_n755), .D(new_n753), .Y(new_n847));
  XOR2X1   g0652(.A(new_n847), .B(new_n752), .Y(new_n848));
  AOI21X1  g0653(.A0(new_n780), .A1(new_n769), .B0(new_n848), .Y(new_n849));
  NOR3X1   g0654(.A(new_n819), .B(new_n818), .C(new_n754), .Y(new_n850));
  NOR3X1   g0655(.A(new_n846), .B(new_n757), .C(new_n755), .Y(new_n851));
  XOR2X1   g0656(.A(new_n851), .B(new_n754), .Y(new_n852));
  AOI21X1  g0657(.A0(new_n780), .A1(new_n769), .B0(new_n852), .Y(new_n853));
  OAI22X1  g0658(.A0(new_n853), .A1(new_n850), .B0(new_n849), .B1(new_n845), .Y(new_n854));
  NOR3X1   g0659(.A(new_n819), .B(new_n818), .C(new_n756), .Y(new_n855));
  AND2X1   g0660(.A(new_n777), .B(new_n758), .Y(new_n856));
  XOR2X1   g0661(.A(new_n856), .B(new_n756), .Y(new_n857));
  AOI21X1  g0662(.A0(new_n780), .A1(new_n769), .B0(new_n857), .Y(new_n858));
  NOR3X1   g0663(.A(new_n819), .B(new_n818), .C(new_n758), .Y(new_n859));
  XOR2X1   g0664(.A(new_n777), .B(new_n758), .Y(new_n860));
  AOI21X1  g0665(.A0(new_n780), .A1(new_n769), .B0(new_n860), .Y(new_n861));
  OR4X1    g0666(.A(new_n861), .B(new_n859), .C(new_n858), .D(new_n855), .Y(new_n862));
  OR4X1    g0667(.A(new_n862), .B(new_n854), .C(new_n843), .D(new_n833), .Y(new_n863));
  OR4X1    g0668(.A(new_n765), .B(new_n775), .C(new_n774), .D(\pwm[1] ), .Y(new_n864));
  NOR3X1   g0669(.A(new_n819), .B(new_n818), .C(new_n472), .Y(new_n865));
  AOI21X1  g0670(.A0(new_n780), .A1(new_n769), .B0(new_n472), .Y(new_n866));
  OR4X1    g0671(.A(new_n866), .B(new_n865), .C(new_n864), .D(new_n863), .Y(new_n867));
  NOR2X1   g0672(.A(new_n867), .B(new_n823), .Y(new_n868));
  NOR4X1   g0673(.A(new_n862), .B(new_n854), .C(new_n843), .D(new_n833), .Y(new_n869));
  NOR4X1   g0674(.A(new_n861), .B(new_n859), .C(new_n858), .D(new_n855), .Y(new_n870));
  NOR4X1   g0675(.A(new_n870), .B(new_n854), .C(new_n843), .D(new_n833), .Y(new_n871));
  NOR2X1   g0676(.A(new_n776), .B(new_n766), .Y(new_n872));
  AND2X1   g0677(.A(new_n872), .B(new_n764), .Y(new_n873));
  XOR2X1   g0678(.A(new_n873), .B(new_n763), .Y(new_n874));
  INVX1    g0679(.A(new_n874), .Y(new_n875));
  MX2X1    g0680(.A(new_n875), .B(new_n774), .S0(new_n781), .Y(new_n876));
  XOR2X1   g0681(.A(new_n872), .B(new_n764), .Y(new_n877));
  INVX1    g0682(.A(new_n877), .Y(new_n878));
  MX2X1    g0683(.A(new_n878), .B(new_n775), .S0(new_n781), .Y(new_n879));
  NOR2X1   g0684(.A(new_n765), .B(\pwm[1] ), .Y(new_n880));
  OR2X1    g0685(.A(new_n765), .B(\pwm[1] ), .Y(new_n881));
  OR4X1    g0686(.A(new_n881), .B(new_n880), .C(new_n879), .D(new_n876), .Y(new_n882));
  AOI21X1  g0687(.A0(new_n882), .A1(new_n869), .B0(new_n871), .Y(new_n883));
  NOR4X1   g0688(.A(new_n779), .B(new_n814), .C(new_n817), .D(new_n816), .Y(new_n884));
  AOI21X1  g0689(.A0(new_n884), .A1(new_n702), .B0(new_n781), .Y(new_n885));
  AND2X1   g0690(.A(new_n781), .B(new_n702), .Y(new_n886));
  NOR3X1   g0691(.A(new_n886), .B(new_n885), .C(new_n815), .Y(new_n887));
  OAI21X1  g0692(.A0(new_n883), .A1(new_n823), .B0(new_n887), .Y(new_n888));
  NOR2X1   g0693(.A(new_n888), .B(new_n868), .Y(new_n889));
  NOR2X1   g0694(.A(new_n883), .B(new_n788), .Y(new_n890));
  XOR2X1   g0695(.A(new_n890), .B(new_n785), .Y(new_n891));
  MX2X1    g0696(.A(new_n891), .B(new_n785), .S0(new_n889), .Y(new_n892));
  OR2X1    g0697(.A(new_n888), .B(new_n868), .Y(new_n893));
  OR2X1    g0698(.A(new_n886), .B(new_n885), .Y(new_n894));
  OR2X1    g0699(.A(new_n813), .B(new_n797), .Y(new_n895));
  NOR3X1   g0700(.A(new_n883), .B(new_n822), .C(new_n895), .Y(new_n896));
  NOR2X1   g0701(.A(new_n896), .B(new_n894), .Y(new_n897));
  AOI21X1  g0702(.A0(new_n897), .A1(new_n893), .B0(new_n815), .Y(new_n898));
  INVX1    g0703(.A(new_n788), .Y(new_n899));
  XOR2X1   g0704(.A(new_n883), .B(new_n899), .Y(new_n900));
  MX2X1    g0705(.A(new_n900), .B(new_n788), .S0(new_n889), .Y(new_n901));
  OR2X1    g0706(.A(new_n788), .B(new_n785), .Y(new_n902));
  NOR3X1   g0707(.A(new_n883), .B(new_n796), .C(new_n902), .Y(new_n903));
  XOR2X1   g0708(.A(new_n903), .B(new_n793), .Y(new_n904));
  MX2X1    g0709(.A(new_n904), .B(new_n793), .S0(new_n889), .Y(new_n905));
  NOR2X1   g0710(.A(new_n883), .B(new_n902), .Y(new_n906));
  XOR2X1   g0711(.A(new_n906), .B(new_n796), .Y(new_n907));
  MX2X1    g0712(.A(new_n907), .B(new_n796), .S0(new_n889), .Y(new_n908));
  OR4X1    g0713(.A(new_n908), .B(new_n905), .C(new_n901), .D(new_n892), .Y(new_n909));
  NOR3X1   g0714(.A(new_n883), .B(new_n806), .C(new_n797), .Y(new_n910));
  XOR2X1   g0715(.A(new_n910), .B(new_n804), .Y(new_n911));
  MX2X1    g0716(.A(new_n911), .B(new_n804), .S0(new_n889), .Y(new_n912));
  INVX1    g0717(.A(new_n806), .Y(new_n913));
  OR2X1    g0718(.A(new_n883), .B(new_n797), .Y(new_n914));
  XOR2X1   g0719(.A(new_n914), .B(new_n913), .Y(new_n915));
  MX2X1    g0720(.A(new_n915), .B(new_n806), .S0(new_n889), .Y(new_n916));
  OR2X1    g0721(.A(new_n916), .B(new_n912), .Y(new_n917));
  OR2X1    g0722(.A(new_n806), .B(new_n804), .Y(new_n918));
  NOR3X1   g0723(.A(new_n883), .B(new_n918), .C(new_n797), .Y(new_n919));
  XOR2X1   g0724(.A(new_n919), .B(new_n812), .Y(new_n920));
  MX2X1    g0725(.A(new_n812), .B(new_n920), .S0(new_n893), .Y(new_n921));
  NOR4X1   g0726(.A(new_n883), .B(new_n812), .C(new_n918), .D(new_n797), .Y(new_n922));
  XOR2X1   g0727(.A(new_n922), .B(new_n809), .Y(new_n923));
  MX2X1    g0728(.A(new_n809), .B(new_n923), .S0(new_n893), .Y(new_n924));
  NOR4X1   g0729(.A(new_n924), .B(new_n921), .C(new_n917), .D(new_n909), .Y(new_n925));
  XOR2X1   g0730(.A(new_n884), .B(new_n702), .Y(new_n926));
  MX2X1    g0731(.A(new_n926), .B(new_n702), .S0(new_n781), .Y(new_n927));
  NOR4X1   g0732(.A(new_n779), .B(new_n742), .C(new_n717), .D(new_n817), .Y(new_n928));
  XOR2X1   g0733(.A(new_n928), .B(new_n816), .Y(new_n929));
  MX2X1    g0734(.A(new_n929), .B(new_n816), .S0(new_n781), .Y(new_n930));
  XOR2X1   g0735(.A(new_n821), .B(new_n817), .Y(new_n931));
  MX2X1    g0736(.A(new_n931), .B(new_n817), .S0(new_n781), .Y(new_n932));
  NOR4X1   g0737(.A(new_n883), .B(new_n932), .C(new_n930), .D(new_n895), .Y(new_n933));
  NOR2X1   g0738(.A(new_n933), .B(new_n927), .Y(new_n934));
  XOR2X1   g0739(.A(new_n934), .B(new_n885), .Y(new_n935));
  MX2X1    g0740(.A(new_n885), .B(new_n935), .S0(new_n893), .Y(new_n936));
  INVX1    g0741(.A(new_n927), .Y(new_n937));
  XOR2X1   g0742(.A(new_n933), .B(new_n937), .Y(new_n938));
  MX2X1    g0743(.A(new_n927), .B(new_n938), .S0(new_n893), .Y(new_n939));
  NOR3X1   g0744(.A(new_n888), .B(new_n868), .C(new_n930), .Y(new_n940));
  NOR3X1   g0745(.A(new_n883), .B(new_n932), .C(new_n895), .Y(new_n941));
  XOR2X1   g0746(.A(new_n941), .B(new_n930), .Y(new_n942));
  NOR2X1   g0747(.A(new_n942), .B(new_n889), .Y(new_n943));
  OR2X1    g0748(.A(new_n943), .B(new_n940), .Y(new_n944));
  NOR2X1   g0749(.A(new_n883), .B(new_n895), .Y(new_n945));
  XOR2X1   g0750(.A(new_n945), .B(new_n932), .Y(new_n946));
  MX2X1    g0751(.A(new_n946), .B(new_n932), .S0(new_n889), .Y(new_n947));
  NOR4X1   g0752(.A(new_n947), .B(new_n944), .C(new_n939), .D(new_n936), .Y(new_n948));
  NAND3X1  g0753(.A(new_n948), .B(new_n925), .C(new_n898), .Y(new_n949));
  NOR2X1   g0754(.A(new_n829), .B(new_n824), .Y(new_n950));
  NOR2X1   g0755(.A(new_n832), .B(new_n830), .Y(new_n951));
  NOR2X1   g0756(.A(new_n862), .B(new_n854), .Y(new_n952));
  NOR2X1   g0757(.A(new_n870), .B(new_n854), .Y(new_n953));
  AOI21X1  g0758(.A0(new_n882), .A1(new_n952), .B0(new_n953), .Y(new_n954));
  NOR2X1   g0759(.A(new_n954), .B(new_n951), .Y(new_n955));
  XOR2X1   g0760(.A(new_n955), .B(new_n950), .Y(new_n956));
  MX2X1    g0761(.A(new_n956), .B(new_n950), .S0(new_n889), .Y(new_n957));
  INVX1    g0762(.A(new_n951), .Y(new_n958));
  XOR2X1   g0763(.A(new_n954), .B(new_n958), .Y(new_n959));
  MX2X1    g0764(.A(new_n959), .B(new_n951), .S0(new_n889), .Y(new_n960));
  NOR2X1   g0765(.A(new_n838), .B(new_n834), .Y(new_n961));
  NOR2X1   g0766(.A(new_n842), .B(new_n839), .Y(new_n962));
  NOR3X1   g0767(.A(new_n954), .B(new_n962), .C(new_n833), .Y(new_n963));
  XOR2X1   g0768(.A(new_n963), .B(new_n961), .Y(new_n964));
  MX2X1    g0769(.A(new_n964), .B(new_n961), .S0(new_n889), .Y(new_n965));
  NOR2X1   g0770(.A(new_n954), .B(new_n833), .Y(new_n966));
  XOR2X1   g0771(.A(new_n966), .B(new_n962), .Y(new_n967));
  MX2X1    g0772(.A(new_n967), .B(new_n962), .S0(new_n889), .Y(new_n968));
  OR4X1    g0773(.A(new_n968), .B(new_n965), .C(new_n960), .D(new_n957), .Y(new_n969));
  NOR2X1   g0774(.A(new_n849), .B(new_n845), .Y(new_n970));
  NOR2X1   g0775(.A(new_n853), .B(new_n850), .Y(new_n971));
  OR2X1    g0776(.A(new_n858), .B(new_n855), .Y(new_n972));
  OR2X1    g0777(.A(new_n861), .B(new_n859), .Y(new_n973));
  NOR3X1   g0778(.A(new_n882), .B(new_n973), .C(new_n972), .Y(new_n974));
  NOR2X1   g0779(.A(new_n974), .B(new_n971), .Y(new_n975));
  XOR2X1   g0780(.A(new_n975), .B(new_n970), .Y(new_n976));
  MX2X1    g0781(.A(new_n976), .B(new_n970), .S0(new_n889), .Y(new_n977));
  INVX1    g0782(.A(new_n972), .Y(new_n978));
  INVX1    g0783(.A(new_n973), .Y(new_n979));
  NOR4X1   g0784(.A(new_n881), .B(new_n880), .C(new_n879), .D(new_n876), .Y(new_n980));
  NAND3X1  g0785(.A(new_n980), .B(new_n979), .C(new_n978), .Y(new_n981));
  XOR2X1   g0786(.A(new_n981), .B(new_n971), .Y(new_n982));
  MX2X1    g0787(.A(new_n982), .B(new_n971), .S0(new_n889), .Y(new_n983));
  AND2X1   g0788(.A(new_n980), .B(new_n979), .Y(new_n984));
  XOR2X1   g0789(.A(new_n984), .B(new_n978), .Y(new_n985));
  MX2X1    g0790(.A(new_n985), .B(new_n978), .S0(new_n889), .Y(new_n986));
  XOR2X1   g0791(.A(new_n980), .B(new_n979), .Y(new_n987));
  INVX1    g0792(.A(new_n987), .Y(new_n988));
  MX2X1    g0793(.A(new_n988), .B(new_n973), .S0(new_n889), .Y(new_n989));
  OR4X1    g0794(.A(new_n989), .B(new_n986), .C(new_n983), .D(new_n977), .Y(new_n990));
  OR2X1    g0795(.A(new_n990), .B(new_n969), .Y(new_n991));
  INVX1    g0796(.A(new_n876), .Y(new_n992));
  NOR3X1   g0797(.A(new_n881), .B(new_n880), .C(new_n879), .Y(new_n993));
  XOR2X1   g0798(.A(new_n993), .B(new_n992), .Y(new_n994));
  INVX1    g0799(.A(new_n994), .Y(new_n995));
  MX2X1    g0800(.A(new_n876), .B(new_n995), .S0(new_n893), .Y(new_n996));
  INVX1    g0801(.A(new_n996), .Y(new_n997));
  NAND3X1  g0802(.A(new_n780), .B(new_n769), .C(\pwm[1] ), .Y(new_n999));
  OAI21X1  g0803(.A0(new_n819), .A1(new_n818), .B0(\pwm[1] ), .Y(new_n1000));
  MX2X1    g0804(.A(new_n877), .B(new_n764), .S0(new_n781), .Y(new_n1002));
  INVX1    g0805(.A(new_n1002), .Y(new_n1003));
  MX2X1    g0806(.A(new_n879), .B(new_n1003), .S0(new_n893), .Y(new_n1004));
  INVX1    g0807(.A(new_n1004), .Y(new_n1005));
  NOR2X1   g0808(.A(new_n765), .B(\pwm[1] ), .Y(new_n1006));
  NAND3X1  g0809(.A(new_n1006), .B(new_n1005), .C(new_n997), .Y(new_n1007));
  NOR2X1   g0810(.A(new_n866), .B(new_n865), .Y(new_n1008));
  INVX1    g0811(.A(new_n1008), .Y(new_n1009));
  NOR4X1   g0812(.A(new_n1009), .B(new_n1007), .C(new_n991), .D(new_n949), .Y(new_n1010));
  MX2X1    g0813(.A(new_n987), .B(new_n979), .S0(new_n889), .Y(new_n1011));
  OR4X1    g0814(.A(new_n1011), .B(new_n986), .C(new_n983), .D(new_n977), .Y(new_n1012));
  OR2X1    g0815(.A(new_n1012), .B(new_n969), .Y(new_n1013));
  NOR4X1   g0816(.A(new_n968), .B(new_n965), .C(new_n960), .D(new_n957), .Y(new_n1014));
  NOR4X1   g0817(.A(new_n989), .B(new_n986), .C(new_n983), .D(new_n977), .Y(new_n1015));
  NOR2X1   g0818(.A(new_n765), .B(\pwm[1] ), .Y(new_n1016));
  INVX1    g0819(.A(new_n1016), .Y(new_n1017));
  OR4X1    g0820(.A(new_n1017), .B(new_n1006), .C(new_n1004), .D(new_n996), .Y(new_n1018));
  NAND3X1  g0821(.A(new_n1018), .B(new_n1015), .C(new_n1014), .Y(new_n1019));
  AND2X1   g0822(.A(new_n1019), .B(new_n1013), .Y(new_n1020));
  AOI21X1  g0823(.A0(new_n897), .A1(new_n893), .B0(new_n815), .Y(new_n1021));
  INVX1    g0824(.A(new_n1021), .Y(new_n1022));
  XOR2X1   g0825(.A(new_n897), .B(new_n815), .Y(new_n1023));
  MX2X1    g0826(.A(new_n815), .B(new_n1023), .S0(new_n893), .Y(new_n1024));
  INVX1    g0827(.A(new_n815), .Y(new_n1025));
  INVX1    g0828(.A(new_n897), .Y(new_n1026));
  OAI21X1  g0829(.A0(new_n1026), .A1(new_n889), .B0(new_n1025), .Y(new_n1027));
  OR4X1    g0830(.A(new_n943), .B(new_n940), .C(new_n939), .D(new_n936), .Y(new_n1028));
  NOR4X1   g0831(.A(new_n1028), .B(new_n1027), .C(new_n1024), .D(new_n1022), .Y(new_n1029));
  OAI21X1  g0832(.A0(new_n1020), .A1(new_n949), .B0(new_n1029), .Y(new_n1030));
  NOR2X1   g0833(.A(new_n1030), .B(new_n1010), .Y(new_n1031));
  AOI21X1  g0834(.A0(new_n1019), .A1(new_n1013), .B0(new_n901), .Y(new_n1032));
  XOR2X1   g0835(.A(new_n1032), .B(new_n892), .Y(new_n1033));
  MX2X1    g0836(.A(new_n1033), .B(new_n892), .S0(new_n1031), .Y(new_n1034));
  INVX1    g0837(.A(new_n1024), .Y(new_n1035));
  OR4X1    g0838(.A(new_n924), .B(new_n921), .C(new_n917), .D(new_n909), .Y(new_n1036));
  AOI21X1  g0839(.A0(new_n1019), .A1(new_n1013), .B0(new_n1036), .Y(new_n1037));
  AOI21X1  g0840(.A0(new_n1037), .A1(new_n948), .B0(new_n1028), .Y(new_n1038));
  AND2X1   g0841(.A(new_n1038), .B(new_n1035), .Y(new_n1039));
  XOR2X1   g0842(.A(new_n1039), .B(new_n1022), .Y(new_n1040));
  MX2X1    g0843(.A(new_n1040), .B(new_n1022), .S0(new_n1031), .Y(new_n1041));
  XOR2X1   g0844(.A(new_n1038), .B(new_n1024), .Y(new_n1042));
  MX2X1    g0845(.A(new_n1042), .B(new_n1024), .S0(new_n1031), .Y(new_n1043));
  AND2X1   g0846(.A(new_n1037), .B(new_n948), .Y(new_n1044));
  NOR4X1   g0847(.A(new_n1044), .B(new_n1028), .C(new_n1024), .D(new_n1022), .Y(new_n1045));
  XOR2X1   g0848(.A(new_n1045), .B(new_n1027), .Y(new_n1046));
  MX2X1    g0849(.A(new_n1046), .B(new_n1027), .S0(new_n1031), .Y(new_n1047));
  NAND3X1  g0850(.A(new_n1038), .B(new_n1035), .C(new_n1021), .Y(new_n1048));
  XOR2X1   g0851(.A(new_n1048), .B(new_n1021), .Y(new_n1049));
  MX2X1    g0852(.A(new_n1049), .B(new_n1022), .S0(new_n1031), .Y(new_n1050));
  OR4X1    g0853(.A(new_n1050), .B(new_n1047), .C(new_n1043), .D(new_n1041), .Y(new_n1051));
  NAND2X1  g0854(.A(new_n1019), .B(new_n1013), .Y(new_n1052));
  XOR2X1   g0855(.A(new_n1052), .B(new_n901), .Y(new_n1053));
  MX2X1    g0856(.A(new_n1053), .B(new_n901), .S0(new_n1031), .Y(new_n1054));
  OR2X1    g0857(.A(new_n901), .B(new_n892), .Y(new_n1055));
  NOR3X1   g0858(.A(new_n1020), .B(new_n908), .C(new_n1055), .Y(new_n1056));
  XOR2X1   g0859(.A(new_n1056), .B(new_n905), .Y(new_n1057));
  MX2X1    g0860(.A(new_n1057), .B(new_n905), .S0(new_n1031), .Y(new_n1058));
  AOI21X1  g0861(.A0(new_n1019), .A1(new_n1013), .B0(new_n1055), .Y(new_n1059));
  XOR2X1   g0862(.A(new_n1059), .B(new_n908), .Y(new_n1060));
  MX2X1    g0863(.A(new_n1060), .B(new_n908), .S0(new_n1031), .Y(new_n1061));
  OR4X1    g0864(.A(new_n1061), .B(new_n1058), .C(new_n1054), .D(new_n1034), .Y(new_n1062));
  NOR4X1   g0865(.A(new_n908), .B(new_n905), .C(new_n901), .D(new_n892), .Y(new_n1063));
  NOR2X1   g0866(.A(new_n1012), .B(new_n969), .Y(new_n1064));
  NOR4X1   g0867(.A(new_n1017), .B(new_n1006), .C(new_n1004), .D(new_n996), .Y(new_n1065));
  NOR3X1   g0868(.A(new_n1065), .B(new_n990), .C(new_n969), .Y(new_n1066));
  OAI21X1  g0869(.A0(new_n1066), .A1(new_n1064), .B0(new_n1063), .Y(new_n1067));
  NOR2X1   g0870(.A(new_n1067), .B(new_n916), .Y(new_n1068));
  XOR2X1   g0871(.A(new_n1068), .B(new_n912), .Y(new_n1069));
  MX2X1    g0872(.A(new_n1069), .B(new_n912), .S0(new_n1031), .Y(new_n1070));
  AOI21X1  g0873(.A0(new_n1019), .A1(new_n1013), .B0(new_n909), .Y(new_n1071));
  XOR2X1   g0874(.A(new_n1071), .B(new_n916), .Y(new_n1072));
  MX2X1    g0875(.A(new_n1072), .B(new_n916), .S0(new_n1031), .Y(new_n1073));
  NOR3X1   g0876(.A(new_n1067), .B(new_n921), .C(new_n917), .Y(new_n1074));
  XOR2X1   g0877(.A(new_n1074), .B(new_n924), .Y(new_n1075));
  MX2X1    g0878(.A(new_n1075), .B(new_n924), .S0(new_n1031), .Y(new_n1076));
  NOR2X1   g0879(.A(new_n1067), .B(new_n917), .Y(new_n1077));
  XOR2X1   g0880(.A(new_n1077), .B(new_n921), .Y(new_n1078));
  MX2X1    g0881(.A(new_n1078), .B(new_n921), .S0(new_n1031), .Y(new_n1079));
  OR4X1    g0882(.A(new_n1079), .B(new_n1076), .C(new_n1073), .D(new_n1070), .Y(new_n1080));
  OR2X1    g0883(.A(new_n1080), .B(new_n1062), .Y(new_n1081));
  INVX1    g0884(.A(new_n939), .Y(new_n1082));
  INVX1    g0885(.A(new_n947), .Y(new_n1083));
  AOI21X1  g0886(.A0(new_n1037), .A1(new_n1083), .B0(new_n944), .Y(new_n1084));
  AND2X1   g0887(.A(new_n1084), .B(new_n1082), .Y(new_n1085));
  XOR2X1   g0888(.A(new_n1085), .B(new_n936), .Y(new_n1086));
  MX2X1    g0889(.A(new_n1086), .B(new_n936), .S0(new_n1031), .Y(new_n1087));
  XOR2X1   g0890(.A(new_n1084), .B(new_n939), .Y(new_n1088));
  MX2X1    g0891(.A(new_n1088), .B(new_n939), .S0(new_n1031), .Y(new_n1089));
  NAND2X1  g0892(.A(new_n1037), .B(new_n1083), .Y(new_n1090));
  XOR2X1   g0893(.A(new_n1090), .B(new_n944), .Y(new_n1091));
  MX2X1    g0894(.A(new_n1091), .B(new_n944), .S0(new_n1031), .Y(new_n1092));
  NOR3X1   g0895(.A(new_n1030), .B(new_n1010), .C(new_n947), .Y(new_n1093));
  OR4X1    g0896(.A(new_n1009), .B(new_n1007), .C(new_n991), .D(new_n949), .Y(new_n1094));
  INVX1    g0897(.A(new_n898), .Y(new_n1095));
  OR4X1    g0898(.A(new_n947), .B(new_n944), .C(new_n939), .D(new_n936), .Y(new_n1096));
  NOR3X1   g0899(.A(new_n1096), .B(new_n1036), .C(new_n1095), .Y(new_n1097));
  OR4X1    g0900(.A(new_n1028), .B(new_n1027), .C(new_n1024), .D(new_n1022), .Y(new_n1098));
  AOI21X1  g0901(.A0(new_n1052), .A1(new_n1097), .B0(new_n1098), .Y(new_n1099));
  XOR2X1   g0902(.A(new_n1037), .B(new_n947), .Y(new_n1100));
  AOI21X1  g0903(.A0(new_n1099), .A1(new_n1094), .B0(new_n1100), .Y(new_n1101));
  OR2X1    g0904(.A(new_n1101), .B(new_n1093), .Y(new_n1102));
  OR4X1    g0905(.A(new_n1102), .B(new_n1092), .C(new_n1089), .D(new_n1087), .Y(new_n1103));
  NOR3X1   g0906(.A(new_n1030), .B(new_n1010), .C(new_n986), .Y(new_n1104));
  NAND2X1  g0907(.A(new_n1065), .B(new_n1011), .Y(new_n1105));
  XOR2X1   g0908(.A(new_n1105), .B(new_n986), .Y(new_n1106));
  AOI21X1  g0909(.A0(new_n1099), .A1(new_n1094), .B0(new_n1106), .Y(new_n1107));
  NOR3X1   g0910(.A(new_n1030), .B(new_n1010), .C(new_n1011), .Y(new_n1108));
  XOR2X1   g0911(.A(new_n1065), .B(new_n1011), .Y(new_n1109));
  AOI21X1  g0912(.A0(new_n1099), .A1(new_n1094), .B0(new_n1109), .Y(new_n1110));
  OAI22X1  g0913(.A0(new_n1110), .A1(new_n1108), .B0(new_n1107), .B1(new_n1104), .Y(new_n1111));
  NOR3X1   g0914(.A(new_n1030), .B(new_n1010), .C(new_n977), .Y(new_n1112));
  INVX1    g0915(.A(new_n983), .Y(new_n1113));
  AOI21X1  g0916(.A0(new_n1065), .A1(new_n1011), .B0(new_n986), .Y(new_n1114));
  AND2X1   g0917(.A(new_n1114), .B(new_n1113), .Y(new_n1115));
  XOR2X1   g0918(.A(new_n1115), .B(new_n977), .Y(new_n1116));
  AOI21X1  g0919(.A0(new_n1099), .A1(new_n1094), .B0(new_n1116), .Y(new_n1117));
  NOR3X1   g0920(.A(new_n1030), .B(new_n1010), .C(new_n983), .Y(new_n1118));
  XOR2X1   g0921(.A(new_n1114), .B(new_n983), .Y(new_n1119));
  AOI21X1  g0922(.A0(new_n1099), .A1(new_n1094), .B0(new_n1119), .Y(new_n1120));
  OAI22X1  g0923(.A0(new_n1120), .A1(new_n1118), .B0(new_n1117), .B1(new_n1112), .Y(new_n1121));
  NOR3X1   g0924(.A(new_n1030), .B(new_n1010), .C(new_n957), .Y(new_n1122));
  NOR4X1   g0925(.A(new_n1011), .B(new_n986), .C(new_n983), .D(new_n977), .Y(new_n1123));
  AOI21X1  g0926(.A0(new_n1018), .A1(new_n1015), .B0(new_n1123), .Y(new_n1124));
  NOR2X1   g0927(.A(new_n1124), .B(new_n960), .Y(new_n1125));
  XOR2X1   g0928(.A(new_n1125), .B(new_n957), .Y(new_n1126));
  AOI21X1  g0929(.A0(new_n1099), .A1(new_n1094), .B0(new_n1126), .Y(new_n1127));
  NOR3X1   g0930(.A(new_n1030), .B(new_n1010), .C(new_n960), .Y(new_n1128));
  INVX1    g0931(.A(new_n960), .Y(new_n1129));
  XOR2X1   g0932(.A(new_n1124), .B(new_n1129), .Y(new_n1130));
  AOI21X1  g0933(.A0(new_n1099), .A1(new_n1094), .B0(new_n1130), .Y(new_n1131));
  OAI22X1  g0934(.A0(new_n1131), .A1(new_n1128), .B0(new_n1127), .B1(new_n1122), .Y(new_n1132));
  NOR3X1   g0935(.A(new_n1030), .B(new_n1010), .C(new_n965), .Y(new_n1133));
  OR2X1    g0936(.A(new_n960), .B(new_n957), .Y(new_n1134));
  NOR3X1   g0937(.A(new_n1124), .B(new_n968), .C(new_n1134), .Y(new_n1135));
  XOR2X1   g0938(.A(new_n1135), .B(new_n965), .Y(new_n1136));
  AOI21X1  g0939(.A0(new_n1099), .A1(new_n1094), .B0(new_n1136), .Y(new_n1137));
  NOR3X1   g0940(.A(new_n1030), .B(new_n1010), .C(new_n968), .Y(new_n1138));
  NOR2X1   g0941(.A(new_n1124), .B(new_n1134), .Y(new_n1139));
  XOR2X1   g0942(.A(new_n1139), .B(new_n968), .Y(new_n1140));
  AOI21X1  g0943(.A0(new_n1099), .A1(new_n1094), .B0(new_n1140), .Y(new_n1141));
  OAI22X1  g0944(.A0(new_n1141), .A1(new_n1138), .B0(new_n1137), .B1(new_n1133), .Y(new_n1142));
  OR4X1    g0945(.A(new_n1142), .B(new_n1132), .C(new_n1121), .D(new_n1111), .Y(new_n1143));
  XOR2X1   g0946(.A(\pwm[2] ), .B(new_n472), .Y(new_n1144));
  AND2X1   g0947(.A(new_n1000), .B(new_n999), .Y(new_n1145));
  NAND4X1  g0948(.A(new_n1145), .B(new_n1144), .C(new_n1005), .D(new_n997), .Y(new_n1146));
  NOR3X1   g0949(.A(new_n1030), .B(new_n1010), .C(new_n1008), .Y(new_n1147));
  AOI21X1  g0950(.A0(new_n1099), .A1(new_n1094), .B0(new_n1008), .Y(new_n1148));
  OR4X1    g0951(.A(new_n1148), .B(new_n1147), .C(new_n1146), .D(new_n1143), .Y(new_n1149));
  NOR4X1   g0952(.A(new_n1149), .B(new_n1103), .C(new_n1081), .D(new_n1051), .Y(new_n1150));
  NOR3X1   g0953(.A(new_n1017), .B(new_n1006), .C(new_n1004), .Y(new_n1151));
  XOR2X1   g0954(.A(new_n1151), .B(new_n996), .Y(new_n1152));
  MX2X1    g0955(.A(new_n1152), .B(new_n996), .S0(new_n1031), .Y(new_n1153));
  MX2X1    g0956(.A(new_n1003), .B(new_n879), .S0(new_n889), .Y(new_n1154));
  MX2X1    g0957(.A(new_n1154), .B(new_n1004), .S0(new_n1031), .Y(new_n1155));
  NOR2X1   g0958(.A(new_n765), .B(\pwm[1] ), .Y(new_n1156));
  NOR2X1   g0959(.A(new_n765), .B(\pwm[1] ), .Y(new_n1157));
  INVX1    g0960(.A(new_n1157), .Y(new_n1158));
  NOR4X1   g0961(.A(new_n1158), .B(new_n1156), .C(new_n1155), .D(new_n1153), .Y(new_n1159));
  OR2X1    g0962(.A(new_n1159), .B(new_n1143), .Y(new_n1160));
  NOR4X1   g0963(.A(new_n1160), .B(new_n1103), .C(new_n1081), .D(new_n1051), .Y(new_n1161));
  NOR4X1   g0964(.A(new_n1102), .B(new_n1092), .C(new_n1089), .D(new_n1087), .Y(new_n1162));
  NOR4X1   g0965(.A(new_n1050), .B(new_n1047), .C(new_n1043), .D(new_n1041), .Y(new_n1163));
  OAI21X1  g0966(.A0(new_n1162), .A1(new_n1051), .B0(new_n1163), .Y(new_n1164));
  NOR3X1   g0967(.A(new_n1164), .B(new_n1161), .C(new_n1150), .Y(new_n1165));
  NOR3X1   g0968(.A(new_n1159), .B(new_n1143), .C(new_n1054), .Y(new_n1166));
  XOR2X1   g0969(.A(new_n1166), .B(new_n1034), .Y(new_n1167));
  MX2X1    g0970(.A(new_n1167), .B(new_n1034), .S0(new_n1165), .Y(new_n1168));
  NOR2X1   g0971(.A(new_n1159), .B(new_n1143), .Y(new_n1169));
  XOR2X1   g0972(.A(new_n1169), .B(new_n1054), .Y(new_n1170));
  MX2X1    g0973(.A(new_n1170), .B(new_n1054), .S0(new_n1165), .Y(new_n1171));
  OR2X1    g0974(.A(new_n1054), .B(new_n1034), .Y(new_n1172));
  NOR4X1   g0975(.A(new_n1159), .B(new_n1143), .C(new_n1061), .D(new_n1172), .Y(new_n1173));
  XOR2X1   g0976(.A(new_n1173), .B(new_n1058), .Y(new_n1174));
  MX2X1    g0977(.A(new_n1174), .B(new_n1058), .S0(new_n1165), .Y(new_n1175));
  NOR3X1   g0978(.A(new_n1159), .B(new_n1143), .C(new_n1172), .Y(new_n1176));
  XOR2X1   g0979(.A(new_n1176), .B(new_n1061), .Y(new_n1177));
  MX2X1    g0980(.A(new_n1177), .B(new_n1061), .S0(new_n1165), .Y(new_n1178));
  OR4X1    g0981(.A(new_n1178), .B(new_n1175), .C(new_n1171), .D(new_n1168), .Y(new_n1179));
  NOR3X1   g0982(.A(new_n1159), .B(new_n1143), .C(new_n1062), .Y(new_n1180));
  XOR2X1   g0983(.A(new_n1180), .B(new_n1073), .Y(new_n1181));
  MX2X1    g0984(.A(new_n1181), .B(new_n1073), .S0(new_n1165), .Y(new_n1182));
  NOR4X1   g0985(.A(new_n1159), .B(new_n1143), .C(new_n1073), .D(new_n1062), .Y(new_n1183));
  XOR2X1   g0986(.A(new_n1183), .B(new_n1070), .Y(new_n1184));
  MX2X1    g0987(.A(new_n1184), .B(new_n1070), .S0(new_n1165), .Y(new_n1185));
  OR2X1    g0988(.A(new_n1185), .B(new_n1182), .Y(new_n1186));
  OR4X1    g0989(.A(new_n1164), .B(new_n1161), .C(new_n1150), .D(new_n1076), .Y(new_n1187));
  OR2X1    g0990(.A(new_n1073), .B(new_n1070), .Y(new_n1188));
  NOR4X1   g0991(.A(new_n1160), .B(new_n1079), .C(new_n1188), .D(new_n1062), .Y(new_n1189));
  XOR2X1   g0992(.A(new_n1189), .B(new_n1076), .Y(new_n1190));
  OAI21X1  g0993(.A0(new_n1190), .A1(new_n1165), .B0(new_n1187), .Y(new_n1191));
  NOR4X1   g0994(.A(new_n1160), .B(new_n1073), .C(new_n1070), .D(new_n1062), .Y(new_n1192));
  XOR2X1   g0995(.A(new_n1192), .B(new_n1079), .Y(new_n1193));
  MX2X1    g0996(.A(new_n1193), .B(new_n1079), .S0(new_n1165), .Y(new_n1194));
  OR4X1    g0997(.A(new_n1194), .B(new_n1191), .C(new_n1186), .D(new_n1179), .Y(new_n1195));
  NOR4X1   g0998(.A(new_n1159), .B(new_n1143), .C(new_n1080), .D(new_n1062), .Y(new_n1196));
  NOR4X1   g0999(.A(new_n1196), .B(new_n1102), .C(new_n1092), .D(new_n1089), .Y(new_n1197));
  XOR2X1   g1000(.A(new_n1197), .B(new_n1087), .Y(new_n1198));
  MX2X1    g1001(.A(new_n1198), .B(new_n1087), .S0(new_n1165), .Y(new_n1199));
  NOR3X1   g1002(.A(new_n1196), .B(new_n1102), .C(new_n1092), .Y(new_n1200));
  XOR2X1   g1003(.A(new_n1200), .B(new_n1089), .Y(new_n1201));
  MX2X1    g1004(.A(new_n1201), .B(new_n1089), .S0(new_n1165), .Y(new_n1202));
  INVX1    g1005(.A(new_n1102), .Y(new_n1203));
  OR4X1    g1006(.A(new_n1159), .B(new_n1143), .C(new_n1080), .D(new_n1062), .Y(new_n1204));
  AND2X1   g1007(.A(new_n1204), .B(new_n1203), .Y(new_n1205));
  XOR2X1   g1008(.A(new_n1205), .B(new_n1092), .Y(new_n1206));
  MX2X1    g1009(.A(new_n1206), .B(new_n1092), .S0(new_n1165), .Y(new_n1207));
  XOR2X1   g1010(.A(new_n1196), .B(new_n1203), .Y(new_n1208));
  MX2X1    g1011(.A(new_n1208), .B(new_n1102), .S0(new_n1165), .Y(new_n1209));
  OR4X1    g1012(.A(new_n1209), .B(new_n1207), .C(new_n1202), .D(new_n1199), .Y(new_n1210));
  OAI21X1  g1013(.A0(new_n1204), .A1(new_n1103), .B0(new_n1162), .Y(new_n1211));
  NOR2X1   g1014(.A(new_n1211), .B(new_n1043), .Y(new_n1212));
  XOR2X1   g1015(.A(new_n1212), .B(new_n1041), .Y(new_n1213));
  MX2X1    g1016(.A(new_n1213), .B(new_n1041), .S0(new_n1165), .Y(new_n1214));
  INVX1    g1017(.A(new_n1043), .Y(new_n1215));
  XOR2X1   g1018(.A(new_n1211), .B(new_n1215), .Y(new_n1216));
  MX2X1    g1019(.A(new_n1216), .B(new_n1043), .S0(new_n1165), .Y(new_n1217));
  NOR4X1   g1020(.A(new_n1211), .B(new_n1050), .C(new_n1043), .D(new_n1041), .Y(new_n1218));
  XOR2X1   g1021(.A(new_n1218), .B(new_n1047), .Y(new_n1219));
  MX2X1    g1022(.A(new_n1219), .B(new_n1047), .S0(new_n1165), .Y(new_n1220));
  NOR3X1   g1023(.A(new_n1211), .B(new_n1043), .C(new_n1041), .Y(new_n1221));
  XOR2X1   g1024(.A(new_n1221), .B(new_n1050), .Y(new_n1222));
  MX2X1    g1025(.A(new_n1222), .B(new_n1050), .S0(new_n1165), .Y(new_n1223));
  OR4X1    g1026(.A(new_n1223), .B(new_n1220), .C(new_n1217), .D(new_n1214), .Y(new_n1224));
  NOR2X1   g1027(.A(new_n1107), .B(new_n1104), .Y(new_n1225));
  NOR2X1   g1028(.A(new_n1110), .B(new_n1108), .Y(new_n1226));
  NOR2X1   g1029(.A(new_n1159), .B(new_n1226), .Y(new_n1227));
  XOR2X1   g1030(.A(new_n1227), .B(new_n1225), .Y(new_n1228));
  MX2X1    g1031(.A(new_n1228), .B(new_n1225), .S0(new_n1165), .Y(new_n1229));
  INVX1    g1032(.A(new_n1226), .Y(new_n1230));
  XOR2X1   g1033(.A(new_n1159), .B(new_n1230), .Y(new_n1231));
  MX2X1    g1034(.A(new_n1231), .B(new_n1226), .S0(new_n1165), .Y(new_n1232));
  NOR2X1   g1035(.A(new_n1117), .B(new_n1112), .Y(new_n1233));
  NOR2X1   g1036(.A(new_n1120), .B(new_n1118), .Y(new_n1234));
  NOR3X1   g1037(.A(new_n1159), .B(new_n1234), .C(new_n1111), .Y(new_n1235));
  XOR2X1   g1038(.A(new_n1235), .B(new_n1233), .Y(new_n1236));
  MX2X1    g1039(.A(new_n1236), .B(new_n1233), .S0(new_n1165), .Y(new_n1237));
  NOR2X1   g1040(.A(new_n1159), .B(new_n1111), .Y(new_n1238));
  XOR2X1   g1041(.A(new_n1238), .B(new_n1234), .Y(new_n1239));
  MX2X1    g1042(.A(new_n1239), .B(new_n1234), .S0(new_n1165), .Y(new_n1240));
  OR4X1    g1043(.A(new_n1240), .B(new_n1237), .C(new_n1232), .D(new_n1229), .Y(new_n1241));
  NOR2X1   g1044(.A(new_n1127), .B(new_n1122), .Y(new_n1242));
  OR2X1    g1045(.A(new_n1121), .B(new_n1111), .Y(new_n1243));
  NOR2X1   g1046(.A(new_n1131), .B(new_n1128), .Y(new_n1244));
  NOR3X1   g1047(.A(new_n1159), .B(new_n1244), .C(new_n1243), .Y(new_n1245));
  XOR2X1   g1048(.A(new_n1245), .B(new_n1242), .Y(new_n1246));
  MX2X1    g1049(.A(new_n1246), .B(new_n1242), .S0(new_n1165), .Y(new_n1247));
  NOR2X1   g1050(.A(new_n1159), .B(new_n1243), .Y(new_n1248));
  XOR2X1   g1051(.A(new_n1248), .B(new_n1244), .Y(new_n1249));
  MX2X1    g1052(.A(new_n1249), .B(new_n1244), .S0(new_n1165), .Y(new_n1250));
  NOR2X1   g1053(.A(new_n1137), .B(new_n1133), .Y(new_n1251));
  NOR2X1   g1054(.A(new_n1141), .B(new_n1138), .Y(new_n1252));
  NOR4X1   g1055(.A(new_n1159), .B(new_n1252), .C(new_n1132), .D(new_n1243), .Y(new_n1253));
  XOR2X1   g1056(.A(new_n1253), .B(new_n1251), .Y(new_n1254));
  MX2X1    g1057(.A(new_n1254), .B(new_n1251), .S0(new_n1165), .Y(new_n1255));
  NOR3X1   g1058(.A(new_n1159), .B(new_n1132), .C(new_n1243), .Y(new_n1256));
  XOR2X1   g1059(.A(new_n1256), .B(new_n1252), .Y(new_n1257));
  MX2X1    g1060(.A(new_n1257), .B(new_n1252), .S0(new_n1165), .Y(new_n1258));
  OR4X1    g1061(.A(new_n1258), .B(new_n1255), .C(new_n1250), .D(new_n1247), .Y(new_n1259));
  INVX1    g1062(.A(new_n1155), .Y(new_n1260));
  XOR2X1   g1063(.A(\pwm[2] ), .B(new_n472), .Y(new_n1261));
  AND2X1   g1064(.A(new_n1000), .B(new_n999), .Y(new_n1262));
  NAND4X1  g1065(.A(new_n1262), .B(new_n1261), .C(new_n1260), .D(new_n1153), .Y(new_n1263));
  NOR2X1   g1066(.A(new_n866), .B(new_n865), .Y(new_n1264));
  INVX1    g1067(.A(new_n1264), .Y(new_n1265));
  OR4X1    g1068(.A(new_n1265), .B(new_n1263), .C(new_n1259), .D(new_n1241), .Y(new_n1266));
  NOR4X1   g1069(.A(new_n1266), .B(new_n1224), .C(new_n1210), .D(new_n1195), .Y(new_n1267));
  OR2X1    g1070(.A(new_n1250), .B(new_n1247), .Y(new_n1268));
  OR2X1    g1071(.A(new_n1258), .B(new_n1255), .Y(new_n1269));
  INVX1    g1072(.A(new_n1153), .Y(new_n1270));
  OR4X1    g1073(.A(new_n1164), .B(new_n1161), .C(new_n1150), .D(new_n1270), .Y(new_n1271));
  NOR3X1   g1074(.A(new_n1158), .B(new_n1156), .C(new_n1155), .Y(new_n1272));
  XOR2X1   g1075(.A(new_n1272), .B(new_n1270), .Y(new_n1273));
  OR2X1    g1076(.A(new_n1273), .B(new_n1165), .Y(new_n1274));
  INVX1    g1077(.A(new_n1154), .Y(new_n1275));
  MX2X1    g1078(.A(new_n1275), .B(new_n1005), .S0(new_n1031), .Y(new_n1276));
  MX2X1    g1079(.A(new_n1276), .B(new_n1260), .S0(new_n1165), .Y(new_n1277));
  NOR3X1   g1080(.A(new_n1030), .B(new_n1010), .C(new_n1144), .Y(new_n1278));
  AOI21X1  g1081(.A0(new_n1099), .A1(new_n1094), .B0(new_n1144), .Y(new_n1279));
  AND2X1   g1082(.A(new_n1000), .B(new_n999), .Y(new_n1281));
  AND2X1   g1083(.A(new_n1274), .B(new_n1271), .Y(new_n1282));
  OR4X1    g1084(.A(new_n1282), .B(new_n1269), .C(new_n1268), .D(new_n1241), .Y(new_n1283));
  NOR4X1   g1085(.A(new_n1283), .B(new_n1224), .C(new_n1210), .D(new_n1195), .Y(new_n1284));
  INVX1    g1086(.A(new_n1191), .Y(new_n1285));
  NOR3X1   g1087(.A(new_n1224), .B(new_n1210), .C(new_n1285), .Y(new_n1286));
  NOR4X1   g1088(.A(new_n1209), .B(new_n1207), .C(new_n1202), .D(new_n1199), .Y(new_n1287));
  NOR4X1   g1089(.A(new_n1223), .B(new_n1220), .C(new_n1217), .D(new_n1214), .Y(new_n1288));
  OAI21X1  g1090(.A0(new_n1287), .A1(new_n1224), .B0(new_n1288), .Y(new_n1289));
  NOR4X1   g1091(.A(new_n1289), .B(new_n1286), .C(new_n1284), .D(new_n1267), .Y(new_n1290));
  NOR4X1   g1092(.A(new_n1282), .B(new_n1259), .C(new_n1241), .D(new_n1171), .Y(new_n1291));
  XOR2X1   g1093(.A(new_n1291), .B(new_n1168), .Y(new_n1292));
  MX2X1    g1094(.A(new_n1292), .B(new_n1168), .S0(new_n1290), .Y(new_n1293));
  NOR3X1   g1095(.A(new_n1282), .B(new_n1259), .C(new_n1241), .Y(new_n1294));
  XOR2X1   g1096(.A(new_n1294), .B(new_n1171), .Y(new_n1295));
  MX2X1    g1097(.A(new_n1295), .B(new_n1171), .S0(new_n1290), .Y(new_n1296));
  OR2X1    g1098(.A(new_n1171), .B(new_n1168), .Y(new_n1297));
  NOR3X1   g1099(.A(new_n1283), .B(new_n1178), .C(new_n1297), .Y(new_n1298));
  XOR2X1   g1100(.A(new_n1298), .B(new_n1175), .Y(new_n1299));
  MX2X1    g1101(.A(new_n1299), .B(new_n1175), .S0(new_n1290), .Y(new_n1300));
  NOR4X1   g1102(.A(new_n1282), .B(new_n1259), .C(new_n1241), .D(new_n1297), .Y(new_n1301));
  XOR2X1   g1103(.A(new_n1301), .B(new_n1178), .Y(new_n1302));
  MX2X1    g1104(.A(new_n1302), .B(new_n1178), .S0(new_n1290), .Y(new_n1303));
  OR4X1    g1105(.A(new_n1303), .B(new_n1300), .C(new_n1296), .D(new_n1293), .Y(new_n1304));
  INVX1    g1106(.A(new_n1185), .Y(new_n1305));
  OR4X1    g1107(.A(new_n1282), .B(new_n1259), .C(new_n1241), .D(new_n1179), .Y(new_n1306));
  NOR2X1   g1108(.A(new_n1306), .B(new_n1182), .Y(new_n1307));
  XOR2X1   g1109(.A(new_n1307), .B(new_n1305), .Y(new_n1308));
  MX2X1    g1110(.A(new_n1308), .B(new_n1305), .S0(new_n1290), .Y(new_n1309));
  INVX1    g1111(.A(new_n1182), .Y(new_n1310));
  XOR2X1   g1112(.A(new_n1306), .B(new_n1182), .Y(new_n1311));
  MX2X1    g1113(.A(new_n1311), .B(new_n1310), .S0(new_n1290), .Y(new_n1312));
  NAND2X1  g1114(.A(new_n1312), .B(new_n1309), .Y(new_n1313));
  NOR3X1   g1115(.A(new_n1306), .B(new_n1194), .C(new_n1186), .Y(new_n1314));
  XOR2X1   g1116(.A(new_n1314), .B(new_n1285), .Y(new_n1315));
  MX2X1    g1117(.A(new_n1315), .B(new_n1191), .S0(new_n1290), .Y(new_n1316));
  OR4X1    g1118(.A(new_n1289), .B(new_n1286), .C(new_n1284), .D(new_n1267), .Y(new_n1317));
  NOR2X1   g1119(.A(new_n1306), .B(new_n1186), .Y(new_n1318));
  XOR2X1   g1120(.A(new_n1318), .B(new_n1194), .Y(new_n1319));
  OR2X1    g1121(.A(new_n1319), .B(new_n1290), .Y(new_n1320));
  OAI21X1  g1122(.A0(new_n1317), .A1(new_n1194), .B0(new_n1320), .Y(new_n1321));
  OR4X1    g1123(.A(new_n1321), .B(new_n1316), .C(new_n1313), .D(new_n1304), .Y(new_n1322));
  OAI21X1  g1124(.A0(new_n1283), .A1(new_n1195), .B0(new_n1285), .Y(new_n1323));
  NOR4X1   g1125(.A(new_n1323), .B(new_n1209), .C(new_n1207), .D(new_n1202), .Y(new_n1324));
  XOR2X1   g1126(.A(new_n1324), .B(new_n1199), .Y(new_n1325));
  MX2X1    g1127(.A(new_n1325), .B(new_n1199), .S0(new_n1290), .Y(new_n1326));
  NOR3X1   g1128(.A(new_n1323), .B(new_n1209), .C(new_n1207), .Y(new_n1327));
  XOR2X1   g1129(.A(new_n1327), .B(new_n1202), .Y(new_n1328));
  MX2X1    g1130(.A(new_n1328), .B(new_n1202), .S0(new_n1290), .Y(new_n1329));
  NOR2X1   g1131(.A(new_n1323), .B(new_n1209), .Y(new_n1330));
  XOR2X1   g1132(.A(new_n1330), .B(new_n1207), .Y(new_n1331));
  MX2X1    g1133(.A(new_n1331), .B(new_n1207), .S0(new_n1290), .Y(new_n1332));
  NOR4X1   g1134(.A(new_n1194), .B(new_n1191), .C(new_n1186), .D(new_n1179), .Y(new_n1333));
  AOI21X1  g1135(.A0(new_n1294), .A1(new_n1333), .B0(new_n1191), .Y(new_n1334));
  XOR2X1   g1136(.A(new_n1334), .B(new_n1209), .Y(new_n1335));
  MX2X1    g1137(.A(new_n1335), .B(new_n1209), .S0(new_n1290), .Y(new_n1336));
  OR4X1    g1138(.A(new_n1336), .B(new_n1332), .C(new_n1329), .D(new_n1326), .Y(new_n1337));
  OAI21X1  g1139(.A0(new_n1334), .A1(new_n1210), .B0(new_n1287), .Y(new_n1338));
  NOR2X1   g1140(.A(new_n1338), .B(new_n1217), .Y(new_n1339));
  XOR2X1   g1141(.A(new_n1339), .B(new_n1214), .Y(new_n1340));
  MX2X1    g1142(.A(new_n1340), .B(new_n1214), .S0(new_n1290), .Y(new_n1341));
  INVX1    g1143(.A(new_n1217), .Y(new_n1342));
  XOR2X1   g1144(.A(new_n1338), .B(new_n1342), .Y(new_n1343));
  MX2X1    g1145(.A(new_n1343), .B(new_n1217), .S0(new_n1290), .Y(new_n1344));
  NOR4X1   g1146(.A(new_n1338), .B(new_n1223), .C(new_n1217), .D(new_n1214), .Y(new_n1345));
  XOR2X1   g1147(.A(new_n1345), .B(new_n1220), .Y(new_n1346));
  MX2X1    g1148(.A(new_n1346), .B(new_n1220), .S0(new_n1290), .Y(new_n1347));
  NOR3X1   g1149(.A(new_n1338), .B(new_n1217), .C(new_n1214), .Y(new_n1348));
  XOR2X1   g1150(.A(new_n1348), .B(new_n1223), .Y(new_n1349));
  MX2X1    g1151(.A(new_n1349), .B(new_n1223), .S0(new_n1290), .Y(new_n1350));
  OR4X1    g1152(.A(new_n1350), .B(new_n1347), .C(new_n1344), .D(new_n1341), .Y(new_n1351));
  INVX1    g1153(.A(new_n1232), .Y(new_n1352));
  MX2X1    g1154(.A(new_n1273), .B(new_n1270), .S0(new_n1165), .Y(new_n1353));
  XOR2X1   g1155(.A(new_n1353), .B(new_n1352), .Y(new_n1354));
  MX2X1    g1156(.A(new_n1354), .B(new_n1232), .S0(new_n1290), .Y(new_n1355));
  NOR2X1   g1157(.A(new_n1353), .B(new_n1232), .Y(new_n1356));
  XOR2X1   g1158(.A(new_n1356), .B(new_n1229), .Y(new_n1357));
  MX2X1    g1159(.A(new_n1357), .B(new_n1229), .S0(new_n1290), .Y(new_n1358));
  OR2X1    g1160(.A(new_n1232), .B(new_n1229), .Y(new_n1359));
  NOR3X1   g1161(.A(new_n1282), .B(new_n1240), .C(new_n1359), .Y(new_n1360));
  XOR2X1   g1162(.A(new_n1360), .B(new_n1237), .Y(new_n1361));
  MX2X1    g1163(.A(new_n1361), .B(new_n1237), .S0(new_n1290), .Y(new_n1362));
  NOR2X1   g1164(.A(new_n1282), .B(new_n1359), .Y(new_n1363));
  XOR2X1   g1165(.A(new_n1363), .B(new_n1240), .Y(new_n1364));
  MX2X1    g1166(.A(new_n1364), .B(new_n1240), .S0(new_n1290), .Y(new_n1365));
  OR4X1    g1167(.A(new_n1365), .B(new_n1362), .C(new_n1358), .D(new_n1355), .Y(new_n1366));
  NOR2X1   g1168(.A(new_n1282), .B(new_n1241), .Y(new_n1367));
  XOR2X1   g1169(.A(new_n1367), .B(new_n1250), .Y(new_n1368));
  MX2X1    g1170(.A(new_n1368), .B(new_n1250), .S0(new_n1290), .Y(new_n1369));
  NOR3X1   g1171(.A(new_n1282), .B(new_n1250), .C(new_n1241), .Y(new_n1370));
  XOR2X1   g1172(.A(new_n1370), .B(new_n1247), .Y(new_n1371));
  MX2X1    g1173(.A(new_n1371), .B(new_n1247), .S0(new_n1290), .Y(new_n1372));
  NOR4X1   g1174(.A(new_n1282), .B(new_n1258), .C(new_n1268), .D(new_n1241), .Y(new_n1373));
  XOR2X1   g1175(.A(new_n1373), .B(new_n1255), .Y(new_n1374));
  MX2X1    g1176(.A(new_n1374), .B(new_n1255), .S0(new_n1290), .Y(new_n1375));
  NOR3X1   g1177(.A(new_n1282), .B(new_n1268), .C(new_n1241), .Y(new_n1376));
  XOR2X1   g1178(.A(new_n1376), .B(new_n1258), .Y(new_n1377));
  MX2X1    g1179(.A(new_n1377), .B(new_n1258), .S0(new_n1290), .Y(new_n1378));
  OR4X1    g1180(.A(new_n1378), .B(new_n1375), .C(new_n1372), .D(new_n1369), .Y(new_n1379));
  MX2X1    g1181(.A(new_n1276), .B(new_n1260), .S0(new_n1165), .Y(new_n1380));
  MX2X1    g1182(.A(new_n1380), .B(new_n1277), .S0(new_n1290), .Y(new_n1381));
  INVX1    g1183(.A(new_n1381), .Y(new_n1382));
  NAND2X1  g1184(.A(new_n1274), .B(new_n1271), .Y(new_n1383));
  MX2X1    g1185(.A(new_n1383), .B(new_n1353), .S0(new_n1290), .Y(new_n1384));
  INVX1    g1186(.A(new_n1384), .Y(new_n1385));
  AND2X1   g1187(.A(new_n1262), .B(new_n1261), .Y(new_n1386));
  NAND3X1  g1188(.A(new_n1386), .B(new_n1385), .C(new_n1382), .Y(new_n1387));
  OR2X1    g1189(.A(new_n1148), .B(new_n1147), .Y(new_n1388));
  OR4X1    g1190(.A(new_n1388), .B(new_n1387), .C(new_n1379), .D(new_n1366), .Y(new_n1389));
  NOR4X1   g1191(.A(new_n1389), .B(new_n1351), .C(new_n1337), .D(new_n1322), .Y(new_n1390));
  OR2X1    g1192(.A(new_n1372), .B(new_n1369), .Y(new_n1391));
  OR2X1    g1193(.A(new_n1378), .B(new_n1375), .Y(new_n1392));
  NOR2X1   g1194(.A(new_n1279), .B(new_n1278), .Y(new_n1393));
  NOR2X1   g1195(.A(new_n1317), .B(new_n1281), .Y(new_n1394));
  NOR2X1   g1196(.A(new_n1290), .B(new_n1281), .Y(new_n1395));
  OR2X1    g1197(.A(new_n1384), .B(new_n1381), .Y(new_n1396));
  OR4X1    g1198(.A(new_n1396), .B(new_n1392), .C(new_n1391), .D(new_n1366), .Y(new_n1397));
  NOR4X1   g1199(.A(new_n1397), .B(new_n1351), .C(new_n1337), .D(new_n1322), .Y(new_n1398));
  NOR2X1   g1200(.A(new_n1321), .B(new_n1316), .Y(new_n1399));
  NOR3X1   g1201(.A(new_n1399), .B(new_n1351), .C(new_n1337), .Y(new_n1400));
  NOR4X1   g1202(.A(new_n1336), .B(new_n1332), .C(new_n1329), .D(new_n1326), .Y(new_n1401));
  NOR4X1   g1203(.A(new_n1350), .B(new_n1347), .C(new_n1344), .D(new_n1341), .Y(new_n1402));
  OAI21X1  g1204(.A0(new_n1401), .A1(new_n1351), .B0(new_n1402), .Y(new_n1403));
  NOR4X1   g1205(.A(new_n1403), .B(new_n1400), .C(new_n1398), .D(new_n1390), .Y(new_n1404));
  NOR4X1   g1206(.A(new_n1396), .B(new_n1379), .C(new_n1366), .D(new_n1296), .Y(new_n1405));
  XOR2X1   g1207(.A(new_n1405), .B(new_n1293), .Y(new_n1406));
  MX2X1    g1208(.A(new_n1406), .B(new_n1293), .S0(new_n1404), .Y(new_n1407));
  NOR3X1   g1209(.A(new_n1396), .B(new_n1379), .C(new_n1366), .Y(new_n1408));
  XOR2X1   g1210(.A(new_n1408), .B(new_n1296), .Y(new_n1409));
  MX2X1    g1211(.A(new_n1409), .B(new_n1296), .S0(new_n1404), .Y(new_n1410));
  NOR4X1   g1212(.A(new_n1397), .B(new_n1303), .C(new_n1296), .D(new_n1293), .Y(new_n1411));
  XOR2X1   g1213(.A(new_n1411), .B(new_n1300), .Y(new_n1412));
  MX2X1    g1214(.A(new_n1412), .B(new_n1300), .S0(new_n1404), .Y(new_n1413));
  NOR3X1   g1215(.A(new_n1397), .B(new_n1296), .C(new_n1293), .Y(new_n1414));
  XOR2X1   g1216(.A(new_n1414), .B(new_n1303), .Y(new_n1415));
  MX2X1    g1217(.A(new_n1415), .B(new_n1303), .S0(new_n1404), .Y(new_n1416));
  OR4X1    g1218(.A(new_n1416), .B(new_n1413), .C(new_n1410), .D(new_n1407), .Y(new_n1417));
  INVX1    g1219(.A(new_n1313), .Y(new_n1418));
  NOR4X1   g1220(.A(new_n1396), .B(new_n1379), .C(new_n1366), .D(new_n1304), .Y(new_n1419));
  AOI21X1  g1221(.A0(new_n1419), .A1(new_n1418), .B0(new_n1321), .Y(new_n1420));
  XOR2X1   g1222(.A(new_n1420), .B(new_n1316), .Y(new_n1421));
  MX2X1    g1223(.A(new_n1421), .B(new_n1316), .S0(new_n1404), .Y(new_n1422));
  INVX1    g1224(.A(new_n1321), .Y(new_n1423));
  AND2X1   g1225(.A(new_n1419), .B(new_n1418), .Y(new_n1424));
  XOR2X1   g1226(.A(new_n1424), .B(new_n1423), .Y(new_n1425));
  MX2X1    g1227(.A(new_n1425), .B(new_n1321), .S0(new_n1404), .Y(new_n1426));
  OR2X1    g1228(.A(new_n1426), .B(new_n1422), .Y(new_n1427));
  INVX1    g1229(.A(new_n1309), .Y(new_n1428));
  AND2X1   g1230(.A(new_n1419), .B(new_n1312), .Y(new_n1429));
  XOR2X1   g1231(.A(new_n1429), .B(new_n1428), .Y(new_n1430));
  INVX1    g1232(.A(new_n1430), .Y(new_n1431));
  MX2X1    g1233(.A(new_n1431), .B(new_n1309), .S0(new_n1404), .Y(new_n1432));
  INVX1    g1234(.A(new_n1312), .Y(new_n1433));
  XOR2X1   g1235(.A(new_n1419), .B(new_n1312), .Y(new_n1434));
  INVX1    g1236(.A(new_n1434), .Y(new_n1435));
  MX2X1    g1237(.A(new_n1435), .B(new_n1433), .S0(new_n1404), .Y(new_n1436));
  OR4X1    g1238(.A(new_n1436), .B(new_n1432), .C(new_n1427), .D(new_n1417), .Y(new_n1437));
  OAI21X1  g1239(.A0(new_n1397), .A1(new_n1322), .B0(new_n1399), .Y(new_n1438));
  NOR4X1   g1240(.A(new_n1438), .B(new_n1336), .C(new_n1332), .D(new_n1329), .Y(new_n1439));
  XOR2X1   g1241(.A(new_n1439), .B(new_n1326), .Y(new_n1440));
  MX2X1    g1242(.A(new_n1440), .B(new_n1326), .S0(new_n1404), .Y(new_n1441));
  NOR3X1   g1243(.A(new_n1438), .B(new_n1336), .C(new_n1332), .Y(new_n1442));
  XOR2X1   g1244(.A(new_n1442), .B(new_n1329), .Y(new_n1443));
  MX2X1    g1245(.A(new_n1443), .B(new_n1329), .S0(new_n1404), .Y(new_n1444));
  NOR2X1   g1246(.A(new_n1438), .B(new_n1336), .Y(new_n1445));
  XOR2X1   g1247(.A(new_n1445), .B(new_n1332), .Y(new_n1446));
  MX2X1    g1248(.A(new_n1446), .B(new_n1332), .S0(new_n1404), .Y(new_n1447));
  NOR4X1   g1249(.A(new_n1321), .B(new_n1316), .C(new_n1313), .D(new_n1304), .Y(new_n1448));
  OR2X1    g1250(.A(new_n1321), .B(new_n1316), .Y(new_n1449));
  AOI21X1  g1251(.A0(new_n1408), .A1(new_n1448), .B0(new_n1449), .Y(new_n1450));
  XOR2X1   g1252(.A(new_n1450), .B(new_n1336), .Y(new_n1451));
  MX2X1    g1253(.A(new_n1451), .B(new_n1336), .S0(new_n1404), .Y(new_n1452));
  OR4X1    g1254(.A(new_n1452), .B(new_n1447), .C(new_n1444), .D(new_n1441), .Y(new_n1453));
  OAI21X1  g1255(.A0(new_n1450), .A1(new_n1337), .B0(new_n1401), .Y(new_n1454));
  NOR2X1   g1256(.A(new_n1454), .B(new_n1344), .Y(new_n1455));
  XOR2X1   g1257(.A(new_n1455), .B(new_n1341), .Y(new_n1456));
  MX2X1    g1258(.A(new_n1456), .B(new_n1341), .S0(new_n1404), .Y(new_n1457));
  INVX1    g1259(.A(new_n1344), .Y(new_n1458));
  XOR2X1   g1260(.A(new_n1454), .B(new_n1458), .Y(new_n1459));
  MX2X1    g1261(.A(new_n1459), .B(new_n1344), .S0(new_n1404), .Y(new_n1460));
  NOR4X1   g1262(.A(new_n1454), .B(new_n1350), .C(new_n1344), .D(new_n1341), .Y(new_n1461));
  XOR2X1   g1263(.A(new_n1461), .B(new_n1347), .Y(new_n1462));
  MX2X1    g1264(.A(new_n1462), .B(new_n1347), .S0(new_n1404), .Y(new_n1463));
  NOR3X1   g1265(.A(new_n1454), .B(new_n1344), .C(new_n1341), .Y(new_n1464));
  XOR2X1   g1266(.A(new_n1464), .B(new_n1350), .Y(new_n1465));
  MX2X1    g1267(.A(new_n1465), .B(new_n1350), .S0(new_n1404), .Y(new_n1466));
  OR4X1    g1268(.A(new_n1466), .B(new_n1463), .C(new_n1460), .D(new_n1457), .Y(new_n1467));
  INVX1    g1269(.A(new_n1355), .Y(new_n1468));
  XOR2X1   g1270(.A(new_n1396), .B(new_n1468), .Y(new_n1469));
  MX2X1    g1271(.A(new_n1469), .B(new_n1355), .S0(new_n1404), .Y(new_n1470));
  NOR2X1   g1272(.A(new_n1396), .B(new_n1355), .Y(new_n1471));
  XOR2X1   g1273(.A(new_n1471), .B(new_n1358), .Y(new_n1472));
  MX2X1    g1274(.A(new_n1472), .B(new_n1358), .S0(new_n1404), .Y(new_n1473));
  OR2X1    g1275(.A(new_n1358), .B(new_n1355), .Y(new_n1474));
  NOR2X1   g1276(.A(new_n1396), .B(new_n1474), .Y(new_n1475));
  XOR2X1   g1277(.A(new_n1475), .B(new_n1365), .Y(new_n1476));
  MX2X1    g1278(.A(new_n1476), .B(new_n1365), .S0(new_n1404), .Y(new_n1477));
  NOR3X1   g1279(.A(new_n1396), .B(new_n1365), .C(new_n1474), .Y(new_n1478));
  XOR2X1   g1280(.A(new_n1478), .B(new_n1362), .Y(new_n1479));
  MX2X1    g1281(.A(new_n1479), .B(new_n1362), .S0(new_n1404), .Y(new_n1480));
  OR4X1    g1282(.A(new_n1480), .B(new_n1477), .C(new_n1473), .D(new_n1470), .Y(new_n1481));
  NOR3X1   g1283(.A(new_n1396), .B(new_n1369), .C(new_n1366), .Y(new_n1482));
  XOR2X1   g1284(.A(new_n1482), .B(new_n1372), .Y(new_n1483));
  MX2X1    g1285(.A(new_n1483), .B(new_n1372), .S0(new_n1404), .Y(new_n1484));
  NOR2X1   g1286(.A(new_n1396), .B(new_n1366), .Y(new_n1485));
  XOR2X1   g1287(.A(new_n1485), .B(new_n1369), .Y(new_n1486));
  MX2X1    g1288(.A(new_n1486), .B(new_n1369), .S0(new_n1404), .Y(new_n1487));
  NOR3X1   g1289(.A(new_n1396), .B(new_n1391), .C(new_n1366), .Y(new_n1488));
  XOR2X1   g1290(.A(new_n1488), .B(new_n1378), .Y(new_n1489));
  MX2X1    g1291(.A(new_n1489), .B(new_n1378), .S0(new_n1404), .Y(new_n1490));
  NOR4X1   g1292(.A(new_n1396), .B(new_n1378), .C(new_n1391), .D(new_n1366), .Y(new_n1491));
  XOR2X1   g1293(.A(new_n1491), .B(new_n1375), .Y(new_n1492));
  MX2X1    g1294(.A(new_n1492), .B(new_n1375), .S0(new_n1404), .Y(new_n1493));
  OR4X1    g1295(.A(new_n1493), .B(new_n1490), .C(new_n1487), .D(new_n1484), .Y(new_n1494));
  NAND2X1  g1296(.A(new_n1262), .B(new_n1261), .Y(new_n1495));
  NOR2X1   g1297(.A(new_n1495), .B(new_n1386), .Y(new_n1496));
  XOR2X1   g1298(.A(new_n1496), .B(new_n1381), .Y(new_n1497));
  MX2X1    g1299(.A(new_n1497), .B(new_n1382), .S0(new_n1404), .Y(new_n1498));
  XOR2X1   g1300(.A(new_n1384), .B(new_n1381), .Y(new_n1499));
  MX2X1    g1301(.A(new_n1499), .B(new_n1385), .S0(new_n1404), .Y(new_n1500));
  NOR3X1   g1302(.A(new_n1395), .B(new_n1394), .C(new_n1393), .Y(new_n1501));
  NAND3X1  g1303(.A(new_n1501), .B(new_n1500), .C(new_n1498), .Y(new_n1502));
  OR2X1    g1304(.A(new_n1148), .B(new_n1147), .Y(new_n1503));
  OR4X1    g1305(.A(new_n1503), .B(new_n1502), .C(new_n1494), .D(new_n1481), .Y(new_n1504));
  NOR4X1   g1306(.A(new_n1504), .B(new_n1467), .C(new_n1453), .D(new_n1437), .Y(new_n1505));
  OR2X1    g1307(.A(new_n1487), .B(new_n1484), .Y(new_n1506));
  OR2X1    g1308(.A(new_n1493), .B(new_n1490), .Y(new_n1507));
  OR2X1    g1309(.A(new_n1279), .B(new_n1278), .Y(new_n1508));
  NAND3X1  g1310(.A(new_n1508), .B(new_n1500), .C(new_n1498), .Y(new_n1510));
  OR4X1    g1311(.A(new_n1510), .B(new_n1507), .C(new_n1506), .D(new_n1481), .Y(new_n1511));
  NOR4X1   g1312(.A(new_n1511), .B(new_n1467), .C(new_n1453), .D(new_n1437), .Y(new_n1512));
  NOR3X1   g1313(.A(new_n1432), .B(new_n1426), .C(new_n1422), .Y(new_n1513));
  NOR3X1   g1314(.A(new_n1513), .B(new_n1467), .C(new_n1453), .Y(new_n1514));
  NOR4X1   g1315(.A(new_n1452), .B(new_n1447), .C(new_n1444), .D(new_n1441), .Y(new_n1515));
  NOR4X1   g1316(.A(new_n1466), .B(new_n1463), .C(new_n1460), .D(new_n1457), .Y(new_n1516));
  OAI21X1  g1317(.A0(new_n1515), .A1(new_n1467), .B0(new_n1516), .Y(new_n1517));
  NOR4X1   g1318(.A(new_n1517), .B(new_n1514), .C(new_n1512), .D(new_n1505), .Y(new_n1518));
  NOR4X1   g1319(.A(new_n1510), .B(new_n1494), .C(new_n1481), .D(new_n1410), .Y(new_n1519));
  XOR2X1   g1320(.A(new_n1519), .B(new_n1407), .Y(new_n1520));
  MX2X1    g1321(.A(new_n1520), .B(new_n1407), .S0(new_n1518), .Y(new_n1521));
  NOR3X1   g1322(.A(new_n1510), .B(new_n1494), .C(new_n1481), .Y(new_n1522));
  XOR2X1   g1323(.A(new_n1522), .B(new_n1410), .Y(new_n1523));
  MX2X1    g1324(.A(new_n1523), .B(new_n1410), .S0(new_n1518), .Y(new_n1524));
  INVX1    g1325(.A(new_n1416), .Y(new_n1525));
  OR2X1    g1326(.A(new_n1410), .B(new_n1407), .Y(new_n1526));
  OR4X1    g1327(.A(new_n1510), .B(new_n1494), .C(new_n1481), .D(new_n1526), .Y(new_n1527));
  XOR2X1   g1328(.A(new_n1527), .B(new_n1525), .Y(new_n1528));
  MX2X1    g1329(.A(new_n1528), .B(new_n1416), .S0(new_n1518), .Y(new_n1529));
  NOR2X1   g1330(.A(new_n1527), .B(new_n1416), .Y(new_n1530));
  XOR2X1   g1331(.A(new_n1530), .B(new_n1413), .Y(new_n1531));
  MX2X1    g1332(.A(new_n1531), .B(new_n1413), .S0(new_n1518), .Y(new_n1532));
  OR4X1    g1333(.A(new_n1532), .B(new_n1529), .C(new_n1524), .D(new_n1521), .Y(new_n1533));
  MX2X1    g1334(.A(new_n1430), .B(new_n1428), .S0(new_n1404), .Y(new_n1534));
  OR4X1    g1335(.A(new_n1510), .B(new_n1494), .C(new_n1481), .D(new_n1417), .Y(new_n1535));
  OAI21X1  g1336(.A0(new_n1535), .A1(new_n1436), .B0(new_n1534), .Y(new_n1536));
  NOR2X1   g1337(.A(new_n1536), .B(new_n1426), .Y(new_n1537));
  XOR2X1   g1338(.A(new_n1537), .B(new_n1422), .Y(new_n1538));
  MX2X1    g1339(.A(new_n1538), .B(new_n1422), .S0(new_n1518), .Y(new_n1539));
  INVX1    g1340(.A(new_n1436), .Y(new_n1540));
  NOR4X1   g1341(.A(new_n1510), .B(new_n1494), .C(new_n1481), .D(new_n1417), .Y(new_n1541));
  AOI21X1  g1342(.A0(new_n1541), .A1(new_n1540), .B0(new_n1432), .Y(new_n1542));
  XOR2X1   g1343(.A(new_n1542), .B(new_n1426), .Y(new_n1543));
  MX2X1    g1344(.A(new_n1543), .B(new_n1426), .S0(new_n1518), .Y(new_n1544));
  AND2X1   g1345(.A(new_n1541), .B(new_n1540), .Y(new_n1545));
  XOR2X1   g1346(.A(new_n1545), .B(new_n1534), .Y(new_n1546));
  MX2X1    g1347(.A(new_n1546), .B(new_n1432), .S0(new_n1518), .Y(new_n1547));
  XOR2X1   g1348(.A(new_n1535), .B(new_n1436), .Y(new_n1548));
  MX2X1    g1349(.A(new_n1548), .B(new_n1540), .S0(new_n1518), .Y(new_n1549));
  OR2X1    g1350(.A(new_n1549), .B(new_n1547), .Y(new_n1550));
  OR4X1    g1351(.A(new_n1550), .B(new_n1544), .C(new_n1539), .D(new_n1533), .Y(new_n1551));
  OAI21X1  g1352(.A0(new_n1511), .A1(new_n1437), .B0(new_n1513), .Y(new_n1552));
  NOR4X1   g1353(.A(new_n1552), .B(new_n1452), .C(new_n1447), .D(new_n1444), .Y(new_n1553));
  XOR2X1   g1354(.A(new_n1553), .B(new_n1441), .Y(new_n1554));
  MX2X1    g1355(.A(new_n1554), .B(new_n1441), .S0(new_n1518), .Y(new_n1555));
  NOR3X1   g1356(.A(new_n1552), .B(new_n1452), .C(new_n1447), .Y(new_n1556));
  XOR2X1   g1357(.A(new_n1556), .B(new_n1444), .Y(new_n1557));
  MX2X1    g1358(.A(new_n1557), .B(new_n1444), .S0(new_n1518), .Y(new_n1558));
  NOR2X1   g1359(.A(new_n1552), .B(new_n1452), .Y(new_n1559));
  XOR2X1   g1360(.A(new_n1559), .B(new_n1447), .Y(new_n1560));
  MX2X1    g1361(.A(new_n1560), .B(new_n1447), .S0(new_n1518), .Y(new_n1561));
  NOR4X1   g1362(.A(new_n1436), .B(new_n1432), .C(new_n1427), .D(new_n1417), .Y(new_n1562));
  NOR2X1   g1363(.A(new_n1426), .B(new_n1422), .Y(new_n1563));
  OAI21X1  g1364(.A0(new_n1534), .A1(new_n1427), .B0(new_n1563), .Y(new_n1564));
  AOI21X1  g1365(.A0(new_n1522), .A1(new_n1562), .B0(new_n1564), .Y(new_n1565));
  XOR2X1   g1366(.A(new_n1565), .B(new_n1452), .Y(new_n1566));
  MX2X1    g1367(.A(new_n1566), .B(new_n1452), .S0(new_n1518), .Y(new_n1567));
  OR4X1    g1368(.A(new_n1567), .B(new_n1561), .C(new_n1558), .D(new_n1555), .Y(new_n1568));
  INVX1    g1369(.A(new_n1457), .Y(new_n1569));
  OR4X1    g1370(.A(new_n1517), .B(new_n1514), .C(new_n1512), .D(new_n1505), .Y(new_n1570));
  OAI21X1  g1371(.A0(new_n1565), .A1(new_n1453), .B0(new_n1515), .Y(new_n1571));
  NOR3X1   g1372(.A(new_n1571), .B(new_n1460), .C(new_n1457), .Y(new_n1572));
  INVX1    g1373(.A(new_n1460), .Y(new_n1573));
  INVX1    g1374(.A(new_n1453), .Y(new_n1574));
  INVX1    g1375(.A(new_n1515), .Y(new_n1575));
  AOI21X1  g1376(.A0(new_n1552), .A1(new_n1574), .B0(new_n1575), .Y(new_n1576));
  AOI21X1  g1377(.A0(new_n1576), .A1(new_n1573), .B0(new_n1569), .Y(new_n1577));
  OAI21X1  g1378(.A0(new_n1577), .A1(new_n1572), .B0(new_n1570), .Y(new_n1578));
  OAI21X1  g1379(.A0(new_n1570), .A1(new_n1569), .B0(new_n1578), .Y(new_n1579));
  XOR2X1   g1380(.A(new_n1571), .B(new_n1573), .Y(new_n1580));
  MX2X1    g1381(.A(new_n1580), .B(new_n1460), .S0(new_n1518), .Y(new_n1581));
  NOR4X1   g1382(.A(new_n1571), .B(new_n1466), .C(new_n1460), .D(new_n1457), .Y(new_n1582));
  XOR2X1   g1383(.A(new_n1582), .B(new_n1463), .Y(new_n1583));
  MX2X1    g1384(.A(new_n1583), .B(new_n1463), .S0(new_n1518), .Y(new_n1584));
  NOR3X1   g1385(.A(new_n1571), .B(new_n1460), .C(new_n1457), .Y(new_n1585));
  XOR2X1   g1386(.A(new_n1585), .B(new_n1466), .Y(new_n1586));
  MX2X1    g1387(.A(new_n1586), .B(new_n1466), .S0(new_n1518), .Y(new_n1587));
  OR4X1    g1388(.A(new_n1587), .B(new_n1584), .C(new_n1581), .D(new_n1579), .Y(new_n1588));
  INVX1    g1389(.A(new_n1470), .Y(new_n1589));
  XOR2X1   g1390(.A(new_n1510), .B(new_n1589), .Y(new_n1590));
  MX2X1    g1391(.A(new_n1590), .B(new_n1470), .S0(new_n1518), .Y(new_n1591));
  NOR2X1   g1392(.A(new_n1510), .B(new_n1470), .Y(new_n1592));
  XOR2X1   g1393(.A(new_n1592), .B(new_n1473), .Y(new_n1593));
  MX2X1    g1394(.A(new_n1593), .B(new_n1473), .S0(new_n1518), .Y(new_n1594));
  OR2X1    g1395(.A(new_n1473), .B(new_n1470), .Y(new_n1595));
  NOR2X1   g1396(.A(new_n1510), .B(new_n1595), .Y(new_n1596));
  XOR2X1   g1397(.A(new_n1596), .B(new_n1477), .Y(new_n1597));
  MX2X1    g1398(.A(new_n1597), .B(new_n1477), .S0(new_n1518), .Y(new_n1598));
  NOR3X1   g1399(.A(new_n1510), .B(new_n1477), .C(new_n1595), .Y(new_n1599));
  XOR2X1   g1400(.A(new_n1599), .B(new_n1480), .Y(new_n1600));
  MX2X1    g1401(.A(new_n1600), .B(new_n1480), .S0(new_n1518), .Y(new_n1601));
  OR4X1    g1402(.A(new_n1601), .B(new_n1598), .C(new_n1594), .D(new_n1591), .Y(new_n1602));
  NOR2X1   g1403(.A(new_n1510), .B(new_n1481), .Y(new_n1603));
  XOR2X1   g1404(.A(new_n1603), .B(new_n1487), .Y(new_n1604));
  MX2X1    g1405(.A(new_n1604), .B(new_n1487), .S0(new_n1518), .Y(new_n1605));
  NOR3X1   g1406(.A(new_n1510), .B(new_n1487), .C(new_n1481), .Y(new_n1606));
  XOR2X1   g1407(.A(new_n1606), .B(new_n1484), .Y(new_n1607));
  MX2X1    g1408(.A(new_n1607), .B(new_n1484), .S0(new_n1518), .Y(new_n1608));
  NOR3X1   g1409(.A(new_n1510), .B(new_n1506), .C(new_n1481), .Y(new_n1609));
  XOR2X1   g1410(.A(new_n1609), .B(new_n1490), .Y(new_n1610));
  MX2X1    g1411(.A(new_n1610), .B(new_n1490), .S0(new_n1518), .Y(new_n1611));
  NOR4X1   g1412(.A(new_n1510), .B(new_n1490), .C(new_n1506), .D(new_n1481), .Y(new_n1612));
  XOR2X1   g1413(.A(new_n1612), .B(new_n1493), .Y(new_n1613));
  MX2X1    g1414(.A(new_n1613), .B(new_n1493), .S0(new_n1518), .Y(new_n1614));
  OR4X1    g1415(.A(new_n1614), .B(new_n1611), .C(new_n1608), .D(new_n1605), .Y(new_n1615));
  NOR2X1   g1416(.A(new_n1395), .B(new_n1394), .Y(new_n1616));
  XOR2X1   g1417(.A(new_n1518), .B(new_n1508), .Y(new_n1617));
  INVX1    g1418(.A(new_n1498), .Y(new_n1618));
  NOR2X1   g1419(.A(new_n1262), .B(new_n1261), .Y(new_n1619));
  NOR2X1   g1420(.A(new_n1619), .B(new_n1501), .Y(new_n1620));
  XOR2X1   g1421(.A(new_n1620), .B(new_n1498), .Y(new_n1621));
  MX2X1    g1422(.A(new_n1621), .B(new_n1618), .S0(new_n1518), .Y(new_n1622));
  INVX1    g1423(.A(new_n1500), .Y(new_n1623));
  AND2X1   g1424(.A(new_n1508), .B(new_n1498), .Y(new_n1624));
  XOR2X1   g1425(.A(new_n1624), .B(new_n1623), .Y(new_n1625));
  MX2X1    g1426(.A(new_n1625), .B(new_n1623), .S0(new_n1518), .Y(new_n1626));
  OR4X1    g1427(.A(new_n1626), .B(new_n1622), .C(new_n1617), .D(new_n1616), .Y(new_n1627));
  NAND2X1  g1428(.A(new_n1290), .B(new_n1265), .Y(new_n1628));
  OR2X1    g1429(.A(new_n1290), .B(new_n1264), .Y(new_n1629));
  NAND2X1  g1430(.A(new_n1629), .B(new_n1628), .Y(new_n1630));
  OR4X1    g1431(.A(new_n1630), .B(new_n1627), .C(new_n1615), .D(new_n1602), .Y(new_n1631));
  NOR4X1   g1432(.A(new_n1631), .B(new_n1588), .C(new_n1568), .D(new_n1551), .Y(new_n1632));
  OR2X1    g1433(.A(new_n1608), .B(new_n1605), .Y(new_n1633));
  OR2X1    g1434(.A(new_n1614), .B(new_n1611), .Y(new_n1634));
  OR4X1    g1435(.A(new_n1627), .B(new_n1634), .C(new_n1633), .D(new_n1602), .Y(new_n1635));
  NOR4X1   g1436(.A(new_n1635), .B(new_n1588), .C(new_n1568), .D(new_n1551), .Y(new_n1636));
  NOR4X1   g1437(.A(new_n1549), .B(new_n1547), .C(new_n1544), .D(new_n1539), .Y(new_n1637));
  NOR3X1   g1438(.A(new_n1637), .B(new_n1588), .C(new_n1568), .Y(new_n1638));
  NOR4X1   g1439(.A(new_n1567), .B(new_n1561), .C(new_n1558), .D(new_n1555), .Y(new_n1639));
  NOR4X1   g1440(.A(new_n1587), .B(new_n1584), .C(new_n1581), .D(new_n1579), .Y(new_n1640));
  OAI21X1  g1441(.A0(new_n1639), .A1(new_n1588), .B0(new_n1640), .Y(new_n1641));
  NOR4X1   g1442(.A(new_n1641), .B(new_n1638), .C(new_n1636), .D(new_n1632), .Y(new_n1642));
  NOR4X1   g1443(.A(new_n1627), .B(new_n1615), .C(new_n1602), .D(new_n1524), .Y(new_n1643));
  XOR2X1   g1444(.A(new_n1643), .B(new_n1521), .Y(new_n1644));
  MX2X1    g1445(.A(new_n1644), .B(new_n1521), .S0(new_n1642), .Y(new_n1645));
  OAI21X1  g1446(.A0(new_n1635), .A1(new_n1551), .B0(new_n1637), .Y(new_n1646));
  NOR4X1   g1447(.A(new_n1646), .B(new_n1567), .C(new_n1561), .D(new_n1558), .Y(new_n1647));
  XOR2X1   g1448(.A(new_n1647), .B(new_n1555), .Y(new_n1648));
  MX2X1    g1449(.A(new_n1648), .B(new_n1555), .S0(new_n1642), .Y(new_n1649));
  NOR3X1   g1450(.A(new_n1646), .B(new_n1567), .C(new_n1561), .Y(new_n1650));
  XOR2X1   g1451(.A(new_n1650), .B(new_n1558), .Y(new_n1651));
  MX2X1    g1452(.A(new_n1651), .B(new_n1558), .S0(new_n1642), .Y(new_n1652));
  NOR2X1   g1453(.A(new_n1646), .B(new_n1567), .Y(new_n1653));
  XOR2X1   g1454(.A(new_n1653), .B(new_n1561), .Y(new_n1654));
  MX2X1    g1455(.A(new_n1654), .B(new_n1561), .S0(new_n1642), .Y(new_n1655));
  NOR4X1   g1456(.A(new_n1550), .B(new_n1544), .C(new_n1539), .D(new_n1533), .Y(new_n1656));
  NOR3X1   g1457(.A(new_n1627), .B(new_n1615), .C(new_n1602), .Y(new_n1657));
  OR4X1    g1458(.A(new_n1549), .B(new_n1547), .C(new_n1544), .D(new_n1539), .Y(new_n1658));
  AOI21X1  g1459(.A0(new_n1657), .A1(new_n1656), .B0(new_n1658), .Y(new_n1659));
  XOR2X1   g1460(.A(new_n1659), .B(new_n1567), .Y(new_n1660));
  MX2X1    g1461(.A(new_n1660), .B(new_n1567), .S0(new_n1642), .Y(new_n1661));
  OR4X1    g1462(.A(new_n1661), .B(new_n1655), .C(new_n1652), .D(new_n1649), .Y(new_n1662));
  OAI21X1  g1463(.A0(new_n1659), .A1(new_n1568), .B0(new_n1639), .Y(new_n1663));
  NOR2X1   g1464(.A(new_n1663), .B(new_n1581), .Y(new_n1664));
  XOR2X1   g1465(.A(new_n1664), .B(new_n1579), .Y(new_n1665));
  MX2X1    g1466(.A(new_n1665), .B(new_n1579), .S0(new_n1642), .Y(new_n1666));
  INVX1    g1467(.A(new_n1581), .Y(new_n1667));
  XOR2X1   g1468(.A(new_n1663), .B(new_n1667), .Y(new_n1668));
  MX2X1    g1469(.A(new_n1668), .B(new_n1581), .S0(new_n1642), .Y(new_n1669));
  NOR4X1   g1470(.A(new_n1663), .B(new_n1587), .C(new_n1581), .D(new_n1579), .Y(new_n1670));
  XOR2X1   g1471(.A(new_n1670), .B(new_n1584), .Y(new_n1671));
  MX2X1    g1472(.A(new_n1671), .B(new_n1584), .S0(new_n1642), .Y(new_n1672));
  NOR3X1   g1473(.A(new_n1663), .B(new_n1581), .C(new_n1579), .Y(new_n1673));
  XOR2X1   g1474(.A(new_n1673), .B(new_n1587), .Y(new_n1674));
  MX2X1    g1475(.A(new_n1674), .B(new_n1587), .S0(new_n1642), .Y(new_n1675));
  OR4X1    g1476(.A(new_n1675), .B(new_n1672), .C(new_n1669), .D(new_n1666), .Y(new_n1676));
  AND2X1   g1477(.A(new_n1629), .B(new_n1628), .Y(new_n1677));
  INVX1    g1478(.A(new_n1616), .Y(new_n1678));
  XOR2X1   g1479(.A(new_n1617), .B(new_n1678), .Y(new_n1679));
  MX2X1    g1480(.A(new_n1679), .B(new_n1617), .S0(new_n1642), .Y(new_n1680));
  OR2X1    g1481(.A(new_n1680), .B(new_n1677), .Y(new_n1681));
  XOR2X1   g1482(.A(new_n1642), .B(new_n1678), .Y(new_n1682));
  NOR3X1   g1483(.A(new_n1622), .B(new_n1617), .C(new_n1616), .Y(new_n1683));
  XOR2X1   g1484(.A(new_n1683), .B(new_n1626), .Y(new_n1684));
  MX2X1    g1485(.A(new_n1684), .B(new_n1626), .S0(new_n1642), .Y(new_n1685));
  NOR2X1   g1486(.A(new_n1617), .B(new_n1616), .Y(new_n1686));
  XOR2X1   g1487(.A(new_n1622), .B(new_n1686), .Y(new_n1687));
  MX2X1    g1488(.A(new_n1687), .B(new_n1622), .S0(new_n1642), .Y(new_n1688));
  NOR2X1   g1489(.A(new_n1627), .B(new_n1591), .Y(new_n1689));
  XOR2X1   g1490(.A(new_n1689), .B(new_n1594), .Y(new_n1690));
  MX2X1    g1491(.A(new_n1690), .B(new_n1594), .S0(new_n1642), .Y(new_n1691));
  OR4X1    g1492(.A(new_n1691), .B(new_n1688), .C(new_n1685), .D(new_n1682), .Y(new_n1692));
  INVX1    g1493(.A(new_n1611), .Y(new_n1693));
  OR4X1    g1494(.A(new_n1627), .B(new_n1608), .C(new_n1605), .D(new_n1602), .Y(new_n1694));
  XOR2X1   g1495(.A(new_n1694), .B(new_n1611), .Y(new_n1695));
  MX2X1    g1496(.A(new_n1695), .B(new_n1693), .S0(new_n1642), .Y(new_n1696));
  INVX1    g1497(.A(new_n1605), .Y(new_n1697));
  OR2X1    g1498(.A(new_n1627), .B(new_n1602), .Y(new_n1698));
  XOR2X1   g1499(.A(new_n1698), .B(new_n1605), .Y(new_n1699));
  MX2X1    g1500(.A(new_n1699), .B(new_n1697), .S0(new_n1642), .Y(new_n1700));
  INVX1    g1501(.A(new_n1614), .Y(new_n1701));
  NOR4X1   g1502(.A(new_n1627), .B(new_n1611), .C(new_n1633), .D(new_n1602), .Y(new_n1702));
  XOR2X1   g1503(.A(new_n1702), .B(new_n1701), .Y(new_n1703));
  MX2X1    g1504(.A(new_n1703), .B(new_n1701), .S0(new_n1642), .Y(new_n1704));
  NAND3X1  g1505(.A(new_n1704), .B(new_n1700), .C(new_n1696), .Y(new_n1705));
  INVX1    g1506(.A(new_n1627), .Y(new_n1706));
  XOR2X1   g1507(.A(new_n1706), .B(new_n1591), .Y(new_n1707));
  MX2X1    g1508(.A(new_n1707), .B(new_n1591), .S0(new_n1642), .Y(new_n1708));
  OR2X1    g1509(.A(new_n1594), .B(new_n1591), .Y(new_n1709));
  NOR3X1   g1510(.A(new_n1627), .B(new_n1598), .C(new_n1709), .Y(new_n1710));
  XOR2X1   g1511(.A(new_n1710), .B(new_n1601), .Y(new_n1711));
  MX2X1    g1512(.A(new_n1711), .B(new_n1601), .S0(new_n1642), .Y(new_n1712));
  NOR2X1   g1513(.A(new_n1627), .B(new_n1709), .Y(new_n1713));
  XOR2X1   g1514(.A(new_n1713), .B(new_n1598), .Y(new_n1714));
  MX2X1    g1515(.A(new_n1714), .B(new_n1598), .S0(new_n1642), .Y(new_n1715));
  NOR3X1   g1516(.A(new_n1627), .B(new_n1605), .C(new_n1602), .Y(new_n1716));
  XOR2X1   g1517(.A(new_n1716), .B(new_n1608), .Y(new_n1717));
  MX2X1    g1518(.A(new_n1717), .B(new_n1608), .S0(new_n1642), .Y(new_n1718));
  OR4X1    g1519(.A(new_n1718), .B(new_n1715), .C(new_n1712), .D(new_n1708), .Y(new_n1719));
  OR4X1    g1520(.A(new_n1719), .B(new_n1705), .C(new_n1692), .D(new_n1681), .Y(new_n1720));
  NOR4X1   g1521(.A(new_n1627), .B(new_n1615), .C(new_n1602), .D(new_n1533), .Y(new_n1721));
  NOR4X1   g1522(.A(new_n1721), .B(new_n1549), .C(new_n1547), .D(new_n1544), .Y(new_n1722));
  XOR2X1   g1523(.A(new_n1722), .B(new_n1539), .Y(new_n1723));
  MX2X1    g1524(.A(new_n1723), .B(new_n1539), .S0(new_n1642), .Y(new_n1724));
  NOR3X1   g1525(.A(new_n1721), .B(new_n1549), .C(new_n1547), .Y(new_n1725));
  XOR2X1   g1526(.A(new_n1725), .B(new_n1544), .Y(new_n1726));
  MX2X1    g1527(.A(new_n1726), .B(new_n1544), .S0(new_n1642), .Y(new_n1727));
  NOR2X1   g1528(.A(new_n1721), .B(new_n1549), .Y(new_n1728));
  XOR2X1   g1529(.A(new_n1728), .B(new_n1547), .Y(new_n1729));
  MX2X1    g1530(.A(new_n1729), .B(new_n1547), .S0(new_n1642), .Y(new_n1730));
  XOR2X1   g1531(.A(new_n1721), .B(new_n1549), .Y(new_n1731));
  INVX1    g1532(.A(new_n1731), .Y(new_n1732));
  MX2X1    g1533(.A(new_n1732), .B(new_n1549), .S0(new_n1642), .Y(new_n1733));
  OR4X1    g1534(.A(new_n1733), .B(new_n1730), .C(new_n1727), .D(new_n1724), .Y(new_n1734));
  XOR2X1   g1535(.A(new_n1657), .B(new_n1524), .Y(new_n1735));
  MX2X1    g1536(.A(new_n1735), .B(new_n1524), .S0(new_n1642), .Y(new_n1736));
  INVX1    g1537(.A(new_n1532), .Y(new_n1737));
  NOR4X1   g1538(.A(new_n1635), .B(new_n1529), .C(new_n1524), .D(new_n1521), .Y(new_n1738));
  XOR2X1   g1539(.A(new_n1738), .B(new_n1737), .Y(new_n1739));
  MX2X1    g1540(.A(new_n1739), .B(new_n1737), .S0(new_n1642), .Y(new_n1740));
  NOR3X1   g1541(.A(new_n1635), .B(new_n1524), .C(new_n1521), .Y(new_n1741));
  XOR2X1   g1542(.A(new_n1741), .B(new_n1529), .Y(new_n1742));
  MX2X1    g1543(.A(new_n1742), .B(new_n1529), .S0(new_n1642), .Y(new_n1743));
  OR4X1    g1544(.A(new_n1743), .B(new_n1740), .C(new_n1736), .D(new_n1645), .Y(new_n1744));
  OR2X1    g1545(.A(new_n1744), .B(new_n1734), .Y(new_n1745));
  NOR4X1   g1546(.A(new_n1745), .B(new_n1720), .C(new_n1676), .D(new_n1662), .Y(new_n1746));
  NOR4X1   g1547(.A(new_n1733), .B(new_n1730), .C(new_n1727), .D(new_n1724), .Y(new_n1747));
  OR4X1    g1548(.A(new_n1733), .B(new_n1730), .C(new_n1727), .D(new_n1724), .Y(new_n1748));
  AOI21X1  g1549(.A0(new_n1740), .A1(new_n1747), .B0(new_n1748), .Y(new_n1749));
  NOR3X1   g1550(.A(new_n1749), .B(new_n1676), .C(new_n1662), .Y(new_n1750));
  NOR4X1   g1551(.A(new_n1661), .B(new_n1655), .C(new_n1652), .D(new_n1649), .Y(new_n1751));
  NOR2X1   g1552(.A(new_n1751), .B(new_n1676), .Y(new_n1752));
  OR4X1    g1553(.A(new_n1675), .B(new_n1672), .C(new_n1669), .D(new_n1666), .Y(new_n1753));
  NOR4X1   g1554(.A(new_n1753), .B(new_n1752), .C(new_n1750), .D(new_n1746), .Y(new_n1754));
  NOR2X1   g1555(.A(new_n1736), .B(new_n1720), .Y(new_n1755));
  XOR2X1   g1556(.A(new_n1755), .B(new_n1645), .Y(new_n1756));
  MX2X1    g1557(.A(new_n1756), .B(new_n1645), .S0(new_n1754), .Y(new_n1757));
  NOR4X1   g1558(.A(new_n1719), .B(new_n1705), .C(new_n1692), .D(new_n1681), .Y(new_n1758));
  NOR4X1   g1559(.A(new_n1743), .B(new_n1740), .C(new_n1736), .D(new_n1645), .Y(new_n1759));
  AND2X1   g1560(.A(new_n1759), .B(new_n1747), .Y(new_n1760));
  INVX1    g1561(.A(new_n1739), .Y(new_n1761));
  MX2X1    g1562(.A(new_n1761), .B(new_n1532), .S0(new_n1642), .Y(new_n1762));
  NOR4X1   g1563(.A(new_n1733), .B(new_n1730), .C(new_n1727), .D(new_n1724), .Y(new_n1763));
  OAI21X1  g1564(.A0(new_n1762), .A1(new_n1734), .B0(new_n1763), .Y(new_n1764));
  AOI21X1  g1565(.A0(new_n1760), .A1(new_n1758), .B0(new_n1764), .Y(new_n1765));
  OAI21X1  g1566(.A0(new_n1765), .A1(new_n1662), .B0(new_n1751), .Y(new_n1766));
  NOR4X1   g1567(.A(new_n1766), .B(new_n1675), .C(new_n1669), .D(new_n1666), .Y(new_n1767));
  XOR2X1   g1568(.A(new_n1767), .B(new_n1672), .Y(new_n1768));
  MX2X1    g1569(.A(new_n1768), .B(new_n1672), .S0(new_n1754), .Y(new_n1769));
  OR2X1    g1570(.A(new_n1736), .B(new_n1645), .Y(new_n1770));
  NOR3X1   g1571(.A(new_n1743), .B(new_n1770), .C(new_n1720), .Y(new_n1771));
  XOR2X1   g1572(.A(new_n1771), .B(new_n1740), .Y(new_n1772));
  MX2X1    g1573(.A(new_n1772), .B(new_n1762), .S0(new_n1754), .Y(new_n1773));
  NOR2X1   g1574(.A(new_n1770), .B(new_n1720), .Y(new_n1774));
  XOR2X1   g1575(.A(new_n1774), .B(new_n1743), .Y(new_n1775));
  MX2X1    g1576(.A(new_n1775), .B(new_n1743), .S0(new_n1754), .Y(new_n1776));
  AND2X1   g1577(.A(new_n1776), .B(new_n1773), .Y(new_n1777));
  OAI21X1  g1578(.A0(new_n1744), .A1(new_n1720), .B0(new_n1762), .Y(new_n1778));
  NOR4X1   g1579(.A(new_n1778), .B(new_n1733), .C(new_n1730), .D(new_n1727), .Y(new_n1779));
  XOR2X1   g1580(.A(new_n1779), .B(new_n1724), .Y(new_n1780));
  MX2X1    g1581(.A(new_n1780), .B(new_n1724), .S0(new_n1754), .Y(new_n1781));
  NOR3X1   g1582(.A(new_n1778), .B(new_n1733), .C(new_n1730), .Y(new_n1782));
  XOR2X1   g1583(.A(new_n1782), .B(new_n1727), .Y(new_n1783));
  MX2X1    g1584(.A(new_n1783), .B(new_n1727), .S0(new_n1754), .Y(new_n1784));
  NAND2X1  g1585(.A(new_n1754), .B(new_n1730), .Y(new_n1785));
  OR4X1    g1586(.A(new_n1753), .B(new_n1752), .C(new_n1750), .D(new_n1746), .Y(new_n1786));
  NOR3X1   g1587(.A(new_n1778), .B(new_n1733), .C(new_n1730), .Y(new_n1787));
  INVX1    g1588(.A(new_n1730), .Y(new_n1788));
  INVX1    g1589(.A(new_n1733), .Y(new_n1789));
  AOI21X1  g1590(.A0(new_n1759), .A1(new_n1758), .B0(new_n1740), .Y(new_n1790));
  AOI21X1  g1591(.A0(new_n1790), .A1(new_n1789), .B0(new_n1788), .Y(new_n1791));
  OAI21X1  g1592(.A0(new_n1791), .A1(new_n1787), .B0(new_n1786), .Y(new_n1792));
  XOR2X1   g1593(.A(new_n1778), .B(new_n1733), .Y(new_n1793));
  MX2X1    g1594(.A(new_n1793), .B(new_n1789), .S0(new_n1754), .Y(new_n1794));
  NAND3X1  g1595(.A(new_n1794), .B(new_n1792), .C(new_n1785), .Y(new_n1795));
  OR4X1    g1596(.A(new_n1795), .B(new_n1784), .C(new_n1781), .D(new_n1777), .Y(new_n1796));
  NAND2X1  g1597(.A(new_n1792), .B(new_n1785), .Y(new_n1797));
  XOR2X1   g1598(.A(new_n1790), .B(new_n1733), .Y(new_n1798));
  MX2X1    g1599(.A(new_n1798), .B(new_n1733), .S0(new_n1754), .Y(new_n1799));
  NOR4X1   g1600(.A(new_n1799), .B(new_n1797), .C(new_n1784), .D(new_n1781), .Y(new_n1800));
  NAND2X1  g1601(.A(new_n1800), .B(new_n1796), .Y(new_n1801));
  NOR3X1   g1602(.A(new_n1766), .B(new_n1669), .C(new_n1666), .Y(new_n1802));
  XOR2X1   g1603(.A(new_n1802), .B(new_n1675), .Y(new_n1803));
  MX2X1    g1604(.A(new_n1803), .B(new_n1675), .S0(new_n1754), .Y(new_n1804));
  NOR2X1   g1605(.A(new_n1766), .B(new_n1669), .Y(new_n1805));
  XOR2X1   g1606(.A(new_n1805), .B(new_n1666), .Y(new_n1806));
  MX2X1    g1607(.A(new_n1806), .B(new_n1666), .S0(new_n1754), .Y(new_n1807));
  NAND2X1  g1608(.A(new_n1754), .B(new_n1669), .Y(new_n1808));
  XOR2X1   g1609(.A(new_n1766), .B(new_n1669), .Y(new_n1809));
  OAI21X1  g1610(.A0(new_n1809), .A1(new_n1754), .B0(new_n1808), .Y(new_n1810));
  NOR4X1   g1611(.A(new_n1810), .B(new_n1807), .C(new_n1804), .D(new_n1769), .Y(new_n1811));
  OAI21X1  g1612(.A0(new_n1745), .A1(new_n1720), .B0(new_n1749), .Y(new_n1812));
  NOR4X1   g1613(.A(new_n1812), .B(new_n1661), .C(new_n1655), .D(new_n1652), .Y(new_n1813));
  XOR2X1   g1614(.A(new_n1813), .B(new_n1649), .Y(new_n1814));
  MX2X1    g1615(.A(new_n1814), .B(new_n1649), .S0(new_n1754), .Y(new_n1815));
  NOR3X1   g1616(.A(new_n1812), .B(new_n1661), .C(new_n1655), .Y(new_n1816));
  XOR2X1   g1617(.A(new_n1816), .B(new_n1652), .Y(new_n1817));
  MX2X1    g1618(.A(new_n1817), .B(new_n1652), .S0(new_n1754), .Y(new_n1818));
  NOR2X1   g1619(.A(new_n1812), .B(new_n1661), .Y(new_n1819));
  XOR2X1   g1620(.A(new_n1819), .B(new_n1655), .Y(new_n1820));
  MX2X1    g1621(.A(new_n1820), .B(new_n1655), .S0(new_n1754), .Y(new_n1821));
  XOR2X1   g1622(.A(new_n1765), .B(new_n1661), .Y(new_n1822));
  MX2X1    g1623(.A(new_n1822), .B(new_n1661), .S0(new_n1754), .Y(new_n1823));
  NOR4X1   g1624(.A(new_n1823), .B(new_n1821), .C(new_n1818), .D(new_n1815), .Y(new_n1824));
  NAND3X1  g1625(.A(new_n1824), .B(new_n1811), .C(new_n1801), .Y(new_n1825));
  OR4X1    g1626(.A(new_n1823), .B(new_n1821), .C(new_n1818), .D(new_n1815), .Y(new_n1826));
  OR4X1    g1627(.A(new_n1810), .B(new_n1807), .C(new_n1804), .D(new_n1769), .Y(new_n1827));
  AOI21X1  g1628(.A0(new_n1826), .A1(new_n1811), .B0(new_n1827), .Y(new_n1828));
  AND2X1   g1629(.A(new_n1828), .B(new_n1825), .Y(new_n1829));
  INVX1    g1630(.A(new_n1804), .Y(new_n1830));
  OR4X1    g1631(.A(new_n1823), .B(new_n1821), .C(new_n1818), .D(new_n1815), .Y(new_n1831));
  AOI21X1  g1632(.A0(new_n1800), .A1(new_n1796), .B0(new_n1831), .Y(new_n1832));
  NOR4X1   g1633(.A(new_n1832), .B(new_n1826), .C(new_n1810), .D(new_n1807), .Y(new_n1833));
  AND2X1   g1634(.A(new_n1833), .B(new_n1830), .Y(new_n1834));
  XOR2X1   g1635(.A(new_n1834), .B(new_n1769), .Y(new_n1835));
  MX2X1    g1636(.A(new_n1835), .B(new_n1769), .S0(new_n1829), .Y(new_n1836));
  XOR2X1   g1637(.A(new_n1833), .B(new_n1804), .Y(new_n1837));
  MX2X1    g1638(.A(new_n1837), .B(new_n1804), .S0(new_n1829), .Y(new_n1838));
  NOR3X1   g1639(.A(new_n1832), .B(new_n1826), .C(new_n1810), .Y(new_n1839));
  XOR2X1   g1640(.A(new_n1839), .B(new_n1807), .Y(new_n1840));
  MX2X1    g1641(.A(new_n1840), .B(new_n1807), .S0(new_n1829), .Y(new_n1841));
  NOR2X1   g1642(.A(new_n1832), .B(new_n1826), .Y(new_n1842));
  XOR2X1   g1643(.A(new_n1842), .B(new_n1810), .Y(new_n1843));
  MX2X1    g1644(.A(new_n1843), .B(new_n1810), .S0(new_n1829), .Y(new_n1844));
  OR4X1    g1645(.A(new_n1844), .B(new_n1841), .C(new_n1838), .D(new_n1836), .Y(new_n1845));
  NOR2X1   g1646(.A(new_n1786), .B(new_n1645), .Y(new_n1846));
  NOR2X1   g1647(.A(new_n1756), .B(new_n1754), .Y(new_n1847));
  XOR2X1   g1648(.A(new_n1829), .B(new_n1776), .Y(new_n1848));
  INVX1    g1649(.A(new_n1773), .Y(new_n1849));
  XOR2X1   g1650(.A(new_n1776), .B(new_n1849), .Y(new_n1850));
  MX2X1    g1651(.A(new_n1850), .B(new_n1849), .S0(new_n1829), .Y(new_n1851));
  OR4X1    g1652(.A(new_n1851), .B(new_n1848), .C(new_n1847), .D(new_n1846), .Y(new_n1852));
  INVX1    g1653(.A(new_n1777), .Y(new_n1853));
  NOR4X1   g1654(.A(new_n1799), .B(new_n1797), .C(new_n1784), .D(new_n1853), .Y(new_n1854));
  XOR2X1   g1655(.A(new_n1854), .B(new_n1781), .Y(new_n1855));
  MX2X1    g1656(.A(new_n1855), .B(new_n1781), .S0(new_n1829), .Y(new_n1856));
  NOR3X1   g1657(.A(new_n1799), .B(new_n1797), .C(new_n1853), .Y(new_n1857));
  XOR2X1   g1658(.A(new_n1857), .B(new_n1784), .Y(new_n1858));
  MX2X1    g1659(.A(new_n1858), .B(new_n1784), .S0(new_n1829), .Y(new_n1859));
  AND2X1   g1660(.A(new_n1794), .B(new_n1777), .Y(new_n1860));
  XOR2X1   g1661(.A(new_n1860), .B(new_n1797), .Y(new_n1861));
  MX2X1    g1662(.A(new_n1861), .B(new_n1797), .S0(new_n1829), .Y(new_n1862));
  XOR2X1   g1663(.A(new_n1799), .B(new_n1777), .Y(new_n1863));
  MX2X1    g1664(.A(new_n1863), .B(new_n1799), .S0(new_n1829), .Y(new_n1864));
  NOR4X1   g1665(.A(new_n1864), .B(new_n1862), .C(new_n1859), .D(new_n1856), .Y(new_n1865));
  OR4X1    g1666(.A(new_n1864), .B(new_n1862), .C(new_n1859), .D(new_n1856), .Y(new_n1866));
  AOI21X1  g1667(.A0(new_n1865), .A1(new_n1852), .B0(new_n1866), .Y(new_n1867));
  NOR4X1   g1668(.A(new_n1823), .B(new_n1821), .C(new_n1818), .D(new_n1801), .Y(new_n1868));
  XOR2X1   g1669(.A(new_n1868), .B(new_n1815), .Y(new_n1869));
  MX2X1    g1670(.A(new_n1869), .B(new_n1815), .S0(new_n1829), .Y(new_n1870));
  NOR3X1   g1671(.A(new_n1823), .B(new_n1821), .C(new_n1801), .Y(new_n1871));
  XOR2X1   g1672(.A(new_n1871), .B(new_n1818), .Y(new_n1872));
  MX2X1    g1673(.A(new_n1872), .B(new_n1818), .S0(new_n1829), .Y(new_n1873));
  NOR2X1   g1674(.A(new_n1823), .B(new_n1801), .Y(new_n1874));
  XOR2X1   g1675(.A(new_n1874), .B(new_n1821), .Y(new_n1875));
  MX2X1    g1676(.A(new_n1875), .B(new_n1821), .S0(new_n1829), .Y(new_n1876));
  INVX1    g1677(.A(new_n1801), .Y(new_n1877));
  XOR2X1   g1678(.A(new_n1823), .B(new_n1877), .Y(new_n1878));
  MX2X1    g1679(.A(new_n1878), .B(new_n1823), .S0(new_n1829), .Y(new_n1879));
  OR4X1    g1680(.A(new_n1879), .B(new_n1876), .C(new_n1873), .D(new_n1870), .Y(new_n1880));
  NOR3X1   g1681(.A(new_n1880), .B(new_n1867), .C(new_n1845), .Y(new_n1881));
  NOR4X1   g1682(.A(new_n1879), .B(new_n1876), .C(new_n1873), .D(new_n1870), .Y(new_n1882));
  NOR4X1   g1683(.A(new_n1844), .B(new_n1841), .C(new_n1838), .D(new_n1836), .Y(new_n1883));
  OAI21X1  g1684(.A0(new_n1882), .A1(new_n1845), .B0(new_n1883), .Y(new_n1884));
  NOR2X1   g1685(.A(new_n1884), .B(new_n1881), .Y(new_n1885));
  XOR2X1   g1686(.A(new_n1885), .B(new_n1757), .Y(new_n1886));
  INVX1    g1687(.A(new_n1736), .Y(new_n1887));
  XOR2X1   g1688(.A(new_n1736), .B(new_n1720), .Y(new_n1888));
  MX2X1    g1689(.A(new_n1888), .B(new_n1887), .S0(new_n1754), .Y(new_n1889));
  INVX1    g1690(.A(new_n1757), .Y(new_n1890));
  NOR2X1   g1691(.A(new_n1848), .B(new_n1890), .Y(new_n1891));
  XOR2X1   g1692(.A(new_n1891), .B(new_n1851), .Y(new_n1892));
  MX2X1    g1693(.A(new_n1892), .B(new_n1851), .S0(new_n1885), .Y(new_n1893));
  XOR2X1   g1694(.A(new_n1848), .B(new_n1757), .Y(new_n1894));
  MX2X1    g1695(.A(new_n1894), .B(new_n1848), .S0(new_n1885), .Y(new_n1895));
  OR4X1    g1696(.A(new_n1895), .B(new_n1893), .C(new_n1889), .D(new_n1886), .Y(new_n1896));
  NOR4X1   g1697(.A(new_n1864), .B(new_n1862), .C(new_n1859), .D(new_n1852), .Y(new_n1897));
  XOR2X1   g1698(.A(new_n1897), .B(new_n1856), .Y(new_n1898));
  MX2X1    g1699(.A(new_n1898), .B(new_n1856), .S0(new_n1885), .Y(new_n1899));
  NOR3X1   g1700(.A(new_n1864), .B(new_n1862), .C(new_n1852), .Y(new_n1900));
  XOR2X1   g1701(.A(new_n1900), .B(new_n1859), .Y(new_n1901));
  MX2X1    g1702(.A(new_n1901), .B(new_n1859), .S0(new_n1885), .Y(new_n1902));
  NOR4X1   g1703(.A(new_n1864), .B(new_n1851), .C(new_n1848), .D(new_n1890), .Y(new_n1903));
  XOR2X1   g1704(.A(new_n1903), .B(new_n1862), .Y(new_n1904));
  MX2X1    g1705(.A(new_n1904), .B(new_n1862), .S0(new_n1885), .Y(new_n1905));
  NOR3X1   g1706(.A(new_n1851), .B(new_n1848), .C(new_n1890), .Y(new_n1906));
  XOR2X1   g1707(.A(new_n1864), .B(new_n1906), .Y(new_n1907));
  MX2X1    g1708(.A(new_n1907), .B(new_n1864), .S0(new_n1885), .Y(new_n1908));
  NOR4X1   g1709(.A(new_n1908), .B(new_n1905), .C(new_n1902), .D(new_n1899), .Y(new_n1909));
  OR4X1    g1710(.A(new_n1908), .B(new_n1905), .C(new_n1902), .D(new_n1899), .Y(new_n1910));
  AOI21X1  g1711(.A0(new_n1909), .A1(new_n1896), .B0(new_n1910), .Y(new_n1911));
  OAI21X1  g1712(.A0(new_n1880), .A1(new_n1867), .B0(new_n1882), .Y(new_n1912));
  NOR4X1   g1713(.A(new_n1912), .B(new_n1844), .C(new_n1841), .D(new_n1838), .Y(new_n1913));
  XOR2X1   g1714(.A(new_n1913), .B(new_n1836), .Y(new_n1914));
  MX2X1    g1715(.A(new_n1914), .B(new_n1836), .S0(new_n1885), .Y(new_n1915));
  NOR3X1   g1716(.A(new_n1912), .B(new_n1844), .C(new_n1841), .Y(new_n1916));
  XOR2X1   g1717(.A(new_n1916), .B(new_n1838), .Y(new_n1917));
  MX2X1    g1718(.A(new_n1917), .B(new_n1838), .S0(new_n1885), .Y(new_n1918));
  NOR2X1   g1719(.A(new_n1912), .B(new_n1844), .Y(new_n1919));
  XOR2X1   g1720(.A(new_n1919), .B(new_n1841), .Y(new_n1920));
  MX2X1    g1721(.A(new_n1920), .B(new_n1841), .S0(new_n1885), .Y(new_n1921));
  NAND2X1  g1722(.A(new_n1885), .B(new_n1844), .Y(new_n1922));
  XOR2X1   g1723(.A(new_n1912), .B(new_n1844), .Y(new_n1923));
  OAI21X1  g1724(.A0(new_n1923), .A1(new_n1885), .B0(new_n1922), .Y(new_n1924));
  OR4X1    g1725(.A(new_n1924), .B(new_n1921), .C(new_n1918), .D(new_n1915), .Y(new_n1925));
  AND2X1   g1726(.A(new_n1865), .B(new_n1852), .Y(new_n1926));
  OR2X1    g1727(.A(new_n1866), .B(new_n1926), .Y(new_n1927));
  NOR4X1   g1728(.A(new_n1879), .B(new_n1876), .C(new_n1873), .D(new_n1927), .Y(new_n1928));
  XOR2X1   g1729(.A(new_n1928), .B(new_n1870), .Y(new_n1929));
  MX2X1    g1730(.A(new_n1929), .B(new_n1870), .S0(new_n1885), .Y(new_n1930));
  NOR4X1   g1731(.A(new_n1879), .B(new_n1876), .C(new_n1866), .D(new_n1926), .Y(new_n1931));
  XOR2X1   g1732(.A(new_n1931), .B(new_n1873), .Y(new_n1932));
  MX2X1    g1733(.A(new_n1932), .B(new_n1873), .S0(new_n1885), .Y(new_n1933));
  NOR3X1   g1734(.A(new_n1879), .B(new_n1866), .C(new_n1926), .Y(new_n1934));
  XOR2X1   g1735(.A(new_n1934), .B(new_n1876), .Y(new_n1935));
  MX2X1    g1736(.A(new_n1935), .B(new_n1876), .S0(new_n1885), .Y(new_n1936));
  XOR2X1   g1737(.A(new_n1879), .B(new_n1867), .Y(new_n1937));
  MX2X1    g1738(.A(new_n1937), .B(new_n1879), .S0(new_n1885), .Y(new_n1938));
  OR4X1    g1739(.A(new_n1938), .B(new_n1936), .C(new_n1933), .D(new_n1930), .Y(new_n1939));
  NOR3X1   g1740(.A(new_n1939), .B(new_n1925), .C(new_n1911), .Y(new_n1940));
  NOR4X1   g1741(.A(new_n1938), .B(new_n1936), .C(new_n1933), .D(new_n1930), .Y(new_n1941));
  NOR4X1   g1742(.A(new_n1924), .B(new_n1921), .C(new_n1918), .D(new_n1915), .Y(new_n1942));
  OAI21X1  g1743(.A0(new_n1941), .A1(new_n1925), .B0(new_n1942), .Y(new_n1943));
  OR4X1    g1744(.A(\pwm_counter[7] ), .B(\pwm_counter[6] ), .C(\pwm_counter[5] ), .D(\pwm_counter[4] ), .Y(new_n1944));
  OR4X1    g1745(.A(\pwm_counter[3] ), .B(\pwm_counter[2] ), .C(\pwm_counter[1] ), .D(\pwm_counter[0] ), .Y(new_n1945));
  OR4X1    g1746(.A(\pwm_counter[15] ), .B(\pwm_counter[14] ), .C(\pwm_counter[13] ), .D(\pwm_counter[12] ), .Y(new_n1946));
  OR4X1    g1747(.A(\pwm_counter[11] ), .B(\pwm_counter[10] ), .C(\pwm_counter[9] ), .D(\pwm_counter[8] ), .Y(new_n1947));
  NOR4X1   g1748(.A(new_n1947), .B(new_n1946), .C(new_n1945), .D(new_n1944), .Y(new_n1948));
  OAI21X1  g1749(.A0(new_n1943), .A1(new_n1940), .B0(new_n1948), .Y(new_n1949));
  INVX1    g1750(.A(new_n1948), .Y(new_n1950));
  NAND2X1  g1751(.A(new_n1950), .B(\pwm_width[0] ), .Y(new_n1951));
  NAND2X1  g1752(.A(new_n1951), .B(new_n1949), .Y(n148));
  INVX1    g1753(.A(\pwm_width[1] ), .Y(new_n1953));
  MX2X1    g1754(.A(new_n1885), .B(new_n1953), .S0(new_n1950), .Y(new_n1954));
  INVX1    g1755(.A(new_n1954), .Y(n153));
  INVX1    g1756(.A(\pwm_width[2] ), .Y(new_n1956));
  MX2X1    g1757(.A(new_n1829), .B(new_n1956), .S0(new_n1950), .Y(new_n1957));
  INVX1    g1758(.A(new_n1957), .Y(n158));
  MX2X1    g1759(.A(new_n1754), .B(\pwm_width[3] ), .S0(new_n1950), .Y(n163));
  XOR2X1   g1760(.A(new_n1754), .B(new_n1642), .Y(new_n1960));
  MX2X1    g1761(.A(new_n1960), .B(\pwm_width[4] ), .S0(new_n1950), .Y(n168));
  NOR2X1   g1762(.A(new_n1754), .B(new_n1642), .Y(new_n1962));
  XOR2X1   g1763(.A(new_n1962), .B(new_n1518), .Y(new_n1963));
  MX2X1    g1764(.A(new_n1963), .B(\pwm_width[5] ), .S0(new_n1950), .Y(n173));
  INVX1    g1765(.A(\pwm_width[6] ), .Y(new_n1965));
  INVX1    g1766(.A(new_n1642), .Y(new_n1966));
  AOI21X1  g1767(.A0(new_n1786), .A1(new_n1966), .B0(new_n1570), .Y(new_n1967));
  XOR2X1   g1768(.A(new_n1967), .B(new_n1404), .Y(new_n1968));
  MX2X1    g1769(.A(new_n1968), .B(new_n1965), .S0(new_n1950), .Y(new_n1969));
  INVX1    g1770(.A(new_n1969), .Y(n178));
  INVX1    g1771(.A(\pwm_width[7] ), .Y(new_n1971));
  AND2X1   g1772(.A(new_n1967), .B(new_n1404), .Y(new_n1972));
  XOR2X1   g1773(.A(new_n1972), .B(new_n1290), .Y(new_n1973));
  MX2X1    g1774(.A(new_n1973), .B(new_n1971), .S0(new_n1950), .Y(new_n1974));
  INVX1    g1775(.A(new_n1974), .Y(n183));
  INVX1    g1776(.A(\pwm_width[8] ), .Y(new_n1976));
  NAND2X1  g1777(.A(new_n1404), .B(new_n1290), .Y(new_n1977));
  NOR3X1   g1778(.A(new_n1977), .B(new_n1642), .C(new_n1570), .Y(new_n1978));
  NAND3X1  g1779(.A(new_n1518), .B(new_n1404), .C(new_n1290), .Y(new_n1979));
  AOI21X1  g1780(.A0(new_n1978), .A1(new_n1786), .B0(new_n1979), .Y(new_n1980));
  XOR2X1   g1781(.A(new_n1980), .B(new_n1165), .Y(new_n1981));
  MX2X1    g1782(.A(new_n1981), .B(new_n1976), .S0(new_n1950), .Y(new_n1982));
  INVX1    g1783(.A(new_n1982), .Y(n188));
  INVX1    g1784(.A(\pwm_width[9] ), .Y(new_n1984));
  AND2X1   g1785(.A(new_n1980), .B(new_n1165), .Y(new_n1985));
  XOR2X1   g1786(.A(new_n1985), .B(new_n1031), .Y(new_n1986));
  MX2X1    g1787(.A(new_n1986), .B(new_n1984), .S0(new_n1950), .Y(new_n1987));
  INVX1    g1788(.A(new_n1987), .Y(n193));
  NAND3X1  g1789(.A(new_n1980), .B(new_n1165), .C(new_n1031), .Y(new_n1989));
  XOR2X1   g1790(.A(new_n1989), .B(new_n893), .Y(new_n1990));
  MX2X1    g1791(.A(new_n1990), .B(\pwm_width[10] ), .S0(new_n1950), .Y(n198));
  INVX1    g1792(.A(\pwm_width[11] ), .Y(new_n1992));
  AND2X1   g1793(.A(new_n1989), .B(new_n893), .Y(new_n1993));
  XOR2X1   g1794(.A(new_n1993), .B(new_n781), .Y(new_n1994));
  MX2X1    g1795(.A(new_n1994), .B(new_n1992), .S0(new_n1950), .Y(new_n1995));
  INVX1    g1796(.A(new_n1995), .Y(n203));
  AND2X1   g1797(.A(new_n1165), .B(new_n1031), .Y(new_n1997));
  OAI21X1  g1798(.A0(new_n888), .A1(new_n868), .B0(new_n820), .Y(new_n1998));
  NAND4X1  g1799(.A(new_n1165), .B(new_n1031), .C(new_n893), .D(new_n820), .Y(new_n1999));
  OAI22X1  g1800(.A0(new_n1999), .A1(new_n1980), .B0(new_n1998), .B1(new_n1997), .Y(new_n2000));
  MX2X1    g1801(.A(new_n2000), .B(\pwm_width[12] ), .S0(new_n1950), .Y(n208));
  AND2X1   g1802(.A(new_n1950), .B(\pwm_width[13] ), .Y(n213));
  AND2X1   g1803(.A(new_n1950), .B(\pwm_width[14] ), .Y(n218));
  AND2X1   g1804(.A(new_n1950), .B(\pwm_width[15] ), .Y(n223));
  NAND2X1  g1805(.A(new_n1954), .B(\pwm_counter[1] ), .Y(new_n2005));
  XOR2X1   g1806(.A(n153), .B(\pwm_counter[1] ), .Y(new_n2006));
  AOI21X1  g1807(.A0(new_n1951), .A1(new_n1949), .B0(\pwm_counter[0] ), .Y(new_n2007));
  OAI21X1  g1808(.A0(new_n2007), .A1(new_n2006), .B0(new_n2005), .Y(new_n2008));
  XOR2X1   g1809(.A(n163), .B(\pwm_counter[3] ), .Y(new_n2009));
  INVX1    g1810(.A(new_n2009), .Y(new_n2010));
  XOR2X1   g1811(.A(new_n1957), .B(\pwm_counter[2] ), .Y(new_n2011));
  AND2X1   g1812(.A(new_n2011), .B(new_n2010), .Y(new_n2012));
  INVX1    g1813(.A(\pwm_counter[3] ), .Y(new_n2013));
  NAND3X1  g1814(.A(new_n2010), .B(new_n1957), .C(\pwm_counter[2] ), .Y(new_n2014));
  OAI21X1  g1815(.A0(n163), .A1(new_n2013), .B0(new_n2014), .Y(new_n2015));
  AOI21X1  g1816(.A0(new_n2012), .A1(new_n2008), .B0(new_n2015), .Y(new_n2016));
  XOR2X1   g1817(.A(n183), .B(\pwm_counter[7] ), .Y(new_n2017));
  INVX1    g1818(.A(\pwm_counter[6] ), .Y(new_n2018));
  XOR2X1   g1819(.A(new_n1969), .B(new_n2018), .Y(new_n2019));
  XOR2X1   g1820(.A(n173), .B(\pwm_counter[5] ), .Y(new_n2020));
  XOR2X1   g1821(.A(n168), .B(\pwm_counter[4] ), .Y(new_n2021));
  OR4X1    g1822(.A(new_n2021), .B(new_n2020), .C(new_n2019), .D(new_n2017), .Y(new_n2022));
  NOR2X1   g1823(.A(new_n2019), .B(new_n2017), .Y(new_n2023));
  INVX1    g1824(.A(\pwm_counter[5] ), .Y(new_n2024));
  OR2X1    g1825(.A(n173), .B(new_n2024), .Y(new_n2025));
  INVX1    g1826(.A(\pwm_counter[4] ), .Y(new_n2026));
  OR2X1    g1827(.A(n168), .B(new_n2026), .Y(new_n2027));
  OAI21X1  g1828(.A0(new_n2027), .A1(new_n2020), .B0(new_n2025), .Y(new_n2028));
  NAND2X1  g1829(.A(new_n2028), .B(new_n2023), .Y(new_n2029));
  NOR3X1   g1830(.A(new_n2017), .B(n178), .C(new_n2018), .Y(new_n2030));
  AOI21X1  g1831(.A0(new_n1974), .A1(\pwm_counter[7] ), .B0(new_n2030), .Y(new_n2031));
  AND2X1   g1832(.A(new_n2031), .B(new_n2029), .Y(new_n2032));
  OAI21X1  g1833(.A0(new_n2022), .A1(new_n2016), .B0(new_n2032), .Y(new_n2033));
  XOR2X1   g1834(.A(n203), .B(\pwm_counter[11] ), .Y(new_n2034));
  XOR2X1   g1835(.A(n198), .B(\pwm_counter[10] ), .Y(new_n2035));
  XOR2X1   g1836(.A(new_n1987), .B(\pwm_counter[9] ), .Y(new_n2036));
  XOR2X1   g1837(.A(n208), .B(\pwm_counter[12] ), .Y(new_n2037));
  XOR2X1   g1838(.A(n223), .B(\pwm_counter[15] ), .Y(new_n2038));
  XOR2X1   g1839(.A(n218), .B(\pwm_counter[14] ), .Y(new_n2039));
  XOR2X1   g1840(.A(n213), .B(\pwm_counter[13] ), .Y(new_n2040));
  NOR4X1   g1841(.A(new_n2040), .B(new_n2039), .C(new_n2038), .D(new_n2037), .Y(new_n2041));
  XOR2X1   g1842(.A(new_n1982), .B(\pwm_counter[8] ), .Y(new_n2042));
  NAND3X1  g1843(.A(new_n2042), .B(new_n2041), .C(new_n2036), .Y(new_n2043));
  NOR3X1   g1844(.A(new_n2043), .B(new_n2035), .C(new_n2034), .Y(new_n2044));
  AND2X1   g1845(.A(new_n1987), .B(\pwm_counter[9] ), .Y(new_n2045));
  AND2X1   g1846(.A(new_n1982), .B(\pwm_counter[8] ), .Y(new_n2046));
  AOI21X1  g1847(.A0(new_n2046), .A1(new_n2036), .B0(new_n2045), .Y(new_n2047));
  NOR3X1   g1848(.A(new_n2047), .B(new_n2035), .C(new_n2034), .Y(new_n2048));
  NAND2X1  g1849(.A(new_n1995), .B(\pwm_counter[11] ), .Y(new_n2049));
  INVX1    g1850(.A(\pwm_counter[10] ), .Y(new_n2050));
  OR2X1    g1851(.A(n198), .B(new_n2050), .Y(new_n2051));
  OAI21X1  g1852(.A0(new_n2051), .A1(new_n2034), .B0(new_n2049), .Y(new_n2052));
  OAI21X1  g1853(.A0(new_n2052), .A1(new_n2048), .B0(new_n2041), .Y(new_n2053));
  NOR2X1   g1854(.A(new_n2039), .B(new_n2038), .Y(new_n2054));
  INVX1    g1855(.A(\pwm_counter[13] ), .Y(new_n2055));
  AOI21X1  g1856(.A0(new_n1950), .A1(\pwm_width[13] ), .B0(new_n2055), .Y(new_n2056));
  INVX1    g1857(.A(\pwm_counter[12] ), .Y(new_n2057));
  NOR3X1   g1858(.A(new_n2040), .B(n208), .C(new_n2057), .Y(new_n2058));
  OAI21X1  g1859(.A0(new_n2058), .A1(new_n2056), .B0(new_n2054), .Y(new_n2059));
  INVX1    g1860(.A(\pwm_counter[15] ), .Y(new_n2060));
  AOI21X1  g1861(.A0(new_n1950), .A1(\pwm_width[15] ), .B0(new_n2060), .Y(new_n2061));
  INVX1    g1862(.A(\pwm_counter[14] ), .Y(new_n2062));
  NOR3X1   g1863(.A(new_n2038), .B(n218), .C(new_n2062), .Y(new_n2063));
  NOR2X1   g1864(.A(new_n2063), .B(new_n2061), .Y(new_n2064));
  NAND3X1  g1865(.A(new_n2064), .B(new_n2059), .C(new_n2053), .Y(new_n2065));
  AOI21X1  g1866(.A0(new_n2044), .A1(new_n2033), .B0(new_n2065), .Y(n228));
  INVX1    g1867(.A(\pwm_counter[0] ), .Y(new_n2067));
  AND2X1   g1868(.A(new_n201), .B(new_n2067), .Y(n232));
  XOR2X1   g1869(.A(\pwm_counter[1] ), .B(\pwm_counter[0] ), .Y(new_n2069));
  AND2X1   g1870(.A(new_n2069), .B(new_n201), .Y(n237));
  AND2X1   g1871(.A(\pwm_counter[1] ), .B(\pwm_counter[0] ), .Y(new_n2071));
  XOR2X1   g1872(.A(new_n2071), .B(\pwm_counter[2] ), .Y(new_n2072));
  AND2X1   g1873(.A(new_n2072), .B(new_n201), .Y(n242));
  NAND3X1  g1874(.A(\pwm_counter[2] ), .B(\pwm_counter[1] ), .C(\pwm_counter[0] ), .Y(new_n2074));
  XOR2X1   g1875(.A(new_n2074), .B(new_n2013), .Y(new_n2075));
  AND2X1   g1876(.A(new_n2075), .B(new_n201), .Y(n247));
  NAND4X1  g1877(.A(\pwm_counter[3] ), .B(\pwm_counter[2] ), .C(\pwm_counter[1] ), .D(\pwm_counter[0] ), .Y(new_n2077));
  XOR2X1   g1878(.A(new_n2077), .B(new_n2026), .Y(new_n2078));
  AND2X1   g1879(.A(new_n2078), .B(new_n201), .Y(n252));
  NOR2X1   g1880(.A(new_n2077), .B(new_n2026), .Y(new_n2080));
  XOR2X1   g1881(.A(new_n2080), .B(\pwm_counter[5] ), .Y(new_n2081));
  AND2X1   g1882(.A(new_n2081), .B(new_n201), .Y(n257));
  NOR3X1   g1883(.A(new_n2077), .B(new_n2024), .C(new_n2026), .Y(new_n2083));
  XOR2X1   g1884(.A(new_n2083), .B(\pwm_counter[6] ), .Y(new_n2084));
  AND2X1   g1885(.A(new_n2084), .B(new_n201), .Y(n262));
  NOR4X1   g1886(.A(new_n2077), .B(new_n2018), .C(new_n2024), .D(new_n2026), .Y(new_n2086));
  XOR2X1   g1887(.A(new_n2086), .B(\pwm_counter[7] ), .Y(new_n2087));
  AND2X1   g1888(.A(new_n2087), .B(new_n201), .Y(n267));
  NAND4X1  g1889(.A(\pwm_counter[7] ), .B(\pwm_counter[6] ), .C(\pwm_counter[5] ), .D(\pwm_counter[4] ), .Y(new_n2089));
  NOR2X1   g1890(.A(new_n2089), .B(new_n2077), .Y(new_n2090));
  XOR2X1   g1891(.A(new_n2090), .B(\pwm_counter[8] ), .Y(new_n2091));
  AND2X1   g1892(.A(new_n2091), .B(new_n201), .Y(n272));
  INVX1    g1893(.A(\pwm_counter[8] ), .Y(new_n2093));
  NOR3X1   g1894(.A(new_n2089), .B(new_n2077), .C(new_n2093), .Y(new_n2094));
  XOR2X1   g1895(.A(new_n2094), .B(\pwm_counter[9] ), .Y(new_n2095));
  AND2X1   g1896(.A(new_n2095), .B(new_n201), .Y(n277));
  NAND2X1  g1897(.A(\pwm_counter[9] ), .B(\pwm_counter[8] ), .Y(new_n2097));
  NOR3X1   g1898(.A(new_n2097), .B(new_n2089), .C(new_n2077), .Y(new_n2098));
  XOR2X1   g1899(.A(new_n2098), .B(\pwm_counter[10] ), .Y(new_n2099));
  AND2X1   g1900(.A(new_n2099), .B(new_n201), .Y(n282));
  NOR4X1   g1901(.A(new_n2097), .B(new_n2089), .C(new_n2077), .D(new_n2050), .Y(new_n2101));
  XOR2X1   g1902(.A(new_n2101), .B(\pwm_counter[11] ), .Y(new_n2102));
  AND2X1   g1903(.A(new_n2102), .B(new_n201), .Y(n287));
  NAND4X1  g1904(.A(\pwm_counter[11] ), .B(\pwm_counter[10] ), .C(\pwm_counter[9] ), .D(\pwm_counter[8] ), .Y(new_n2104));
  NOR3X1   g1905(.A(new_n2104), .B(new_n2089), .C(new_n2077), .Y(new_n2105));
  XOR2X1   g1906(.A(new_n2105), .B(\pwm_counter[12] ), .Y(new_n2106));
  AND2X1   g1907(.A(new_n2106), .B(new_n201), .Y(n292));
  NOR4X1   g1908(.A(new_n2104), .B(new_n2089), .C(new_n2077), .D(new_n2057), .Y(new_n2108));
  XOR2X1   g1909(.A(new_n2108), .B(\pwm_counter[13] ), .Y(new_n2109));
  AND2X1   g1910(.A(new_n2109), .B(new_n201), .Y(n297));
  NAND2X1  g1911(.A(\pwm_counter[13] ), .B(\pwm_counter[12] ), .Y(new_n2111));
  NOR4X1   g1912(.A(new_n2111), .B(new_n2104), .C(new_n2089), .D(new_n2077), .Y(new_n2112));
  XOR2X1   g1913(.A(new_n2112), .B(\pwm_counter[14] ), .Y(new_n2113));
  AND2X1   g1914(.A(new_n2113), .B(new_n201), .Y(n302));
  NAND2X1  g1915(.A(new_n2112), .B(\pwm_counter[14] ), .Y(new_n2115));
  XOR2X1   g1916(.A(new_n2115), .B(new_n2060), .Y(new_n2116));
  AND2X1   g1917(.A(new_n2116), .B(new_n201), .Y(n307));
  ZERO     g1918(.Y(\servo[1] ));
  ZERO     g1919(.Y(\servo[2] ));
  ZERO     g1920(.Y(\servo[3] ));
  ZERO     g1921(.Y(\servo[4] ));
  ZERO     g1922(.Y(\servo[5] ));
  ZERO     g1923(.Y(\servo[6] ));
  ZERO     g1924(.Y(\servo[7] ));
  ZERO     g1925(.Y(\servo[8] ));
  ZERO     g1926(.Y(\servo[9] ));
  ZERO     g1927(.Y(\servo[10] ));
  ZERO     g1928(.Y(\servo[11] ));
  ZERO     g1929(.Y(\servo[12] ));
  ZERO     g1930(.Y(\servo[13] ));
  ZERO     g1931(.Y(\servo[14] ));
  ZERO     g1932(.Y(\servo[15] ));
  always @ (posedge clock) begin
    \servo_counter[0]  <= n68;
    \servo_counter[1]  <= n73;
    \servo_counter[2]  <= n78;
    \servo_counter[3]  <= n83;
    \servo_counter[4]  <= n88;
    \servo_counter[5]  <= n93;
    \servo_counter[6]  <= n98;
    \servo_counter[7]  <= n103;
    \servo_counter[8]  <= n108;
    \servo_counter[9]  <= n113;
    \servo_counter[10]  <= n118;
    \servo_counter[11]  <= n123;
    \servo_counter[12]  <= n128;
    \servo_counter[13]  <= n133;
    \servo_counter[14]  <= n138;
    \servo_counter[15]  <= n143;
    \pwm_width[0]  <= n148;
    \pwm_width[1]  <= n153;
    \pwm_width[2]  <= n158;
    \pwm_width[3]  <= n163;
    \pwm_width[4]  <= n168;
    \pwm_width[5]  <= n173;
    \pwm_width[6]  <= n178;
    \pwm_width[7]  <= n183;
    \pwm_width[8]  <= n188;
    \pwm_width[9]  <= n193;
    \pwm_width[10]  <= n198;
    \pwm_width[11]  <= n203;
    \pwm_width[12]  <= n208;
    \pwm_width[13]  <= n213;
    \pwm_width[14]  <= n218;
    \pwm_width[15]  <= n223;
    \servo[0]  <= n228;
    \pwm_counter[0]  <= n232;
    \pwm_counter[1]  <= n237;
    \pwm_counter[2]  <= n242;
    \pwm_counter[3]  <= n247;
    \pwm_counter[4]  <= n252;
    \pwm_counter[5]  <= n257;
    \pwm_counter[6]  <= n262;
    \pwm_counter[7]  <= n267;
    \pwm_counter[8]  <= n272;
    \pwm_counter[9]  <= n277;
    \pwm_counter[10]  <= n282;
    \pwm_counter[11]  <= n287;
    \pwm_counter[12]  <= n292;
    \pwm_counter[13]  <= n297;
    \pwm_counter[14]  <= n302;
    \pwm_counter[15]  <= n307;
  end
endmodule


