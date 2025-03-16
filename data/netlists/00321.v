// Benchmark "min_value" written by ABC on Wed Jun 26 15:22:06 2024

module min_value ( 
    \a[0] , \a[1] , \a[2] , \a[3] , \a[4] , \a[5] , \a[6] , \a[7] , \b[0] ,
    \b[1] , \b[2] , \b[3] , \b[4] , \b[5] , \b[6] , \b[7] , \c[0] , \c[1] ,
    \c[2] , \c[3] , \c[4] , \c[5] , \c[6] , \c[7] , \d[0] , \d[1] , \d[2] ,
    \d[3] , \d[4] , \d[5] , \d[6] , \d[7] ,
    \min[0] , \min[1] , \min[2] , \min[3] , \min[4] , \min[5] , \min[6] ,
    \min[7]   );
  input  \a[0] , \a[1] , \a[2] , \a[3] , \a[4] , \a[5] , \a[6] , \a[7] ,
    \b[0] , \b[1] , \b[2] , \b[3] , \b[4] , \b[5] , \b[6] , \b[7] , \c[0] ,
    \c[1] , \c[2] , \c[3] , \c[4] , \c[5] , \c[6] , \c[7] , \d[0] , \d[1] ,
    \d[2] , \d[3] , \d[4] , \d[5] , \d[6] , \d[7] ;
  output \min[0] , \min[1] , \min[2] , \min[3] , \min[4] , \min[5] , \min[6] ,
    \min[7] ;
  wire new_n41, new_n42, new_n43, new_n44, new_n45, new_n46, new_n47,
    new_n48, new_n49, new_n50, new_n51, new_n52, new_n53, new_n54, new_n55,
    new_n56, new_n57, new_n58, new_n59, new_n60, new_n61, new_n62, new_n63,
    new_n64, new_n65, new_n66, new_n67, new_n68, new_n69, new_n70, new_n71,
    new_n72, new_n73, new_n74, new_n75, new_n76, new_n77, new_n78, new_n79,
    new_n80, new_n81, new_n82, new_n83, new_n84, new_n85, new_n86, new_n87,
    new_n88, new_n89, new_n90, new_n91, new_n92, new_n93, new_n94, new_n95,
    new_n96, new_n97, new_n98, new_n99, new_n100, new_n101, new_n102,
    new_n103, new_n104, new_n105, new_n106, new_n107, new_n108, new_n109,
    new_n110, new_n111, new_n112, new_n113, new_n114, new_n115, new_n116,
    new_n117, new_n118, new_n119, new_n120, new_n121, new_n122, new_n123,
    new_n124, new_n125, new_n126, new_n127, new_n128, new_n129, new_n130,
    new_n131, new_n132, new_n133, new_n134, new_n135, new_n136, new_n137,
    new_n138, new_n139, new_n140, new_n141, new_n142, new_n143, new_n144,
    new_n145, new_n146, new_n147, new_n148, new_n149, new_n150, new_n151,
    new_n152, new_n153, new_n154, new_n155, new_n156, new_n157, new_n158,
    new_n159, new_n160, new_n161, new_n162, new_n163, new_n164, new_n165,
    new_n166, new_n167, new_n168, new_n169, new_n170, new_n171, new_n172,
    new_n173, new_n174, new_n175, new_n176, new_n177, new_n178, new_n179,
    new_n180, new_n181, new_n182, new_n183, new_n184, new_n185, new_n186,
    new_n187, new_n188, new_n189, new_n190, new_n191, new_n192, new_n193,
    new_n194, new_n195, new_n196, new_n197, new_n198, new_n199, new_n200,
    new_n201, new_n202, new_n203, new_n204, new_n205, new_n206, new_n207,
    new_n208, new_n209, new_n210, new_n211, new_n212, new_n213, new_n214,
    new_n215, new_n216, new_n217, new_n218, new_n219, new_n220, new_n221,
    new_n222, new_n223, new_n224, new_n225, new_n226, new_n227, new_n228,
    new_n229, new_n230, new_n231, new_n232, new_n233, new_n234, new_n235,
    new_n236, new_n237, new_n238, new_n239, new_n240, new_n241, new_n242,
    new_n243, new_n244, new_n245, new_n246, new_n247, new_n248, new_n249,
    new_n250, new_n251, new_n252, new_n253, new_n254, new_n255, new_n256,
    new_n258, new_n259, new_n261, new_n262, new_n264, new_n265, new_n267,
    new_n268, new_n270, new_n271, new_n273, new_n274, new_n276, new_n277;
  XOR2X1   g000(.A(\d[7] ), .B(\c[7] ), .Y(new_n41));
  XOR2X1   g001(.A(\d[6] ), .B(\c[6] ), .Y(new_n42));
  XOR2X1   g002(.A(\d[5] ), .B(\c[5] ), .Y(new_n43));
  XOR2X1   g003(.A(\d[4] ), .B(\c[4] ), .Y(new_n44));
  OR4X1    g004(.A(new_n44), .B(new_n43), .C(new_n42), .D(new_n41), .Y(new_n45));
  XOR2X1   g005(.A(\d[3] ), .B(\c[3] ), .Y(new_n46));
  XOR2X1   g006(.A(\d[2] ), .B(\c[2] ), .Y(new_n47));
  NOR2X1   g007(.A(new_n47), .B(new_n46), .Y(new_n48));
  INVX1    g008(.A(\d[1] ), .Y(new_n49));
  AND2X1   g009(.A(new_n49), .B(\c[1] ), .Y(new_n50));
  INVX1    g010(.A(\c[0] ), .Y(new_n51));
  XOR2X1   g011(.A(\d[1] ), .B(\c[1] ), .Y(new_n52));
  AOI21X1  g012(.A0(\d[0] ), .A1(new_n51), .B0(new_n52), .Y(new_n53));
  OAI21X1  g013(.A0(new_n53), .A1(new_n50), .B0(new_n48), .Y(new_n54));
  INVX1    g014(.A(\d[3] ), .Y(new_n55));
  INVX1    g015(.A(\c[2] ), .Y(new_n56));
  NOR3X1   g016(.A(new_n46), .B(\d[2] ), .C(new_n56), .Y(new_n57));
  AOI21X1  g017(.A0(new_n55), .A1(\c[3] ), .B0(new_n57), .Y(new_n58));
  AOI21X1  g018(.A0(new_n58), .A1(new_n54), .B0(new_n45), .Y(new_n59));
  OR2X1    g019(.A(new_n42), .B(new_n41), .Y(new_n60));
  INVX1    g020(.A(\d[5] ), .Y(new_n61));
  INVX1    g021(.A(\c[4] ), .Y(new_n62));
  NOR3X1   g022(.A(new_n43), .B(\d[4] ), .C(new_n62), .Y(new_n63));
  AOI21X1  g023(.A0(new_n61), .A1(\c[5] ), .B0(new_n63), .Y(new_n64));
  INVX1    g024(.A(\d[7] ), .Y(new_n65));
  INVX1    g025(.A(\c[6] ), .Y(new_n66));
  NOR3X1   g026(.A(new_n41), .B(\d[6] ), .C(new_n66), .Y(new_n67));
  AOI21X1  g027(.A0(new_n65), .A1(\c[7] ), .B0(new_n67), .Y(new_n68));
  OAI21X1  g028(.A0(new_n64), .A1(new_n60), .B0(new_n68), .Y(new_n69));
  XOR2X1   g029(.A(\d[0] ), .B(\c[0] ), .Y(new_n70));
  OR4X1    g030(.A(new_n70), .B(new_n52), .C(new_n47), .D(new_n46), .Y(new_n71));
  OAI22X1  g031(.A0(new_n71), .A1(new_n45), .B0(new_n69), .B1(new_n59), .Y(new_n72));
  XOR2X1   g032(.A(\c[7] ), .B(\a[7] ), .Y(new_n73));
  XOR2X1   g033(.A(\c[6] ), .B(\a[6] ), .Y(new_n74));
  XOR2X1   g034(.A(\c[5] ), .B(\a[5] ), .Y(new_n75));
  XOR2X1   g035(.A(\c[4] ), .B(\a[4] ), .Y(new_n76));
  OR4X1    g036(.A(new_n76), .B(new_n75), .C(new_n74), .D(new_n73), .Y(new_n77));
  XOR2X1   g037(.A(\c[3] ), .B(\a[3] ), .Y(new_n78));
  XOR2X1   g038(.A(\c[2] ), .B(\a[2] ), .Y(new_n79));
  NOR2X1   g039(.A(new_n79), .B(new_n78), .Y(new_n80));
  INVX1    g040(.A(\a[1] ), .Y(new_n81));
  AND2X1   g041(.A(\c[1] ), .B(new_n81), .Y(new_n82));
  XOR2X1   g042(.A(\c[1] ), .B(\a[1] ), .Y(new_n83));
  AOI21X1  g043(.A0(new_n51), .A1(\a[0] ), .B0(new_n83), .Y(new_n84));
  OAI21X1  g044(.A0(new_n84), .A1(new_n82), .B0(new_n80), .Y(new_n85));
  INVX1    g045(.A(\a[3] ), .Y(new_n86));
  NOR3X1   g046(.A(new_n78), .B(new_n56), .C(\a[2] ), .Y(new_n87));
  AOI21X1  g047(.A0(\c[3] ), .A1(new_n86), .B0(new_n87), .Y(new_n88));
  AOI21X1  g048(.A0(new_n88), .A1(new_n85), .B0(new_n77), .Y(new_n89));
  OR2X1    g049(.A(new_n74), .B(new_n73), .Y(new_n90));
  INVX1    g050(.A(\a[5] ), .Y(new_n91));
  NOR3X1   g051(.A(new_n75), .B(new_n62), .C(\a[4] ), .Y(new_n92));
  AOI21X1  g052(.A0(\c[5] ), .A1(new_n91), .B0(new_n92), .Y(new_n93));
  INVX1    g053(.A(\a[7] ), .Y(new_n94));
  NOR3X1   g054(.A(new_n73), .B(new_n66), .C(\a[6] ), .Y(new_n95));
  AOI21X1  g055(.A0(\c[7] ), .A1(new_n94), .B0(new_n95), .Y(new_n96));
  OAI21X1  g056(.A0(new_n93), .A1(new_n90), .B0(new_n96), .Y(new_n97));
  XOR2X1   g057(.A(\c[0] ), .B(\a[0] ), .Y(new_n98));
  OR4X1    g058(.A(new_n98), .B(new_n83), .C(new_n79), .D(new_n78), .Y(new_n99));
  OR2X1    g059(.A(new_n99), .B(new_n77), .Y(new_n100));
  OAI21X1  g060(.A0(new_n97), .A1(new_n89), .B0(new_n100), .Y(new_n101));
  XOR2X1   g061(.A(\c[7] ), .B(\b[7] ), .Y(new_n102));
  XOR2X1   g062(.A(\c[6] ), .B(\b[6] ), .Y(new_n103));
  XOR2X1   g063(.A(\c[5] ), .B(\b[5] ), .Y(new_n104));
  XOR2X1   g064(.A(\c[4] ), .B(\b[4] ), .Y(new_n105));
  OR4X1    g065(.A(new_n105), .B(new_n104), .C(new_n103), .D(new_n102), .Y(new_n106));
  XOR2X1   g066(.A(\c[3] ), .B(\b[3] ), .Y(new_n107));
  XOR2X1   g067(.A(\c[2] ), .B(\b[2] ), .Y(new_n108));
  NOR2X1   g068(.A(new_n108), .B(new_n107), .Y(new_n109));
  INVX1    g069(.A(\b[1] ), .Y(new_n110));
  AND2X1   g070(.A(\c[1] ), .B(new_n110), .Y(new_n111));
  XOR2X1   g071(.A(\c[1] ), .B(\b[1] ), .Y(new_n112));
  AOI21X1  g072(.A0(new_n51), .A1(\b[0] ), .B0(new_n112), .Y(new_n113));
  OAI21X1  g073(.A0(new_n113), .A1(new_n111), .B0(new_n109), .Y(new_n114));
  INVX1    g074(.A(\b[3] ), .Y(new_n115));
  NOR3X1   g075(.A(new_n107), .B(new_n56), .C(\b[2] ), .Y(new_n116));
  AOI21X1  g076(.A0(\c[3] ), .A1(new_n115), .B0(new_n116), .Y(new_n117));
  AOI21X1  g077(.A0(new_n117), .A1(new_n114), .B0(new_n106), .Y(new_n118));
  OR2X1    g078(.A(new_n103), .B(new_n102), .Y(new_n119));
  INVX1    g079(.A(\b[5] ), .Y(new_n120));
  NOR3X1   g080(.A(new_n104), .B(new_n62), .C(\b[4] ), .Y(new_n121));
  AOI21X1  g081(.A0(\c[5] ), .A1(new_n120), .B0(new_n121), .Y(new_n122));
  INVX1    g082(.A(\b[7] ), .Y(new_n123));
  NOR3X1   g083(.A(new_n102), .B(new_n66), .C(\b[6] ), .Y(new_n124));
  AOI21X1  g084(.A0(\c[7] ), .A1(new_n123), .B0(new_n124), .Y(new_n125));
  OAI21X1  g085(.A0(new_n122), .A1(new_n119), .B0(new_n125), .Y(new_n126));
  XOR2X1   g086(.A(\c[0] ), .B(\b[0] ), .Y(new_n127));
  OR4X1    g087(.A(new_n127), .B(new_n112), .C(new_n108), .D(new_n107), .Y(new_n128));
  OR2X1    g088(.A(new_n128), .B(new_n106), .Y(new_n129));
  OAI21X1  g089(.A0(new_n126), .A1(new_n118), .B0(new_n129), .Y(new_n130));
  NAND3X1  g090(.A(new_n130), .B(new_n101), .C(new_n72), .Y(new_n131));
  MX2X1    g091(.A(\c[0] ), .B(\d[0] ), .S0(new_n131), .Y(new_n132));
  XOR2X1   g092(.A(\d[7] ), .B(\b[7] ), .Y(new_n133));
  XOR2X1   g093(.A(\d[6] ), .B(\b[6] ), .Y(new_n134));
  XOR2X1   g094(.A(\d[5] ), .B(\b[5] ), .Y(new_n135));
  XOR2X1   g095(.A(\d[4] ), .B(\b[4] ), .Y(new_n136));
  OR4X1    g096(.A(new_n136), .B(new_n135), .C(new_n134), .D(new_n133), .Y(new_n137));
  XOR2X1   g097(.A(\d[3] ), .B(\b[3] ), .Y(new_n138));
  XOR2X1   g098(.A(\d[2] ), .B(\b[2] ), .Y(new_n139));
  NOR2X1   g099(.A(new_n139), .B(new_n138), .Y(new_n140));
  AND2X1   g100(.A(new_n49), .B(\b[1] ), .Y(new_n141));
  INVX1    g101(.A(\b[0] ), .Y(new_n142));
  XOR2X1   g102(.A(\d[1] ), .B(\b[1] ), .Y(new_n143));
  AOI21X1  g103(.A0(\d[0] ), .A1(new_n142), .B0(new_n143), .Y(new_n144));
  OAI21X1  g104(.A0(new_n144), .A1(new_n141), .B0(new_n140), .Y(new_n145));
  INVX1    g105(.A(\b[2] ), .Y(new_n146));
  NOR3X1   g106(.A(new_n138), .B(\d[2] ), .C(new_n146), .Y(new_n147));
  AOI21X1  g107(.A0(new_n55), .A1(\b[3] ), .B0(new_n147), .Y(new_n148));
  AOI21X1  g108(.A0(new_n148), .A1(new_n145), .B0(new_n137), .Y(new_n149));
  OR2X1    g109(.A(new_n134), .B(new_n133), .Y(new_n150));
  INVX1    g110(.A(\b[4] ), .Y(new_n151));
  NOR3X1   g111(.A(new_n135), .B(\d[4] ), .C(new_n151), .Y(new_n152));
  AOI21X1  g112(.A0(new_n61), .A1(\b[5] ), .B0(new_n152), .Y(new_n153));
  INVX1    g113(.A(\b[6] ), .Y(new_n154));
  NOR3X1   g114(.A(new_n133), .B(\d[6] ), .C(new_n154), .Y(new_n155));
  AOI21X1  g115(.A0(new_n65), .A1(\b[7] ), .B0(new_n155), .Y(new_n156));
  OAI21X1  g116(.A0(new_n153), .A1(new_n150), .B0(new_n156), .Y(new_n157));
  XOR2X1   g117(.A(\d[0] ), .B(\b[0] ), .Y(new_n158));
  OR4X1    g118(.A(new_n158), .B(new_n143), .C(new_n139), .D(new_n138), .Y(new_n159));
  OAI22X1  g119(.A0(new_n159), .A1(new_n137), .B0(new_n157), .B1(new_n149), .Y(new_n160));
  XOR2X1   g120(.A(\b[7] ), .B(\a[7] ), .Y(new_n161));
  XOR2X1   g121(.A(\b[6] ), .B(\a[6] ), .Y(new_n162));
  XOR2X1   g122(.A(\b[5] ), .B(\a[5] ), .Y(new_n163));
  XOR2X1   g123(.A(\b[4] ), .B(\a[4] ), .Y(new_n164));
  OR4X1    g124(.A(new_n164), .B(new_n163), .C(new_n162), .D(new_n161), .Y(new_n165));
  XOR2X1   g125(.A(\b[3] ), .B(\a[3] ), .Y(new_n166));
  XOR2X1   g126(.A(\b[2] ), .B(\a[2] ), .Y(new_n167));
  NOR2X1   g127(.A(new_n167), .B(new_n166), .Y(new_n168));
  AND2X1   g128(.A(\b[1] ), .B(new_n81), .Y(new_n169));
  XOR2X1   g129(.A(\b[1] ), .B(\a[1] ), .Y(new_n170));
  AOI21X1  g130(.A0(new_n142), .A1(\a[0] ), .B0(new_n170), .Y(new_n171));
  OAI21X1  g131(.A0(new_n171), .A1(new_n169), .B0(new_n168), .Y(new_n172));
  NOR3X1   g132(.A(new_n166), .B(new_n146), .C(\a[2] ), .Y(new_n173));
  AOI21X1  g133(.A0(\b[3] ), .A1(new_n86), .B0(new_n173), .Y(new_n174));
  AOI21X1  g134(.A0(new_n174), .A1(new_n172), .B0(new_n165), .Y(new_n175));
  OR2X1    g135(.A(new_n162), .B(new_n161), .Y(new_n176));
  NOR3X1   g136(.A(new_n163), .B(new_n151), .C(\a[4] ), .Y(new_n177));
  AOI21X1  g137(.A0(\b[5] ), .A1(new_n91), .B0(new_n177), .Y(new_n178));
  NOR3X1   g138(.A(new_n161), .B(new_n154), .C(\a[6] ), .Y(new_n179));
  AOI21X1  g139(.A0(\b[7] ), .A1(new_n94), .B0(new_n179), .Y(new_n180));
  OAI21X1  g140(.A0(new_n178), .A1(new_n176), .B0(new_n180), .Y(new_n181));
  XOR2X1   g141(.A(\b[0] ), .B(\a[0] ), .Y(new_n182));
  OR4X1    g142(.A(new_n182), .B(new_n170), .C(new_n167), .D(new_n166), .Y(new_n183));
  OR2X1    g143(.A(new_n183), .B(new_n165), .Y(new_n184));
  OAI21X1  g144(.A0(new_n181), .A1(new_n175), .B0(new_n184), .Y(new_n185));
  INVX1    g145(.A(\c[1] ), .Y(new_n186));
  AND2X1   g146(.A(new_n186), .B(\b[1] ), .Y(new_n187));
  AOI21X1  g147(.A0(\c[0] ), .A1(new_n142), .B0(new_n112), .Y(new_n188));
  OAI21X1  g148(.A0(new_n188), .A1(new_n187), .B0(new_n109), .Y(new_n189));
  INVX1    g149(.A(\c[3] ), .Y(new_n190));
  NOR3X1   g150(.A(new_n107), .B(\c[2] ), .C(new_n146), .Y(new_n191));
  AOI21X1  g151(.A0(new_n190), .A1(\b[3] ), .B0(new_n191), .Y(new_n192));
  AOI21X1  g152(.A0(new_n192), .A1(new_n189), .B0(new_n106), .Y(new_n193));
  INVX1    g153(.A(\c[5] ), .Y(new_n194));
  NOR3X1   g154(.A(new_n104), .B(\c[4] ), .C(new_n151), .Y(new_n195));
  AOI21X1  g155(.A0(new_n194), .A1(\b[5] ), .B0(new_n195), .Y(new_n196));
  INVX1    g156(.A(\c[7] ), .Y(new_n197));
  NOR3X1   g157(.A(new_n102), .B(\c[6] ), .C(new_n154), .Y(new_n198));
  AOI21X1  g158(.A0(new_n197), .A1(\b[7] ), .B0(new_n198), .Y(new_n199));
  OAI21X1  g159(.A0(new_n196), .A1(new_n119), .B0(new_n199), .Y(new_n200));
  OAI21X1  g160(.A0(new_n200), .A1(new_n193), .B0(new_n129), .Y(new_n201));
  NAND3X1  g161(.A(new_n201), .B(new_n185), .C(new_n160), .Y(new_n202));
  MX2X1    g162(.A(\b[0] ), .B(new_n132), .S0(new_n202), .Y(new_n203));
  XOR2X1   g163(.A(\d[7] ), .B(\a[7] ), .Y(new_n204));
  XOR2X1   g164(.A(\d[6] ), .B(\a[6] ), .Y(new_n205));
  XOR2X1   g165(.A(\d[5] ), .B(\a[5] ), .Y(new_n206));
  XOR2X1   g166(.A(\d[4] ), .B(\a[4] ), .Y(new_n207));
  OR4X1    g167(.A(new_n207), .B(new_n206), .C(new_n205), .D(new_n204), .Y(new_n208));
  XOR2X1   g168(.A(\d[3] ), .B(\a[3] ), .Y(new_n209));
  XOR2X1   g169(.A(\d[2] ), .B(\a[2] ), .Y(new_n210));
  NOR2X1   g170(.A(new_n210), .B(new_n209), .Y(new_n211));
  AND2X1   g171(.A(new_n49), .B(\a[1] ), .Y(new_n212));
  INVX1    g172(.A(\a[0] ), .Y(new_n213));
  XOR2X1   g173(.A(\d[1] ), .B(\a[1] ), .Y(new_n214));
  AOI21X1  g174(.A0(\d[0] ), .A1(new_n213), .B0(new_n214), .Y(new_n215));
  OAI21X1  g175(.A0(new_n215), .A1(new_n212), .B0(new_n211), .Y(new_n216));
  INVX1    g176(.A(\a[2] ), .Y(new_n217));
  NOR3X1   g177(.A(new_n209), .B(\d[2] ), .C(new_n217), .Y(new_n218));
  AOI21X1  g178(.A0(new_n55), .A1(\a[3] ), .B0(new_n218), .Y(new_n219));
  AOI21X1  g179(.A0(new_n219), .A1(new_n216), .B0(new_n208), .Y(new_n220));
  OR2X1    g180(.A(new_n205), .B(new_n204), .Y(new_n221));
  INVX1    g181(.A(\a[4] ), .Y(new_n222));
  NOR3X1   g182(.A(new_n206), .B(\d[4] ), .C(new_n222), .Y(new_n223));
  AOI21X1  g183(.A0(new_n61), .A1(\a[5] ), .B0(new_n223), .Y(new_n224));
  INVX1    g184(.A(\a[6] ), .Y(new_n225));
  NOR3X1   g185(.A(new_n204), .B(\d[6] ), .C(new_n225), .Y(new_n226));
  AOI21X1  g186(.A0(new_n65), .A1(\a[7] ), .B0(new_n226), .Y(new_n227));
  OAI21X1  g187(.A0(new_n224), .A1(new_n221), .B0(new_n227), .Y(new_n228));
  XOR2X1   g188(.A(\d[0] ), .B(\a[0] ), .Y(new_n229));
  OR4X1    g189(.A(new_n229), .B(new_n214), .C(new_n210), .D(new_n209), .Y(new_n230));
  OAI22X1  g190(.A0(new_n230), .A1(new_n208), .B0(new_n228), .B1(new_n220), .Y(new_n231));
  AND2X1   g191(.A(new_n110), .B(\a[1] ), .Y(new_n232));
  AOI21X1  g192(.A0(\b[0] ), .A1(new_n213), .B0(new_n170), .Y(new_n233));
  OAI21X1  g193(.A0(new_n233), .A1(new_n232), .B0(new_n168), .Y(new_n234));
  NOR3X1   g194(.A(new_n166), .B(\b[2] ), .C(new_n217), .Y(new_n235));
  AOI21X1  g195(.A0(new_n115), .A1(\a[3] ), .B0(new_n235), .Y(new_n236));
  AOI21X1  g196(.A0(new_n236), .A1(new_n234), .B0(new_n165), .Y(new_n237));
  NOR3X1   g197(.A(new_n163), .B(\b[4] ), .C(new_n222), .Y(new_n238));
  AOI21X1  g198(.A0(new_n120), .A1(\a[5] ), .B0(new_n238), .Y(new_n239));
  NOR3X1   g199(.A(new_n161), .B(\b[6] ), .C(new_n225), .Y(new_n240));
  AOI21X1  g200(.A0(new_n123), .A1(\a[7] ), .B0(new_n240), .Y(new_n241));
  OAI21X1  g201(.A0(new_n239), .A1(new_n176), .B0(new_n241), .Y(new_n242));
  OAI21X1  g202(.A0(new_n242), .A1(new_n237), .B0(new_n184), .Y(new_n243));
  AND2X1   g203(.A(new_n186), .B(\a[1] ), .Y(new_n244));
  AOI21X1  g204(.A0(\c[0] ), .A1(new_n213), .B0(new_n83), .Y(new_n245));
  OAI21X1  g205(.A0(new_n245), .A1(new_n244), .B0(new_n80), .Y(new_n246));
  NOR3X1   g206(.A(new_n78), .B(\c[2] ), .C(new_n217), .Y(new_n247));
  AOI21X1  g207(.A0(new_n190), .A1(\a[3] ), .B0(new_n247), .Y(new_n248));
  AOI21X1  g208(.A0(new_n248), .A1(new_n246), .B0(new_n77), .Y(new_n249));
  NOR3X1   g209(.A(new_n75), .B(\c[4] ), .C(new_n222), .Y(new_n250));
  AOI21X1  g210(.A0(new_n194), .A1(\a[5] ), .B0(new_n250), .Y(new_n251));
  NOR3X1   g211(.A(new_n73), .B(\c[6] ), .C(new_n225), .Y(new_n252));
  AOI21X1  g212(.A0(new_n197), .A1(\a[7] ), .B0(new_n252), .Y(new_n253));
  OAI21X1  g213(.A0(new_n251), .A1(new_n90), .B0(new_n253), .Y(new_n254));
  OAI21X1  g214(.A0(new_n254), .A1(new_n249), .B0(new_n100), .Y(new_n255));
  NAND3X1  g215(.A(new_n255), .B(new_n243), .C(new_n231), .Y(new_n256));
  MX2X1    g216(.A(\a[0] ), .B(new_n203), .S0(new_n256), .Y(\min[0] ));
  MX2X1    g217(.A(\c[1] ), .B(\d[1] ), .S0(new_n131), .Y(new_n258));
  MX2X1    g218(.A(\b[1] ), .B(new_n258), .S0(new_n202), .Y(new_n259));
  MX2X1    g219(.A(\a[1] ), .B(new_n259), .S0(new_n256), .Y(\min[1] ));
  MX2X1    g220(.A(\c[2] ), .B(\d[2] ), .S0(new_n131), .Y(new_n261));
  MX2X1    g221(.A(\b[2] ), .B(new_n261), .S0(new_n202), .Y(new_n262));
  MX2X1    g222(.A(\a[2] ), .B(new_n262), .S0(new_n256), .Y(\min[2] ));
  MX2X1    g223(.A(\c[3] ), .B(\d[3] ), .S0(new_n131), .Y(new_n264));
  MX2X1    g224(.A(\b[3] ), .B(new_n264), .S0(new_n202), .Y(new_n265));
  MX2X1    g225(.A(\a[3] ), .B(new_n265), .S0(new_n256), .Y(\min[3] ));
  MX2X1    g226(.A(\c[4] ), .B(\d[4] ), .S0(new_n131), .Y(new_n267));
  MX2X1    g227(.A(\b[4] ), .B(new_n267), .S0(new_n202), .Y(new_n268));
  MX2X1    g228(.A(\a[4] ), .B(new_n268), .S0(new_n256), .Y(\min[4] ));
  MX2X1    g229(.A(\c[5] ), .B(\d[5] ), .S0(new_n131), .Y(new_n270));
  MX2X1    g230(.A(\b[5] ), .B(new_n270), .S0(new_n202), .Y(new_n271));
  MX2X1    g231(.A(\a[5] ), .B(new_n271), .S0(new_n256), .Y(\min[5] ));
  MX2X1    g232(.A(\c[6] ), .B(\d[6] ), .S0(new_n131), .Y(new_n273));
  MX2X1    g233(.A(\b[6] ), .B(new_n273), .S0(new_n202), .Y(new_n274));
  MX2X1    g234(.A(\a[6] ), .B(new_n274), .S0(new_n256), .Y(\min[6] ));
  MX2X1    g235(.A(\c[7] ), .B(\d[7] ), .S0(new_n131), .Y(new_n276));
  MX2X1    g236(.A(\b[7] ), .B(new_n276), .S0(new_n202), .Y(new_n277));
  MX2X1    g237(.A(\a[7] ), .B(new_n277), .S0(new_n256), .Y(\min[7] ));
endmodule


