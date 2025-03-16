// Benchmark "EchoCancellation" written by ABC on Wed Jun 26 15:22:00 2024

module EchoCancellation ( 
    \s[0] , \s[1] , \s[2] , \s[3] , \s[4] , \s[5] , \s[6] , \s[7] , \s[8] ,
    \s[9] , \s[10] , \s[11] , \s[12] , \s[13] , \s[14] , \s[15] , \e[0] ,
    \e[1] , \e[2] , \e[3] , \e[4] , \e[5] , \e[6] , \e[7] , \e[8] , \e[9] ,
    \e[10] , \e[11] , \e[12] , \e[13] , \e[14] , \e[15] ,
    \f[0] , \f[1] , \f[2] , \f[3] , \f[4] , \f[5] , \f[6] , \f[7] , \f[8] ,
    \f[9] , \f[10] , \f[11] , \f[12] , \f[13] , \f[14] , \f[15]   );
  input  \s[0] , \s[1] , \s[2] , \s[3] , \s[4] , \s[5] , \s[6] , \s[7] ,
    \s[8] , \s[9] , \s[10] , \s[11] , \s[12] , \s[13] , \s[14] , \s[15] ,
    \e[0] , \e[1] , \e[2] , \e[3] , \e[4] , \e[5] , \e[6] , \e[7] , \e[8] ,
    \e[9] , \e[10] , \e[11] , \e[12] , \e[13] , \e[14] , \e[15] ;
  output \f[0] , \f[1] , \f[2] , \f[3] , \f[4] , \f[5] , \f[6] , \f[7] ,
    \f[8] , \f[9] , \f[10] , \f[11] , \f[12] , \f[13] , \f[14] , \f[15] ;
  wire new_n50, new_n51, new_n52, new_n54, new_n55, new_n56, new_n57,
    new_n58, new_n59, new_n61, new_n62, new_n63, new_n64, new_n65, new_n67,
    new_n68, new_n69, new_n70, new_n71, new_n72, new_n74, new_n75, new_n76,
    new_n77, new_n78, new_n80, new_n81, new_n82, new_n83, new_n84, new_n85,
    new_n86, new_n87, new_n88, new_n90, new_n91, new_n92, new_n93, new_n94,
    new_n96, new_n97, new_n98, new_n99, new_n100, new_n101, new_n102,
    new_n103, new_n104, new_n106, new_n107, new_n108, new_n109, new_n110,
    new_n112, new_n113, new_n114, new_n115, new_n116, new_n117, new_n118,
    new_n120, new_n121, new_n122, new_n123, new_n125, new_n126, new_n127,
    new_n128, new_n129, new_n130, new_n131, new_n132, new_n133, new_n135,
    new_n136, new_n137, new_n138, new_n139, new_n141, new_n142, new_n143,
    new_n144, new_n145, new_n146, new_n147, new_n149, new_n150, new_n151;
  XOR2X1   g000(.A(\e[0] ), .B(\s[0] ), .Y(\f[0] ));
  XOR2X1   g001(.A(\e[1] ), .B(\s[1] ), .Y(new_n50));
  INVX1    g002(.A(\s[0] ), .Y(new_n51));
  AND2X1   g003(.A(\e[0] ), .B(new_n51), .Y(new_n52));
  XOR2X1   g004(.A(new_n52), .B(new_n50), .Y(\f[1] ));
  XOR2X1   g005(.A(\e[2] ), .B(\s[2] ), .Y(new_n54));
  INVX1    g006(.A(\e[1] ), .Y(new_n55));
  AND2X1   g007(.A(new_n55), .B(\s[1] ), .Y(new_n56));
  AOI21X1  g008(.A0(\e[0] ), .A1(new_n51), .B0(new_n50), .Y(new_n57));
  OR2X1    g009(.A(new_n57), .B(new_n56), .Y(new_n58));
  INVX1    g010(.A(new_n58), .Y(new_n59));
  XOR2X1   g011(.A(new_n59), .B(new_n54), .Y(\f[2] ));
  XOR2X1   g012(.A(\e[3] ), .B(\s[3] ), .Y(new_n61));
  INVX1    g013(.A(new_n61), .Y(new_n62));
  INVX1    g014(.A(\s[2] ), .Y(new_n63));
  OR2X1    g015(.A(\e[2] ), .B(new_n63), .Y(new_n64));
  OAI21X1  g016(.A0(new_n59), .A1(new_n54), .B0(new_n64), .Y(new_n65));
  XOR2X1   g017(.A(new_n65), .B(new_n62), .Y(\f[3] ));
  XOR2X1   g018(.A(\e[4] ), .B(\s[4] ), .Y(new_n67));
  NOR2X1   g019(.A(new_n61), .B(new_n54), .Y(new_n68));
  INVX1    g020(.A(\e[3] ), .Y(new_n69));
  NAND2X1  g021(.A(new_n69), .B(\s[3] ), .Y(new_n70));
  OAI21X1  g022(.A0(new_n64), .A1(new_n61), .B0(new_n70), .Y(new_n71));
  AOI21X1  g023(.A0(new_n68), .A1(new_n58), .B0(new_n71), .Y(new_n72));
  XOR2X1   g024(.A(new_n72), .B(new_n67), .Y(\f[4] ));
  XOR2X1   g025(.A(\e[5] ), .B(\s[5] ), .Y(new_n74));
  INVX1    g026(.A(new_n74), .Y(new_n75));
  INVX1    g027(.A(\s[4] ), .Y(new_n76));
  OR2X1    g028(.A(\e[4] ), .B(new_n76), .Y(new_n77));
  OAI21X1  g029(.A0(new_n72), .A1(new_n67), .B0(new_n77), .Y(new_n78));
  XOR2X1   g030(.A(new_n78), .B(new_n75), .Y(\f[5] ));
  XOR2X1   g031(.A(\e[6] ), .B(\s[6] ), .Y(new_n80));
  INVX1    g032(.A(new_n80), .Y(new_n81));
  INVX1    g033(.A(\e[5] ), .Y(new_n82));
  AND2X1   g034(.A(new_n82), .B(\s[5] ), .Y(new_n83));
  NOR3X1   g035(.A(new_n74), .B(\e[4] ), .C(new_n76), .Y(new_n84));
  OR2X1    g036(.A(new_n84), .B(new_n83), .Y(new_n85));
  INVX1    g037(.A(new_n85), .Y(new_n86));
  OR2X1    g038(.A(new_n74), .B(new_n67), .Y(new_n87));
  OAI21X1  g039(.A0(new_n87), .A1(new_n72), .B0(new_n86), .Y(new_n88));
  XOR2X1   g040(.A(new_n88), .B(new_n81), .Y(\f[6] ));
  XOR2X1   g041(.A(\e[7] ), .B(\s[7] ), .Y(new_n90));
  INVX1    g042(.A(\s[6] ), .Y(new_n91));
  OR2X1    g043(.A(\e[6] ), .B(new_n91), .Y(new_n92));
  INVX1    g044(.A(new_n92), .Y(new_n93));
  AOI21X1  g045(.A0(new_n88), .A1(new_n81), .B0(new_n93), .Y(new_n94));
  XOR2X1   g046(.A(new_n94), .B(new_n90), .Y(\f[7] ));
  XOR2X1   g047(.A(\e[8] ), .B(\s[8] ), .Y(new_n96));
  OR4X1    g048(.A(new_n90), .B(new_n80), .C(new_n74), .D(new_n67), .Y(new_n97));
  OR2X1    g049(.A(new_n97), .B(new_n72), .Y(new_n98));
  NOR2X1   g050(.A(new_n90), .B(new_n80), .Y(new_n99));
  INVX1    g051(.A(\e[7] ), .Y(new_n100));
  NAND2X1  g052(.A(new_n100), .B(\s[7] ), .Y(new_n101));
  OAI21X1  g053(.A0(new_n92), .A1(new_n90), .B0(new_n101), .Y(new_n102));
  AOI21X1  g054(.A0(new_n99), .A1(new_n85), .B0(new_n102), .Y(new_n103));
  AND2X1   g055(.A(new_n103), .B(new_n98), .Y(new_n104));
  XOR2X1   g056(.A(new_n104), .B(new_n96), .Y(\f[8] ));
  XOR2X1   g057(.A(\e[9] ), .B(\s[9] ), .Y(new_n106));
  INVX1    g058(.A(new_n106), .Y(new_n107));
  INVX1    g059(.A(\s[8] ), .Y(new_n108));
  OR2X1    g060(.A(\e[8] ), .B(new_n108), .Y(new_n109));
  OAI21X1  g061(.A0(new_n104), .A1(new_n96), .B0(new_n109), .Y(new_n110));
  XOR2X1   g062(.A(new_n110), .B(new_n107), .Y(\f[9] ));
  XOR2X1   g063(.A(\e[10] ), .B(\s[10] ), .Y(new_n112));
  INVX1    g064(.A(new_n112), .Y(new_n113));
  INVX1    g065(.A(\e[9] ), .Y(new_n114));
  NOR3X1   g066(.A(new_n106), .B(\e[8] ), .C(new_n108), .Y(new_n115));
  AOI21X1  g067(.A0(new_n114), .A1(\s[9] ), .B0(new_n115), .Y(new_n116));
  OR2X1    g068(.A(new_n106), .B(new_n96), .Y(new_n117));
  OAI21X1  g069(.A0(new_n117), .A1(new_n104), .B0(new_n116), .Y(new_n118));
  XOR2X1   g070(.A(new_n118), .B(new_n113), .Y(\f[10] ));
  XOR2X1   g071(.A(\e[11] ), .B(\s[11] ), .Y(new_n120));
  INVX1    g072(.A(\s[10] ), .Y(new_n121));
  NOR2X1   g073(.A(\e[10] ), .B(new_n121), .Y(new_n122));
  AOI21X1  g074(.A0(new_n118), .A1(new_n113), .B0(new_n122), .Y(new_n123));
  XOR2X1   g075(.A(new_n123), .B(new_n120), .Y(\f[11] ));
  XOR2X1   g076(.A(\e[12] ), .B(\s[12] ), .Y(new_n125));
  OAI21X1  g077(.A0(new_n97), .A1(new_n72), .B0(new_n103), .Y(new_n126));
  NOR4X1   g078(.A(new_n120), .B(new_n112), .C(new_n106), .D(new_n96), .Y(new_n127));
  OR2X1    g079(.A(new_n120), .B(new_n112), .Y(new_n128));
  INVX1    g080(.A(\e[11] ), .Y(new_n129));
  NOR3X1   g081(.A(new_n120), .B(\e[10] ), .C(new_n121), .Y(new_n130));
  AOI21X1  g082(.A0(new_n129), .A1(\s[11] ), .B0(new_n130), .Y(new_n131));
  OAI21X1  g083(.A0(new_n128), .A1(new_n116), .B0(new_n131), .Y(new_n132));
  AOI21X1  g084(.A0(new_n127), .A1(new_n126), .B0(new_n132), .Y(new_n133));
  XOR2X1   g085(.A(new_n133), .B(new_n125), .Y(\f[12] ));
  XOR2X1   g086(.A(\e[13] ), .B(\s[13] ), .Y(new_n135));
  INVX1    g087(.A(new_n135), .Y(new_n136));
  INVX1    g088(.A(\s[12] ), .Y(new_n137));
  OR2X1    g089(.A(\e[12] ), .B(new_n137), .Y(new_n138));
  OAI21X1  g090(.A0(new_n133), .A1(new_n125), .B0(new_n138), .Y(new_n139));
  XOR2X1   g091(.A(new_n139), .B(new_n136), .Y(\f[13] ));
  INVX1    g092(.A(\e[14] ), .Y(new_n141));
  XOR2X1   g093(.A(new_n141), .B(\s[14] ), .Y(new_n142));
  OR2X1    g094(.A(new_n135), .B(new_n125), .Y(new_n143));
  INVX1    g095(.A(\e[13] ), .Y(new_n144));
  NOR3X1   g096(.A(new_n135), .B(\e[12] ), .C(new_n137), .Y(new_n145));
  AOI21X1  g097(.A0(new_n144), .A1(\s[13] ), .B0(new_n145), .Y(new_n146));
  OAI21X1  g098(.A0(new_n143), .A1(new_n133), .B0(new_n146), .Y(new_n147));
  XOR2X1   g099(.A(new_n147), .B(new_n142), .Y(\f[14] ));
  XOR2X1   g100(.A(\e[15] ), .B(\s[15] ), .Y(new_n149));
  AND2X1   g101(.A(new_n141), .B(\s[14] ), .Y(new_n150));
  AOI21X1  g102(.A0(new_n147), .A1(new_n142), .B0(new_n150), .Y(new_n151));
  XOR2X1   g103(.A(new_n151), .B(new_n149), .Y(\f[15] ));
endmodule


