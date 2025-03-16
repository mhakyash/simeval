// Benchmark "fixed_point_arithmetic" written by ABC on Wed Jun 26 15:22:07 2024

module fixed_point_arithmetic ( 
    \num1[0] , \num1[1] , \num1[2] , \num1[3] , \num1[4] , \num1[5] ,
    \num1[6] , \num1[7] , \num2[0] , \num2[1] , \num2[2] , \num2[3] ,
    \num2[4] , \num2[5] , \num2[6] , \num2[7] , \ctrl[0] , \ctrl[1] ,
    \result[0] , \result[1] , \result[2] , \result[3] , \result[4] ,
    \result[5] , \result[6] , \result[7]   );
  input  \num1[0] , \num1[1] , \num1[2] , \num1[3] , \num1[4] ,
    \num1[5] , \num1[6] , \num1[7] , \num2[0] , \num2[1] , \num2[2] ,
    \num2[3] , \num2[4] , \num2[5] , \num2[6] , \num2[7] , \ctrl[0] ,
    \ctrl[1] ;
  output \result[0] , \result[1] , \result[2] , \result[3] , \result[4] ,
    \result[5] , \result[6] , \result[7] ;
  wire new_n27, new_n28, new_n29, new_n30, new_n31, new_n32, new_n33,
    new_n34, new_n35, new_n36, new_n37, new_n38, new_n39, new_n40, new_n41,
    new_n42, new_n43, new_n44, new_n45, new_n46, new_n47, new_n48, new_n49,
    new_n50, new_n51, new_n52, new_n53, new_n54, new_n55, new_n56, new_n57,
    new_n58, new_n59, new_n60, new_n61, new_n62, new_n63, new_n64, new_n65,
    new_n66, new_n67, new_n68, new_n69, new_n70, new_n71, new_n72, new_n73,
    new_n74, new_n75, new_n76, new_n77, new_n78, new_n79, new_n80, new_n81,
    new_n82, new_n83, new_n84, new_n85, new_n86, new_n87, new_n88, new_n89,
    new_n90, new_n91, new_n92, new_n93, new_n94, new_n95, new_n96, new_n97,
    new_n98, new_n99, new_n100, new_n101, new_n102, new_n103, new_n104,
    new_n105, new_n106, new_n107, new_n108, new_n109, new_n110, new_n111,
    new_n112, new_n113, new_n114, new_n115, new_n116, new_n117, new_n118,
    new_n119, new_n120, new_n121, new_n122, new_n123, new_n124, new_n125,
    new_n126, new_n127, new_n128, new_n129, new_n130, new_n131, new_n132,
    new_n133, new_n134, new_n135, new_n136, new_n137, new_n138, new_n139,
    new_n140, new_n141, new_n142, new_n143, new_n144, new_n145, new_n146,
    new_n147, new_n148, new_n149, new_n150, new_n151, new_n152, new_n153,
    new_n154, new_n155, new_n156, new_n157, new_n158, new_n159, new_n160,
    new_n161, new_n162, new_n163, new_n164, new_n165, new_n166, new_n167,
    new_n168, new_n169, new_n170, new_n171, new_n172, new_n173, new_n174,
    new_n175, new_n176, new_n177, new_n178, new_n179, new_n180, new_n181,
    new_n182, new_n183, new_n184, new_n185, new_n186, new_n187, new_n188,
    new_n189, new_n190, new_n191, new_n192, new_n193, new_n194, new_n195,
    new_n196, new_n197, new_n198, new_n199, new_n200, new_n201, new_n202,
    new_n203, new_n204, new_n205, new_n206, new_n207, new_n208, new_n209,
    new_n210, new_n211, new_n212, new_n213, new_n214, new_n215, new_n216,
    new_n217, new_n218, new_n219, new_n220, new_n221, new_n222, new_n223,
    new_n224, new_n225, new_n226, new_n227, new_n228, new_n229, new_n230,
    new_n231, new_n232, new_n233, new_n234, new_n235, new_n236, new_n237,
    new_n238, new_n239, new_n240, new_n241, new_n242, new_n243, new_n244,
    new_n245, new_n246, new_n247, new_n248, new_n249, new_n250, new_n251,
    new_n252, new_n253, new_n254, new_n255, new_n256, new_n257, new_n258,
    new_n259, new_n260, new_n261, new_n262, new_n263, new_n264, new_n265,
    new_n266, new_n267, new_n268, new_n269, new_n270, new_n271, new_n272,
    new_n273, new_n274, new_n275, new_n276, new_n277, new_n278, new_n279,
    new_n280, new_n281, new_n282, new_n283, new_n284, new_n285, new_n286,
    new_n287, new_n288, new_n289, new_n290, new_n291, new_n292, new_n293,
    new_n294, new_n295, new_n296, new_n297, new_n298, new_n299, new_n300,
    new_n301, new_n302, new_n303, new_n304, new_n305, new_n306, new_n307,
    new_n308, new_n309, new_n310, new_n311, new_n312, new_n313, new_n314,
    new_n315, new_n316, new_n317, new_n318, new_n319, new_n320, new_n321,
    new_n322, new_n323, new_n324, new_n325, new_n326, new_n327, new_n328,
    new_n329, new_n330, new_n331, new_n332, new_n333, new_n334, new_n335,
    new_n336, new_n337, new_n338, new_n339, new_n340, new_n341, new_n342,
    new_n343, new_n344, new_n345, new_n346, new_n347, new_n348, new_n349,
    new_n350, new_n351, new_n352, new_n353, new_n354, new_n355, new_n356,
    new_n357, new_n358, new_n359, new_n360, new_n361, new_n362, new_n363,
    new_n364, new_n365, new_n366, new_n367, new_n368, new_n369, new_n370,
    new_n371, new_n372, new_n373, new_n374, new_n375, new_n376, new_n377,
    new_n378, new_n379, new_n380, new_n381, new_n382, new_n383, new_n384,
    new_n385, new_n386, new_n387, new_n388, new_n389, new_n390, new_n392,
    new_n393, new_n394, new_n395, new_n396, new_n397, new_n398, new_n399,
    new_n400, new_n401, new_n402, new_n403, new_n404, new_n405, new_n406,
    new_n407, new_n409, new_n410, new_n411, new_n412, new_n413, new_n414,
    new_n415, new_n416, new_n417, new_n418, new_n419, new_n420, new_n421,
    new_n422, new_n423, new_n424, new_n425, new_n426, new_n427, new_n428,
    new_n429, new_n430, new_n431, new_n432, new_n434, new_n435, new_n436,
    new_n437, new_n438, new_n439, new_n440, new_n441, new_n442, new_n443,
    new_n444, new_n445, new_n446, new_n447, new_n448, new_n449, new_n450,
    new_n451, new_n452, new_n453, new_n454, new_n455, new_n456, new_n457,
    new_n458, new_n459, new_n460, new_n461, new_n462, new_n463, new_n464,
    new_n465, new_n466, new_n468, new_n469, new_n470, new_n471, new_n472,
    new_n473, new_n474, new_n475, new_n476, new_n477, new_n478, new_n479,
    new_n480, new_n481, new_n482, new_n483, new_n484, new_n485, new_n486,
    new_n487, new_n488, new_n489, new_n490, new_n491, new_n492, new_n493,
    new_n494, new_n495, new_n496, new_n497, new_n498, new_n499, new_n500,
    new_n501, new_n502, new_n503, new_n504, new_n505, new_n506, new_n507,
    new_n508, new_n509, new_n510, new_n511, new_n512, new_n513, new_n514,
    new_n515, new_n516, new_n518, new_n519, new_n520, new_n521, new_n522,
    new_n523, new_n524, new_n525, new_n526, new_n527, new_n528, new_n529,
    new_n530, new_n531, new_n532, new_n533, new_n534, new_n535, new_n536,
    new_n537, new_n538, new_n539, new_n540, new_n541, new_n542, new_n543,
    new_n544, new_n545, new_n546, new_n547, new_n548, new_n549, new_n550,
    new_n551, new_n552, new_n553, new_n554, new_n555, new_n556, new_n557,
    new_n558, new_n559, new_n560, new_n561, new_n562, new_n563, new_n564,
    new_n565, new_n566, new_n567, new_n568, new_n569, new_n571, new_n572,
    new_n573, new_n574, new_n575, new_n576, new_n577, new_n578, new_n579,
    new_n580, new_n581, new_n582, new_n583, new_n584, new_n585, new_n586,
    new_n587, new_n588, new_n589, new_n590, new_n591, new_n592, new_n593,
    new_n594, new_n595, new_n596, new_n597, new_n598, new_n599, new_n600,
    new_n601, new_n602, new_n603, new_n604, new_n605, new_n606, new_n607,
    new_n608, new_n609, new_n610, new_n611, new_n612, new_n613, new_n614,
    new_n615, new_n616, new_n617, new_n618, new_n619, new_n620, new_n621,
    new_n622, new_n623, new_n624, new_n625, new_n626, new_n627, new_n628,
    new_n629, new_n630, new_n631, new_n633, new_n634, new_n635, new_n636,
    new_n637, new_n638, new_n639, new_n640, new_n641, new_n642, new_n643,
    new_n644, new_n645, new_n646, new_n647, new_n648, new_n649, new_n650,
    new_n651, new_n652, new_n653, new_n654, new_n655, new_n656, new_n657,
    new_n658, new_n659, new_n660, new_n661, new_n662, new_n663, new_n664,
    new_n665, new_n666, new_n667, new_n668, new_n669, new_n670, new_n671,
    new_n672, new_n673, new_n674, new_n675, new_n676, new_n677, new_n678,
    new_n679, new_n680, new_n681, new_n682, new_n683;
  INVX1    g000(.A(\num2[7] ), .Y(new_n27));
  OR4X1    g001(.A(\num2[3] ), .B(\num2[2] ), .C(\num2[1] ), .D(\num2[0] ), .Y(new_n28));
  OR2X1    g002(.A(\num2[5] ), .B(\num2[4] ), .Y(new_n29));
  OR4X1    g003(.A(new_n29), .B(new_n28), .C(new_n27), .D(\num2[6] ), .Y(new_n30));
  INVX1    g004(.A(\num1[3] ), .Y(new_n31));
  NOR4X1   g005(.A(new_n31), .B(\num1[2] ), .C(\num1[1] ), .D(\num1[0] ), .Y(new_n32));
  INVX1    g006(.A(new_n32), .Y(new_n33));
  INVX1    g007(.A(\num2[5] ), .Y(new_n34));
  NOR2X1   g008(.A(new_n28), .B(\num2[4] ), .Y(new_n35));
  XOR2X1   g009(.A(new_n35), .B(\num2[5] ), .Y(new_n36));
  MX2X1    g010(.A(new_n36), .B(new_n34), .S0(new_n27), .Y(new_n37));
  INVX1    g011(.A(\num2[6] ), .Y(new_n38));
  NOR2X1   g012(.A(new_n29), .B(new_n28), .Y(new_n39));
  XOR2X1   g013(.A(new_n39), .B(\num2[6] ), .Y(new_n40));
  MX2X1    g014(.A(new_n40), .B(new_n38), .S0(new_n27), .Y(new_n41));
  NAND3X1  g015(.A(new_n41), .B(new_n37), .C(new_n30), .Y(new_n42));
  NOR2X1   g016(.A(\num1[1] ), .B(\num1[0] ), .Y(new_n43));
  INVX1    g017(.A(\num2[0] ), .Y(new_n44));
  OR2X1    g018(.A(\num2[7] ), .B(new_n44), .Y(new_n45));
  NAND2X1  g019(.A(\num2[7] ), .B(\num2[0] ), .Y(new_n46));
  AND2X1   g020(.A(new_n46), .B(new_n45), .Y(new_n47));
  XOR2X1   g021(.A(new_n47), .B(new_n32), .Y(new_n48));
  INVX1    g022(.A(\num1[2] ), .Y(new_n49));
  NOR2X1   g023(.A(\num1[1] ), .B(\num1[0] ), .Y(new_n50));
  XOR2X1   g024(.A(new_n50), .B(\num1[2] ), .Y(new_n51));
  MX2X1    g025(.A(new_n51), .B(new_n49), .S0(new_n31), .Y(new_n52));
  NAND3X1  g026(.A(new_n52), .B(new_n48), .C(new_n43), .Y(new_n53));
  INVX1    g027(.A(\num2[3] ), .Y(new_n54));
  NOR3X1   g028(.A(\num2[2] ), .B(\num2[1] ), .C(\num2[0] ), .Y(new_n55));
  XOR2X1   g029(.A(new_n55), .B(new_n54), .Y(new_n56));
  MX2X1    g030(.A(new_n56), .B(\num2[3] ), .S0(new_n27), .Y(new_n57));
  XOR2X1   g031(.A(new_n28), .B(\num2[4] ), .Y(new_n58));
  MX2X1    g032(.A(new_n58), .B(\num2[4] ), .S0(new_n27), .Y(new_n59));
  INVX1    g033(.A(\num2[2] ), .Y(new_n60));
  NOR2X1   g034(.A(\num2[1] ), .B(\num2[0] ), .Y(new_n61));
  XOR2X1   g035(.A(new_n61), .B(new_n60), .Y(new_n62));
  MX2X1    g036(.A(new_n62), .B(\num2[2] ), .S0(new_n27), .Y(new_n63));
  XOR2X1   g037(.A(\num2[1] ), .B(\num2[0] ), .Y(new_n64));
  MX2X1    g038(.A(new_n64), .B(\num2[1] ), .S0(new_n27), .Y(new_n65));
  OR4X1    g039(.A(new_n65), .B(new_n63), .C(new_n59), .D(new_n57), .Y(new_n66));
  NOR3X1   g040(.A(new_n66), .B(new_n53), .C(new_n42), .Y(new_n67));
  OR2X1    g041(.A(\num1[1] ), .B(\num1[0] ), .Y(new_n68));
  NAND3X1  g042(.A(new_n68), .B(new_n52), .C(new_n48), .Y(new_n69));
  XOR2X1   g043(.A(new_n50), .B(new_n49), .Y(new_n70));
  MX2X1    g044(.A(new_n70), .B(\num1[2] ), .S0(new_n31), .Y(new_n71));
  AND2X1   g045(.A(new_n47), .B(new_n32), .Y(new_n72));
  AOI21X1  g046(.A0(new_n71), .A1(new_n48), .B0(new_n72), .Y(new_n73));
  NAND3X1  g047(.A(new_n73), .B(new_n69), .C(new_n53), .Y(new_n74));
  NOR2X1   g048(.A(new_n66), .B(new_n42), .Y(new_n75));
  AOI21X1  g049(.A0(new_n75), .A1(new_n74), .B0(new_n67), .Y(new_n76));
  NOR2X1   g050(.A(new_n68), .B(new_n43), .Y(new_n77));
  AND2X1   g051(.A(new_n77), .B(new_n52), .Y(new_n78));
  XOR2X1   g052(.A(new_n78), .B(new_n48), .Y(new_n79));
  MX2X1    g053(.A(new_n79), .B(new_n33), .S0(new_n76), .Y(new_n80));
  NOR2X1   g054(.A(\num1[1] ), .B(\num1[0] ), .Y(new_n81));
  XOR2X1   g055(.A(new_n80), .B(new_n65), .Y(new_n82));
  INVX1    g056(.A(new_n47), .Y(new_n83));
  XOR2X1   g057(.A(new_n77), .B(new_n52), .Y(new_n84));
  MX2X1    g058(.A(new_n84), .B(new_n52), .S0(new_n76), .Y(new_n85));
  XOR2X1   g059(.A(new_n85), .B(new_n83), .Y(new_n86));
  AND2X1   g060(.A(new_n86), .B(new_n82), .Y(new_n87));
  AND2X1   g061(.A(new_n87), .B(new_n81), .Y(new_n88));
  AND2X1   g062(.A(new_n41), .B(new_n30), .Y(new_n89));
  INVX1    g063(.A(new_n89), .Y(new_n90));
  INVX1    g064(.A(new_n59), .Y(new_n91));
  NAND2X1  g065(.A(new_n91), .B(new_n37), .Y(new_n92));
  NOR4X1   g066(.A(new_n92), .B(new_n90), .C(new_n63), .D(new_n57), .Y(new_n93));
  NAND3X1  g067(.A(new_n86), .B(new_n82), .C(new_n81), .Y(new_n94));
  NOR2X1   g068(.A(\num1[1] ), .B(\num1[0] ), .Y(new_n95));
  INVX1    g069(.A(new_n95), .Y(new_n96));
  NAND3X1  g070(.A(new_n96), .B(new_n86), .C(new_n82), .Y(new_n97));
  NOR2X1   g071(.A(new_n80), .B(new_n65), .Y(new_n98));
  NOR2X1   g072(.A(new_n85), .B(new_n83), .Y(new_n99));
  AOI21X1  g073(.A0(new_n99), .A1(new_n82), .B0(new_n98), .Y(new_n100));
  NAND3X1  g074(.A(new_n100), .B(new_n97), .C(new_n94), .Y(new_n101));
  OAI21X1  g075(.A0(new_n101), .A1(new_n88), .B0(new_n93), .Y(new_n102));
  INVX1    g076(.A(new_n81), .Y(new_n103));
  AND2X1   g077(.A(new_n95), .B(new_n103), .Y(new_n104));
  INVX1    g078(.A(new_n104), .Y(new_n105));
  AOI21X1  g079(.A0(new_n105), .A1(new_n86), .B0(new_n99), .Y(new_n106));
  XOR2X1   g080(.A(new_n106), .B(new_n82), .Y(new_n107));
  MX2X1    g081(.A(new_n107), .B(new_n80), .S0(new_n102), .Y(new_n108));
  INVX1    g082(.A(\num1[1] ), .Y(new_n109));
  INVX1    g083(.A(\num1[0] ), .Y(new_n110));
  XOR2X1   g084(.A(\num1[1] ), .B(new_n110), .Y(new_n111));
  MX2X1    g085(.A(new_n111), .B(new_n109), .S0(new_n31), .Y(new_n112));
  XOR2X1   g086(.A(new_n112), .B(new_n47), .Y(new_n113));
  AND2X1   g087(.A(new_n31), .B(\num1[0] ), .Y(new_n114));
  AND2X1   g088(.A(\num1[3] ), .B(\num1[0] ), .Y(new_n115));
  NOR2X1   g089(.A(new_n115), .B(new_n114), .Y(new_n116));
  INVX1    g090(.A(new_n116), .Y(new_n117));
  INVX1    g091(.A(new_n63), .Y(new_n118));
  XOR2X1   g092(.A(new_n108), .B(new_n118), .Y(new_n119));
  INVX1    g093(.A(new_n65), .Y(new_n120));
  XOR2X1   g094(.A(new_n104), .B(new_n86), .Y(new_n121));
  MX2X1    g095(.A(new_n121), .B(new_n85), .S0(new_n102), .Y(new_n122));
  XOR2X1   g096(.A(new_n122), .B(new_n120), .Y(new_n123));
  NOR4X1   g097(.A(new_n123), .B(new_n119), .C(new_n117), .D(new_n113), .Y(new_n124));
  INVX1    g098(.A(new_n30), .Y(new_n125));
  INVX1    g099(.A(new_n57), .Y(new_n126));
  NAND4X1  g100(.A(new_n91), .B(new_n126), .C(new_n41), .D(new_n37), .Y(new_n127));
  NOR2X1   g101(.A(new_n127), .B(new_n125), .Y(new_n128));
  INVX1    g102(.A(new_n113), .Y(new_n129));
  INVX1    g103(.A(new_n112), .Y(new_n130));
  AND2X1   g104(.A(new_n130), .B(new_n47), .Y(new_n131));
  AOI21X1  g105(.A0(new_n117), .A1(new_n129), .B0(new_n131), .Y(new_n132));
  NOR3X1   g106(.A(new_n132), .B(new_n123), .C(new_n119), .Y(new_n133));
  NOR2X1   g107(.A(new_n108), .B(new_n63), .Y(new_n134));
  XOR2X1   g108(.A(new_n108), .B(new_n63), .Y(new_n135));
  NOR2X1   g109(.A(new_n122), .B(new_n65), .Y(new_n136));
  AND2X1   g110(.A(new_n136), .B(new_n135), .Y(new_n137));
  OR4X1    g111(.A(new_n137), .B(new_n134), .C(new_n133), .D(new_n124), .Y(new_n138));
  OAI21X1  g112(.A0(new_n138), .A1(new_n124), .B0(new_n128), .Y(new_n139));
  XOR2X1   g113(.A(new_n122), .B(new_n65), .Y(new_n140));
  OR2X1    g114(.A(new_n130), .B(new_n47), .Y(new_n141));
  AOI21X1  g115(.A0(new_n141), .A1(new_n140), .B0(new_n136), .Y(new_n142));
  XOR2X1   g116(.A(new_n142), .B(new_n135), .Y(new_n143));
  MX2X1    g117(.A(new_n143), .B(new_n108), .S0(new_n139), .Y(new_n144));
  INVX1    g118(.A(new_n144), .Y(new_n145));
  INVX1    g119(.A(new_n37), .Y(new_n146));
  MX2X1    g120(.A(new_n129), .B(new_n112), .S0(new_n139), .Y(new_n147));
  XOR2X1   g121(.A(new_n147), .B(new_n120), .Y(new_n148));
  NOR2X1   g122(.A(new_n115), .B(new_n114), .Y(new_n149));
  XOR2X1   g123(.A(new_n149), .B(new_n47), .Y(new_n150));
  XOR2X1   g124(.A(new_n144), .B(new_n126), .Y(new_n151));
  XOR2X1   g125(.A(new_n141), .B(new_n123), .Y(new_n152));
  MX2X1    g126(.A(new_n152), .B(new_n122), .S0(new_n139), .Y(new_n153));
  XOR2X1   g127(.A(new_n153), .B(new_n118), .Y(new_n154));
  OR4X1    g128(.A(new_n154), .B(new_n151), .C(new_n150), .D(new_n148), .Y(new_n155));
  OR4X1    g129(.A(new_n155), .B(new_n90), .C(new_n59), .D(new_n146), .Y(new_n156));
  NOR2X1   g130(.A(new_n154), .B(new_n151), .Y(new_n157));
  OR2X1    g131(.A(new_n147), .B(new_n65), .Y(new_n158));
  NOR2X1   g132(.A(new_n149), .B(new_n83), .Y(new_n159));
  INVX1    g133(.A(new_n159), .Y(new_n160));
  OAI21X1  g134(.A0(new_n160), .A1(new_n148), .B0(new_n158), .Y(new_n161));
  AND2X1   g135(.A(new_n161), .B(new_n157), .Y(new_n162));
  XOR2X1   g136(.A(new_n144), .B(new_n57), .Y(new_n163));
  NOR2X1   g137(.A(new_n144), .B(new_n57), .Y(new_n164));
  NOR2X1   g138(.A(new_n153), .B(new_n63), .Y(new_n165));
  AOI21X1  g139(.A0(new_n165), .A1(new_n163), .B0(new_n164), .Y(new_n166));
  NAND2X1  g140(.A(new_n166), .B(new_n155), .Y(new_n167));
  NOR4X1   g141(.A(new_n154), .B(new_n151), .C(new_n150), .D(new_n148), .Y(new_n168));
  NOR3X1   g142(.A(new_n168), .B(new_n92), .C(new_n90), .Y(new_n169));
  OAI21X1  g143(.A0(new_n167), .A1(new_n162), .B0(new_n169), .Y(new_n170));
  NAND3X1  g144(.A(new_n170), .B(new_n156), .C(new_n145), .Y(new_n171));
  NOR3X1   g145(.A(new_n155), .B(new_n92), .C(new_n90), .Y(new_n172));
  NAND2X1  g146(.A(new_n161), .B(new_n157), .Y(new_n173));
  AND2X1   g147(.A(new_n166), .B(new_n155), .Y(new_n174));
  OR4X1    g148(.A(new_n168), .B(new_n90), .C(new_n59), .D(new_n146), .Y(new_n175));
  AOI21X1  g149(.A0(new_n174), .A1(new_n173), .B0(new_n175), .Y(new_n176));
  OR2X1    g150(.A(new_n150), .B(new_n148), .Y(new_n177));
  XOR2X1   g151(.A(new_n147), .B(new_n65), .Y(new_n178));
  NOR2X1   g152(.A(new_n147), .B(new_n65), .Y(new_n179));
  AOI21X1  g153(.A0(new_n159), .A1(new_n178), .B0(new_n179), .Y(new_n180));
  AOI21X1  g154(.A0(new_n180), .A1(new_n177), .B0(new_n154), .Y(new_n181));
  NOR3X1   g155(.A(new_n181), .B(new_n165), .C(new_n151), .Y(new_n182));
  INVX1    g156(.A(new_n165), .Y(new_n183));
  NOR2X1   g157(.A(new_n150), .B(new_n148), .Y(new_n184));
  XOR2X1   g158(.A(new_n153), .B(new_n63), .Y(new_n185));
  OAI21X1  g159(.A0(new_n161), .A1(new_n184), .B0(new_n185), .Y(new_n186));
  AOI21X1  g160(.A0(new_n186), .A1(new_n183), .B0(new_n163), .Y(new_n187));
  OAI22X1  g161(.A0(new_n187), .A1(new_n182), .B0(new_n176), .B1(new_n172), .Y(new_n188));
  AND2X1   g162(.A(new_n188), .B(new_n171), .Y(new_n189));
  NOR3X1   g163(.A(new_n176), .B(new_n172), .C(new_n144), .Y(new_n190));
  NAND3X1  g164(.A(new_n186), .B(new_n183), .C(new_n163), .Y(new_n191));
  OAI21X1  g165(.A0(new_n181), .A1(new_n165), .B0(new_n151), .Y(new_n192));
  AOI22X1  g166(.A0(new_n192), .A1(new_n191), .B0(new_n170), .B1(new_n156), .Y(new_n193));
  OAI21X1  g167(.A0(new_n193), .A1(new_n190), .B0(new_n59), .Y(new_n194));
  NAND3X1  g168(.A(new_n188), .B(new_n171), .C(new_n91), .Y(new_n195));
  NOR3X1   g169(.A(new_n176), .B(new_n172), .C(new_n153), .Y(new_n196));
  NOR2X1   g170(.A(new_n161), .B(new_n184), .Y(new_n197));
  XOR2X1   g171(.A(new_n197), .B(new_n185), .Y(new_n198));
  AOI21X1  g172(.A0(new_n170), .A1(new_n156), .B0(new_n198), .Y(new_n199));
  OAI21X1  g173(.A0(new_n199), .A1(new_n196), .B0(new_n57), .Y(new_n200));
  INVX1    g174(.A(new_n153), .Y(new_n201));
  NAND3X1  g175(.A(new_n170), .B(new_n156), .C(new_n201), .Y(new_n202));
  XOR2X1   g176(.A(new_n197), .B(new_n154), .Y(new_n203));
  OAI21X1  g177(.A0(new_n176), .A1(new_n172), .B0(new_n203), .Y(new_n204));
  NAND3X1  g178(.A(new_n204), .B(new_n202), .C(new_n126), .Y(new_n205));
  AOI22X1  g179(.A0(new_n205), .A1(new_n200), .B0(new_n195), .B1(new_n194), .Y(new_n206));
  INVX1    g180(.A(new_n147), .Y(new_n207));
  NAND3X1  g181(.A(new_n170), .B(new_n156), .C(new_n207), .Y(new_n208));
  AND2X1   g182(.A(new_n149), .B(new_n83), .Y(new_n209));
  XOR2X1   g183(.A(new_n209), .B(new_n178), .Y(new_n210));
  INVX1    g184(.A(new_n210), .Y(new_n211));
  OAI21X1  g185(.A0(new_n176), .A1(new_n172), .B0(new_n211), .Y(new_n212));
  AND2X1   g186(.A(new_n212), .B(new_n208), .Y(new_n213));
  XOR2X1   g187(.A(new_n213), .B(new_n63), .Y(new_n214));
  NOR3X1   g188(.A(new_n176), .B(new_n172), .C(new_n149), .Y(new_n215));
  INVX1    g189(.A(new_n150), .Y(new_n216));
  AOI21X1  g190(.A0(new_n170), .A1(new_n156), .B0(new_n216), .Y(new_n217));
  NOR2X1   g191(.A(new_n217), .B(new_n215), .Y(new_n218));
  XOR2X1   g192(.A(new_n218), .B(new_n65), .Y(new_n219));
  NAND4X1  g193(.A(new_n219), .B(new_n214), .C(new_n206), .D(new_n47), .Y(new_n220));
  OR2X1    g194(.A(new_n220), .B(new_n42), .Y(new_n221));
  INVX1    g195(.A(new_n42), .Y(new_n222));
  AOI21X1  g196(.A0(new_n212), .A1(new_n208), .B0(new_n63), .Y(new_n223));
  NOR3X1   g197(.A(new_n176), .B(new_n172), .C(new_n147), .Y(new_n224));
  AOI21X1  g198(.A0(new_n170), .A1(new_n156), .B0(new_n210), .Y(new_n225));
  OAI21X1  g199(.A0(new_n225), .A1(new_n224), .B0(new_n63), .Y(new_n226));
  NAND3X1  g200(.A(new_n212), .B(new_n208), .C(new_n118), .Y(new_n227));
  OAI21X1  g201(.A0(new_n217), .A1(new_n215), .B0(new_n120), .Y(new_n228));
  AOI21X1  g202(.A0(new_n227), .A1(new_n226), .B0(new_n228), .Y(new_n229));
  OAI21X1  g203(.A0(new_n229), .A1(new_n223), .B0(new_n206), .Y(new_n230));
  OAI21X1  g204(.A0(new_n193), .A1(new_n190), .B0(new_n91), .Y(new_n231));
  XOR2X1   g205(.A(new_n189), .B(new_n59), .Y(new_n232));
  AOI21X1  g206(.A0(new_n204), .A1(new_n202), .B0(new_n57), .Y(new_n233));
  NAND2X1  g207(.A(new_n233), .B(new_n232), .Y(new_n234));
  NAND4X1  g208(.A(new_n234), .B(new_n231), .C(new_n230), .D(new_n220), .Y(new_n235));
  NAND3X1  g209(.A(new_n235), .B(new_n221), .C(new_n222), .Y(new_n236));
  NAND2X1  g210(.A(new_n236), .B(new_n221), .Y(new_n237));
  NAND3X1  g211(.A(new_n219), .B(new_n214), .C(new_n47), .Y(new_n238));
  NOR2X1   g212(.A(new_n229), .B(new_n223), .Y(new_n239));
  AOI22X1  g213(.A0(new_n239), .A1(new_n238), .B0(new_n205), .B1(new_n200), .Y(new_n240));
  NOR2X1   g214(.A(new_n240), .B(new_n233), .Y(new_n241));
  XOR2X1   g215(.A(new_n241), .B(new_n232), .Y(new_n242));
  MX2X1    g216(.A(new_n189), .B(new_n242), .S0(new_n237), .Y(new_n243));
  NOR2X1   g217(.A(new_n220), .B(new_n42), .Y(new_n244));
  AOI21X1  g218(.A0(new_n235), .A1(new_n222), .B0(new_n244), .Y(new_n245));
  INVX1    g219(.A(new_n228), .Y(new_n246));
  AOI21X1  g220(.A0(new_n219), .A1(new_n47), .B0(new_n246), .Y(new_n247));
  XOR2X1   g221(.A(new_n247), .B(new_n214), .Y(new_n248));
  MX2X1    g222(.A(new_n248), .B(new_n213), .S0(new_n245), .Y(new_n249));
  XOR2X1   g223(.A(new_n249), .B(new_n57), .Y(new_n250));
  XOR2X1   g224(.A(new_n219), .B(new_n83), .Y(new_n251));
  MX2X1    g225(.A(new_n251), .B(new_n218), .S0(new_n245), .Y(new_n252));
  XOR2X1   g226(.A(new_n252), .B(new_n63), .Y(new_n253));
  NAND2X1  g227(.A(new_n253), .B(new_n250), .Y(new_n254));
  XOR2X1   g228(.A(new_n243), .B(new_n37), .Y(new_n255));
  AND2X1   g229(.A(new_n204), .B(new_n202), .Y(new_n256));
  XOR2X1   g230(.A(new_n256), .B(new_n57), .Y(new_n257));
  AND2X1   g231(.A(new_n239), .B(new_n238), .Y(new_n258));
  XOR2X1   g232(.A(new_n258), .B(new_n257), .Y(new_n259));
  MX2X1    g233(.A(new_n259), .B(new_n256), .S0(new_n245), .Y(new_n260));
  XOR2X1   g234(.A(new_n260), .B(new_n91), .Y(new_n261));
  NAND4X1  g235(.A(new_n120), .B(new_n47), .C(new_n41), .D(new_n30), .Y(new_n262));
  NOR4X1   g236(.A(new_n262), .B(new_n261), .C(new_n255), .D(new_n254), .Y(new_n263));
  OAI21X1  g237(.A0(new_n237), .A1(new_n47), .B0(new_n120), .Y(new_n264));
  NOR4X1   g238(.A(new_n264), .B(new_n261), .C(new_n255), .D(new_n254), .Y(new_n265));
  NOR2X1   g239(.A(new_n249), .B(new_n57), .Y(new_n266));
  NOR2X1   g240(.A(new_n252), .B(new_n63), .Y(new_n267));
  AOI21X1  g241(.A0(new_n267), .A1(new_n250), .B0(new_n266), .Y(new_n268));
  NOR3X1   g242(.A(new_n268), .B(new_n261), .C(new_n255), .Y(new_n269));
  NOR2X1   g243(.A(new_n243), .B(new_n146), .Y(new_n270));
  XOR2X1   g244(.A(new_n243), .B(new_n146), .Y(new_n271));
  NOR2X1   g245(.A(new_n260), .B(new_n59), .Y(new_n272));
  AND2X1   g246(.A(new_n272), .B(new_n271), .Y(new_n273));
  OR4X1    g247(.A(new_n273), .B(new_n270), .C(new_n269), .D(new_n265), .Y(new_n274));
  AOI21X1  g248(.A0(new_n274), .A1(new_n89), .B0(new_n263), .Y(new_n275));
  INVX1    g249(.A(new_n261), .Y(new_n276));
  OAI21X1  g250(.A0(new_n264), .A1(new_n254), .B0(new_n268), .Y(new_n277));
  AOI21X1  g251(.A0(new_n277), .A1(new_n276), .B0(new_n272), .Y(new_n278));
  XOR2X1   g252(.A(new_n278), .B(new_n271), .Y(new_n279));
  MX2X1    g253(.A(new_n279), .B(new_n243), .S0(new_n275), .Y(new_n280));
  INVX1    g254(.A(new_n264), .Y(new_n281));
  AOI21X1  g255(.A0(new_n281), .A1(new_n253), .B0(new_n267), .Y(new_n282));
  XOR2X1   g256(.A(new_n282), .B(new_n250), .Y(new_n283));
  MX2X1    g257(.A(new_n283), .B(new_n249), .S0(new_n275), .Y(new_n284));
  XOR2X1   g258(.A(new_n284), .B(new_n91), .Y(new_n285));
  XOR2X1   g259(.A(new_n264), .B(new_n253), .Y(new_n286));
  MX2X1    g260(.A(new_n286), .B(new_n252), .S0(new_n275), .Y(new_n287));
  XOR2X1   g261(.A(new_n287), .B(new_n126), .Y(new_n288));
  XOR2X1   g262(.A(new_n280), .B(new_n41), .Y(new_n289));
  XOR2X1   g263(.A(new_n277), .B(new_n261), .Y(new_n290));
  MX2X1    g264(.A(new_n290), .B(new_n260), .S0(new_n275), .Y(new_n291));
  XOR2X1   g265(.A(new_n291), .B(new_n37), .Y(new_n292));
  OR4X1    g266(.A(new_n292), .B(new_n289), .C(new_n288), .D(new_n285), .Y(new_n293));
  NOR3X1   g267(.A(new_n65), .B(new_n63), .C(new_n83), .Y(new_n294));
  NAND2X1  g268(.A(new_n294), .B(new_n30), .Y(new_n295));
  NOR2X1   g269(.A(new_n295), .B(new_n293), .Y(new_n296));
  NOR2X1   g270(.A(new_n245), .B(new_n47), .Y(new_n297));
  INVX1    g271(.A(new_n297), .Y(new_n298));
  XOR2X1   g272(.A(new_n297), .B(new_n65), .Y(new_n299));
  XOR2X1   g273(.A(new_n299), .B(new_n47), .Y(new_n300));
  MX2X1    g274(.A(new_n300), .B(new_n298), .S0(new_n275), .Y(new_n301));
  XOR2X1   g275(.A(new_n301), .B(new_n63), .Y(new_n302));
  NOR3X1   g276(.A(new_n275), .B(new_n65), .C(new_n47), .Y(new_n303));
  INVX1    g277(.A(new_n294), .Y(new_n304));
  OAI21X1  g278(.A0(new_n301), .A1(new_n63), .B0(new_n304), .Y(new_n305));
  AOI21X1  g279(.A0(new_n303), .A1(new_n302), .B0(new_n305), .Y(new_n306));
  OR2X1    g280(.A(new_n306), .B(new_n293), .Y(new_n307));
  NOR2X1   g281(.A(new_n292), .B(new_n289), .Y(new_n308));
  OR2X1    g282(.A(new_n284), .B(new_n59), .Y(new_n309));
  OR2X1    g283(.A(new_n287), .B(new_n57), .Y(new_n310));
  OAI21X1  g284(.A0(new_n310), .A1(new_n285), .B0(new_n309), .Y(new_n311));
  INVX1    g285(.A(new_n41), .Y(new_n312));
  OR2X1    g286(.A(new_n280), .B(new_n312), .Y(new_n313));
  OR2X1    g287(.A(new_n291), .B(new_n146), .Y(new_n314));
  OAI21X1  g288(.A0(new_n314), .A1(new_n289), .B0(new_n313), .Y(new_n315));
  AOI21X1  g289(.A0(new_n311), .A1(new_n308), .B0(new_n315), .Y(new_n316));
  NAND2X1  g290(.A(new_n316), .B(new_n307), .Y(new_n317));
  AOI21X1  g291(.A0(new_n317), .A1(new_n30), .B0(new_n296), .Y(new_n318));
  INVX1    g292(.A(new_n289), .Y(new_n319));
  INVX1    g293(.A(new_n292), .Y(new_n320));
  INVX1    g294(.A(new_n314), .Y(new_n321));
  OR2X1    g295(.A(new_n288), .B(new_n285), .Y(new_n322));
  XOR2X1   g296(.A(new_n284), .B(new_n59), .Y(new_n323));
  NOR2X1   g297(.A(new_n284), .B(new_n59), .Y(new_n324));
  NOR2X1   g298(.A(new_n287), .B(new_n57), .Y(new_n325));
  AOI21X1  g299(.A0(new_n325), .A1(new_n323), .B0(new_n324), .Y(new_n326));
  OAI21X1  g300(.A0(new_n306), .A1(new_n322), .B0(new_n326), .Y(new_n327));
  AOI21X1  g301(.A0(new_n327), .A1(new_n320), .B0(new_n321), .Y(new_n328));
  XOR2X1   g302(.A(new_n328), .B(new_n319), .Y(new_n329));
  MX2X1    g303(.A(new_n329), .B(new_n280), .S0(new_n318), .Y(new_n330));
  XOR2X1   g304(.A(new_n330), .B(new_n30), .Y(new_n331));
  XOR2X1   g305(.A(new_n327), .B(new_n292), .Y(new_n332));
  MX2X1    g306(.A(new_n332), .B(new_n291), .S0(new_n318), .Y(new_n333));
  XOR2X1   g307(.A(new_n333), .B(new_n41), .Y(new_n334));
  OAI21X1  g308(.A0(new_n306), .A1(new_n288), .B0(new_n310), .Y(new_n335));
  XOR2X1   g309(.A(new_n335), .B(new_n285), .Y(new_n336));
  MX2X1    g310(.A(new_n336), .B(new_n284), .S0(new_n318), .Y(new_n337));
  XOR2X1   g311(.A(new_n337), .B(new_n37), .Y(new_n338));
  INVX1    g312(.A(new_n288), .Y(new_n339));
  XOR2X1   g313(.A(new_n306), .B(new_n339), .Y(new_n340));
  MX2X1    g314(.A(new_n340), .B(new_n287), .S0(new_n318), .Y(new_n341));
  XOR2X1   g315(.A(new_n341), .B(new_n91), .Y(new_n342));
  OR4X1    g316(.A(new_n342), .B(new_n338), .C(new_n334), .D(new_n331), .Y(new_n343));
  INVX1    g317(.A(new_n275), .Y(new_n344));
  OAI21X1  g318(.A0(new_n344), .A1(new_n47), .B0(new_n120), .Y(new_n345));
  XOR2X1   g319(.A(new_n345), .B(new_n302), .Y(new_n346));
  MX2X1    g320(.A(new_n346), .B(new_n301), .S0(new_n318), .Y(new_n347));
  XOR2X1   g321(.A(new_n347), .B(new_n57), .Y(new_n348));
  OR2X1    g322(.A(new_n275), .B(new_n47), .Y(new_n349));
  XOR2X1   g323(.A(new_n349), .B(new_n120), .Y(new_n350));
  XOR2X1   g324(.A(new_n350), .B(new_n47), .Y(new_n351));
  MX2X1    g325(.A(new_n351), .B(new_n349), .S0(new_n318), .Y(new_n352));
  XOR2X1   g326(.A(new_n352), .B(new_n63), .Y(new_n353));
  NAND2X1  g327(.A(new_n353), .B(new_n348), .Y(new_n354));
  OR2X1    g328(.A(\num2[1] ), .B(\num2[0] ), .Y(new_n355));
  NOR3X1   g329(.A(new_n355), .B(new_n354), .C(new_n343), .Y(new_n356));
  AOI21X1  g330(.A0(new_n318), .A1(new_n83), .B0(new_n65), .Y(new_n357));
  NAND3X1  g331(.A(new_n357), .B(new_n353), .C(new_n348), .Y(new_n358));
  NOR2X1   g332(.A(new_n347), .B(new_n57), .Y(new_n359));
  NOR2X1   g333(.A(new_n352), .B(new_n63), .Y(new_n360));
  AOI21X1  g334(.A0(new_n360), .A1(new_n348), .B0(new_n359), .Y(new_n361));
  AOI21X1  g335(.A0(new_n361), .A1(new_n358), .B0(new_n343), .Y(new_n362));
  OR2X1    g336(.A(new_n334), .B(new_n331), .Y(new_n363));
  XOR2X1   g337(.A(new_n337), .B(new_n146), .Y(new_n364));
  NOR2X1   g338(.A(new_n337), .B(new_n146), .Y(new_n365));
  NOR2X1   g339(.A(new_n341), .B(new_n59), .Y(new_n366));
  AOI21X1  g340(.A0(new_n366), .A1(new_n364), .B0(new_n365), .Y(new_n367));
  XOR2X1   g341(.A(new_n330), .B(new_n125), .Y(new_n368));
  NOR2X1   g342(.A(new_n330), .B(new_n125), .Y(new_n369));
  NOR2X1   g343(.A(new_n333), .B(new_n312), .Y(new_n370));
  AOI21X1  g344(.A0(new_n370), .A1(new_n368), .B0(new_n369), .Y(new_n371));
  OAI21X1  g345(.A0(new_n367), .A1(new_n363), .B0(new_n371), .Y(new_n372));
  XOR2X1   g346(.A(\num2[7] ), .B(new_n31), .Y(new_n373));
  NOR3X1   g347(.A(new_n372), .B(new_n362), .C(new_n356), .Y(new_n374));
  AND2X1   g348(.A(\ctrl[1] ), .B(\ctrl[0] ), .Y(new_n375));
  INVX1    g349(.A(new_n375), .Y(new_n376));
  OR2X1    g350(.A(new_n376), .B(new_n374), .Y(new_n377));
  XOR2X1   g351(.A(\num2[0] ), .B(\num1[0] ), .Y(new_n378));
  NOR2X1   g352(.A(\ctrl[1] ), .B(\ctrl[0] ), .Y(new_n379));
  AND2X1   g353(.A(\num2[0] ), .B(\num1[0] ), .Y(new_n380));
  INVX1    g354(.A(new_n380), .Y(new_n381));
  INVX1    g355(.A(\ctrl[0] ), .Y(new_n382));
  AND2X1   g356(.A(\ctrl[1] ), .B(new_n382), .Y(new_n383));
  INVX1    g357(.A(new_n383), .Y(new_n384));
  XOR2X1   g358(.A(\num2[0] ), .B(new_n110), .Y(new_n385));
  NOR2X1   g359(.A(\ctrl[1] ), .B(new_n382), .Y(new_n386));
  INVX1    g360(.A(new_n386), .Y(new_n387));
  OAI22X1  g361(.A0(new_n387), .A1(new_n385), .B0(new_n384), .B1(new_n381), .Y(new_n388));
  AOI21X1  g362(.A0(new_n379), .A1(new_n378), .B0(new_n388), .Y(new_n389));
  NOR4X1   g363(.A(new_n386), .B(new_n383), .C(new_n379), .D(new_n375), .Y(new_n390));
  AOI21X1  g364(.A0(new_n389), .A1(new_n377), .B0(new_n390), .Y(\result[0] ));
  INVX1    g365(.A(new_n318), .Y(new_n392));
  NOR3X1   g366(.A(new_n372), .B(new_n362), .C(new_n356), .Y(new_n393));
  XOR2X1   g367(.A(new_n393), .B(new_n318), .Y(new_n394));
  MX2X1    g368(.A(new_n394), .B(new_n392), .S0(new_n373), .Y(new_n395));
  NAND2X1  g369(.A(new_n395), .B(new_n375), .Y(new_n396));
  XOR2X1   g370(.A(\num2[1] ), .B(\num1[1] ), .Y(new_n397));
  AND2X1   g371(.A(\num2[0] ), .B(new_n110), .Y(new_n398));
  XOR2X1   g372(.A(new_n398), .B(new_n397), .Y(new_n399));
  INVX1    g373(.A(new_n379), .Y(new_n400));
  NAND2X1  g374(.A(\num2[0] ), .B(\num1[1] ), .Y(new_n401));
  AND2X1   g375(.A(\num2[1] ), .B(\num1[0] ), .Y(new_n402));
  XOR2X1   g376(.A(new_n402), .B(new_n401), .Y(new_n403));
  XOR2X1   g377(.A(\num2[1] ), .B(\num1[1] ), .Y(new_n404));
  XOR2X1   g378(.A(new_n404), .B(new_n381), .Y(new_n405));
  OAI22X1  g379(.A0(new_n405), .A1(new_n400), .B0(new_n403), .B1(new_n384), .Y(new_n406));
  AOI21X1  g380(.A0(new_n399), .A1(new_n386), .B0(new_n406), .Y(new_n407));
  AOI21X1  g381(.A0(new_n407), .A1(new_n396), .B0(new_n390), .Y(\result[1] ));
  NOR4X1   g382(.A(new_n372), .B(new_n362), .C(new_n356), .D(new_n392), .Y(new_n409));
  XOR2X1   g383(.A(new_n409), .B(new_n275), .Y(new_n410));
  MX2X1    g384(.A(new_n410), .B(new_n344), .S0(new_n373), .Y(new_n411));
  NAND2X1  g385(.A(new_n411), .B(new_n375), .Y(new_n412));
  XOR2X1   g386(.A(\num2[2] ), .B(\num1[2] ), .Y(new_n413));
  INVX1    g387(.A(\num2[1] ), .Y(new_n414));
  AND2X1   g388(.A(new_n414), .B(\num1[1] ), .Y(new_n415));
  AOI21X1  g389(.A0(\num2[0] ), .A1(new_n110), .B0(new_n397), .Y(new_n416));
  NOR2X1   g390(.A(new_n416), .B(new_n415), .Y(new_n417));
  XOR2X1   g391(.A(new_n417), .B(new_n413), .Y(new_n418));
  AND2X1   g392(.A(\num2[1] ), .B(\num1[1] ), .Y(new_n419));
  AND2X1   g393(.A(\num2[2] ), .B(\num1[0] ), .Y(new_n420));
  AND2X1   g394(.A(\num2[0] ), .B(\num1[2] ), .Y(new_n421));
  XOR2X1   g395(.A(new_n421), .B(new_n420), .Y(new_n422));
  INVX1    g396(.A(new_n422), .Y(new_n423));
  XOR2X1   g397(.A(new_n423), .B(new_n419), .Y(new_n424));
  NOR3X1   g398(.A(new_n401), .B(new_n414), .C(new_n110), .Y(new_n425));
  XOR2X1   g399(.A(new_n425), .B(new_n424), .Y(new_n426));
  XOR2X1   g400(.A(\num2[2] ), .B(new_n49), .Y(new_n427));
  INVX1    g401(.A(new_n427), .Y(new_n428));
  AOI21X1  g402(.A0(new_n404), .A1(new_n380), .B0(new_n419), .Y(new_n429));
  XOR2X1   g403(.A(new_n429), .B(new_n428), .Y(new_n430));
  OAI22X1  g404(.A0(new_n430), .A1(new_n400), .B0(new_n426), .B1(new_n384), .Y(new_n431));
  AOI21X1  g405(.A0(new_n418), .A1(new_n386), .B0(new_n431), .Y(new_n432));
  AOI21X1  g406(.A0(new_n432), .A1(new_n412), .B0(new_n390), .Y(\result[2] ));
  INVX1    g407(.A(new_n373), .Y(new_n434));
  NOR2X1   g408(.A(new_n434), .B(new_n245), .Y(new_n435));
  OR4X1    g409(.A(new_n372), .B(new_n362), .C(new_n356), .D(new_n392), .Y(new_n436));
  OAI21X1  g410(.A0(new_n436), .A1(new_n344), .B0(new_n245), .Y(new_n437));
  NAND3X1  g411(.A(new_n409), .B(new_n275), .C(new_n237), .Y(new_n438));
  AOI21X1  g412(.A0(new_n438), .A1(new_n437), .B0(new_n373), .Y(new_n439));
  OAI21X1  g413(.A0(new_n439), .A1(new_n435), .B0(new_n375), .Y(new_n440));
  AND2X1   g414(.A(\num2[2] ), .B(\num1[1] ), .Y(new_n441));
  AND2X1   g415(.A(\num2[3] ), .B(\num1[0] ), .Y(new_n442));
  XOR2X1   g416(.A(new_n442), .B(new_n441), .Y(new_n443));
  AND2X1   g417(.A(\num2[0] ), .B(\num1[3] ), .Y(new_n444));
  INVX1    g418(.A(new_n444), .Y(new_n445));
  XOR2X1   g419(.A(new_n445), .B(new_n443), .Y(new_n446));
  AND2X1   g420(.A(new_n421), .B(new_n420), .Y(new_n447));
  XOR2X1   g421(.A(new_n447), .B(new_n446), .Y(new_n448));
  AND2X1   g422(.A(\num2[1] ), .B(\num1[2] ), .Y(new_n449));
  XOR2X1   g423(.A(new_n449), .B(new_n448), .Y(new_n450));
  AND2X1   g424(.A(new_n422), .B(new_n419), .Y(new_n451));
  XOR2X1   g425(.A(new_n451), .B(new_n450), .Y(new_n452));
  NOR4X1   g426(.A(new_n424), .B(new_n401), .C(new_n414), .D(new_n110), .Y(new_n453));
  INVX1    g427(.A(new_n453), .Y(new_n454));
  XOR2X1   g428(.A(new_n454), .B(new_n452), .Y(new_n455));
  XOR2X1   g429(.A(\num2[3] ), .B(\num1[3] ), .Y(new_n456));
  OR2X1    g430(.A(new_n417), .B(new_n413), .Y(new_n457));
  OAI21X1  g431(.A0(\num2[2] ), .A1(new_n49), .B0(new_n457), .Y(new_n458));
  XOR2X1   g432(.A(new_n458), .B(new_n456), .Y(new_n459));
  XOR2X1   g433(.A(\num2[3] ), .B(new_n31), .Y(new_n460));
  AND2X1   g434(.A(\num2[2] ), .B(\num1[2] ), .Y(new_n461));
  INVX1    g435(.A(new_n461), .Y(new_n462));
  OAI21X1  g436(.A0(new_n429), .A1(new_n427), .B0(new_n462), .Y(new_n463));
  XOR2X1   g437(.A(new_n463), .B(new_n460), .Y(new_n464));
  OAI22X1  g438(.A0(new_n464), .A1(new_n400), .B0(new_n459), .B1(new_n387), .Y(new_n465));
  AOI21X1  g439(.A0(new_n455), .A1(new_n383), .B0(new_n465), .Y(new_n466));
  AOI21X1  g440(.A0(new_n466), .A1(new_n440), .B0(new_n390), .Y(\result[3] ));
  AOI21X1  g441(.A0(new_n170), .A1(new_n156), .B0(new_n434), .Y(new_n468));
  AND2X1   g442(.A(new_n170), .B(new_n156), .Y(new_n469));
  AND2X1   g443(.A(new_n275), .B(new_n245), .Y(new_n470));
  INVX1    g444(.A(new_n470), .Y(new_n471));
  OAI21X1  g445(.A0(new_n471), .A1(new_n436), .B0(new_n469), .Y(new_n472));
  INVX1    g446(.A(new_n469), .Y(new_n473));
  NAND3X1  g447(.A(new_n470), .B(new_n409), .C(new_n473), .Y(new_n474));
  AOI21X1  g448(.A0(new_n474), .A1(new_n472), .B0(new_n373), .Y(new_n475));
  OAI21X1  g449(.A0(new_n475), .A1(new_n468), .B0(new_n375), .Y(new_n476));
  AND2X1   g450(.A(\num2[3] ), .B(\num1[1] ), .Y(new_n477));
  XOR2X1   g451(.A(new_n477), .B(new_n462), .Y(new_n478));
  AND2X1   g452(.A(\num2[0] ), .B(\num1[4] ), .Y(new_n479));
  XOR2X1   g453(.A(new_n479), .B(new_n478), .Y(new_n480));
  AND2X1   g454(.A(new_n442), .B(new_n441), .Y(new_n481));
  AOI21X1  g455(.A0(new_n444), .A1(new_n443), .B0(new_n481), .Y(new_n482));
  INVX1    g456(.A(new_n482), .Y(new_n483));
  XOR2X1   g457(.A(new_n483), .B(new_n480), .Y(new_n484));
  AND2X1   g458(.A(\num2[1] ), .B(\num1[3] ), .Y(new_n485));
  AND2X1   g459(.A(\num2[4] ), .B(\num1[0] ), .Y(new_n486));
  XOR2X1   g460(.A(new_n486), .B(new_n485), .Y(new_n487));
  XOR2X1   g461(.A(new_n487), .B(new_n484), .Y(new_n488));
  INVX1    g462(.A(new_n488), .Y(new_n489));
  INVX1    g463(.A(new_n446), .Y(new_n490));
  NOR3X1   g464(.A(new_n448), .B(new_n414), .C(new_n49), .Y(new_n491));
  AOI21X1  g465(.A0(new_n447), .A1(new_n490), .B0(new_n491), .Y(new_n492));
  XOR2X1   g466(.A(new_n492), .B(new_n489), .Y(new_n493));
  NOR4X1   g467(.A(new_n450), .B(new_n423), .C(new_n414), .D(new_n109), .Y(new_n494));
  XOR2X1   g468(.A(new_n494), .B(new_n493), .Y(new_n495));
  NOR2X1   g469(.A(new_n454), .B(new_n452), .Y(new_n496));
  INVX1    g470(.A(new_n496), .Y(new_n497));
  XOR2X1   g471(.A(new_n497), .B(new_n495), .Y(new_n498));
  XOR2X1   g472(.A(\num2[4] ), .B(\num1[4] ), .Y(new_n499));
  INVX1    g473(.A(new_n499), .Y(new_n500));
  NOR2X1   g474(.A(new_n456), .B(new_n413), .Y(new_n501));
  OAI21X1  g475(.A0(new_n416), .A1(new_n415), .B0(new_n501), .Y(new_n502));
  NOR3X1   g476(.A(new_n456), .B(\num2[2] ), .C(new_n49), .Y(new_n503));
  AOI21X1  g477(.A0(new_n54), .A1(\num1[3] ), .B0(new_n503), .Y(new_n504));
  AND2X1   g478(.A(new_n504), .B(new_n502), .Y(new_n505));
  XOR2X1   g479(.A(new_n505), .B(new_n500), .Y(new_n506));
  INVX1    g480(.A(\num1[4] ), .Y(new_n507));
  XOR2X1   g481(.A(\num2[4] ), .B(new_n507), .Y(new_n508));
  NOR3X1   g482(.A(new_n460), .B(new_n429), .C(new_n427), .Y(new_n509));
  AND2X1   g483(.A(\num2[3] ), .B(\num1[3] ), .Y(new_n510));
  INVX1    g484(.A(new_n510), .Y(new_n511));
  OAI21X1  g485(.A0(new_n460), .A1(new_n462), .B0(new_n511), .Y(new_n512));
  OR2X1    g486(.A(new_n512), .B(new_n509), .Y(new_n513));
  XOR2X1   g487(.A(new_n513), .B(new_n508), .Y(new_n514));
  OAI22X1  g488(.A0(new_n514), .A1(new_n400), .B0(new_n506), .B1(new_n387), .Y(new_n515));
  AOI21X1  g489(.A0(new_n498), .A1(new_n383), .B0(new_n515), .Y(new_n516));
  AOI21X1  g490(.A0(new_n516), .A1(new_n476), .B0(new_n390), .Y(\result[4] ));
  NAND3X1  g491(.A(new_n470), .B(new_n409), .C(new_n469), .Y(new_n518));
  XOR2X1   g492(.A(new_n518), .B(new_n139), .Y(new_n519));
  MX2X1    g493(.A(new_n519), .B(new_n139), .S0(new_n373), .Y(new_n520));
  OR2X1    g494(.A(new_n520), .B(new_n376), .Y(new_n521));
  AND2X1   g495(.A(\num2[2] ), .B(\num1[3] ), .Y(new_n522));
  AND2X1   g496(.A(\num2[3] ), .B(\num1[2] ), .Y(new_n523));
  XOR2X1   g497(.A(new_n523), .B(new_n522), .Y(new_n524));
  AND2X1   g498(.A(\num2[0] ), .B(\num1[5] ), .Y(new_n525));
  INVX1    g499(.A(new_n525), .Y(new_n526));
  XOR2X1   g500(.A(new_n526), .B(new_n524), .Y(new_n527));
  INVX1    g501(.A(new_n527), .Y(new_n528));
  AND2X1   g502(.A(new_n477), .B(new_n461), .Y(new_n529));
  INVX1    g503(.A(new_n529), .Y(new_n530));
  INVX1    g504(.A(new_n479), .Y(new_n531));
  OR2X1    g505(.A(new_n531), .B(new_n478), .Y(new_n532));
  AND2X1   g506(.A(new_n532), .B(new_n530), .Y(new_n533));
  XOR2X1   g507(.A(new_n533), .B(new_n528), .Y(new_n534));
  AND2X1   g508(.A(\num2[1] ), .B(\num1[4] ), .Y(new_n535));
  AND2X1   g509(.A(\num2[4] ), .B(\num1[1] ), .Y(new_n536));
  XOR2X1   g510(.A(new_n536), .B(new_n535), .Y(new_n537));
  AND2X1   g511(.A(\num2[5] ), .B(\num1[0] ), .Y(new_n538));
  INVX1    g512(.A(new_n538), .Y(new_n539));
  XOR2X1   g513(.A(new_n539), .B(new_n537), .Y(new_n540));
  INVX1    g514(.A(new_n540), .Y(new_n541));
  XOR2X1   g515(.A(new_n541), .B(new_n534), .Y(new_n542));
  INVX1    g516(.A(new_n542), .Y(new_n543));
  INVX1    g517(.A(new_n484), .Y(new_n544));
  NOR2X1   g518(.A(new_n482), .B(new_n480), .Y(new_n545));
  AOI21X1  g519(.A0(new_n487), .A1(new_n544), .B0(new_n545), .Y(new_n546));
  XOR2X1   g520(.A(new_n546), .B(new_n543), .Y(new_n547));
  AND2X1   g521(.A(new_n486), .B(new_n485), .Y(new_n548));
  XOR2X1   g522(.A(new_n548), .B(new_n547), .Y(new_n549));
  NOR2X1   g523(.A(new_n492), .B(new_n488), .Y(new_n550));
  XOR2X1   g524(.A(new_n550), .B(new_n549), .Y(new_n551));
  INVX1    g525(.A(new_n494), .Y(new_n552));
  NOR2X1   g526(.A(new_n552), .B(new_n493), .Y(new_n553));
  XOR2X1   g527(.A(new_n553), .B(new_n551), .Y(new_n554));
  NOR2X1   g528(.A(new_n497), .B(new_n495), .Y(new_n555));
  INVX1    g529(.A(new_n555), .Y(new_n556));
  XOR2X1   g530(.A(new_n556), .B(new_n554), .Y(new_n557));
  XOR2X1   g531(.A(\num2[5] ), .B(\num1[5] ), .Y(new_n558));
  OR2X1    g532(.A(new_n505), .B(new_n499), .Y(new_n559));
  OAI21X1  g533(.A0(\num2[4] ), .A1(new_n507), .B0(new_n559), .Y(new_n560));
  XOR2X1   g534(.A(new_n560), .B(new_n558), .Y(new_n561));
  XOR2X1   g535(.A(new_n34), .B(\num1[5] ), .Y(new_n562));
  INVX1    g536(.A(new_n562), .Y(new_n563));
  AND2X1   g537(.A(\num2[4] ), .B(\num1[4] ), .Y(new_n564));
  INVX1    g538(.A(new_n508), .Y(new_n565));
  AOI21X1  g539(.A0(new_n513), .A1(new_n565), .B0(new_n564), .Y(new_n566));
  XOR2X1   g540(.A(new_n566), .B(new_n563), .Y(new_n567));
  OAI22X1  g541(.A0(new_n567), .A1(new_n400), .B0(new_n561), .B1(new_n387), .Y(new_n568));
  AOI21X1  g542(.A0(new_n557), .A1(new_n383), .B0(new_n568), .Y(new_n569));
  AOI21X1  g543(.A0(new_n569), .A1(new_n521), .B0(new_n390), .Y(\result[5] ));
  INVX1    g544(.A(new_n102), .Y(new_n571));
  NAND3X1  g545(.A(new_n170), .B(new_n156), .C(new_n139), .Y(new_n572));
  NOR3X1   g546(.A(new_n572), .B(new_n471), .C(new_n436), .Y(new_n573));
  XOR2X1   g547(.A(new_n573), .B(new_n571), .Y(new_n574));
  MX2X1    g548(.A(new_n574), .B(new_n102), .S0(new_n373), .Y(new_n575));
  OR2X1    g549(.A(new_n575), .B(new_n376), .Y(new_n576));
  AND2X1   g550(.A(\num2[2] ), .B(\num1[4] ), .Y(new_n577));
  XOR2X1   g551(.A(new_n577), .B(new_n511), .Y(new_n578));
  AND2X1   g552(.A(\num2[0] ), .B(\num1[6] ), .Y(new_n579));
  XOR2X1   g553(.A(new_n579), .B(new_n578), .Y(new_n580));
  AND2X1   g554(.A(new_n523), .B(new_n522), .Y(new_n581));
  AOI21X1  g555(.A0(new_n525), .A1(new_n524), .B0(new_n581), .Y(new_n582));
  INVX1    g556(.A(new_n582), .Y(new_n583));
  XOR2X1   g557(.A(new_n583), .B(new_n580), .Y(new_n584));
  AND2X1   g558(.A(\num2[1] ), .B(\num1[5] ), .Y(new_n585));
  AND2X1   g559(.A(\num2[4] ), .B(\num1[2] ), .Y(new_n586));
  XOR2X1   g560(.A(new_n586), .B(new_n585), .Y(new_n587));
  AND2X1   g561(.A(\num2[5] ), .B(\num1[1] ), .Y(new_n588));
  INVX1    g562(.A(new_n588), .Y(new_n589));
  XOR2X1   g563(.A(new_n589), .B(new_n587), .Y(new_n590));
  INVX1    g564(.A(new_n590), .Y(new_n591));
  XOR2X1   g565(.A(new_n591), .B(new_n584), .Y(new_n592));
  INVX1    g566(.A(new_n592), .Y(new_n593));
  AOI21X1  g567(.A0(new_n532), .A1(new_n530), .B0(new_n527), .Y(new_n594));
  NOR2X1   g568(.A(new_n540), .B(new_n534), .Y(new_n595));
  NOR2X1   g569(.A(new_n595), .B(new_n594), .Y(new_n596));
  XOR2X1   g570(.A(new_n596), .B(new_n593), .Y(new_n597));
  AND2X1   g571(.A(new_n536), .B(new_n535), .Y(new_n598));
  AOI21X1  g572(.A0(new_n538), .A1(new_n537), .B0(new_n598), .Y(new_n599));
  AND2X1   g573(.A(\num2[6] ), .B(\num1[0] ), .Y(new_n600));
  XOR2X1   g574(.A(new_n600), .B(new_n599), .Y(new_n601));
  INVX1    g575(.A(new_n601), .Y(new_n602));
  XOR2X1   g576(.A(new_n602), .B(new_n597), .Y(new_n603));
  INVX1    g577(.A(new_n603), .Y(new_n604));
  INVX1    g578(.A(new_n547), .Y(new_n605));
  NOR2X1   g579(.A(new_n546), .B(new_n542), .Y(new_n606));
  AOI21X1  g580(.A0(new_n548), .A1(new_n605), .B0(new_n606), .Y(new_n607));
  XOR2X1   g581(.A(new_n607), .B(new_n604), .Y(new_n608));
  NOR3X1   g582(.A(new_n549), .B(new_n492), .C(new_n488), .Y(new_n609));
  XOR2X1   g583(.A(new_n609), .B(new_n608), .Y(new_n610));
  NOR3X1   g584(.A(new_n551), .B(new_n552), .C(new_n493), .Y(new_n611));
  NOR2X1   g585(.A(new_n556), .B(new_n554), .Y(new_n612));
  NOR2X1   g586(.A(new_n612), .B(new_n611), .Y(new_n613));
  XOR2X1   g587(.A(new_n613), .B(new_n610), .Y(new_n614));
  INVX1    g588(.A(\num1[6] ), .Y(new_n615));
  XOR2X1   g589(.A(\num2[6] ), .B(new_n615), .Y(new_n616));
  AND2X1   g590(.A(new_n34), .B(\num1[5] ), .Y(new_n617));
  NOR3X1   g591(.A(new_n558), .B(new_n505), .C(new_n499), .Y(new_n618));
  NOR3X1   g592(.A(new_n558), .B(\num2[4] ), .C(new_n507), .Y(new_n619));
  NOR3X1   g593(.A(new_n619), .B(new_n618), .C(new_n617), .Y(new_n620));
  XOR2X1   g594(.A(new_n620), .B(new_n616), .Y(new_n621));
  XOR2X1   g595(.A(\num2[6] ), .B(new_n615), .Y(new_n622));
  INVX1    g596(.A(new_n622), .Y(new_n623));
  NOR2X1   g597(.A(new_n562), .B(new_n508), .Y(new_n624));
  INVX1    g598(.A(new_n564), .Y(new_n625));
  NAND2X1  g599(.A(\num2[5] ), .B(\num1[5] ), .Y(new_n626));
  OAI21X1  g600(.A0(new_n562), .A1(new_n625), .B0(new_n626), .Y(new_n627));
  AOI21X1  g601(.A0(new_n624), .A1(new_n513), .B0(new_n627), .Y(new_n628));
  XOR2X1   g602(.A(new_n628), .B(new_n623), .Y(new_n629));
  OAI22X1  g603(.A0(new_n629), .A1(new_n400), .B0(new_n621), .B1(new_n387), .Y(new_n630));
  AOI21X1  g604(.A0(new_n614), .A1(new_n383), .B0(new_n630), .Y(new_n631));
  AOI21X1  g605(.A0(new_n631), .A1(new_n576), .B0(new_n390), .Y(\result[6] ));
  OR4X1    g606(.A(new_n572), .B(new_n471), .C(new_n436), .D(new_n571), .Y(new_n633));
  XOR2X1   g607(.A(new_n633), .B(new_n76), .Y(new_n634));
  MX2X1    g608(.A(new_n634), .B(new_n76), .S0(new_n373), .Y(new_n635));
  OR2X1    g609(.A(new_n635), .B(new_n376), .Y(new_n636));
  AND2X1   g610(.A(\num2[2] ), .B(\num1[5] ), .Y(new_n637));
  XOR2X1   g611(.A(new_n637), .B(\num2[7] ), .Y(new_n638));
  AND2X1   g612(.A(\num2[3] ), .B(\num1[4] ), .Y(new_n639));
  XOR2X1   g613(.A(new_n639), .B(new_n638), .Y(new_n640));
  NOR3X1   g614(.A(new_n578), .B(new_n44), .C(new_n615), .Y(new_n641));
  AOI21X1  g615(.A0(new_n577), .A1(new_n510), .B0(new_n641), .Y(new_n642));
  XOR2X1   g616(.A(new_n642), .B(new_n640), .Y(new_n643));
  NAND2X1  g617(.A(\num2[0] ), .B(\num1[7] ), .Y(new_n644));
  AND2X1   g618(.A(\num2[1] ), .B(\num1[6] ), .Y(new_n645));
  XOR2X1   g619(.A(new_n645), .B(new_n644), .Y(new_n646));
  NAND2X1  g620(.A(\num2[4] ), .B(\num1[3] ), .Y(new_n647));
  XOR2X1   g621(.A(new_n647), .B(new_n646), .Y(new_n648));
  XOR2X1   g622(.A(new_n648), .B(new_n643), .Y(new_n649));
  OR2X1    g623(.A(new_n582), .B(new_n580), .Y(new_n650));
  OAI21X1  g624(.A0(new_n590), .A1(new_n584), .B0(new_n650), .Y(new_n651));
  XOR2X1   g625(.A(new_n651), .B(new_n649), .Y(new_n652));
  AND2X1   g626(.A(new_n586), .B(new_n585), .Y(new_n653));
  AOI21X1  g627(.A0(new_n588), .A1(new_n587), .B0(new_n653), .Y(new_n654));
  NAND2X1  g628(.A(\num2[5] ), .B(\num1[2] ), .Y(new_n655));
  AND2X1   g629(.A(\num2[6] ), .B(\num1[1] ), .Y(new_n656));
  XOR2X1   g630(.A(new_n656), .B(new_n655), .Y(new_n657));
  AND2X1   g631(.A(\num2[7] ), .B(new_n110), .Y(new_n658));
  XOR2X1   g632(.A(new_n658), .B(new_n657), .Y(new_n659));
  XOR2X1   g633(.A(new_n659), .B(new_n654), .Y(new_n660));
  XOR2X1   g634(.A(new_n660), .B(new_n652), .Y(new_n661));
  OAI21X1  g635(.A0(new_n595), .A1(new_n594), .B0(new_n593), .Y(new_n662));
  OAI21X1  g636(.A0(new_n601), .A1(new_n597), .B0(new_n662), .Y(new_n663));
  XOR2X1   g637(.A(new_n663), .B(new_n661), .Y(new_n664));
  NOR3X1   g638(.A(new_n599), .B(new_n38), .C(new_n110), .Y(new_n665));
  XOR2X1   g639(.A(new_n665), .B(new_n664), .Y(new_n666));
  OR2X1    g640(.A(new_n607), .B(new_n603), .Y(new_n667));
  XOR2X1   g641(.A(new_n667), .B(new_n666), .Y(new_n668));
  OR4X1    g642(.A(new_n608), .B(new_n549), .C(new_n492), .D(new_n488), .Y(new_n669));
  OAI21X1  g643(.A0(new_n613), .A1(new_n610), .B0(new_n669), .Y(new_n670));
  XOR2X1   g644(.A(new_n670), .B(new_n668), .Y(new_n671));
  INVX1    g645(.A(\num1[7] ), .Y(new_n672));
  XOR2X1   g646(.A(\num2[7] ), .B(new_n672), .Y(new_n673));
  INVX1    g647(.A(new_n620), .Y(new_n674));
  AND2X1   g648(.A(new_n38), .B(\num1[6] ), .Y(new_n675));
  AOI21X1  g649(.A0(new_n674), .A1(new_n616), .B0(new_n675), .Y(new_n676));
  XOR2X1   g650(.A(new_n676), .B(new_n673), .Y(new_n677));
  XOR2X1   g651(.A(\num2[7] ), .B(new_n672), .Y(new_n678));
  NAND2X1  g652(.A(\num2[6] ), .B(\num1[6] ), .Y(new_n679));
  OAI21X1  g653(.A0(new_n628), .A1(new_n622), .B0(new_n679), .Y(new_n680));
  XOR2X1   g654(.A(new_n680), .B(new_n678), .Y(new_n681));
  OAI22X1  g655(.A0(new_n681), .A1(new_n400), .B0(new_n677), .B1(new_n387), .Y(new_n682));
  AOI21X1  g656(.A0(new_n671), .A1(new_n383), .B0(new_n682), .Y(new_n683));
  AOI21X1  g657(.A0(new_n683), .A1(new_n636), .B0(new_n390), .Y(\result[7] ));
endmodule


