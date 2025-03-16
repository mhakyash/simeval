// Benchmark "mux16" written by ABC on Wed Jun 26 15:22:04 2024

module mux16 ( 
    \in0[0] , \in0[1] , \in0[2] , \in0[3] , \in0[4] , \in0[5] , \in0[6] ,
    \in0[7] , \in0[8] , \in0[9] , \in0[10] , \in0[11] , \in0[12] ,
    \in0[13] , \in0[14] , \in0[15] , \in1[0] , \in1[1] , \in1[2] ,
    \in1[3] , \in1[4] , \in1[5] , \in1[6] , \in1[7] , \in1[8] , \in1[9] ,
    \in1[10] , \in1[11] , \in1[12] , \in1[13] , \in1[14] , \in1[15] ,
    \in2[0] , \in2[1] , \in2[2] , \in2[3] , \in2[4] , \in2[5] , \in2[6] ,
    \in2[7] , \in2[8] , \in2[9] , \in2[10] , \in2[11] , \in2[12] ,
    \in2[13] , \in2[14] , \in2[15] , \in3[0] , \in3[1] , \in3[2] ,
    \in3[3] , \in3[4] , \in3[5] , \in3[6] , \in3[7] , \in3[8] , \in3[9] ,
    \in3[10] , \in3[11] , \in3[12] , \in3[13] , \in3[14] , \in3[15] ,
    \in4[0] , \in4[1] , \in4[2] , \in4[3] , \in4[4] , \in4[5] , \in4[6] ,
    \in4[7] , \in4[8] , \in4[9] , \in4[10] , \in4[11] , \in4[12] ,
    \in4[13] , \in4[14] , \in4[15] , \in5[0] , \in5[1] , \in5[2] ,
    \in5[3] , \in5[4] , \in5[5] , \in5[6] , \in5[7] , \in5[8] , \in5[9] ,
    \in5[10] , \in5[11] , \in5[12] , \in5[13] , \in5[14] , \in5[15] ,
    \in6[0] , \in6[1] , \in6[2] , \in6[3] , \in6[4] , \in6[5] , \in6[6] ,
    \in6[7] , \in6[8] , \in6[9] , \in6[10] , \in6[11] , \in6[12] ,
    \in6[13] , \in6[14] , \in6[15] , \in7[0] , \in7[1] , \in7[2] ,
    \in7[3] , \in7[4] , \in7[5] , \in7[6] , \in7[7] , \in7[8] , \in7[9] ,
    \in7[10] , \in7[11] , \in7[12] , \in7[13] , \in7[14] , \in7[15] ,
    \sel[0] , \sel[1] , \sel[2] , \sel[3] ,
    \mux_out[0] , \mux_out[1] , \mux_out[2] , \mux_out[3] , \mux_out[4] ,
    \mux_out[5] , \mux_out[6] , \mux_out[7] , \mux_out[8] , \mux_out[9] ,
    \mux_out[10] , \mux_out[11] , \mux_out[12] , \mux_out[13] ,
    \mux_out[14] , \mux_out[15]   );
  input  \in0[0] , \in0[1] , \in0[2] , \in0[3] , \in0[4] , \in0[5] ,
    \in0[6] , \in0[7] , \in0[8] , \in0[9] , \in0[10] , \in0[11] ,
    \in0[12] , \in0[13] , \in0[14] , \in0[15] , \in1[0] , \in1[1] ,
    \in1[2] , \in1[3] , \in1[4] , \in1[5] , \in1[6] , \in1[7] , \in1[8] ,
    \in1[9] , \in1[10] , \in1[11] , \in1[12] , \in1[13] , \in1[14] ,
    \in1[15] , \in2[0] , \in2[1] , \in2[2] , \in2[3] , \in2[4] , \in2[5] ,
    \in2[6] , \in2[7] , \in2[8] , \in2[9] , \in2[10] , \in2[11] ,
    \in2[12] , \in2[13] , \in2[14] , \in2[15] , \in3[0] , \in3[1] ,
    \in3[2] , \in3[3] , \in3[4] , \in3[5] , \in3[6] , \in3[7] , \in3[8] ,
    \in3[9] , \in3[10] , \in3[11] , \in3[12] , \in3[13] , \in3[14] ,
    \in3[15] , \in4[0] , \in4[1] , \in4[2] , \in4[3] , \in4[4] , \in4[5] ,
    \in4[6] , \in4[7] , \in4[8] , \in4[9] , \in4[10] , \in4[11] ,
    \in4[12] , \in4[13] , \in4[14] , \in4[15] , \in5[0] , \in5[1] ,
    \in5[2] , \in5[3] , \in5[4] , \in5[5] , \in5[6] , \in5[7] , \in5[8] ,
    \in5[9] , \in5[10] , \in5[11] , \in5[12] , \in5[13] , \in5[14] ,
    \in5[15] , \in6[0] , \in6[1] , \in6[2] , \in6[3] , \in6[4] , \in6[5] ,
    \in6[6] , \in6[7] , \in6[8] , \in6[9] , \in6[10] , \in6[11] ,
    \in6[12] , \in6[13] , \in6[14] , \in6[15] , \in7[0] , \in7[1] ,
    \in7[2] , \in7[3] , \in7[4] , \in7[5] , \in7[6] , \in7[7] , \in7[8] ,
    \in7[9] , \in7[10] , \in7[11] , \in7[12] , \in7[13] , \in7[14] ,
    \in7[15] , \sel[0] , \sel[1] , \sel[2] , \sel[3] ;
  output \mux_out[0] , \mux_out[1] , \mux_out[2] , \mux_out[3] , \mux_out[4] ,
    \mux_out[5] , \mux_out[6] , \mux_out[7] , \mux_out[8] , \mux_out[9] ,
    \mux_out[10] , \mux_out[11] , \mux_out[12] , \mux_out[13] ,
    \mux_out[14] , \mux_out[15] ;
  wire new_n149, new_n150, new_n151, new_n152, new_n153, new_n154, new_n155,
    new_n156, new_n157, new_n158, new_n159, new_n160, new_n161, new_n162,
    new_n163, new_n164, new_n165, new_n166, new_n167, new_n169, new_n170,
    new_n171, new_n172, new_n173, new_n175, new_n176, new_n177, new_n178,
    new_n179, new_n181, new_n182, new_n183, new_n184, new_n185, new_n187,
    new_n188, new_n189, new_n190, new_n191, new_n193, new_n194, new_n195,
    new_n196, new_n197, new_n199, new_n200, new_n201, new_n202, new_n203,
    new_n205, new_n206, new_n207, new_n208, new_n209, new_n211, new_n212,
    new_n213, new_n214, new_n215, new_n217, new_n218, new_n219, new_n220,
    new_n221, new_n223, new_n224, new_n225, new_n226, new_n227, new_n229,
    new_n230, new_n231, new_n232, new_n233, new_n235, new_n236, new_n237,
    new_n238, new_n239, new_n241, new_n242, new_n243, new_n244, new_n245,
    new_n247, new_n248, new_n249, new_n250, new_n251, new_n253, new_n254,
    new_n255, new_n256, new_n257;
  INVX1    g000(.A(\sel[0] ), .Y(new_n149));
  INVX1    g001(.A(\sel[1] ), .Y(new_n150));
  NOR4X1   g002(.A(\sel[3] ), .B(\sel[2] ), .C(new_n150), .D(new_n149), .Y(new_n151));
  NOR4X1   g003(.A(\sel[3] ), .B(\sel[2] ), .C(new_n150), .D(\sel[0] ), .Y(new_n152));
  AOI22X1  g004(.A0(new_n152), .A1(\in2[0] ), .B0(new_n151), .B1(\in3[0] ), .Y(new_n153));
  NOR4X1   g005(.A(\sel[3] ), .B(\sel[2] ), .C(\sel[1] ), .D(new_n149), .Y(new_n154));
  NOR4X1   g006(.A(\sel[3] ), .B(\sel[2] ), .C(\sel[1] ), .D(\sel[0] ), .Y(new_n155));
  AOI22X1  g007(.A0(new_n155), .A1(\in0[0] ), .B0(new_n154), .B1(\in1[0] ), .Y(new_n156));
  INVX1    g008(.A(\sel[2] ), .Y(new_n157));
  NOR4X1   g009(.A(\sel[3] ), .B(new_n157), .C(new_n150), .D(new_n149), .Y(new_n158));
  NOR4X1   g010(.A(\sel[3] ), .B(new_n157), .C(new_n150), .D(\sel[0] ), .Y(new_n159));
  AOI22X1  g011(.A0(new_n159), .A1(\in6[0] ), .B0(new_n158), .B1(\in7[0] ), .Y(new_n160));
  NOR4X1   g012(.A(\sel[3] ), .B(new_n157), .C(\sel[1] ), .D(new_n149), .Y(new_n161));
  NOR4X1   g013(.A(\sel[3] ), .B(new_n157), .C(\sel[1] ), .D(\sel[0] ), .Y(new_n162));
  AOI22X1  g014(.A0(new_n162), .A1(\in4[0] ), .B0(new_n161), .B1(\in5[0] ), .Y(new_n163));
  NAND4X1  g015(.A(new_n163), .B(new_n160), .C(new_n156), .D(new_n153), .Y(new_n164));
  OR4X1    g016(.A(new_n155), .B(new_n154), .C(new_n152), .D(new_n151), .Y(new_n165));
  OR4X1    g017(.A(new_n162), .B(new_n161), .C(new_n159), .D(new_n158), .Y(new_n166));
  OR2X1    g018(.A(new_n166), .B(new_n165), .Y(new_n167));
  AND2X1   g019(.A(new_n167), .B(new_n164), .Y(\mux_out[0] ));
  AOI22X1  g020(.A0(new_n152), .A1(\in2[1] ), .B0(new_n151), .B1(\in3[1] ), .Y(new_n169));
  AOI22X1  g021(.A0(new_n155), .A1(\in0[1] ), .B0(new_n154), .B1(\in1[1] ), .Y(new_n170));
  AOI22X1  g022(.A0(new_n159), .A1(\in6[1] ), .B0(new_n158), .B1(\in7[1] ), .Y(new_n171));
  AOI22X1  g023(.A0(new_n162), .A1(\in4[1] ), .B0(new_n161), .B1(\in5[1] ), .Y(new_n172));
  NAND4X1  g024(.A(new_n172), .B(new_n171), .C(new_n170), .D(new_n169), .Y(new_n173));
  AND2X1   g025(.A(new_n173), .B(new_n167), .Y(\mux_out[1] ));
  AOI22X1  g026(.A0(new_n152), .A1(\in2[2] ), .B0(new_n151), .B1(\in3[2] ), .Y(new_n175));
  AOI22X1  g027(.A0(new_n155), .A1(\in0[2] ), .B0(new_n154), .B1(\in1[2] ), .Y(new_n176));
  AOI22X1  g028(.A0(new_n159), .A1(\in6[2] ), .B0(new_n158), .B1(\in7[2] ), .Y(new_n177));
  AOI22X1  g029(.A0(new_n162), .A1(\in4[2] ), .B0(new_n161), .B1(\in5[2] ), .Y(new_n178));
  NAND4X1  g030(.A(new_n178), .B(new_n177), .C(new_n176), .D(new_n175), .Y(new_n179));
  AND2X1   g031(.A(new_n179), .B(new_n167), .Y(\mux_out[2] ));
  AOI22X1  g032(.A0(new_n152), .A1(\in2[3] ), .B0(new_n151), .B1(\in3[3] ), .Y(new_n181));
  AOI22X1  g033(.A0(new_n155), .A1(\in0[3] ), .B0(new_n154), .B1(\in1[3] ), .Y(new_n182));
  AOI22X1  g034(.A0(new_n159), .A1(\in6[3] ), .B0(new_n158), .B1(\in7[3] ), .Y(new_n183));
  AOI22X1  g035(.A0(new_n162), .A1(\in4[3] ), .B0(new_n161), .B1(\in5[3] ), .Y(new_n184));
  NAND4X1  g036(.A(new_n184), .B(new_n183), .C(new_n182), .D(new_n181), .Y(new_n185));
  AND2X1   g037(.A(new_n185), .B(new_n167), .Y(\mux_out[3] ));
  AOI22X1  g038(.A0(new_n152), .A1(\in2[4] ), .B0(new_n151), .B1(\in3[4] ), .Y(new_n187));
  AOI22X1  g039(.A0(new_n155), .A1(\in0[4] ), .B0(new_n154), .B1(\in1[4] ), .Y(new_n188));
  AOI22X1  g040(.A0(new_n159), .A1(\in6[4] ), .B0(new_n158), .B1(\in7[4] ), .Y(new_n189));
  AOI22X1  g041(.A0(new_n162), .A1(\in4[4] ), .B0(new_n161), .B1(\in5[4] ), .Y(new_n190));
  NAND4X1  g042(.A(new_n190), .B(new_n189), .C(new_n188), .D(new_n187), .Y(new_n191));
  AND2X1   g043(.A(new_n191), .B(new_n167), .Y(\mux_out[4] ));
  AOI22X1  g044(.A0(new_n152), .A1(\in2[5] ), .B0(new_n151), .B1(\in3[5] ), .Y(new_n193));
  AOI22X1  g045(.A0(new_n155), .A1(\in0[5] ), .B0(new_n154), .B1(\in1[5] ), .Y(new_n194));
  AOI22X1  g046(.A0(new_n159), .A1(\in6[5] ), .B0(new_n158), .B1(\in7[5] ), .Y(new_n195));
  AOI22X1  g047(.A0(new_n162), .A1(\in4[5] ), .B0(new_n161), .B1(\in5[5] ), .Y(new_n196));
  NAND4X1  g048(.A(new_n196), .B(new_n195), .C(new_n194), .D(new_n193), .Y(new_n197));
  AND2X1   g049(.A(new_n197), .B(new_n167), .Y(\mux_out[5] ));
  AOI22X1  g050(.A0(new_n152), .A1(\in2[6] ), .B0(new_n151), .B1(\in3[6] ), .Y(new_n199));
  AOI22X1  g051(.A0(new_n155), .A1(\in0[6] ), .B0(new_n154), .B1(\in1[6] ), .Y(new_n200));
  AOI22X1  g052(.A0(new_n159), .A1(\in6[6] ), .B0(new_n158), .B1(\in7[6] ), .Y(new_n201));
  AOI22X1  g053(.A0(new_n162), .A1(\in4[6] ), .B0(new_n161), .B1(\in5[6] ), .Y(new_n202));
  NAND4X1  g054(.A(new_n202), .B(new_n201), .C(new_n200), .D(new_n199), .Y(new_n203));
  AND2X1   g055(.A(new_n203), .B(new_n167), .Y(\mux_out[6] ));
  AOI22X1  g056(.A0(new_n152), .A1(\in2[7] ), .B0(new_n151), .B1(\in3[7] ), .Y(new_n205));
  AOI22X1  g057(.A0(new_n155), .A1(\in0[7] ), .B0(new_n154), .B1(\in1[7] ), .Y(new_n206));
  AOI22X1  g058(.A0(new_n159), .A1(\in6[7] ), .B0(new_n158), .B1(\in7[7] ), .Y(new_n207));
  AOI22X1  g059(.A0(new_n162), .A1(\in4[7] ), .B0(new_n161), .B1(\in5[7] ), .Y(new_n208));
  NAND4X1  g060(.A(new_n208), .B(new_n207), .C(new_n206), .D(new_n205), .Y(new_n209));
  AND2X1   g061(.A(new_n209), .B(new_n167), .Y(\mux_out[7] ));
  AOI22X1  g062(.A0(new_n152), .A1(\in2[8] ), .B0(new_n151), .B1(\in3[8] ), .Y(new_n211));
  AOI22X1  g063(.A0(new_n155), .A1(\in0[8] ), .B0(new_n154), .B1(\in1[8] ), .Y(new_n212));
  AOI22X1  g064(.A0(new_n159), .A1(\in6[8] ), .B0(new_n158), .B1(\in7[8] ), .Y(new_n213));
  AOI22X1  g065(.A0(new_n162), .A1(\in4[8] ), .B0(new_n161), .B1(\in5[8] ), .Y(new_n214));
  NAND4X1  g066(.A(new_n214), .B(new_n213), .C(new_n212), .D(new_n211), .Y(new_n215));
  AND2X1   g067(.A(new_n215), .B(new_n167), .Y(\mux_out[8] ));
  AOI22X1  g068(.A0(new_n152), .A1(\in2[9] ), .B0(new_n151), .B1(\in3[9] ), .Y(new_n217));
  AOI22X1  g069(.A0(new_n155), .A1(\in0[9] ), .B0(new_n154), .B1(\in1[9] ), .Y(new_n218));
  AOI22X1  g070(.A0(new_n159), .A1(\in6[9] ), .B0(new_n158), .B1(\in7[9] ), .Y(new_n219));
  AOI22X1  g071(.A0(new_n162), .A1(\in4[9] ), .B0(new_n161), .B1(\in5[9] ), .Y(new_n220));
  NAND4X1  g072(.A(new_n220), .B(new_n219), .C(new_n218), .D(new_n217), .Y(new_n221));
  AND2X1   g073(.A(new_n221), .B(new_n167), .Y(\mux_out[9] ));
  AOI22X1  g074(.A0(new_n152), .A1(\in2[10] ), .B0(new_n151), .B1(\in3[10] ), .Y(new_n223));
  AOI22X1  g075(.A0(new_n155), .A1(\in0[10] ), .B0(new_n154), .B1(\in1[10] ), .Y(new_n224));
  AOI22X1  g076(.A0(new_n159), .A1(\in6[10] ), .B0(new_n158), .B1(\in7[10] ), .Y(new_n225));
  AOI22X1  g077(.A0(new_n162), .A1(\in4[10] ), .B0(new_n161), .B1(\in5[10] ), .Y(new_n226));
  NAND4X1  g078(.A(new_n226), .B(new_n225), .C(new_n224), .D(new_n223), .Y(new_n227));
  AND2X1   g079(.A(new_n227), .B(new_n167), .Y(\mux_out[10] ));
  AOI22X1  g080(.A0(new_n152), .A1(\in2[11] ), .B0(new_n151), .B1(\in3[11] ), .Y(new_n229));
  AOI22X1  g081(.A0(new_n155), .A1(\in0[11] ), .B0(new_n154), .B1(\in1[11] ), .Y(new_n230));
  AOI22X1  g082(.A0(new_n159), .A1(\in6[11] ), .B0(new_n158), .B1(\in7[11] ), .Y(new_n231));
  AOI22X1  g083(.A0(new_n162), .A1(\in4[11] ), .B0(new_n161), .B1(\in5[11] ), .Y(new_n232));
  NAND4X1  g084(.A(new_n232), .B(new_n231), .C(new_n230), .D(new_n229), .Y(new_n233));
  AND2X1   g085(.A(new_n233), .B(new_n167), .Y(\mux_out[11] ));
  AOI22X1  g086(.A0(new_n152), .A1(\in2[12] ), .B0(new_n151), .B1(\in3[12] ), .Y(new_n235));
  AOI22X1  g087(.A0(new_n155), .A1(\in0[12] ), .B0(new_n154), .B1(\in1[12] ), .Y(new_n236));
  AOI22X1  g088(.A0(new_n159), .A1(\in6[12] ), .B0(new_n158), .B1(\in7[12] ), .Y(new_n237));
  AOI22X1  g089(.A0(new_n162), .A1(\in4[12] ), .B0(new_n161), .B1(\in5[12] ), .Y(new_n238));
  NAND4X1  g090(.A(new_n238), .B(new_n237), .C(new_n236), .D(new_n235), .Y(new_n239));
  AND2X1   g091(.A(new_n239), .B(new_n167), .Y(\mux_out[12] ));
  AOI22X1  g092(.A0(new_n152), .A1(\in2[13] ), .B0(new_n151), .B1(\in3[13] ), .Y(new_n241));
  AOI22X1  g093(.A0(new_n155), .A1(\in0[13] ), .B0(new_n154), .B1(\in1[13] ), .Y(new_n242));
  AOI22X1  g094(.A0(new_n159), .A1(\in6[13] ), .B0(new_n158), .B1(\in7[13] ), .Y(new_n243));
  AOI22X1  g095(.A0(new_n162), .A1(\in4[13] ), .B0(new_n161), .B1(\in5[13] ), .Y(new_n244));
  NAND4X1  g096(.A(new_n244), .B(new_n243), .C(new_n242), .D(new_n241), .Y(new_n245));
  AND2X1   g097(.A(new_n245), .B(new_n167), .Y(\mux_out[13] ));
  AOI22X1  g098(.A0(new_n152), .A1(\in2[14] ), .B0(new_n151), .B1(\in3[14] ), .Y(new_n247));
  AOI22X1  g099(.A0(new_n155), .A1(\in0[14] ), .B0(new_n154), .B1(\in1[14] ), .Y(new_n248));
  AOI22X1  g100(.A0(new_n159), .A1(\in6[14] ), .B0(new_n158), .B1(\in7[14] ), .Y(new_n249));
  AOI22X1  g101(.A0(new_n162), .A1(\in4[14] ), .B0(new_n161), .B1(\in5[14] ), .Y(new_n250));
  NAND4X1  g102(.A(new_n250), .B(new_n249), .C(new_n248), .D(new_n247), .Y(new_n251));
  AND2X1   g103(.A(new_n251), .B(new_n167), .Y(\mux_out[14] ));
  AOI22X1  g104(.A0(new_n152), .A1(\in2[15] ), .B0(new_n151), .B1(\in3[15] ), .Y(new_n253));
  AOI22X1  g105(.A0(new_n155), .A1(\in0[15] ), .B0(new_n154), .B1(\in1[15] ), .Y(new_n254));
  AOI22X1  g106(.A0(new_n159), .A1(\in6[15] ), .B0(new_n158), .B1(\in7[15] ), .Y(new_n255));
  AOI22X1  g107(.A0(new_n162), .A1(\in4[15] ), .B0(new_n161), .B1(\in5[15] ), .Y(new_n256));
  NAND4X1  g108(.A(new_n256), .B(new_n255), .C(new_n254), .D(new_n253), .Y(new_n257));
  AND2X1   g109(.A(new_n257), .B(new_n167), .Y(\mux_out[15] ));
endmodule


