// Benchmark "carry_lookahead_adder" written by ABC on Wed Jun 26 15:22:12 2024

module carry_lookahead_adder ( 
    \a[0] , \a[1] , \a[2] , \a[3] , \a[4] , \a[5] , \a[6] , \a[7] , \b[0] ,
    \b[1] , \b[2] , \b[3] , \b[4] , \b[5] , \b[6] , \b[7] ,
    \sum[0] , \sum[1] , \sum[2] , \sum[3] , \sum[4] , \sum[5] , \sum[6] ,
    \sum[7] , carry_out  );
  input  \a[0] , \a[1] , \a[2] , \a[3] , \a[4] , \a[5] , \a[6] , \a[7] ,
    \b[0] , \b[1] , \b[2] , \b[3] , \b[4] , \b[5] , \b[6] , \b[7] ;
  output \sum[0] , \sum[1] , \sum[2] , \sum[3] , \sum[4] , \sum[5] , \sum[6] ,
    \sum[7] , carry_out;
  wire new_n27, new_n28, new_n29, new_n30, new_n31, new_n32, new_n33,
    new_n34, new_n36, new_n37, new_n38, new_n39, new_n40, new_n41, new_n42,
    new_n43, new_n44, new_n45, new_n46, new_n48, new_n49, new_n50, new_n51,
    new_n52, new_n53, new_n54, new_n55, new_n56, new_n57, new_n58, new_n59,
    new_n60, new_n62, new_n63, new_n64, new_n65, new_n66, new_n67, new_n68,
    new_n69, new_n70, new_n71, new_n72, new_n73, new_n74, new_n75, new_n76,
    new_n77, new_n78, new_n79, new_n80, new_n81, new_n82, new_n84, new_n85,
    new_n86, new_n87, new_n88, new_n89, new_n90, new_n91, new_n92, new_n93,
    new_n94, new_n95, new_n96, new_n97, new_n98, new_n99, new_n100,
    new_n101, new_n103, new_n104, new_n105, new_n106, new_n107, new_n108,
    new_n109, new_n110, new_n111, new_n112, new_n113, new_n114, new_n115,
    new_n116, new_n117, new_n118, new_n119, new_n120, new_n121, new_n122,
    new_n124, new_n125, new_n126, new_n127, new_n128, new_n129, new_n130,
    new_n131, new_n132, new_n133, new_n134, new_n135, new_n136, new_n137,
    new_n138, new_n139, new_n140, new_n141, new_n142;
  OR2X1    g000(.A(\b[0] ), .B(\a[0] ), .Y(\sum[0] ));
  AND2X1   g001(.A(\b[0] ), .B(\a[0] ), .Y(new_n27));
  XOR2X1   g002(.A(\b[1] ), .B(\a[1] ), .Y(new_n28));
  XOR2X1   g003(.A(new_n28), .B(new_n27), .Y(new_n29));
  AND2X1   g004(.A(\b[1] ), .B(\a[1] ), .Y(new_n30));
  AOI21X1  g005(.A0(new_n28), .A1(new_n27), .B0(new_n30), .Y(new_n31));
  XOR2X1   g006(.A(new_n31), .B(new_n29), .Y(new_n32));
  XOR2X1   g007(.A(\b[0] ), .B(\a[0] ), .Y(new_n33));
  NAND2X1  g008(.A(new_n27), .B(new_n33), .Y(new_n34));
  XOR2X1   g009(.A(new_n34), .B(new_n32), .Y(\sum[1] ));
  INVX1    g010(.A(\a[2] ), .Y(new_n36));
  XOR2X1   g011(.A(\b[2] ), .B(new_n36), .Y(new_n37));
  XOR2X1   g012(.A(new_n37), .B(new_n31), .Y(new_n38));
  NAND2X1  g013(.A(new_n28), .B(new_n27), .Y(new_n39));
  XOR2X1   g014(.A(\b[2] ), .B(\a[2] ), .Y(new_n40));
  AND2X1   g015(.A(\b[2] ), .B(\a[2] ), .Y(new_n41));
  AOI21X1  g016(.A0(new_n40), .A1(new_n30), .B0(new_n41), .Y(new_n42));
  OAI21X1  g017(.A0(new_n37), .A1(new_n39), .B0(new_n42), .Y(new_n43));
  XOR2X1   g018(.A(new_n43), .B(new_n38), .Y(new_n44));
  NAND4X1  g019(.A(\b[1] ), .B(\b[0] ), .C(\a[1] ), .D(\a[0] ), .Y(new_n45));
  INVX1    g020(.A(new_n45), .Y(new_n46));
  XOR2X1   g021(.A(new_n46), .B(new_n44), .Y(\sum[2] ));
  XOR2X1   g022(.A(\b[3] ), .B(\a[3] ), .Y(new_n48));
  NAND2X1  g023(.A(\b[2] ), .B(\a[2] ), .Y(new_n49));
  OAI21X1  g024(.A0(new_n37), .A1(new_n31), .B0(new_n49), .Y(new_n50));
  XOR2X1   g025(.A(new_n50), .B(new_n48), .Y(new_n51));
  NAND4X1  g026(.A(new_n48), .B(new_n40), .C(new_n28), .D(new_n27), .Y(new_n52));
  AND2X1   g027(.A(\b[3] ), .B(\a[3] ), .Y(new_n53));
  AOI21X1  g028(.A0(new_n48), .A1(new_n41), .B0(new_n53), .Y(new_n54));
  NAND3X1  g029(.A(new_n48), .B(new_n40), .C(new_n30), .Y(new_n55));
  AND2X1   g030(.A(new_n55), .B(new_n54), .Y(new_n56));
  AND2X1   g031(.A(new_n56), .B(new_n52), .Y(new_n57));
  XOR2X1   g032(.A(new_n57), .B(new_n51), .Y(new_n58));
  AND2X1   g033(.A(new_n46), .B(new_n44), .Y(new_n59));
  AOI21X1  g034(.A0(new_n43), .A1(new_n38), .B0(new_n59), .Y(new_n60));
  XOR2X1   g035(.A(new_n60), .B(new_n58), .Y(\sum[3] ));
  XOR2X1   g036(.A(\b[4] ), .B(\a[4] ), .Y(new_n62));
  NAND2X1  g037(.A(new_n48), .B(new_n40), .Y(new_n63));
  OAI21X1  g038(.A0(new_n63), .A1(new_n31), .B0(new_n54), .Y(new_n64));
  XOR2X1   g039(.A(new_n64), .B(new_n62), .Y(new_n65));
  INVX1    g040(.A(new_n48), .Y(new_n66));
  INVX1    g041(.A(new_n62), .Y(new_n67));
  NOR4X1   g042(.A(new_n67), .B(new_n66), .C(new_n37), .D(new_n39), .Y(new_n68));
  NAND2X1  g043(.A(\b[1] ), .B(\a[1] ), .Y(new_n69));
  NOR4X1   g044(.A(new_n67), .B(new_n66), .C(new_n37), .D(new_n69), .Y(new_n70));
  NOR3X1   g045(.A(new_n67), .B(new_n66), .C(new_n49), .Y(new_n71));
  AND2X1   g046(.A(\b[4] ), .B(\a[4] ), .Y(new_n72));
  AND2X1   g047(.A(new_n62), .B(new_n53), .Y(new_n73));
  OR2X1    g048(.A(new_n73), .B(new_n72), .Y(new_n74));
  NOR4X1   g049(.A(new_n74), .B(new_n71), .C(new_n70), .D(new_n68), .Y(new_n75));
  XOR2X1   g050(.A(new_n75), .B(new_n65), .Y(new_n76));
  XOR2X1   g051(.A(new_n50), .B(new_n66), .Y(new_n77));
  XOR2X1   g052(.A(new_n57), .B(new_n77), .Y(new_n78));
  NAND2X1  g053(.A(new_n43), .B(new_n38), .Y(new_n79));
  OR2X1    g054(.A(new_n57), .B(new_n77), .Y(new_n80));
  OAI21X1  g055(.A0(new_n79), .A1(new_n58), .B0(new_n80), .Y(new_n81));
  AOI21X1  g056(.A0(new_n59), .A1(new_n78), .B0(new_n81), .Y(new_n82));
  XOR2X1   g057(.A(new_n82), .B(new_n76), .Y(\sum[4] ));
  XOR2X1   g058(.A(\b[5] ), .B(\a[5] ), .Y(new_n84));
  AOI21X1  g059(.A0(new_n64), .A1(new_n62), .B0(new_n72), .Y(new_n85));
  XOR2X1   g060(.A(new_n85), .B(new_n84), .Y(new_n86));
  NAND4X1  g061(.A(new_n84), .B(new_n62), .C(new_n48), .D(new_n40), .Y(new_n87));
  NOR2X1   g062(.A(new_n87), .B(new_n39), .Y(new_n88));
  NOR2X1   g063(.A(new_n87), .B(new_n69), .Y(new_n89));
  NAND2X1  g064(.A(new_n84), .B(new_n62), .Y(new_n90));
  NOR3X1   g065(.A(new_n90), .B(new_n66), .C(new_n49), .Y(new_n91));
  INVX1    g066(.A(new_n53), .Y(new_n92));
  AND2X1   g067(.A(\b[5] ), .B(\a[5] ), .Y(new_n93));
  AOI21X1  g068(.A0(new_n84), .A1(new_n72), .B0(new_n93), .Y(new_n94));
  OAI21X1  g069(.A0(new_n90), .A1(new_n92), .B0(new_n94), .Y(new_n95));
  NOR4X1   g070(.A(new_n95), .B(new_n91), .C(new_n89), .D(new_n88), .Y(new_n96));
  XOR2X1   g071(.A(new_n96), .B(new_n86), .Y(new_n97));
  XOR2X1   g072(.A(new_n64), .B(new_n67), .Y(new_n98));
  NOR2X1   g073(.A(new_n75), .B(new_n98), .Y(new_n99));
  INVX1    g074(.A(new_n99), .Y(new_n100));
  OAI21X1  g075(.A0(new_n82), .A1(new_n76), .B0(new_n100), .Y(new_n101));
  XOR2X1   g076(.A(new_n101), .B(new_n97), .Y(\sum[5] ));
  XOR2X1   g077(.A(\b[6] ), .B(\a[6] ), .Y(new_n103));
  NAND3X1  g078(.A(new_n84), .B(new_n64), .C(new_n62), .Y(new_n104));
  AND2X1   g079(.A(new_n104), .B(new_n94), .Y(new_n105));
  XOR2X1   g080(.A(new_n105), .B(new_n103), .Y(new_n106));
  NAND4X1  g081(.A(new_n103), .B(new_n84), .C(new_n62), .D(new_n48), .Y(new_n107));
  NOR3X1   g082(.A(new_n107), .B(new_n37), .C(new_n39), .Y(new_n108));
  NOR3X1   g083(.A(new_n107), .B(new_n37), .C(new_n69), .Y(new_n109));
  NOR2X1   g084(.A(new_n107), .B(new_n49), .Y(new_n110));
  NAND4X1  g085(.A(new_n103), .B(new_n84), .C(new_n62), .D(new_n53), .Y(new_n111));
  NAND3X1  g086(.A(new_n103), .B(new_n84), .C(new_n72), .Y(new_n112));
  NAND2X1  g087(.A(\b[6] ), .B(\a[6] ), .Y(new_n113));
  NAND2X1  g088(.A(new_n103), .B(new_n93), .Y(new_n114));
  NAND4X1  g089(.A(new_n114), .B(new_n113), .C(new_n112), .D(new_n111), .Y(new_n115));
  NOR4X1   g090(.A(new_n115), .B(new_n110), .C(new_n109), .D(new_n108), .Y(new_n116));
  XOR2X1   g091(.A(new_n116), .B(new_n106), .Y(new_n117));
  XOR2X1   g092(.A(new_n75), .B(new_n98), .Y(new_n118));
  NAND2X1  g093(.A(new_n97), .B(new_n118), .Y(new_n119));
  NOR2X1   g094(.A(new_n96), .B(new_n86), .Y(new_n120));
  AOI21X1  g095(.A0(new_n99), .A1(new_n97), .B0(new_n120), .Y(new_n121));
  OAI21X1  g096(.A0(new_n119), .A1(new_n82), .B0(new_n121), .Y(new_n122));
  XOR2X1   g097(.A(new_n122), .B(new_n117), .Y(\sum[6] ));
  XOR2X1   g098(.A(\b[7] ), .B(\a[7] ), .Y(new_n124));
  INVX1    g099(.A(new_n103), .Y(new_n125));
  OAI21X1  g100(.A0(new_n105), .A1(new_n125), .B0(new_n113), .Y(new_n126));
  XOR2X1   g101(.A(new_n126), .B(new_n124), .Y(new_n127));
  NAND4X1  g102(.A(new_n124), .B(new_n103), .C(new_n84), .D(new_n62), .Y(new_n128));
  NOR4X1   g103(.A(new_n128), .B(new_n66), .C(new_n37), .D(new_n39), .Y(new_n129));
  NOR4X1   g104(.A(new_n128), .B(new_n66), .C(new_n37), .D(new_n69), .Y(new_n130));
  NOR3X1   g105(.A(new_n128), .B(new_n66), .C(new_n49), .Y(new_n131));
  NOR2X1   g106(.A(new_n128), .B(new_n92), .Y(new_n132));
  NAND4X1  g107(.A(new_n124), .B(new_n103), .C(new_n84), .D(new_n72), .Y(new_n133));
  NAND3X1  g108(.A(new_n124), .B(new_n103), .C(new_n93), .Y(new_n134));
  NAND2X1  g109(.A(\b[7] ), .B(\a[7] ), .Y(new_n135));
  NAND3X1  g110(.A(new_n124), .B(\b[6] ), .C(\a[6] ), .Y(new_n136));
  NAND4X1  g111(.A(new_n136), .B(new_n135), .C(new_n134), .D(new_n133), .Y(new_n137));
  OR4X1    g112(.A(new_n137), .B(new_n132), .C(new_n131), .D(new_n130), .Y(new_n138));
  NOR2X1   g113(.A(new_n138), .B(new_n129), .Y(new_n139));
  XOR2X1   g114(.A(new_n139), .B(new_n127), .Y(new_n140));
  NOR2X1   g115(.A(new_n116), .B(new_n106), .Y(new_n141));
  AOI21X1  g116(.A0(new_n122), .A1(new_n117), .B0(new_n141), .Y(new_n142));
  XOR2X1   g117(.A(new_n142), .B(new_n140), .Y(\sum[7] ));
  INVX1    g118(.A(new_n139), .Y(carry_out));
endmodule


