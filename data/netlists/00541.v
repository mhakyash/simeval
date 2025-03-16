// Benchmark "calculator" written by ABC on Wed Jun 26 15:22:13 2024

module calculator ( 
    \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ,
    \OP[0] , \OP[1] ,
    \RESULT[0] , \RESULT[1] , \RESULT[2] , \RESULT[3]   );
  input  \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ,
    \OP[0] , \OP[1] ;
  output \RESULT[0] , \RESULT[1] , \RESULT[2] , \RESULT[3] ;
  wire new_n15, new_n16, new_n17, new_n18, new_n19, new_n20, new_n21,
    new_n22, new_n23, new_n24, new_n25, new_n26, new_n27, new_n28, new_n29,
    new_n30, new_n31, new_n32, new_n33, new_n34, new_n35, new_n36, new_n37,
    new_n38, new_n39, new_n40, new_n41, new_n42, new_n43, new_n44, new_n45,
    new_n46, new_n47, new_n48, new_n49, new_n50, new_n51, new_n52, new_n53,
    new_n54, new_n55, new_n56, new_n57, new_n58, new_n59, new_n60, new_n61,
    new_n62, new_n63, new_n64, new_n65, new_n66, new_n67, new_n68, new_n69,
    new_n70, new_n71, new_n72, new_n73, new_n74, new_n75, new_n76, new_n77,
    new_n78, new_n79, new_n80, new_n81, new_n82, new_n83, new_n84, new_n85,
    new_n86, new_n87, new_n88, new_n89, new_n90, new_n91, new_n92, new_n93,
    new_n94, new_n95, new_n96, new_n97, new_n98, new_n99, new_n100,
    new_n101, new_n102, new_n103, new_n104, new_n105, new_n106, new_n107,
    new_n109, new_n110, new_n111, new_n112, new_n113, new_n114, new_n115,
    new_n116, new_n117, new_n118, new_n119, new_n120, new_n121, new_n122,
    new_n123, new_n125, new_n126, new_n127, new_n128, new_n129, new_n130,
    new_n131, new_n132, new_n133, new_n134, new_n135, new_n136, new_n137,
    new_n138, new_n139, new_n140, new_n141, new_n142, new_n144, new_n145,
    new_n146, new_n147, new_n148, new_n149, new_n150, new_n151, new_n152,
    new_n153, new_n154, new_n155, new_n156, new_n157, new_n158, new_n159,
    new_n160, new_n161, new_n162, new_n163, new_n164, new_n165, new_n166,
    new_n167;
  INVX1    g000(.A(\B[3] ), .Y(new_n15));
  INVX1    g001(.A(\A[3] ), .Y(new_n16));
  XOR2X1   g002(.A(\B[0] ), .B(\A[3] ), .Y(new_n17));
  INVX1    g003(.A(new_n17), .Y(new_n18));
  OR2X1    g004(.A(new_n17), .B(\A[2] ), .Y(new_n19));
  INVX1    g005(.A(\A[0] ), .Y(new_n20));
  INVX1    g006(.A(\A[1] ), .Y(new_n21));
  NAND3X1  g007(.A(new_n15), .B(new_n21), .C(new_n20), .Y(new_n22));
  NOR4X1   g008(.A(new_n22), .B(new_n19), .C(\B[2] ), .D(\B[1] ), .Y(new_n23));
  INVX1    g009(.A(\A[2] ), .Y(new_n24));
  OR2X1    g010(.A(new_n17), .B(new_n24), .Y(new_n25));
  OR2X1    g011(.A(\B[0] ), .B(new_n16), .Y(new_n26));
  NAND3X1  g012(.A(new_n26), .B(new_n25), .C(new_n19), .Y(new_n27));
  NOR3X1   g013(.A(\B[3] ), .B(\B[2] ), .C(\B[1] ), .Y(new_n28));
  AOI21X1  g014(.A0(new_n28), .A1(new_n27), .B0(new_n23), .Y(new_n29));
  MX2X1    g015(.A(new_n18), .B(new_n16), .S0(new_n29), .Y(new_n30));
  XOR2X1   g016(.A(new_n30), .B(\B[1] ), .Y(new_n31));
  XOR2X1   g017(.A(\B[0] ), .B(\A[2] ), .Y(new_n32));
  INVX1    g018(.A(new_n32), .Y(new_n33));
  AND2X1   g019(.A(new_n33), .B(new_n31), .Y(new_n34));
  NOR2X1   g020(.A(\B[3] ), .B(\B[2] ), .Y(new_n35));
  NOR4X1   g021(.A(\B[3] ), .B(\B[2] ), .C(\A[1] ), .D(\A[0] ), .Y(new_n36));
  INVX1    g022(.A(\B[1] ), .Y(new_n37));
  XOR2X1   g023(.A(new_n30), .B(new_n37), .Y(new_n38));
  INVX1    g024(.A(\B[0] ), .Y(new_n39));
  AND2X1   g025(.A(new_n39), .B(\A[2] ), .Y(new_n40));
  INVX1    g026(.A(new_n40), .Y(new_n41));
  NOR2X1   g027(.A(new_n30), .B(\B[1] ), .Y(new_n42));
  AOI21X1  g028(.A0(new_n33), .A1(new_n31), .B0(new_n42), .Y(new_n43));
  OAI21X1  g029(.A0(new_n41), .A1(new_n38), .B0(new_n43), .Y(new_n44));
  AOI22X1  g030(.A0(new_n44), .A1(new_n35), .B0(new_n36), .B1(new_n34), .Y(new_n45));
  AND2X1   g031(.A(\B[0] ), .B(new_n24), .Y(new_n46));
  XOR2X1   g032(.A(new_n46), .B(new_n31), .Y(new_n47));
  MX2X1    g033(.A(new_n47), .B(new_n30), .S0(new_n45), .Y(new_n48));
  INVX1    g034(.A(\B[2] ), .Y(new_n49));
  XOR2X1   g035(.A(new_n48), .B(new_n49), .Y(new_n50));
  NAND2X1  g036(.A(new_n29), .B(\A[2] ), .Y(new_n51));
  OR2X1    g037(.A(new_n29), .B(new_n24), .Y(new_n52));
  AND2X1   g038(.A(new_n52), .B(new_n51), .Y(new_n53));
  MX2X1    g039(.A(new_n33), .B(new_n53), .S0(new_n45), .Y(new_n54));
  XOR2X1   g040(.A(new_n54), .B(new_n37), .Y(new_n55));
  XOR2X1   g041(.A(\B[0] ), .B(\A[1] ), .Y(new_n56));
  OR2X1    g042(.A(\B[3] ), .B(\A[0] ), .Y(new_n57));
  NOR4X1   g043(.A(new_n57), .B(new_n56), .C(new_n55), .D(new_n50), .Y(new_n58));
  XOR2X1   g044(.A(new_n48), .B(\B[2] ), .Y(new_n59));
  XOR2X1   g045(.A(new_n54), .B(\B[1] ), .Y(new_n60));
  AND2X1   g046(.A(\B[0] ), .B(new_n21), .Y(new_n61));
  INVX1    g047(.A(new_n61), .Y(new_n62));
  NAND3X1  g048(.A(new_n62), .B(new_n60), .C(new_n59), .Y(new_n63));
  NOR2X1   g049(.A(new_n48), .B(\B[2] ), .Y(new_n64));
  NOR2X1   g050(.A(new_n54), .B(\B[1] ), .Y(new_n65));
  AOI21X1  g051(.A0(new_n65), .A1(new_n59), .B0(new_n64), .Y(new_n66));
  NAND2X1  g052(.A(new_n66), .B(new_n63), .Y(new_n67));
  AOI21X1  g053(.A0(new_n67), .A1(new_n15), .B0(new_n58), .Y(new_n68));
  AOI21X1  g054(.A0(new_n62), .A1(new_n60), .B0(new_n65), .Y(new_n69));
  XOR2X1   g055(.A(new_n69), .B(new_n59), .Y(new_n70));
  MX2X1    g056(.A(new_n70), .B(new_n48), .S0(new_n68), .Y(new_n71));
  XOR2X1   g057(.A(new_n71), .B(new_n15), .Y(new_n72));
  INVX1    g058(.A(new_n54), .Y(new_n73));
  XOR2X1   g059(.A(new_n61), .B(new_n55), .Y(new_n74));
  MX2X1    g060(.A(new_n74), .B(new_n73), .S0(new_n68), .Y(new_n75));
  XOR2X1   g061(.A(new_n75), .B(\B[2] ), .Y(new_n76));
  AND2X1   g062(.A(new_n29), .B(\A[1] ), .Y(new_n77));
  NOR2X1   g063(.A(new_n29), .B(new_n21), .Y(new_n78));
  NOR2X1   g064(.A(new_n78), .B(new_n77), .Y(new_n79));
  INVX1    g065(.A(new_n56), .Y(new_n80));
  MX2X1    g066(.A(new_n80), .B(new_n79), .S0(new_n68), .Y(new_n81));
  XOR2X1   g067(.A(new_n81), .B(new_n37), .Y(new_n82));
  XOR2X1   g068(.A(\B[0] ), .B(\A[0] ), .Y(new_n83));
  NOR4X1   g069(.A(new_n83), .B(new_n82), .C(new_n76), .D(new_n72), .Y(new_n84));
  OR2X1    g070(.A(new_n76), .B(new_n72), .Y(new_n85));
  XOR2X1   g071(.A(new_n81), .B(\B[1] ), .Y(new_n86));
  NOR2X1   g072(.A(new_n81), .B(\B[1] ), .Y(new_n87));
  OR2X1    g073(.A(new_n39), .B(\A[0] ), .Y(new_n88));
  AOI21X1  g074(.A0(new_n88), .A1(new_n86), .B0(new_n87), .Y(new_n89));
  XOR2X1   g075(.A(new_n71), .B(\B[3] ), .Y(new_n90));
  NOR2X1   g076(.A(new_n71), .B(\B[3] ), .Y(new_n91));
  AND2X1   g077(.A(new_n75), .B(new_n49), .Y(new_n92));
  AOI21X1  g078(.A0(new_n92), .A1(new_n90), .B0(new_n91), .Y(new_n93));
  OAI21X1  g079(.A0(new_n89), .A1(new_n85), .B0(new_n93), .Y(new_n94));
  AND2X1   g080(.A(\OP[1] ), .B(\OP[0] ), .Y(new_n95));
  OAI21X1  g081(.A0(new_n94), .A1(new_n84), .B0(new_n95), .Y(new_n96));
  XOR2X1   g082(.A(\B[0] ), .B(\A[0] ), .Y(new_n97));
  NOR2X1   g083(.A(\OP[1] ), .B(\OP[0] ), .Y(new_n98));
  NAND2X1  g084(.A(new_n98), .B(new_n97), .Y(new_n99));
  AND2X1   g085(.A(\B[0] ), .B(\A[0] ), .Y(new_n100));
  INVX1    g086(.A(\OP[0] ), .Y(new_n101));
  AND2X1   g087(.A(\OP[1] ), .B(new_n101), .Y(new_n102));
  XOR2X1   g088(.A(\B[0] ), .B(\A[0] ), .Y(new_n103));
  NOR2X1   g089(.A(\OP[1] ), .B(new_n101), .Y(new_n104));
  AOI22X1  g090(.A0(new_n104), .A1(new_n103), .B0(new_n102), .B1(new_n100), .Y(new_n105));
  AND2X1   g091(.A(new_n105), .B(new_n99), .Y(new_n106));
  NOR4X1   g092(.A(new_n104), .B(new_n102), .C(new_n98), .D(new_n95), .Y(new_n107));
  AOI21X1  g093(.A0(new_n106), .A1(new_n96), .B0(new_n107), .Y(\RESULT[0] ));
  INVX1    g094(.A(new_n95), .Y(new_n109));
  OR2X1    g095(.A(new_n109), .B(new_n68), .Y(new_n110));
  XOR2X1   g096(.A(\B[1] ), .B(\A[1] ), .Y(new_n111));
  AND2X1   g097(.A(\B[0] ), .B(new_n20), .Y(new_n112));
  XOR2X1   g098(.A(new_n112), .B(new_n111), .Y(new_n113));
  INVX1    g099(.A(new_n98), .Y(new_n114));
  INVX1    g100(.A(new_n102), .Y(new_n115));
  NAND2X1  g101(.A(\B[0] ), .B(\A[1] ), .Y(new_n116));
  AND2X1   g102(.A(\B[1] ), .B(\A[0] ), .Y(new_n117));
  XOR2X1   g103(.A(new_n117), .B(new_n116), .Y(new_n118));
  INVX1    g104(.A(new_n100), .Y(new_n119));
  XOR2X1   g105(.A(\B[1] ), .B(\A[1] ), .Y(new_n120));
  XOR2X1   g106(.A(new_n120), .B(new_n119), .Y(new_n121));
  OAI22X1  g107(.A0(new_n121), .A1(new_n114), .B0(new_n118), .B1(new_n115), .Y(new_n122));
  AOI21X1  g108(.A0(new_n113), .A1(new_n104), .B0(new_n122), .Y(new_n123));
  AOI21X1  g109(.A0(new_n123), .A1(new_n110), .B0(new_n107), .Y(\RESULT[1] ));
  OR2X1    g110(.A(new_n109), .B(new_n45), .Y(new_n125));
  XOR2X1   g111(.A(\B[2] ), .B(\A[2] ), .Y(new_n126));
  AOI21X1  g112(.A0(\B[0] ), .A1(new_n20), .B0(new_n111), .Y(new_n127));
  AOI21X1  g113(.A0(new_n37), .A1(\A[1] ), .B0(new_n127), .Y(new_n128));
  XOR2X1   g114(.A(new_n128), .B(new_n126), .Y(new_n129));
  AND2X1   g115(.A(\B[1] ), .B(\A[1] ), .Y(new_n130));
  NAND2X1  g116(.A(\B[2] ), .B(\A[0] ), .Y(new_n131));
  AND2X1   g117(.A(\B[0] ), .B(\A[2] ), .Y(new_n132));
  XOR2X1   g118(.A(new_n132), .B(new_n131), .Y(new_n133));
  XOR2X1   g119(.A(new_n133), .B(new_n130), .Y(new_n134));
  NOR3X1   g120(.A(new_n116), .B(new_n37), .C(new_n20), .Y(new_n135));
  XOR2X1   g121(.A(new_n135), .B(new_n134), .Y(new_n136));
  XOR2X1   g122(.A(\B[2] ), .B(new_n24), .Y(new_n137));
  INVX1    g123(.A(new_n137), .Y(new_n138));
  AOI21X1  g124(.A0(new_n120), .A1(new_n100), .B0(new_n130), .Y(new_n139));
  XOR2X1   g125(.A(new_n139), .B(new_n138), .Y(new_n140));
  OAI22X1  g126(.A0(new_n140), .A1(new_n114), .B0(new_n136), .B1(new_n115), .Y(new_n141));
  AOI21X1  g127(.A0(new_n129), .A1(new_n104), .B0(new_n141), .Y(new_n142));
  AOI21X1  g128(.A0(new_n142), .A1(new_n125), .B0(new_n107), .Y(\RESULT[2] ));
  NAND2X1  g129(.A(\B[0] ), .B(\A[3] ), .Y(new_n144));
  NAND2X1  g130(.A(\B[2] ), .B(\A[1] ), .Y(new_n145));
  AND2X1   g131(.A(\B[3] ), .B(\A[0] ), .Y(new_n146));
  XOR2X1   g132(.A(new_n146), .B(new_n145), .Y(new_n147));
  XOR2X1   g133(.A(new_n147), .B(new_n144), .Y(new_n148));
  NOR3X1   g134(.A(new_n131), .B(new_n39), .C(new_n24), .Y(new_n149));
  XOR2X1   g135(.A(new_n149), .B(new_n148), .Y(new_n150));
  AND2X1   g136(.A(\B[1] ), .B(\A[2] ), .Y(new_n151));
  XOR2X1   g137(.A(new_n151), .B(new_n150), .Y(new_n152));
  NOR3X1   g138(.A(new_n133), .B(new_n37), .C(new_n21), .Y(new_n153));
  XOR2X1   g139(.A(new_n153), .B(new_n152), .Y(new_n154));
  OR4X1    g140(.A(new_n134), .B(new_n116), .C(new_n37), .D(new_n20), .Y(new_n155));
  XOR2X1   g141(.A(new_n155), .B(new_n154), .Y(new_n156));
  OR2X1    g142(.A(new_n156), .B(new_n115), .Y(new_n157));
  XOR2X1   g143(.A(\B[3] ), .B(new_n16), .Y(new_n158));
  OR2X1    g144(.A(\B[2] ), .B(new_n24), .Y(new_n159));
  OAI21X1  g145(.A0(new_n128), .A1(new_n126), .B0(new_n159), .Y(new_n160));
  XOR2X1   g146(.A(new_n160), .B(new_n158), .Y(new_n161));
  XOR2X1   g147(.A(\B[3] ), .B(new_n16), .Y(new_n162));
  NAND2X1  g148(.A(\B[2] ), .B(\A[2] ), .Y(new_n163));
  OAI21X1  g149(.A0(new_n139), .A1(new_n137), .B0(new_n163), .Y(new_n164));
  XOR2X1   g150(.A(new_n164), .B(new_n162), .Y(new_n165));
  OAI22X1  g151(.A0(new_n165), .A1(new_n114), .B0(new_n109), .B1(new_n29), .Y(new_n166));
  AOI21X1  g152(.A0(new_n161), .A1(new_n104), .B0(new_n166), .Y(new_n167));
  AOI21X1  g153(.A0(new_n167), .A1(new_n157), .B0(new_n107), .Y(\RESULT[3] ));
endmodule


