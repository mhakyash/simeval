// Benchmark "top_module" written by ABC on Wed Jun 26 15:22:03 2024

module top_module ( clock, 
    clk, \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] , \in[6] ,
    \in[7] , \in[8] , \in[9] , \in[10] , \in[11] , \in[12] , \in[13] ,
    \in[14] , \in[15] ,
    \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7]   );
  input  clock;
  input  clk, \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] ,
    \in[6] , \in[7] , \in[8] , \in[9] , \in[10] , \in[11] , \in[12] ,
    \in[13] , \in[14] , \in[15] ;
  output \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] ;
  reg \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] ;
  wire new_n50, new_n51, new_n52, new_n53, new_n54, new_n55, new_n56,
    new_n57, new_n58, new_n59, new_n60, new_n61, new_n62, new_n63, new_n64,
    new_n65, new_n66, new_n67, new_n68, new_n69, new_n70, new_n71, new_n72,
    new_n73, new_n74, new_n75, new_n76, new_n77, new_n78, new_n79, new_n80,
    new_n81, new_n82, new_n83, new_n84, new_n85, new_n86, new_n87, new_n88,
    new_n89, new_n90, new_n91, new_n92, new_n93, new_n94, new_n95, new_n96,
    new_n97, new_n98, new_n99, new_n100, new_n101, new_n102, new_n103,
    new_n104, new_n105, new_n106, new_n107, new_n108, new_n109, new_n110,
    new_n111, new_n112, new_n113, new_n114, new_n115, new_n116, new_n117,
    new_n118, new_n119, new_n120, new_n121, new_n122, new_n123, new_n124,
    new_n125, new_n126, new_n127, new_n128, new_n129, new_n130, new_n131,
    new_n132, new_n133, new_n134, new_n135, new_n136, new_n137, new_n138,
    new_n139, new_n140, new_n141, new_n142, new_n143, new_n144, new_n145,
    new_n146, new_n147, new_n149, new_n150, new_n151, new_n152, new_n153,
    new_n154, new_n155, new_n156, new_n157, new_n158, new_n159, new_n160,
    new_n162, new_n163, new_n164, new_n165, new_n166, new_n167, new_n168,
    new_n169, new_n170, new_n171, new_n172, new_n173, new_n175, new_n176,
    new_n177, new_n178, new_n179, new_n180, new_n181, new_n182, new_n183,
    new_n184, new_n185, new_n186, new_n188, new_n189, new_n190, new_n191,
    new_n192, new_n193, new_n194, new_n195, new_n196, new_n197, new_n198,
    new_n199, new_n200, new_n202, new_n203, new_n204, new_n205, new_n206,
    new_n207, new_n208, new_n209, new_n210, new_n211, new_n212, new_n214,
    new_n215, new_n216, new_n217, n625, n628, n631, n634, n637, n640, n643,
    n646;
  INVX1    g000(.A(\in[8] ), .Y(new_n50));
  OR4X1    g001(.A(\in[15] ), .B(\in[14] ), .C(\in[13] ), .D(\in[12] ), .Y(new_n51));
  OR2X1    g002(.A(\in[11] ), .B(\in[10] ), .Y(new_n52));
  NOR4X1   g003(.A(new_n52), .B(new_n51), .C(\in[9] ), .D(new_n50), .Y(new_n53));
  INVX1    g004(.A(\in[9] ), .Y(new_n54));
  NOR4X1   g005(.A(new_n52), .B(new_n51), .C(new_n54), .D(\in[8] ), .Y(new_n55));
  INVX1    g006(.A(\in[10] ), .Y(new_n56));
  OR2X1    g007(.A(\in[9] ), .B(\in[8] ), .Y(new_n57));
  NOR4X1   g008(.A(new_n57), .B(new_n51), .C(\in[11] ), .D(new_n56), .Y(new_n58));
  NOR3X1   g009(.A(new_n58), .B(new_n55), .C(new_n53), .Y(new_n59));
  INVX1    g010(.A(\in[13] ), .Y(new_n60));
  OR2X1    g011(.A(\in[15] ), .B(\in[14] ), .Y(new_n61));
  OR4X1    g012(.A(\in[11] ), .B(\in[10] ), .C(\in[9] ), .D(\in[8] ), .Y(new_n62));
  NOR4X1   g013(.A(new_n62), .B(new_n61), .C(new_n60), .D(\in[12] ), .Y(new_n63));
  INVX1    g014(.A(\in[14] ), .Y(new_n64));
  OR2X1    g015(.A(\in[13] ), .B(\in[12] ), .Y(new_n65));
  NOR4X1   g016(.A(new_n62), .B(new_n65), .C(\in[15] ), .D(new_n64), .Y(new_n66));
  INVX1    g017(.A(\in[11] ), .Y(new_n67));
  NOR4X1   g018(.A(new_n57), .B(new_n51), .C(new_n67), .D(\in[10] ), .Y(new_n68));
  INVX1    g019(.A(\in[12] ), .Y(new_n69));
  NOR4X1   g020(.A(new_n62), .B(new_n61), .C(\in[13] ), .D(new_n69), .Y(new_n70));
  NOR4X1   g021(.A(new_n70), .B(new_n68), .C(new_n66), .D(new_n63), .Y(new_n71));
  AND2X1   g022(.A(new_n71), .B(new_n59), .Y(new_n72));
  OR2X1    g023(.A(new_n66), .B(new_n63), .Y(new_n73));
  OR2X1    g024(.A(new_n70), .B(new_n73), .Y(new_n74));
  INVX1    g025(.A(\in[0] ), .Y(new_n75));
  OR4X1    g026(.A(\in[7] ), .B(\in[6] ), .C(\in[5] ), .D(\in[4] ), .Y(new_n76));
  OR2X1    g027(.A(\in[3] ), .B(\in[2] ), .Y(new_n77));
  NOR4X1   g028(.A(new_n77), .B(new_n76), .C(\in[1] ), .D(new_n75), .Y(new_n78));
  INVX1    g029(.A(\in[1] ), .Y(new_n79));
  NOR4X1   g030(.A(new_n77), .B(new_n76), .C(new_n79), .D(\in[0] ), .Y(new_n80));
  INVX1    g031(.A(\in[2] ), .Y(new_n81));
  OR2X1    g032(.A(\in[1] ), .B(\in[0] ), .Y(new_n82));
  NOR4X1   g033(.A(new_n82), .B(new_n76), .C(\in[3] ), .D(new_n81), .Y(new_n83));
  NOR3X1   g034(.A(new_n83), .B(new_n80), .C(new_n78), .Y(new_n84));
  INVX1    g035(.A(\in[5] ), .Y(new_n85));
  OR2X1    g036(.A(\in[7] ), .B(\in[6] ), .Y(new_n86));
  OR4X1    g037(.A(\in[3] ), .B(\in[2] ), .C(\in[1] ), .D(\in[0] ), .Y(new_n87));
  NOR4X1   g038(.A(new_n87), .B(new_n86), .C(new_n85), .D(\in[4] ), .Y(new_n88));
  INVX1    g039(.A(\in[6] ), .Y(new_n89));
  OR2X1    g040(.A(\in[5] ), .B(\in[4] ), .Y(new_n90));
  NOR4X1   g041(.A(new_n87), .B(new_n90), .C(\in[7] ), .D(new_n89), .Y(new_n91));
  INVX1    g042(.A(\in[3] ), .Y(new_n92));
  NOR4X1   g043(.A(new_n82), .B(new_n76), .C(new_n92), .D(\in[2] ), .Y(new_n93));
  INVX1    g044(.A(\in[4] ), .Y(new_n94));
  NOR4X1   g045(.A(new_n87), .B(new_n86), .C(\in[5] ), .D(new_n94), .Y(new_n95));
  NOR4X1   g046(.A(new_n95), .B(new_n93), .C(new_n91), .D(new_n88), .Y(new_n96));
  AND2X1   g047(.A(new_n96), .B(new_n84), .Y(new_n97));
  OR4X1    g048(.A(new_n77), .B(new_n76), .C(new_n79), .D(\in[0] ), .Y(new_n98));
  OR4X1    g049(.A(new_n87), .B(new_n86), .C(new_n85), .D(\in[4] ), .Y(new_n99));
  OR4X1    g050(.A(new_n82), .B(new_n76), .C(new_n92), .D(\in[2] ), .Y(new_n100));
  NAND3X1  g051(.A(new_n100), .B(new_n99), .C(new_n98), .Y(new_n101));
  OR4X1    g052(.A(new_n101), .B(new_n97), .C(new_n74), .D(new_n72), .Y(new_n102));
  NAND2X1  g053(.A(new_n96), .B(new_n84), .Y(new_n103));
  NOR3X1   g054(.A(new_n95), .B(new_n91), .C(new_n88), .Y(new_n104));
  NOR3X1   g055(.A(new_n93), .B(new_n91), .C(new_n83), .Y(new_n105));
  NAND3X1  g056(.A(new_n105), .B(new_n104), .C(new_n103), .Y(new_n106));
  OR4X1    g057(.A(new_n52), .B(new_n51), .C(new_n54), .D(\in[8] ), .Y(new_n107));
  OR4X1    g058(.A(new_n62), .B(new_n61), .C(new_n60), .D(\in[12] ), .Y(new_n108));
  OR4X1    g059(.A(new_n57), .B(new_n51), .C(new_n67), .D(\in[10] ), .Y(new_n109));
  NAND3X1  g060(.A(new_n109), .B(new_n108), .C(new_n107), .Y(new_n110));
  AOI21X1  g061(.A0(new_n71), .A1(new_n59), .B0(new_n110), .Y(new_n111));
  OR4X1    g062(.A(new_n52), .B(new_n51), .C(\in[9] ), .D(new_n50), .Y(new_n112));
  OR4X1    g063(.A(new_n57), .B(new_n51), .C(\in[11] ), .D(new_n56), .Y(new_n113));
  NAND3X1  g064(.A(new_n113), .B(new_n107), .C(new_n112), .Y(new_n114));
  OR4X1    g065(.A(new_n70), .B(new_n68), .C(new_n66), .D(new_n63), .Y(new_n115));
  NOR3X1   g066(.A(new_n68), .B(new_n66), .C(new_n58), .Y(new_n116));
  OAI21X1  g067(.A0(new_n115), .A1(new_n114), .B0(new_n116), .Y(new_n117));
  NAND2X1  g068(.A(new_n117), .B(new_n111), .Y(new_n118));
  NOR3X1   g069(.A(new_n118), .B(new_n106), .C(new_n102), .Y(new_n119));
  NOR4X1   g070(.A(new_n72), .B(new_n68), .C(new_n66), .D(new_n58), .Y(new_n120));
  NOR3X1   g071(.A(new_n111), .B(new_n106), .C(new_n102), .Y(new_n121));
  AOI21X1  g072(.A0(new_n96), .A1(new_n84), .B0(new_n101), .Y(new_n122));
  OAI21X1  g073(.A0(new_n74), .A1(new_n72), .B0(new_n122), .Y(new_n123));
  OR4X1    g074(.A(new_n123), .B(new_n120), .C(new_n111), .D(new_n106), .Y(new_n124));
  OR2X1    g075(.A(new_n110), .B(new_n72), .Y(new_n125));
  OR4X1    g076(.A(new_n123), .B(new_n120), .C(new_n125), .D(new_n106), .Y(new_n126));
  OR4X1    g077(.A(new_n123), .B(new_n117), .C(new_n111), .D(new_n106), .Y(new_n127));
  OR4X1    g078(.A(new_n123), .B(new_n117), .C(new_n125), .D(new_n106), .Y(new_n128));
  NAND4X1  g079(.A(new_n128), .B(new_n127), .C(new_n126), .D(new_n124), .Y(new_n129));
  NOR3X1   g080(.A(new_n129), .B(new_n121), .C(new_n119), .Y(new_n130));
  AND2X1   g081(.A(\in[8] ), .B(\in[0] ), .Y(new_n131));
  OR2X1    g082(.A(new_n117), .B(new_n111), .Y(new_n132));
  NAND2X1  g083(.A(\in[9] ), .B(\in[0] ), .Y(new_n133));
  NOR4X1   g084(.A(new_n133), .B(new_n132), .C(new_n106), .D(new_n102), .Y(new_n134));
  OR4X1    g085(.A(new_n120), .B(new_n125), .C(new_n106), .D(new_n102), .Y(new_n135));
  OR4X1    g086(.A(new_n120), .B(new_n111), .C(new_n106), .D(new_n102), .Y(new_n136));
  NAND2X1  g087(.A(\in[11] ), .B(\in[0] ), .Y(new_n137));
  NAND2X1  g088(.A(\in[10] ), .B(\in[0] ), .Y(new_n138));
  OAI22X1  g089(.A0(new_n138), .A1(new_n135), .B0(new_n137), .B1(new_n136), .Y(new_n139));
  NAND2X1  g090(.A(\in[9] ), .B(\in[3] ), .Y(new_n140));
  NAND2X1  g091(.A(\in[9] ), .B(\in[2] ), .Y(new_n141));
  OAI22X1  g092(.A0(new_n141), .A1(new_n126), .B0(new_n140), .B1(new_n124), .Y(new_n142));
  AND2X1   g093(.A(\in[9] ), .B(\in[1] ), .Y(new_n143));
  INVX1    g094(.A(new_n143), .Y(new_n144));
  NAND2X1  g095(.A(\in[8] ), .B(\in[1] ), .Y(new_n145));
  OAI22X1  g096(.A0(new_n145), .A1(new_n128), .B0(new_n144), .B1(new_n127), .Y(new_n146));
  OR4X1    g097(.A(new_n146), .B(new_n142), .C(new_n139), .D(new_n134), .Y(new_n147));
  MX2X1    g098(.A(new_n147), .B(new_n131), .S0(new_n130), .Y(n625));
  NAND2X1  g099(.A(\in[10] ), .B(\in[1] ), .Y(new_n149));
  NOR4X1   g100(.A(new_n149), .B(new_n132), .C(new_n106), .D(new_n102), .Y(new_n150));
  NAND2X1  g101(.A(\in[12] ), .B(\in[1] ), .Y(new_n151));
  NAND2X1  g102(.A(\in[11] ), .B(\in[1] ), .Y(new_n152));
  OAI22X1  g103(.A0(new_n152), .A1(new_n135), .B0(new_n151), .B1(new_n136), .Y(new_n153));
  NAND2X1  g104(.A(\in[10] ), .B(\in[4] ), .Y(new_n154));
  NAND2X1  g105(.A(\in[10] ), .B(\in[3] ), .Y(new_n155));
  OAI22X1  g106(.A0(new_n155), .A1(new_n126), .B0(new_n154), .B1(new_n124), .Y(new_n156));
  AND2X1   g107(.A(\in[10] ), .B(\in[2] ), .Y(new_n157));
  INVX1    g108(.A(new_n157), .Y(new_n158));
  OAI22X1  g109(.A0(new_n158), .A1(new_n127), .B0(new_n141), .B1(new_n128), .Y(new_n159));
  OR4X1    g110(.A(new_n159), .B(new_n156), .C(new_n153), .D(new_n150), .Y(new_n160));
  MX2X1    g111(.A(new_n160), .B(new_n143), .S0(new_n130), .Y(n628));
  NAND2X1  g112(.A(\in[11] ), .B(\in[2] ), .Y(new_n162));
  NOR4X1   g113(.A(new_n162), .B(new_n132), .C(new_n106), .D(new_n102), .Y(new_n163));
  NAND2X1  g114(.A(\in[13] ), .B(\in[2] ), .Y(new_n164));
  NAND2X1  g115(.A(\in[12] ), .B(\in[2] ), .Y(new_n165));
  OAI22X1  g116(.A0(new_n165), .A1(new_n135), .B0(new_n164), .B1(new_n136), .Y(new_n166));
  NAND2X1  g117(.A(\in[11] ), .B(\in[5] ), .Y(new_n167));
  NAND2X1  g118(.A(\in[11] ), .B(\in[4] ), .Y(new_n168));
  OAI22X1  g119(.A0(new_n168), .A1(new_n126), .B0(new_n167), .B1(new_n124), .Y(new_n169));
  AND2X1   g120(.A(\in[11] ), .B(\in[3] ), .Y(new_n170));
  INVX1    g121(.A(new_n170), .Y(new_n171));
  OAI22X1  g122(.A0(new_n171), .A1(new_n127), .B0(new_n155), .B1(new_n128), .Y(new_n172));
  OR4X1    g123(.A(new_n172), .B(new_n169), .C(new_n166), .D(new_n163), .Y(new_n173));
  MX2X1    g124(.A(new_n173), .B(new_n157), .S0(new_n130), .Y(n631));
  NAND2X1  g125(.A(\in[12] ), .B(\in[3] ), .Y(new_n175));
  NOR4X1   g126(.A(new_n175), .B(new_n132), .C(new_n106), .D(new_n102), .Y(new_n176));
  NAND2X1  g127(.A(\in[14] ), .B(\in[3] ), .Y(new_n177));
  NAND2X1  g128(.A(\in[13] ), .B(\in[3] ), .Y(new_n178));
  OAI22X1  g129(.A0(new_n178), .A1(new_n135), .B0(new_n177), .B1(new_n136), .Y(new_n179));
  NAND2X1  g130(.A(\in[12] ), .B(\in[6] ), .Y(new_n180));
  NAND2X1  g131(.A(\in[12] ), .B(\in[5] ), .Y(new_n181));
  OAI22X1  g132(.A0(new_n181), .A1(new_n126), .B0(new_n180), .B1(new_n124), .Y(new_n182));
  AND2X1   g133(.A(\in[12] ), .B(\in[4] ), .Y(new_n183));
  INVX1    g134(.A(new_n183), .Y(new_n184));
  OAI22X1  g135(.A0(new_n184), .A1(new_n127), .B0(new_n168), .B1(new_n128), .Y(new_n185));
  OR4X1    g136(.A(new_n185), .B(new_n182), .C(new_n179), .D(new_n176), .Y(new_n186));
  MX2X1    g137(.A(new_n186), .B(new_n170), .S0(new_n130), .Y(n634));
  NAND2X1  g138(.A(\in[13] ), .B(\in[4] ), .Y(new_n188));
  NOR4X1   g139(.A(new_n188), .B(new_n132), .C(new_n106), .D(new_n102), .Y(new_n189));
  NAND2X1  g140(.A(\in[15] ), .B(\in[4] ), .Y(new_n190));
  NAND2X1  g141(.A(\in[14] ), .B(\in[4] ), .Y(new_n191));
  OAI22X1  g142(.A0(new_n191), .A1(new_n135), .B0(new_n190), .B1(new_n136), .Y(new_n192));
  NAND2X1  g143(.A(\in[13] ), .B(\in[7] ), .Y(new_n193));
  AND2X1   g144(.A(\in[13] ), .B(\in[6] ), .Y(new_n194));
  INVX1    g145(.A(new_n194), .Y(new_n195));
  OAI22X1  g146(.A0(new_n195), .A1(new_n126), .B0(new_n193), .B1(new_n124), .Y(new_n196));
  AND2X1   g147(.A(\in[13] ), .B(\in[5] ), .Y(new_n197));
  INVX1    g148(.A(new_n197), .Y(new_n198));
  OAI22X1  g149(.A0(new_n198), .A1(new_n127), .B0(new_n181), .B1(new_n128), .Y(new_n199));
  OR4X1    g150(.A(new_n199), .B(new_n196), .C(new_n192), .D(new_n189), .Y(new_n200));
  MX2X1    g151(.A(new_n200), .B(new_n183), .S0(new_n130), .Y(n637));
  NOR3X1   g152(.A(new_n123), .B(new_n118), .C(new_n106), .Y(new_n202));
  NOR3X1   g153(.A(new_n123), .B(new_n132), .C(new_n106), .Y(new_n203));
  AND2X1   g154(.A(\in[14] ), .B(\in[7] ), .Y(new_n204));
  AND2X1   g155(.A(\in[14] ), .B(\in[6] ), .Y(new_n205));
  AOI22X1  g156(.A0(new_n205), .A1(new_n203), .B0(new_n204), .B1(new_n202), .Y(new_n206));
  NOR3X1   g157(.A(new_n132), .B(new_n106), .C(new_n102), .Y(new_n207));
  NAND3X1  g158(.A(new_n207), .B(\in[14] ), .C(\in[5] ), .Y(new_n208));
  NOR4X1   g159(.A(new_n123), .B(new_n117), .C(new_n125), .D(new_n106), .Y(new_n209));
  AND2X1   g160(.A(\in[15] ), .B(\in[5] ), .Y(new_n210));
  AOI22X1  g161(.A0(new_n210), .A1(new_n119), .B0(new_n194), .B1(new_n209), .Y(new_n211));
  NAND3X1  g162(.A(new_n211), .B(new_n208), .C(new_n206), .Y(new_n212));
  MX2X1    g163(.A(new_n212), .B(new_n197), .S0(new_n130), .Y(n640));
  NAND3X1  g164(.A(new_n207), .B(\in[15] ), .C(\in[6] ), .Y(new_n214));
  AND2X1   g165(.A(\in[15] ), .B(\in[7] ), .Y(new_n215));
  AOI22X1  g166(.A0(new_n215), .A1(new_n203), .B0(new_n204), .B1(new_n209), .Y(new_n216));
  NAND2X1  g167(.A(new_n216), .B(new_n214), .Y(new_n217));
  MX2X1    g168(.A(new_n217), .B(new_n205), .S0(new_n130), .Y(n643));
  AND2X1   g169(.A(new_n215), .B(new_n130), .Y(n646));
  always @ (posedge clock) begin
    \out[0]  <= n625;
    \out[1]  <= n628;
    \out[2]  <= n631;
    \out[3]  <= n634;
    \out[4]  <= n637;
    \out[5]  <= n640;
    \out[6]  <= n643;
    \out[7]  <= n646;
  end
endmodule


