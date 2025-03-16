// Benchmark "mux_logic" written by ABC on Wed Jun 26 15:22:14 2024

module mux_logic ( 
    \sel[0] , \sel[1] , \sel[2] , \data0[0] , \data0[1] , \data0[2] ,
    \data0[3] , \data1[0] , \data1[1] , \data1[2] , \data1[3] , \data2[0] ,
    \data2[1] , \data2[2] , \data2[3] , \data3[0] , \data3[1] , \data3[2] ,
    \data3[3] , \data4[0] , \data4[1] , \data4[2] , \data4[3] , \data5[0] ,
    \data5[1] , \data5[2] , \data5[3] , \in1[0] , \in1[1] , \in1[2] ,
    \in1[3] , \in2[0] , \in2[1] , \in2[2] , \in2[3] , \in3[0] , \in3[1] ,
    \in3[2] , \in3[3] , \in4[0] , \in4[1] , \in4[2] , \in4[3] ,
    \out_and[0] , \out_and[1] , \out_and[2] , \out_and[3] , \out_or[0] ,
    \out_or[1] , \out_or[2] , \out_or[3] , \out_xor[0] , \out_xor[1] ,
    \out_xor[2] , \out_xor[3] , \final_output[0] , \final_output[1] ,
    \final_output[2] , \final_output[3]   );
  input  \sel[0] , \sel[1] , \sel[2] , \data0[0] , \data0[1] ,
    \data0[2] , \data0[3] , \data1[0] , \data1[1] , \data1[2] , \data1[3] ,
    \data2[0] , \data2[1] , \data2[2] , \data2[3] , \data3[0] , \data3[1] ,
    \data3[2] , \data3[3] , \data4[0] , \data4[1] , \data4[2] , \data4[3] ,
    \data5[0] , \data5[1] , \data5[2] , \data5[3] , \in1[0] , \in1[1] ,
    \in1[2] , \in1[3] , \in2[0] , \in2[1] , \in2[2] , \in2[3] , \in3[0] ,
    \in3[1] , \in3[2] , \in3[3] , \in4[0] , \in4[1] , \in4[2] , \in4[3] ;
  output \out_and[0] , \out_and[1] , \out_and[2] , \out_and[3] , \out_or[0] ,
    \out_or[1] , \out_or[2] , \out_or[3] , \out_xor[0] , \out_xor[1] ,
    \out_xor[2] , \out_xor[3] , \final_output[0] , \final_output[1] ,
    \final_output[2] , \final_output[3] ;
  wire new_n60, new_n62, new_n64, new_n66, new_n68, new_n70, new_n72,
    new_n74, new_n76, new_n77, new_n79, new_n80, new_n82, new_n83, new_n85,
    new_n86, new_n88, new_n89, new_n90, new_n91, new_n92, new_n93, new_n94,
    new_n95, new_n96, new_n97, new_n98, new_n99, new_n100, new_n101,
    new_n102, new_n103, new_n104, new_n105, new_n106, new_n107, new_n108,
    new_n109, new_n110, new_n111, new_n112, new_n113, new_n114, new_n115,
    new_n116, new_n117, new_n119, new_n120, new_n121, new_n122, new_n123,
    new_n124, new_n125, new_n126, new_n127, new_n128, new_n129, new_n130,
    new_n131, new_n132, new_n133, new_n134, new_n135, new_n136, new_n137,
    new_n139, new_n140, new_n141, new_n142, new_n143, new_n144, new_n145,
    new_n146, new_n147, new_n148, new_n149, new_n150, new_n151, new_n152,
    new_n153, new_n154, new_n155, new_n156, new_n157, new_n159, new_n160,
    new_n161, new_n162, new_n163, new_n164, new_n165, new_n166, new_n167,
    new_n168, new_n169, new_n170, new_n171, new_n172, new_n173, new_n174,
    new_n175, new_n176, new_n177;
  NAND4X1  g000(.A(\in4[0] ), .B(\in3[0] ), .C(\in2[0] ), .D(\in1[0] ), .Y(new_n60));
  INVX1    g001(.A(new_n60), .Y(\out_and[0] ));
  NAND4X1  g002(.A(\in4[1] ), .B(\in3[1] ), .C(\in2[1] ), .D(\in1[1] ), .Y(new_n62));
  INVX1    g003(.A(new_n62), .Y(\out_and[1] ));
  NAND4X1  g004(.A(\in4[2] ), .B(\in3[2] ), .C(\in2[2] ), .D(\in1[2] ), .Y(new_n64));
  INVX1    g005(.A(new_n64), .Y(\out_and[2] ));
  NAND4X1  g006(.A(\in4[3] ), .B(\in3[3] ), .C(\in2[3] ), .D(\in1[3] ), .Y(new_n66));
  INVX1    g007(.A(new_n66), .Y(\out_and[3] ));
  NOR4X1   g008(.A(\in4[0] ), .B(\in3[0] ), .C(\in2[0] ), .D(\in1[0] ), .Y(new_n68));
  INVX1    g009(.A(new_n68), .Y(\out_or[0] ));
  NOR4X1   g010(.A(\in4[1] ), .B(\in3[1] ), .C(\in2[1] ), .D(\in1[1] ), .Y(new_n70));
  INVX1    g011(.A(new_n70), .Y(\out_or[1] ));
  NOR4X1   g012(.A(\in4[2] ), .B(\in3[2] ), .C(\in2[2] ), .D(\in1[2] ), .Y(new_n72));
  INVX1    g013(.A(new_n72), .Y(\out_or[2] ));
  NOR4X1   g014(.A(\in4[3] ), .B(\in3[3] ), .C(\in2[3] ), .D(\in1[3] ), .Y(new_n74));
  INVX1    g015(.A(new_n74), .Y(\out_or[3] ));
  XOR2X1   g016(.A(\in2[0] ), .B(\in1[0] ), .Y(new_n76));
  XOR2X1   g017(.A(new_n76), .B(\in3[0] ), .Y(new_n77));
  XOR2X1   g018(.A(new_n77), .B(\in4[0] ), .Y(\out_xor[0] ));
  XOR2X1   g019(.A(\in2[1] ), .B(\in1[1] ), .Y(new_n79));
  XOR2X1   g020(.A(new_n79), .B(\in3[1] ), .Y(new_n80));
  XOR2X1   g021(.A(new_n80), .B(\in4[1] ), .Y(\out_xor[1] ));
  XOR2X1   g022(.A(\in2[2] ), .B(\in1[2] ), .Y(new_n82));
  XOR2X1   g023(.A(new_n82), .B(\in3[2] ), .Y(new_n83));
  XOR2X1   g024(.A(new_n83), .B(\in4[2] ), .Y(\out_xor[2] ));
  XOR2X1   g025(.A(\in2[3] ), .B(\in1[3] ), .Y(new_n85));
  XOR2X1   g026(.A(new_n85), .B(\in3[3] ), .Y(new_n86));
  XOR2X1   g027(.A(new_n86), .B(\in4[3] ), .Y(\out_xor[3] ));
  INVX1    g028(.A(\sel[0] ), .Y(new_n88));
  INVX1    g029(.A(\sel[2] ), .Y(new_n89));
  NAND3X1  g030(.A(new_n89), .B(\sel[1] ), .C(new_n88), .Y(new_n90));
  INVX1    g031(.A(\data4[0] ), .Y(new_n91));
  INVX1    g032(.A(\data5[0] ), .Y(new_n92));
  INVX1    g033(.A(\sel[1] ), .Y(new_n93));
  NAND3X1  g034(.A(\sel[2] ), .B(new_n93), .C(\sel[0] ), .Y(new_n94));
  NAND3X1  g035(.A(\sel[2] ), .B(new_n93), .C(new_n88), .Y(new_n95));
  OAI22X1  g036(.A0(new_n95), .A1(new_n91), .B0(new_n94), .B1(new_n92), .Y(new_n96));
  INVX1    g037(.A(\data3[0] ), .Y(new_n97));
  NOR4X1   g038(.A(new_n97), .B(\sel[2] ), .C(new_n93), .D(new_n88), .Y(new_n98));
  INVX1    g039(.A(\data2[0] ), .Y(new_n99));
  NOR4X1   g040(.A(new_n99), .B(\sel[2] ), .C(new_n93), .D(\sel[0] ), .Y(new_n100));
  INVX1    g041(.A(\data1[0] ), .Y(new_n101));
  NOR4X1   g042(.A(new_n101), .B(\sel[2] ), .C(\sel[1] ), .D(new_n88), .Y(new_n102));
  NOR3X1   g043(.A(\sel[2] ), .B(\sel[1] ), .C(\sel[0] ), .Y(new_n103));
  AND2X1   g044(.A(new_n103), .B(\data0[0] ), .Y(new_n104));
  OR4X1    g045(.A(new_n104), .B(new_n102), .C(new_n100), .D(new_n98), .Y(new_n105));
  MX2X1    g046(.A(\sel[1] ), .B(\sel[2] ), .S0(\sel[0] ), .Y(new_n106));
  NAND3X1  g047(.A(new_n106), .B(new_n94), .C(new_n90), .Y(new_n107));
  OAI21X1  g048(.A0(new_n105), .A1(new_n96), .B0(new_n107), .Y(new_n108));
  XOR2X1   g049(.A(new_n108), .B(\out_xor[0] ), .Y(new_n109));
  OR2X1    g050(.A(new_n109), .B(new_n90), .Y(new_n110));
  OR2X1    g051(.A(new_n105), .B(new_n96), .Y(new_n111));
  AND2X1   g052(.A(new_n107), .B(new_n111), .Y(new_n112));
  NAND3X1  g053(.A(new_n89), .B(new_n93), .C(\sel[0] ), .Y(new_n113));
  AOI21X1  g054(.A0(new_n108), .A1(new_n68), .B0(new_n113), .Y(new_n114));
  NOR4X1   g055(.A(new_n60), .B(\sel[2] ), .C(\sel[1] ), .D(\sel[0] ), .Y(new_n115));
  AOI21X1  g056(.A0(new_n115), .A1(new_n112), .B0(new_n114), .Y(new_n116));
  OAI21X1  g057(.A0(new_n93), .A1(new_n88), .B0(new_n89), .Y(new_n117));
  AOI21X1  g058(.A0(new_n116), .A1(new_n110), .B0(new_n117), .Y(\final_output[0] ));
  INVX1    g059(.A(\data4[1] ), .Y(new_n119));
  INVX1    g060(.A(\data5[1] ), .Y(new_n120));
  OAI22X1  g061(.A0(new_n95), .A1(new_n119), .B0(new_n94), .B1(new_n120), .Y(new_n121));
  INVX1    g062(.A(\data3[1] ), .Y(new_n122));
  NOR4X1   g063(.A(new_n122), .B(\sel[2] ), .C(new_n93), .D(new_n88), .Y(new_n123));
  INVX1    g064(.A(\data2[1] ), .Y(new_n124));
  NOR4X1   g065(.A(new_n124), .B(\sel[2] ), .C(new_n93), .D(\sel[0] ), .Y(new_n125));
  INVX1    g066(.A(\data1[1] ), .Y(new_n126));
  NOR4X1   g067(.A(new_n126), .B(\sel[2] ), .C(\sel[1] ), .D(new_n88), .Y(new_n127));
  AND2X1   g068(.A(new_n103), .B(\data0[1] ), .Y(new_n128));
  OR4X1    g069(.A(new_n128), .B(new_n127), .C(new_n125), .D(new_n123), .Y(new_n129));
  OAI21X1  g070(.A0(new_n129), .A1(new_n121), .B0(new_n107), .Y(new_n130));
  XOR2X1   g071(.A(new_n130), .B(\out_xor[1] ), .Y(new_n131));
  OR2X1    g072(.A(new_n131), .B(new_n90), .Y(new_n132));
  OR2X1    g073(.A(new_n129), .B(new_n121), .Y(new_n133));
  AND2X1   g074(.A(new_n133), .B(new_n107), .Y(new_n134));
  AOI21X1  g075(.A0(new_n130), .A1(new_n70), .B0(new_n113), .Y(new_n135));
  NOR4X1   g076(.A(new_n62), .B(\sel[2] ), .C(\sel[1] ), .D(\sel[0] ), .Y(new_n136));
  AOI21X1  g077(.A0(new_n136), .A1(new_n134), .B0(new_n135), .Y(new_n137));
  AOI21X1  g078(.A0(new_n137), .A1(new_n132), .B0(new_n117), .Y(\final_output[1] ));
  INVX1    g079(.A(\data4[2] ), .Y(new_n139));
  INVX1    g080(.A(\data5[2] ), .Y(new_n140));
  OAI22X1  g081(.A0(new_n95), .A1(new_n139), .B0(new_n94), .B1(new_n140), .Y(new_n141));
  INVX1    g082(.A(\data3[2] ), .Y(new_n142));
  NOR4X1   g083(.A(new_n142), .B(\sel[2] ), .C(new_n93), .D(new_n88), .Y(new_n143));
  INVX1    g084(.A(\data2[2] ), .Y(new_n144));
  NOR4X1   g085(.A(new_n144), .B(\sel[2] ), .C(new_n93), .D(\sel[0] ), .Y(new_n145));
  INVX1    g086(.A(\data1[2] ), .Y(new_n146));
  NOR4X1   g087(.A(new_n146), .B(\sel[2] ), .C(\sel[1] ), .D(new_n88), .Y(new_n147));
  AND2X1   g088(.A(new_n103), .B(\data0[2] ), .Y(new_n148));
  OR4X1    g089(.A(new_n148), .B(new_n147), .C(new_n145), .D(new_n143), .Y(new_n149));
  OAI21X1  g090(.A0(new_n149), .A1(new_n141), .B0(new_n107), .Y(new_n150));
  XOR2X1   g091(.A(new_n150), .B(\out_xor[2] ), .Y(new_n151));
  OR2X1    g092(.A(new_n151), .B(new_n90), .Y(new_n152));
  OR2X1    g093(.A(new_n149), .B(new_n141), .Y(new_n153));
  AND2X1   g094(.A(new_n153), .B(new_n107), .Y(new_n154));
  AOI21X1  g095(.A0(new_n150), .A1(new_n72), .B0(new_n113), .Y(new_n155));
  NOR4X1   g096(.A(new_n64), .B(\sel[2] ), .C(\sel[1] ), .D(\sel[0] ), .Y(new_n156));
  AOI21X1  g097(.A0(new_n156), .A1(new_n154), .B0(new_n155), .Y(new_n157));
  AOI21X1  g098(.A0(new_n157), .A1(new_n152), .B0(new_n117), .Y(\final_output[2] ));
  INVX1    g099(.A(\data4[3] ), .Y(new_n159));
  INVX1    g100(.A(\data5[3] ), .Y(new_n160));
  OAI22X1  g101(.A0(new_n95), .A1(new_n159), .B0(new_n94), .B1(new_n160), .Y(new_n161));
  INVX1    g102(.A(\data3[3] ), .Y(new_n162));
  NOR4X1   g103(.A(new_n162), .B(\sel[2] ), .C(new_n93), .D(new_n88), .Y(new_n163));
  INVX1    g104(.A(\data2[3] ), .Y(new_n164));
  NOR4X1   g105(.A(new_n164), .B(\sel[2] ), .C(new_n93), .D(\sel[0] ), .Y(new_n165));
  INVX1    g106(.A(\data1[3] ), .Y(new_n166));
  NOR4X1   g107(.A(new_n166), .B(\sel[2] ), .C(\sel[1] ), .D(new_n88), .Y(new_n167));
  AND2X1   g108(.A(new_n103), .B(\data0[3] ), .Y(new_n168));
  OR4X1    g109(.A(new_n168), .B(new_n167), .C(new_n165), .D(new_n163), .Y(new_n169));
  OAI21X1  g110(.A0(new_n169), .A1(new_n161), .B0(new_n107), .Y(new_n170));
  XOR2X1   g111(.A(new_n170), .B(\out_xor[3] ), .Y(new_n171));
  OR2X1    g112(.A(new_n171), .B(new_n90), .Y(new_n172));
  OR2X1    g113(.A(new_n169), .B(new_n161), .Y(new_n173));
  AND2X1   g114(.A(new_n173), .B(new_n107), .Y(new_n174));
  AOI21X1  g115(.A0(new_n170), .A1(new_n74), .B0(new_n113), .Y(new_n175));
  NOR4X1   g116(.A(new_n66), .B(\sel[2] ), .C(\sel[1] ), .D(\sel[0] ), .Y(new_n176));
  AOI21X1  g117(.A0(new_n176), .A1(new_n174), .B0(new_n175), .Y(new_n177));
  AOI21X1  g118(.A0(new_n177), .A1(new_n172), .B0(new_n117), .Y(\final_output[3] ));
endmodule


