// Benchmark "top_module" written by ABC on Wed Jun 26 15:22:08 2024

module top_module ( 
    \A[0] , \A[1] , \A[2] , \A[3] , \A[4] , \A[5] , \A[6] , \A[7] , \A[8] ,
    \A[9] , \A[10] , \A[11] , \A[12] , \A[13] , \A[14] , \A[15] , \B[0] ,
    \B[1] , \B[2] , \B[3] , \B[4] , \B[5] , \B[6] , \B[7] , \B[8] , \B[9] ,
    \B[10] , \B[11] , \B[12] , \B[13] , \B[14] , \B[15] , EN,
    \Y[0] , \Y[1] , \Y[2] , \Y[3] , \Y[4] , \Y[5] , \Y[6] , \Y[7] , \Y[8] ,
    \Y[9] , \Y[10] , \Y[11] , \Y[12] , \Y[13] , \Y[14] , \Y[15] , overflow,
    \sum[0] , \sum[1] , \sum[2] , \sum[3] , \sum[4] , \sum[5] , \sum[6] ,
    \sum[7] , \sum[8] , \sum[9] , \sum[10] , \sum[11] , \sum[12] ,
    \sum[13] , \sum[14] , \sum[15] , \decoder_output[0] ,
    \decoder_output[1] , \decoder_output[2] , \decoder_output[3] ,
    \decoder_output[4] , \decoder_output[5] , \decoder_output[6] ,
    \decoder_output[7] , \decoder_output[8] , \decoder_output[9] ,
    \decoder_output[10] , \decoder_output[11] , \decoder_output[12] ,
    \decoder_output[13] , \decoder_output[14] , \decoder_output[15]   );
  input  \A[0] , \A[1] , \A[2] , \A[3] , \A[4] , \A[5] , \A[6] , \A[7] ,
    \A[8] , \A[9] , \A[10] , \A[11] , \A[12] , \A[13] , \A[14] , \A[15] ,
    \B[0] , \B[1] , \B[2] , \B[3] , \B[4] , \B[5] , \B[6] , \B[7] , \B[8] ,
    \B[9] , \B[10] , \B[11] , \B[12] , \B[13] , \B[14] , \B[15] , EN;
  output \Y[0] , \Y[1] , \Y[2] , \Y[3] , \Y[4] , \Y[5] , \Y[6] , \Y[7] ,
    \Y[8] , \Y[9] , \Y[10] , \Y[11] , \Y[12] , \Y[13] , \Y[14] , \Y[15] ,
    overflow, \sum[0] , \sum[1] , \sum[2] , \sum[3] , \sum[4] , \sum[5] ,
    \sum[6] , \sum[7] , \sum[8] , \sum[9] , \sum[10] , \sum[11] ,
    \sum[12] , \sum[13] , \sum[14] , \sum[15] , \decoder_output[0] ,
    \decoder_output[1] , \decoder_output[2] , \decoder_output[3] ,
    \decoder_output[4] , \decoder_output[5] , \decoder_output[6] ,
    \decoder_output[7] , \decoder_output[8] , \decoder_output[9] ,
    \decoder_output[10] , \decoder_output[11] , \decoder_output[12] ,
    \decoder_output[13] , \decoder_output[14] , \decoder_output[15] ;
  wire new_n83, new_n84, new_n85, new_n86, new_n87, new_n88, new_n89,
    new_n90, new_n91, new_n92, new_n93, new_n94, new_n95, new_n96, new_n97,
    new_n98, new_n99, new_n100, new_n101, new_n102, new_n103, new_n104,
    new_n105, new_n106, new_n107, new_n108, new_n109, new_n110, new_n111,
    new_n112, new_n113, new_n114, new_n115, new_n116, new_n117, new_n118,
    new_n119, new_n120, new_n121, new_n122, new_n123, new_n124, new_n125,
    new_n126, new_n127, new_n129, new_n130, new_n131, new_n132, new_n134,
    new_n135, new_n136, new_n137, new_n138, new_n139, new_n140, new_n141,
    new_n143, new_n144, new_n145, new_n147, new_n148, new_n149, new_n150,
    new_n151, new_n152, new_n153, new_n154, new_n155, new_n156, new_n157,
    new_n158, new_n159, new_n160, new_n161, new_n162, new_n163, new_n164,
    new_n165, new_n166, new_n167, new_n168, new_n169, new_n170, new_n171,
    new_n172, new_n173, new_n174, new_n175, new_n176, new_n177, new_n182,
    new_n187, new_n192, new_n200, new_n202, new_n203, new_n205, new_n207,
    new_n209, new_n210, new_n211, new_n212, new_n214, new_n215, new_n217,
    new_n219, new_n220, new_n222, new_n223, new_n224, new_n225, new_n227,
    new_n228;
  INVX1    g000(.A(EN), .Y(new_n83));
  XOR2X1   g001(.A(\B[12] ), .B(\A[12] ), .Y(new_n84));
  AND2X1   g002(.A(\B[1] ), .B(\A[1] ), .Y(new_n85));
  XOR2X1   g003(.A(\B[1] ), .B(\A[1] ), .Y(new_n86));
  AND2X1   g004(.A(\B[0] ), .B(\A[0] ), .Y(new_n87));
  AOI21X1  g005(.A0(new_n87), .A1(new_n86), .B0(new_n85), .Y(new_n88));
  XOR2X1   g006(.A(\B[3] ), .B(\A[3] ), .Y(new_n89));
  XOR2X1   g007(.A(\B[2] ), .B(\A[2] ), .Y(new_n90));
  NAND2X1  g008(.A(new_n90), .B(new_n89), .Y(new_n91));
  AND2X1   g009(.A(\B[3] ), .B(\A[3] ), .Y(new_n92));
  AND2X1   g010(.A(\B[2] ), .B(\A[2] ), .Y(new_n93));
  AOI21X1  g011(.A0(new_n93), .A1(new_n89), .B0(new_n92), .Y(new_n94));
  OAI21X1  g012(.A0(new_n91), .A1(new_n88), .B0(new_n94), .Y(new_n95));
  XOR2X1   g013(.A(\B[7] ), .B(\A[7] ), .Y(new_n96));
  XOR2X1   g014(.A(\B[6] ), .B(\A[6] ), .Y(new_n97));
  NAND2X1  g015(.A(new_n97), .B(new_n96), .Y(new_n98));
  INVX1    g016(.A(\A[5] ), .Y(new_n99));
  XOR2X1   g017(.A(\B[5] ), .B(new_n99), .Y(new_n100));
  INVX1    g018(.A(\A[4] ), .Y(new_n101));
  XOR2X1   g019(.A(\B[4] ), .B(new_n101), .Y(new_n102));
  NOR3X1   g020(.A(new_n102), .B(new_n100), .C(new_n98), .Y(new_n103));
  XOR2X1   g021(.A(\B[5] ), .B(\A[5] ), .Y(new_n104));
  AND2X1   g022(.A(\B[5] ), .B(\A[5] ), .Y(new_n105));
  AND2X1   g023(.A(\B[4] ), .B(\A[4] ), .Y(new_n106));
  AOI21X1  g024(.A0(new_n106), .A1(new_n104), .B0(new_n105), .Y(new_n107));
  AND2X1   g025(.A(\B[7] ), .B(\A[7] ), .Y(new_n108));
  AND2X1   g026(.A(\B[6] ), .B(\A[6] ), .Y(new_n109));
  AOI21X1  g027(.A0(new_n109), .A1(new_n96), .B0(new_n108), .Y(new_n110));
  OAI21X1  g028(.A0(new_n107), .A1(new_n98), .B0(new_n110), .Y(new_n111));
  AOI21X1  g029(.A0(new_n103), .A1(new_n95), .B0(new_n111), .Y(new_n112));
  XOR2X1   g030(.A(\B[11] ), .B(\A[11] ), .Y(new_n113));
  XOR2X1   g031(.A(\B[10] ), .B(\A[10] ), .Y(new_n114));
  XOR2X1   g032(.A(\B[9] ), .B(\A[9] ), .Y(new_n115));
  XOR2X1   g033(.A(\B[8] ), .B(\A[8] ), .Y(new_n116));
  NAND4X1  g034(.A(new_n116), .B(new_n115), .C(new_n114), .D(new_n113), .Y(new_n117));
  AND2X1   g035(.A(new_n114), .B(new_n113), .Y(new_n118));
  AND2X1   g036(.A(\B[9] ), .B(\A[9] ), .Y(new_n119));
  AND2X1   g037(.A(\B[8] ), .B(\A[8] ), .Y(new_n120));
  AND2X1   g038(.A(new_n120), .B(new_n115), .Y(new_n121));
  OAI21X1  g039(.A0(new_n121), .A1(new_n119), .B0(new_n118), .Y(new_n122));
  AND2X1   g040(.A(\B[11] ), .B(\A[11] ), .Y(new_n123));
  AND2X1   g041(.A(\B[10] ), .B(\A[10] ), .Y(new_n124));
  AOI21X1  g042(.A0(new_n124), .A1(new_n113), .B0(new_n123), .Y(new_n125));
  AND2X1   g043(.A(new_n125), .B(new_n122), .Y(new_n126));
  OAI21X1  g044(.A0(new_n117), .A1(new_n112), .B0(new_n126), .Y(new_n127));
  XOR2X1   g045(.A(new_n127), .B(new_n84), .Y(\sum[12] ));
  XOR2X1   g046(.A(\B[13] ), .B(\A[13] ), .Y(new_n129));
  INVX1    g047(.A(new_n129), .Y(new_n130));
  AND2X1   g048(.A(\B[12] ), .B(\A[12] ), .Y(new_n131));
  AOI21X1  g049(.A0(new_n127), .A1(new_n84), .B0(new_n131), .Y(new_n132));
  XOR2X1   g050(.A(new_n132), .B(new_n130), .Y(\sum[13] ));
  OR2X1    g051(.A(\sum[13] ), .B(\sum[12] ), .Y(new_n134));
  XOR2X1   g052(.A(\B[14] ), .B(\A[14] ), .Y(new_n135));
  INVX1    g053(.A(new_n135), .Y(new_n136));
  AND2X1   g054(.A(new_n129), .B(new_n84), .Y(new_n137));
  AND2X1   g055(.A(\B[13] ), .B(\A[13] ), .Y(new_n138));
  AND2X1   g056(.A(new_n131), .B(new_n129), .Y(new_n139));
  OR2X1    g057(.A(new_n139), .B(new_n138), .Y(new_n140));
  AOI21X1  g058(.A0(new_n137), .A1(new_n127), .B0(new_n140), .Y(new_n141));
  XOR2X1   g059(.A(new_n141), .B(new_n136), .Y(\sum[14] ));
  XOR2X1   g060(.A(\B[15] ), .B(\A[15] ), .Y(new_n143));
  NAND2X1  g061(.A(\B[14] ), .B(\A[14] ), .Y(new_n144));
  OAI21X1  g062(.A0(new_n141), .A1(new_n136), .B0(new_n144), .Y(new_n145));
  XOR2X1   g063(.A(new_n145), .B(new_n143), .Y(\sum[15] ));
  OR2X1    g064(.A(\sum[15] ), .B(\sum[14] ), .Y(new_n147));
  XOR2X1   g065(.A(new_n141), .B(new_n135), .Y(new_n148));
  INVX1    g066(.A(new_n143), .Y(new_n149));
  XOR2X1   g067(.A(new_n145), .B(new_n149), .Y(new_n150));
  NOR3X1   g068(.A(new_n150), .B(new_n148), .C(new_n134), .Y(new_n151));
  INVX1    g069(.A(new_n84), .Y(new_n152));
  XOR2X1   g070(.A(new_n127), .B(new_n152), .Y(new_n153));
  XOR2X1   g071(.A(new_n132), .B(new_n129), .Y(new_n154));
  OR2X1    g072(.A(new_n154), .B(new_n153), .Y(new_n155));
  NOR3X1   g073(.A(new_n155), .B(new_n150), .C(\sum[14] ), .Y(new_n156));
  OR2X1    g074(.A(new_n154), .B(\sum[12] ), .Y(new_n157));
  NOR3X1   g075(.A(new_n157), .B(new_n150), .C(\sum[14] ), .Y(new_n158));
  OR2X1    g076(.A(\sum[13] ), .B(new_n153), .Y(new_n159));
  NOR3X1   g077(.A(new_n159), .B(new_n150), .C(\sum[14] ), .Y(new_n160));
  OR4X1    g078(.A(new_n160), .B(new_n158), .C(new_n156), .D(new_n151), .Y(new_n161));
  NOR3X1   g079(.A(\sum[15] ), .B(\sum[14] ), .C(new_n134), .Y(new_n162));
  NOR3X1   g080(.A(new_n155), .B(new_n150), .C(new_n148), .Y(new_n163));
  NOR3X1   g081(.A(new_n157), .B(new_n150), .C(new_n148), .Y(new_n164));
  NOR3X1   g082(.A(new_n159), .B(new_n150), .C(new_n148), .Y(new_n165));
  OR4X1    g083(.A(new_n165), .B(new_n164), .C(new_n163), .D(new_n162), .Y(new_n166));
  NOR3X1   g084(.A(\sum[15] ), .B(new_n148), .C(new_n134), .Y(new_n167));
  NOR3X1   g085(.A(new_n155), .B(\sum[15] ), .C(\sum[14] ), .Y(new_n168));
  NOR3X1   g086(.A(new_n157), .B(\sum[15] ), .C(\sum[14] ), .Y(new_n169));
  NOR3X1   g087(.A(new_n159), .B(\sum[15] ), .C(\sum[14] ), .Y(new_n170));
  OR4X1    g088(.A(new_n170), .B(new_n169), .C(new_n168), .D(new_n167), .Y(new_n171));
  NOR3X1   g089(.A(new_n150), .B(\sum[14] ), .C(new_n134), .Y(new_n172));
  NOR3X1   g090(.A(new_n155), .B(\sum[15] ), .C(new_n148), .Y(new_n173));
  NOR3X1   g091(.A(new_n157), .B(\sum[15] ), .C(new_n148), .Y(new_n174));
  NOR3X1   g092(.A(new_n159), .B(\sum[15] ), .C(new_n148), .Y(new_n175));
  OR4X1    g093(.A(new_n175), .B(new_n174), .C(new_n173), .D(new_n172), .Y(new_n176));
  NOR4X1   g094(.A(new_n176), .B(new_n171), .C(new_n166), .D(new_n161), .Y(new_n177));
  NOR4X1   g095(.A(new_n177), .B(new_n147), .C(new_n134), .D(new_n83), .Y(\Y[0] ));
  NOR4X1   g096(.A(new_n177), .B(new_n147), .C(new_n159), .D(new_n83), .Y(\Y[1] ));
  NOR4X1   g097(.A(new_n177), .B(new_n147), .C(new_n157), .D(new_n83), .Y(\Y[2] ));
  NOR4X1   g098(.A(new_n177), .B(new_n147), .C(new_n155), .D(new_n83), .Y(\Y[3] ));
  OR2X1    g099(.A(\sum[15] ), .B(new_n148), .Y(new_n182));
  NOR4X1   g100(.A(new_n177), .B(new_n182), .C(new_n134), .D(new_n83), .Y(\Y[4] ));
  NOR4X1   g101(.A(new_n177), .B(new_n182), .C(new_n159), .D(new_n83), .Y(\Y[5] ));
  NOR4X1   g102(.A(new_n177), .B(new_n182), .C(new_n157), .D(new_n83), .Y(\Y[6] ));
  NOR4X1   g103(.A(new_n177), .B(new_n182), .C(new_n155), .D(new_n83), .Y(\Y[7] ));
  OR2X1    g104(.A(new_n150), .B(\sum[14] ), .Y(new_n187));
  NOR4X1   g105(.A(new_n177), .B(new_n187), .C(new_n134), .D(new_n83), .Y(\Y[8] ));
  NOR4X1   g106(.A(new_n177), .B(new_n159), .C(new_n187), .D(new_n83), .Y(\Y[9] ));
  NOR4X1   g107(.A(new_n177), .B(new_n157), .C(new_n187), .D(new_n83), .Y(\Y[10] ));
  NOR4X1   g108(.A(new_n177), .B(new_n187), .C(new_n155), .D(new_n83), .Y(\Y[11] ));
  NAND2X1  g109(.A(\sum[15] ), .B(\sum[14] ), .Y(new_n192));
  NOR4X1   g110(.A(new_n177), .B(new_n192), .C(new_n134), .D(new_n83), .Y(\Y[12] ));
  NOR4X1   g111(.A(new_n177), .B(new_n159), .C(new_n192), .D(new_n83), .Y(\Y[13] ));
  NOR4X1   g112(.A(new_n177), .B(new_n157), .C(new_n192), .D(new_n83), .Y(\Y[14] ));
  NOR4X1   g113(.A(new_n177), .B(new_n155), .C(new_n192), .D(new_n83), .Y(\Y[15] ));
  XOR2X1   g114(.A(\B[0] ), .B(\A[0] ), .Y(\sum[0] ));
  XOR2X1   g115(.A(new_n87), .B(new_n86), .Y(\sum[1] ));
  INVX1    g116(.A(new_n90), .Y(new_n200));
  XOR2X1   g117(.A(new_n200), .B(new_n88), .Y(\sum[2] ));
  INVX1    g118(.A(new_n93), .Y(new_n202));
  OAI21X1  g119(.A0(new_n200), .A1(new_n88), .B0(new_n202), .Y(new_n203));
  XOR2X1   g120(.A(new_n203), .B(new_n89), .Y(\sum[3] ));
  INVX1    g121(.A(new_n102), .Y(new_n205));
  XOR2X1   g122(.A(new_n205), .B(new_n95), .Y(\sum[4] ));
  AOI21X1  g123(.A0(new_n205), .A1(new_n95), .B0(new_n106), .Y(new_n207));
  XOR2X1   g124(.A(new_n207), .B(new_n100), .Y(\sum[5] ));
  INVX1    g125(.A(new_n97), .Y(new_n209));
  NOR2X1   g126(.A(new_n102), .B(new_n100), .Y(new_n210));
  INVX1    g127(.A(new_n107), .Y(new_n211));
  AOI21X1  g128(.A0(new_n210), .A1(new_n95), .B0(new_n211), .Y(new_n212));
  XOR2X1   g129(.A(new_n212), .B(new_n209), .Y(\sum[6] ));
  INVX1    g130(.A(new_n109), .Y(new_n214));
  OAI21X1  g131(.A0(new_n212), .A1(new_n209), .B0(new_n214), .Y(new_n215));
  XOR2X1   g132(.A(new_n215), .B(new_n96), .Y(\sum[7] ));
  INVX1    g133(.A(new_n116), .Y(new_n217));
  XOR2X1   g134(.A(new_n217), .B(new_n112), .Y(\sum[8] ));
  INVX1    g135(.A(new_n120), .Y(new_n219));
  OAI21X1  g136(.A0(new_n217), .A1(new_n112), .B0(new_n219), .Y(new_n220));
  XOR2X1   g137(.A(new_n220), .B(new_n115), .Y(\sum[9] ));
  NAND2X1  g138(.A(new_n116), .B(new_n115), .Y(new_n222));
  OR2X1    g139(.A(new_n121), .B(new_n119), .Y(new_n223));
  INVX1    g140(.A(new_n223), .Y(new_n224));
  OAI21X1  g141(.A0(new_n222), .A1(new_n112), .B0(new_n224), .Y(new_n225));
  XOR2X1   g142(.A(new_n225), .B(new_n114), .Y(\sum[10] ));
  INVX1    g143(.A(new_n113), .Y(new_n227));
  AOI21X1  g144(.A0(new_n225), .A1(new_n114), .B0(new_n124), .Y(new_n228));
  XOR2X1   g145(.A(new_n228), .B(new_n227), .Y(\sum[11] ));
  ZERO     g146(.Y(overflow));
  NOR4X1   g147(.A(new_n177), .B(new_n147), .C(new_n134), .D(new_n83), .Y(\decoder_output[0] ));
  NOR4X1   g148(.A(new_n177), .B(new_n147), .C(new_n159), .D(new_n83), .Y(\decoder_output[1] ));
  NOR4X1   g149(.A(new_n177), .B(new_n147), .C(new_n157), .D(new_n83), .Y(\decoder_output[2] ));
  NOR4X1   g150(.A(new_n177), .B(new_n147), .C(new_n155), .D(new_n83), .Y(\decoder_output[3] ));
  NOR4X1   g151(.A(new_n177), .B(new_n182), .C(new_n134), .D(new_n83), .Y(\decoder_output[4] ));
  NOR4X1   g152(.A(new_n177), .B(new_n182), .C(new_n159), .D(new_n83), .Y(\decoder_output[5] ));
  NOR4X1   g153(.A(new_n177), .B(new_n182), .C(new_n157), .D(new_n83), .Y(\decoder_output[6] ));
  NOR4X1   g154(.A(new_n177), .B(new_n182), .C(new_n155), .D(new_n83), .Y(\decoder_output[7] ));
  NOR4X1   g155(.A(new_n177), .B(new_n187), .C(new_n134), .D(new_n83), .Y(\decoder_output[8] ));
  NOR4X1   g156(.A(new_n177), .B(new_n159), .C(new_n187), .D(new_n83), .Y(\decoder_output[9] ));
  NOR4X1   g157(.A(new_n177), .B(new_n157), .C(new_n187), .D(new_n83), .Y(\decoder_output[10] ));
  NOR4X1   g158(.A(new_n177), .B(new_n187), .C(new_n155), .D(new_n83), .Y(\decoder_output[11] ));
  NOR4X1   g159(.A(new_n177), .B(new_n192), .C(new_n134), .D(new_n83), .Y(\decoder_output[12] ));
  NOR4X1   g160(.A(new_n177), .B(new_n159), .C(new_n192), .D(new_n83), .Y(\decoder_output[13] ));
  NOR4X1   g161(.A(new_n177), .B(new_n157), .C(new_n192), .D(new_n83), .Y(\decoder_output[14] ));
  NOR4X1   g162(.A(new_n177), .B(new_n155), .C(new_n192), .D(new_n83), .Y(\decoder_output[15] ));
endmodule


