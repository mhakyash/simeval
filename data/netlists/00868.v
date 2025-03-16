// Benchmark "alu_p" written by ABC on Wed Jun 26 15:22:22 2024

module alu_p ( 
    \a[0] , \a[1] , \a[2] , \a[3] , \a[4] , \a[5] , \a[6] , \a[7] , \b[0] ,
    \b[1] , \b[2] , \b[3] , \b[4] , \b[5] , \b[6] , \b[7] , c_in, \op[0] ,
    \op[1] , \op[2] ,
    \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] , \out[8]   );
  input  \a[0] , \a[1] , \a[2] , \a[3] , \a[4] , \a[5] , \a[6] , \a[7] ,
    \b[0] , \b[1] , \b[2] , \b[3] , \b[4] , \b[5] , \b[6] , \b[7] , c_in,
    \op[0] , \op[1] , \op[2] ;
  output \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] , \out[8] ;
  wire new_n30, new_n31, new_n32, new_n33, new_n34, new_n35, new_n36,
    new_n37, new_n38, new_n39, new_n40, new_n41, new_n42, new_n43, new_n44,
    new_n45, new_n46, new_n47, new_n48, new_n49, new_n50, new_n51, new_n52,
    new_n53, new_n54, new_n55, new_n56, new_n58, new_n59, new_n60, new_n61,
    new_n62, new_n63, new_n64, new_n65, new_n66, new_n67, new_n68, new_n69,
    new_n70, new_n71, new_n72, new_n73, new_n74, new_n75, new_n76, new_n77,
    new_n79, new_n80, new_n81, new_n82, new_n83, new_n84, new_n85, new_n86,
    new_n87, new_n88, new_n89, new_n90, new_n91, new_n92, new_n93, new_n94,
    new_n95, new_n96, new_n97, new_n98, new_n99, new_n100, new_n101,
    new_n102, new_n103, new_n105, new_n106, new_n107, new_n108, new_n109,
    new_n110, new_n111, new_n112, new_n113, new_n114, new_n115, new_n116,
    new_n117, new_n118, new_n119, new_n120, new_n121, new_n122, new_n123,
    new_n124, new_n125, new_n127, new_n128, new_n129, new_n130, new_n131,
    new_n132, new_n133, new_n134, new_n135, new_n136, new_n137, new_n138,
    new_n139, new_n140, new_n141, new_n142, new_n143, new_n144, new_n145,
    new_n146, new_n147, new_n148, new_n149, new_n150, new_n151, new_n152,
    new_n153, new_n154, new_n156, new_n157, new_n158, new_n159, new_n160,
    new_n161, new_n162, new_n163, new_n164, new_n165, new_n166, new_n167,
    new_n168, new_n169, new_n170, new_n171, new_n172, new_n173, new_n174,
    new_n175, new_n176, new_n177, new_n178, new_n180, new_n181, new_n182,
    new_n183, new_n184, new_n185, new_n186, new_n187, new_n188, new_n189,
    new_n190, new_n191, new_n192, new_n193, new_n194, new_n195, new_n196,
    new_n197, new_n198, new_n199, new_n200, new_n201, new_n202, new_n203,
    new_n204, new_n205, new_n206, new_n208, new_n209, new_n210, new_n211,
    new_n212, new_n213, new_n214, new_n215, new_n216, new_n217, new_n218,
    new_n219, new_n220, new_n221, new_n222, new_n223, new_n224, new_n225,
    new_n226, new_n227, new_n228, new_n229, new_n231, new_n232, new_n233,
    new_n234, new_n235, new_n236, new_n237, new_n238, new_n239, new_n240,
    new_n241, new_n242, new_n243, new_n244, new_n245, new_n246, new_n247,
    new_n248, new_n249, new_n250, new_n251, new_n252, new_n253, new_n254,
    new_n255;
  XOR2X1   g000(.A(\b[0] ), .B(\a[0] ), .Y(new_n30));
  INVX1    g001(.A(\op[1] ), .Y(new_n31));
  INVX1    g002(.A(\op[2] ), .Y(new_n32));
  NOR3X1   g003(.A(new_n32), .B(new_n31), .C(\op[0] ), .Y(new_n33));
  INVX1    g004(.A(new_n33), .Y(new_n34));
  INVX1    g005(.A(\op[0] ), .Y(new_n35));
  NOR3X1   g006(.A(new_n32), .B(\op[1] ), .C(new_n35), .Y(new_n36));
  INVX1    g007(.A(new_n36), .Y(new_n37));
  OAI22X1  g008(.A0(new_n37), .A1(\a[0] ), .B0(new_n34), .B1(new_n30), .Y(new_n38));
  AND2X1   g009(.A(\b[0] ), .B(\a[0] ), .Y(new_n39));
  NOR3X1   g010(.A(\op[2] ), .B(new_n31), .C(\op[0] ), .Y(new_n40));
  AND2X1   g011(.A(new_n40), .B(new_n39), .Y(new_n41));
  NAND4X1  g012(.A(new_n30), .B(\op[2] ), .C(new_n31), .D(new_n35), .Y(new_n42));
  NOR2X1   g013(.A(\b[0] ), .B(\a[0] ), .Y(new_n43));
  NOR3X1   g014(.A(\op[2] ), .B(new_n31), .C(new_n35), .Y(new_n44));
  INVX1    g015(.A(new_n44), .Y(new_n45));
  OAI21X1  g016(.A0(new_n45), .A1(new_n43), .B0(new_n42), .Y(new_n46));
  XOR2X1   g017(.A(\b[0] ), .B(\a[0] ), .Y(new_n47));
  XOR2X1   g018(.A(new_n47), .B(c_in), .Y(new_n48));
  OR4X1    g019(.A(new_n48), .B(\op[2] ), .C(\op[1] ), .D(new_n35), .Y(new_n49));
  INVX1    g020(.A(c_in), .Y(new_n50));
  XOR2X1   g021(.A(new_n30), .B(new_n50), .Y(new_n51));
  NOR3X1   g022(.A(\op[2] ), .B(\op[1] ), .C(\op[0] ), .Y(new_n52));
  INVX1    g023(.A(new_n52), .Y(new_n53));
  OAI21X1  g024(.A0(new_n53), .A1(new_n51), .B0(new_n49), .Y(new_n54));
  NOR4X1   g025(.A(new_n54), .B(new_n46), .C(new_n41), .D(new_n38), .Y(new_n55));
  NOR3X1   g026(.A(new_n32), .B(new_n31), .C(new_n35), .Y(new_n56));
  NOR2X1   g027(.A(new_n56), .B(new_n55), .Y(\out[0] ));
  NOR3X1   g028(.A(\op[2] ), .B(\op[1] ), .C(new_n35), .Y(new_n58));
  XOR2X1   g029(.A(\b[1] ), .B(\a[1] ), .Y(new_n59));
  INVX1    g030(.A(\a[0] ), .Y(new_n60));
  NAND2X1  g031(.A(\b[0] ), .B(new_n60), .Y(new_n61));
  XOR2X1   g032(.A(new_n61), .B(new_n59), .Y(new_n62));
  NOR2X1   g033(.A(new_n47), .B(c_in), .Y(new_n63));
  XOR2X1   g034(.A(new_n63), .B(new_n62), .Y(new_n64));
  NAND2X1  g035(.A(new_n64), .B(new_n58), .Y(new_n65));
  XOR2X1   g036(.A(\b[1] ), .B(\a[1] ), .Y(new_n66));
  XOR2X1   g037(.A(new_n66), .B(new_n39), .Y(new_n67));
  AND2X1   g038(.A(new_n30), .B(c_in), .Y(new_n68));
  XOR2X1   g039(.A(new_n68), .B(new_n67), .Y(new_n69));
  AND2X1   g040(.A(new_n69), .B(new_n52), .Y(new_n70));
  OAI22X1  g041(.A0(new_n66), .A1(new_n34), .B0(new_n37), .B1(\a[1] ), .Y(new_n71));
  AND2X1   g042(.A(\b[1] ), .B(\a[1] ), .Y(new_n72));
  AND2X1   g043(.A(new_n72), .B(new_n40), .Y(new_n73));
  NOR2X1   g044(.A(\b[1] ), .B(\a[1] ), .Y(new_n74));
  NAND4X1  g045(.A(new_n66), .B(\op[2] ), .C(new_n31), .D(new_n35), .Y(new_n75));
  OAI21X1  g046(.A0(new_n74), .A1(new_n45), .B0(new_n75), .Y(new_n76));
  NOR4X1   g047(.A(new_n76), .B(new_n73), .C(new_n71), .D(new_n70), .Y(new_n77));
  AOI21X1  g048(.A0(new_n77), .A1(new_n65), .B0(new_n56), .Y(\out[1] ));
  XOR2X1   g049(.A(\b[2] ), .B(\a[2] ), .Y(new_n79));
  INVX1    g050(.A(new_n79), .Y(new_n80));
  INVX1    g051(.A(\b[1] ), .Y(new_n81));
  AND2X1   g052(.A(new_n81), .B(\a[1] ), .Y(new_n82));
  AOI21X1  g053(.A0(\b[0] ), .A1(new_n60), .B0(new_n59), .Y(new_n83));
  OR2X1    g054(.A(new_n83), .B(new_n82), .Y(new_n84));
  XOR2X1   g055(.A(new_n84), .B(new_n80), .Y(new_n85));
  NOR2X1   g056(.A(new_n63), .B(new_n62), .Y(new_n86));
  XOR2X1   g057(.A(new_n86), .B(new_n85), .Y(new_n87));
  NAND2X1  g058(.A(new_n87), .B(new_n58), .Y(new_n88));
  INVX1    g059(.A(\a[2] ), .Y(new_n89));
  XOR2X1   g060(.A(\b[2] ), .B(new_n89), .Y(new_n90));
  AOI21X1  g061(.A0(new_n66), .A1(new_n39), .B0(new_n72), .Y(new_n91));
  XOR2X1   g062(.A(new_n91), .B(new_n90), .Y(new_n92));
  AND2X1   g063(.A(new_n68), .B(new_n67), .Y(new_n93));
  XOR2X1   g064(.A(new_n93), .B(new_n92), .Y(new_n94));
  AOI22X1  g065(.A0(new_n90), .A1(new_n33), .B0(new_n36), .B1(new_n89), .Y(new_n95));
  NAND2X1  g066(.A(\b[2] ), .B(\a[2] ), .Y(new_n96));
  OR4X1    g067(.A(new_n96), .B(\op[2] ), .C(new_n31), .D(\op[0] ), .Y(new_n97));
  NOR3X1   g068(.A(new_n32), .B(\op[1] ), .C(\op[0] ), .Y(new_n98));
  OR2X1    g069(.A(\b[2] ), .B(\a[2] ), .Y(new_n99));
  XOR2X1   g070(.A(\b[2] ), .B(\a[2] ), .Y(new_n100));
  AOI22X1  g071(.A0(new_n100), .A1(new_n98), .B0(new_n99), .B1(new_n44), .Y(new_n101));
  NAND3X1  g072(.A(new_n101), .B(new_n97), .C(new_n95), .Y(new_n102));
  AOI21X1  g073(.A0(new_n94), .A1(new_n52), .B0(new_n102), .Y(new_n103));
  AOI21X1  g074(.A0(new_n103), .A1(new_n88), .B0(new_n56), .Y(\out[2] ));
  XOR2X1   g075(.A(\b[3] ), .B(\a[3] ), .Y(new_n105));
  OAI21X1  g076(.A0(new_n83), .A1(new_n82), .B0(new_n80), .Y(new_n106));
  OAI21X1  g077(.A0(\b[2] ), .A1(new_n89), .B0(new_n106), .Y(new_n107));
  XOR2X1   g078(.A(new_n107), .B(new_n105), .Y(new_n108));
  NAND2X1  g079(.A(new_n86), .B(new_n85), .Y(new_n109));
  XOR2X1   g080(.A(new_n109), .B(new_n108), .Y(new_n110));
  NAND2X1  g081(.A(new_n110), .B(new_n58), .Y(new_n111));
  XOR2X1   g082(.A(\b[3] ), .B(\a[3] ), .Y(new_n112));
  OAI21X1  g083(.A0(new_n91), .A1(new_n90), .B0(new_n96), .Y(new_n113));
  XOR2X1   g084(.A(new_n113), .B(new_n112), .Y(new_n114));
  AND2X1   g085(.A(new_n93), .B(new_n92), .Y(new_n115));
  XOR2X1   g086(.A(new_n115), .B(new_n114), .Y(new_n116));
  INVX1    g087(.A(\a[3] ), .Y(new_n117));
  NOR4X1   g088(.A(new_n112), .B(new_n32), .C(new_n31), .D(\op[0] ), .Y(new_n118));
  AOI21X1  g089(.A0(new_n36), .A1(new_n117), .B0(new_n118), .Y(new_n119));
  AND2X1   g090(.A(\b[3] ), .B(\a[3] ), .Y(new_n120));
  NAND4X1  g091(.A(new_n120), .B(new_n32), .C(\op[1] ), .D(new_n35), .Y(new_n121));
  OR2X1    g092(.A(\b[3] ), .B(\a[3] ), .Y(new_n122));
  AOI22X1  g093(.A0(new_n112), .A1(new_n98), .B0(new_n122), .B1(new_n44), .Y(new_n123));
  NAND3X1  g094(.A(new_n123), .B(new_n121), .C(new_n119), .Y(new_n124));
  AOI21X1  g095(.A0(new_n116), .A1(new_n52), .B0(new_n124), .Y(new_n125));
  AOI21X1  g096(.A0(new_n125), .A1(new_n111), .B0(new_n56), .Y(\out[3] ));
  XOR2X1   g097(.A(\b[4] ), .B(\a[4] ), .Y(new_n127));
  NOR2X1   g098(.A(new_n105), .B(new_n79), .Y(new_n128));
  OAI21X1  g099(.A0(new_n83), .A1(new_n82), .B0(new_n128), .Y(new_n129));
  NOR2X1   g100(.A(\b[3] ), .B(new_n117), .Y(new_n130));
  NOR3X1   g101(.A(new_n105), .B(\b[2] ), .C(new_n89), .Y(new_n131));
  NOR2X1   g102(.A(new_n131), .B(new_n130), .Y(new_n132));
  NAND2X1  g103(.A(new_n132), .B(new_n129), .Y(new_n133));
  XOR2X1   g104(.A(new_n133), .B(new_n127), .Y(new_n134));
  OR2X1    g105(.A(new_n109), .B(new_n108), .Y(new_n135));
  XOR2X1   g106(.A(new_n135), .B(new_n134), .Y(new_n136));
  NAND2X1  g107(.A(new_n136), .B(new_n58), .Y(new_n137));
  XOR2X1   g108(.A(\b[4] ), .B(\a[4] ), .Y(new_n138));
  INVX1    g109(.A(new_n138), .Y(new_n139));
  NAND2X1  g110(.A(new_n112), .B(new_n100), .Y(new_n140));
  AND2X1   g111(.A(\b[2] ), .B(\a[2] ), .Y(new_n141));
  AOI21X1  g112(.A0(new_n112), .A1(new_n141), .B0(new_n120), .Y(new_n142));
  OAI21X1  g113(.A0(new_n140), .A1(new_n91), .B0(new_n142), .Y(new_n143));
  XOR2X1   g114(.A(new_n143), .B(new_n139), .Y(new_n144));
  NAND2X1  g115(.A(new_n115), .B(new_n114), .Y(new_n145));
  XOR2X1   g116(.A(new_n145), .B(new_n144), .Y(new_n146));
  INVX1    g117(.A(\a[4] ), .Y(new_n147));
  AOI22X1  g118(.A0(new_n139), .A1(new_n33), .B0(new_n36), .B1(new_n147), .Y(new_n148));
  NAND2X1  g119(.A(\b[4] ), .B(\a[4] ), .Y(new_n149));
  OR4X1    g120(.A(new_n149), .B(\op[2] ), .C(new_n31), .D(\op[0] ), .Y(new_n150));
  OR2X1    g121(.A(\b[4] ), .B(\a[4] ), .Y(new_n151));
  AOI22X1  g122(.A0(new_n138), .A1(new_n98), .B0(new_n151), .B1(new_n44), .Y(new_n152));
  NAND3X1  g123(.A(new_n152), .B(new_n150), .C(new_n148), .Y(new_n153));
  AOI21X1  g124(.A0(new_n146), .A1(new_n52), .B0(new_n153), .Y(new_n154));
  AOI21X1  g125(.A0(new_n154), .A1(new_n137), .B0(new_n56), .Y(\out[4] ));
  XOR2X1   g126(.A(\b[5] ), .B(\a[5] ), .Y(new_n156));
  AND2X1   g127(.A(new_n132), .B(new_n129), .Y(new_n157));
  OR2X1    g128(.A(\b[4] ), .B(new_n147), .Y(new_n158));
  OAI21X1  g129(.A0(new_n157), .A1(new_n127), .B0(new_n158), .Y(new_n159));
  XOR2X1   g130(.A(new_n159), .B(new_n156), .Y(new_n160));
  NOR3X1   g131(.A(new_n134), .B(new_n109), .C(new_n108), .Y(new_n161));
  XOR2X1   g132(.A(new_n161), .B(new_n160), .Y(new_n162));
  OR4X1    g133(.A(new_n162), .B(\op[2] ), .C(\op[1] ), .D(new_n35), .Y(new_n163));
  XOR2X1   g134(.A(\b[5] ), .B(\a[5] ), .Y(new_n164));
  INVX1    g135(.A(new_n149), .Y(new_n165));
  AOI21X1  g136(.A0(new_n143), .A1(new_n138), .B0(new_n165), .Y(new_n166));
  XOR2X1   g137(.A(new_n166), .B(new_n164), .Y(new_n167));
  OR2X1    g138(.A(new_n145), .B(new_n144), .Y(new_n168));
  XOR2X1   g139(.A(new_n168), .B(new_n167), .Y(new_n169));
  INVX1    g140(.A(\a[5] ), .Y(new_n170));
  XOR2X1   g141(.A(\b[5] ), .B(new_n170), .Y(new_n171));
  AOI22X1  g142(.A0(new_n171), .A1(new_n33), .B0(new_n36), .B1(new_n170), .Y(new_n172));
  NAND2X1  g143(.A(\b[5] ), .B(\a[5] ), .Y(new_n173));
  OR4X1    g144(.A(new_n173), .B(\op[2] ), .C(new_n31), .D(\op[0] ), .Y(new_n174));
  OR2X1    g145(.A(\b[5] ), .B(\a[5] ), .Y(new_n175));
  AOI22X1  g146(.A0(new_n164), .A1(new_n98), .B0(new_n175), .B1(new_n44), .Y(new_n176));
  NAND3X1  g147(.A(new_n176), .B(new_n174), .C(new_n172), .Y(new_n177));
  AOI21X1  g148(.A0(new_n169), .A1(new_n52), .B0(new_n177), .Y(new_n178));
  AOI21X1  g149(.A0(new_n178), .A1(new_n163), .B0(new_n56), .Y(\out[5] ));
  XOR2X1   g150(.A(\b[6] ), .B(\a[6] ), .Y(new_n180));
  NOR2X1   g151(.A(\b[5] ), .B(new_n170), .Y(new_n181));
  NOR3X1   g152(.A(new_n156), .B(\b[4] ), .C(new_n147), .Y(new_n182));
  NOR2X1   g153(.A(new_n182), .B(new_n181), .Y(new_n183));
  OR2X1    g154(.A(new_n156), .B(new_n127), .Y(new_n184));
  OAI21X1  g155(.A0(new_n184), .A1(new_n157), .B0(new_n183), .Y(new_n185));
  XOR2X1   g156(.A(new_n185), .B(new_n180), .Y(new_n186));
  OR4X1    g157(.A(new_n160), .B(new_n134), .C(new_n109), .D(new_n108), .Y(new_n187));
  XOR2X1   g158(.A(new_n187), .B(new_n186), .Y(new_n188));
  NAND2X1  g159(.A(new_n188), .B(new_n58), .Y(new_n189));
  INVX1    g160(.A(\a[6] ), .Y(new_n190));
  XOR2X1   g161(.A(\b[6] ), .B(new_n190), .Y(new_n191));
  INVX1    g162(.A(new_n191), .Y(new_n192));
  OAI21X1  g163(.A0(new_n171), .A1(new_n149), .B0(new_n173), .Y(new_n193));
  AND2X1   g164(.A(new_n164), .B(new_n138), .Y(new_n194));
  AOI21X1  g165(.A0(new_n194), .A1(new_n143), .B0(new_n193), .Y(new_n195));
  XOR2X1   g166(.A(new_n195), .B(new_n192), .Y(new_n196));
  INVX1    g167(.A(new_n196), .Y(new_n197));
  NOR3X1   g168(.A(new_n167), .B(new_n145), .C(new_n144), .Y(new_n198));
  XOR2X1   g169(.A(new_n198), .B(new_n197), .Y(new_n199));
  AOI22X1  g170(.A0(new_n191), .A1(new_n33), .B0(new_n36), .B1(new_n190), .Y(new_n200));
  NAND2X1  g171(.A(\b[6] ), .B(\a[6] ), .Y(new_n201));
  OR4X1    g172(.A(new_n201), .B(\op[2] ), .C(new_n31), .D(\op[0] ), .Y(new_n202));
  OR2X1    g173(.A(\b[6] ), .B(\a[6] ), .Y(new_n203));
  AOI22X1  g174(.A0(new_n192), .A1(new_n98), .B0(new_n203), .B1(new_n44), .Y(new_n204));
  NAND3X1  g175(.A(new_n204), .B(new_n202), .C(new_n200), .Y(new_n205));
  AOI21X1  g176(.A0(new_n199), .A1(new_n52), .B0(new_n205), .Y(new_n206));
  AOI21X1  g177(.A0(new_n206), .A1(new_n189), .B0(new_n56), .Y(\out[6] ));
  XOR2X1   g178(.A(\b[7] ), .B(\a[7] ), .Y(new_n208));
  INVX1    g179(.A(new_n180), .Y(new_n209));
  NOR2X1   g180(.A(\b[6] ), .B(new_n190), .Y(new_n210));
  AOI21X1  g181(.A0(new_n185), .A1(new_n209), .B0(new_n210), .Y(new_n211));
  XOR2X1   g182(.A(new_n211), .B(new_n208), .Y(new_n212));
  NOR4X1   g183(.A(new_n186), .B(new_n160), .C(new_n135), .D(new_n134), .Y(new_n213));
  XOR2X1   g184(.A(new_n213), .B(new_n212), .Y(new_n214));
  NAND2X1  g185(.A(new_n214), .B(new_n58), .Y(new_n215));
  INVX1    g186(.A(\a[7] ), .Y(new_n216));
  XOR2X1   g187(.A(\b[7] ), .B(new_n216), .Y(new_n217));
  OAI21X1  g188(.A0(new_n195), .A1(new_n191), .B0(new_n201), .Y(new_n218));
  XOR2X1   g189(.A(new_n218), .B(new_n217), .Y(new_n219));
  OR4X1    g190(.A(new_n196), .B(new_n167), .C(new_n145), .D(new_n144), .Y(new_n220));
  XOR2X1   g191(.A(new_n220), .B(new_n219), .Y(new_n221));
  AOI22X1  g192(.A0(new_n217), .A1(new_n33), .B0(new_n36), .B1(new_n216), .Y(new_n222));
  NAND2X1  g193(.A(\b[7] ), .B(\a[7] ), .Y(new_n223));
  OR4X1    g194(.A(new_n223), .B(\op[2] ), .C(new_n31), .D(\op[0] ), .Y(new_n224));
  OR2X1    g195(.A(\b[7] ), .B(\a[7] ), .Y(new_n225));
  INVX1    g196(.A(new_n217), .Y(new_n226));
  AOI22X1  g197(.A0(new_n226), .A1(new_n98), .B0(new_n225), .B1(new_n44), .Y(new_n227));
  NAND3X1  g198(.A(new_n227), .B(new_n224), .C(new_n222), .Y(new_n228));
  AOI21X1  g199(.A0(new_n221), .A1(new_n52), .B0(new_n228), .Y(new_n229));
  AOI21X1  g200(.A0(new_n229), .A1(new_n215), .B0(new_n56), .Y(\out[7] ));
  OR4X1    g201(.A(new_n208), .B(new_n180), .C(new_n156), .D(new_n127), .Y(new_n231));
  OR2X1    g202(.A(new_n231), .B(new_n157), .Y(new_n232));
  NOR3X1   g203(.A(new_n208), .B(new_n183), .C(new_n180), .Y(new_n233));
  INVX1    g204(.A(new_n208), .Y(new_n234));
  NAND2X1  g205(.A(new_n234), .B(new_n210), .Y(new_n235));
  OAI21X1  g206(.A0(\b[7] ), .A1(new_n216), .B0(new_n235), .Y(new_n236));
  NOR2X1   g207(.A(new_n236), .B(new_n233), .Y(new_n237));
  NAND2X1  g208(.A(new_n237), .B(new_n232), .Y(new_n238));
  NOR4X1   g209(.A(new_n186), .B(new_n160), .C(new_n135), .D(new_n134), .Y(new_n239));
  AOI21X1  g210(.A0(new_n239), .A1(new_n212), .B0(new_n238), .Y(new_n240));
  XOR2X1   g211(.A(new_n211), .B(new_n234), .Y(new_n241));
  AND2X1   g212(.A(new_n237), .B(new_n232), .Y(new_n242));
  OR4X1    g213(.A(new_n186), .B(new_n160), .C(new_n135), .D(new_n134), .Y(new_n243));
  NOR3X1   g214(.A(new_n243), .B(new_n242), .C(new_n241), .Y(new_n244));
  OAI21X1  g215(.A0(new_n244), .A1(new_n240), .B0(new_n58), .Y(new_n245));
  OR2X1    g216(.A(new_n36), .B(new_n33), .Y(new_n246));
  NOR2X1   g217(.A(new_n217), .B(new_n191), .Y(new_n247));
  NAND3X1  g218(.A(new_n247), .B(new_n194), .C(new_n143), .Y(new_n248));
  OAI21X1  g219(.A0(new_n217), .A1(new_n201), .B0(new_n223), .Y(new_n249));
  AOI21X1  g220(.A0(new_n247), .A1(new_n193), .B0(new_n249), .Y(new_n250));
  NAND2X1  g221(.A(new_n250), .B(new_n248), .Y(new_n251));
  OR4X1    g222(.A(new_n196), .B(new_n167), .C(new_n145), .D(new_n144), .Y(new_n252));
  NOR2X1   g223(.A(new_n252), .B(new_n219), .Y(new_n253));
  XOR2X1   g224(.A(new_n253), .B(new_n251), .Y(new_n254));
  AOI21X1  g225(.A0(new_n254), .A1(new_n52), .B0(new_n246), .Y(new_n255));
  AOI21X1  g226(.A0(new_n255), .A1(new_n245), .B0(new_n56), .Y(\out[8] ));
endmodule


