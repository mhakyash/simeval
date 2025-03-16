// Benchmark "psdos" written by ABC on Wed Jun 26 15:22:26 2024

module psdos ( clock, 
    Rx, CLKOUT,
    \DATA[0] , \DATA[1] , \DATA[2] , \DATA[3] , \DATA[4] , \DATA[5] ,
    \DATA[6] , \DATA[7] , Rx_error, DONE  );
  input  clock;
  input  Rx, CLKOUT;
  output \DATA[0] , \DATA[1] , \DATA[2] , \DATA[3] , \DATA[4] , \DATA[5] ,
    \DATA[6] , \DATA[7] , Rx_error, DONE;
  reg \i[0] , \i[1] , \i[2] , \i[3] , \j[0] , init, \regis[0] , \regis[1] ,
    \regis[2] , \regis[3] , \regis[4] , \regis[5] , \regis[6] , \regis[7] ,
    \regis[8] , \regis0[0] , \regis0[1] , \regis0[2] , \regis0[3] ,
    \regis0[4] , \regis0[5] , \regis0[6] , \regis0[7] , Rx_error, DONE;
  wire new_n88, new_n89, new_n90, new_n91_1, new_n93, new_n94, new_n95,
    new_n96_1, new_n98, new_n99, new_n100, new_n102, new_n103, new_n104,
    new_n106_1, new_n107, new_n108, new_n109, new_n110, new_n111_1,
    new_n112, new_n113, new_n114, new_n115, new_n116_1, new_n117, new_n118,
    new_n119, new_n120, new_n121_1, new_n122, new_n123, new_n124, new_n125,
    new_n126_1, new_n127, new_n128, new_n130, new_n131_1, new_n133,
    new_n135, new_n136_1, new_n138, new_n139, new_n141_1, new_n142,
    new_n144, new_n145_1, new_n147, new_n148, new_n150, new_n151, new_n153,
    new_n154, new_n156, new_n157, new_n159, new_n160, new_n161, new_n163,
    new_n164, new_n166, new_n167, new_n169, new_n170, new_n172, new_n173,
    new_n175, new_n176, new_n178, new_n179, new_n181, new_n182, new_n184,
    new_n186, new_n187, n26, n31, n36, n41, n46, n51, n56, n61, n66, n71,
    n76, n81, n86, n91, n96, n101, n106, n111, n116, n121, n126, n131,
    n136, n141, n145;
  INVX1    g000(.A(\i[0] ), .Y(new_n88));
  XOR2X1   g001(.A(init), .B(new_n88), .Y(new_n89));
  INVX1    g002(.A(\i[3] ), .Y(new_n90));
  NOR4X1   g003(.A(new_n90), .B(\i[2] ), .C(\i[1] ), .D(new_n88), .Y(new_n91_1));
  NOR2X1   g004(.A(new_n91_1), .B(new_n89), .Y(n26));
  INVX1    g005(.A(new_n91_1), .Y(new_n93));
  INVX1    g006(.A(init), .Y(new_n94));
  XOR2X1   g007(.A(\i[1] ), .B(\i[0] ), .Y(new_n95));
  MX2X1    g008(.A(new_n95), .B(\i[1] ), .S0(new_n94), .Y(new_n96_1));
  AND2X1   g009(.A(new_n96_1), .B(new_n93), .Y(n31));
  AND2X1   g010(.A(\i[1] ), .B(\i[0] ), .Y(new_n98));
  XOR2X1   g011(.A(new_n98), .B(\i[2] ), .Y(new_n99));
  MX2X1    g012(.A(new_n99), .B(\i[2] ), .S0(new_n94), .Y(new_n100));
  AND2X1   g013(.A(new_n100), .B(new_n93), .Y(n36));
  NAND3X1  g014(.A(\i[2] ), .B(\i[1] ), .C(\i[0] ), .Y(new_n102));
  XOR2X1   g015(.A(new_n102), .B(new_n90), .Y(new_n103));
  MX2X1    g016(.A(new_n103), .B(\i[3] ), .S0(new_n94), .Y(new_n104));
  AND2X1   g017(.A(new_n104), .B(new_n93), .Y(n41));
  INVX1    g018(.A(\i[2] ), .Y(new_n106_1));
  MX2X1    g019(.A(\regis[0] ), .B(\regis[8] ), .S0(\i[3] ), .Y(new_n107));
  NAND2X1  g020(.A(new_n107), .B(new_n106_1), .Y(new_n108));
  NAND3X1  g021(.A(\regis[4] ), .B(new_n90), .C(\i[2] ), .Y(new_n109));
  AOI21X1  g022(.A0(new_n109), .A1(new_n108), .B0(\i[1] ), .Y(new_n110));
  INVX1    g023(.A(\i[1] ), .Y(new_n111_1));
  NAND3X1  g024(.A(\regis[2] ), .B(new_n90), .C(new_n106_1), .Y(new_n112));
  NAND3X1  g025(.A(\regis[6] ), .B(new_n90), .C(\i[2] ), .Y(new_n113));
  AOI21X1  g026(.A0(new_n113), .A1(new_n112), .B0(new_n111_1), .Y(new_n114));
  OAI21X1  g027(.A0(new_n114), .A1(new_n110), .B0(new_n88), .Y(new_n115));
  NAND3X1  g028(.A(\regis[1] ), .B(new_n90), .C(new_n106_1), .Y(new_n116_1));
  NAND3X1  g029(.A(\regis[5] ), .B(new_n90), .C(\i[2] ), .Y(new_n117));
  AOI21X1  g030(.A0(new_n117), .A1(new_n116_1), .B0(\i[1] ), .Y(new_n118));
  NAND3X1  g031(.A(\regis[3] ), .B(new_n90), .C(new_n106_1), .Y(new_n119));
  NAND3X1  g032(.A(\regis[7] ), .B(new_n90), .C(\i[2] ), .Y(new_n120));
  AOI21X1  g033(.A0(new_n120), .A1(new_n119), .B0(new_n111_1), .Y(new_n121_1));
  OAI21X1  g034(.A0(new_n121_1), .A1(new_n118), .B0(\i[0] ), .Y(new_n122));
  AND2X1   g035(.A(\i[3] ), .B(new_n106_1), .Y(new_n123));
  AND2X1   g036(.A(\i[3] ), .B(\i[2] ), .Y(new_n124));
  OR2X1    g037(.A(new_n124), .B(new_n123), .Y(new_n125));
  AOI21X1  g038(.A0(new_n122), .A1(new_n115), .B0(new_n125), .Y(new_n126_1));
  XOR2X1   g039(.A(new_n126_1), .B(\j[0] ), .Y(new_n127));
  MX2X1    g040(.A(new_n127), .B(\j[0] ), .S0(new_n94), .Y(new_n128));
  AND2X1   g041(.A(new_n128), .B(new_n93), .Y(n46));
  OR4X1    g042(.A(\i[3] ), .B(\i[2] ), .C(\i[1] ), .D(\i[0] ), .Y(new_n130));
  OR2X1    g043(.A(new_n130), .B(Rx), .Y(new_n131_1));
  AOI21X1  g044(.A0(new_n131_1), .A1(new_n94), .B0(new_n91_1), .Y(n51));
  MX2X1    g045(.A(Rx), .B(\regis[0] ), .S0(new_n130), .Y(new_n133));
  MX2X1    g046(.A(new_n133), .B(\regis[0] ), .S0(new_n94), .Y(n56));
  NOR4X1   g047(.A(\i[3] ), .B(\i[2] ), .C(\i[1] ), .D(new_n88), .Y(new_n135));
  MX2X1    g048(.A(\regis[1] ), .B(Rx), .S0(new_n135), .Y(new_n136_1));
  MX2X1    g049(.A(new_n136_1), .B(\regis[1] ), .S0(new_n94), .Y(n61));
  NOR4X1   g050(.A(\i[3] ), .B(\i[2] ), .C(new_n111_1), .D(\i[0] ), .Y(new_n138));
  MX2X1    g051(.A(\regis[2] ), .B(Rx), .S0(new_n138), .Y(new_n139));
  MX2X1    g052(.A(new_n139), .B(\regis[2] ), .S0(new_n94), .Y(n66));
  NOR4X1   g053(.A(\i[3] ), .B(\i[2] ), .C(new_n111_1), .D(new_n88), .Y(new_n141_1));
  MX2X1    g054(.A(\regis[3] ), .B(Rx), .S0(new_n141_1), .Y(new_n142));
  MX2X1    g055(.A(new_n142), .B(\regis[3] ), .S0(new_n94), .Y(n71));
  NOR4X1   g056(.A(\i[3] ), .B(new_n106_1), .C(\i[1] ), .D(\i[0] ), .Y(new_n144));
  MX2X1    g057(.A(\regis[4] ), .B(Rx), .S0(new_n144), .Y(new_n145_1));
  MX2X1    g058(.A(new_n145_1), .B(\regis[4] ), .S0(new_n94), .Y(n76));
  NOR4X1   g059(.A(\i[3] ), .B(new_n106_1), .C(\i[1] ), .D(new_n88), .Y(new_n147));
  MX2X1    g060(.A(\regis[5] ), .B(Rx), .S0(new_n147), .Y(new_n148));
  MX2X1    g061(.A(new_n148), .B(\regis[5] ), .S0(new_n94), .Y(n81));
  NOR4X1   g062(.A(\i[3] ), .B(new_n106_1), .C(new_n111_1), .D(\i[0] ), .Y(new_n150));
  MX2X1    g063(.A(\regis[6] ), .B(Rx), .S0(new_n150), .Y(new_n151));
  MX2X1    g064(.A(new_n151), .B(\regis[6] ), .S0(new_n94), .Y(n86));
  NOR4X1   g065(.A(\i[3] ), .B(new_n106_1), .C(new_n111_1), .D(new_n88), .Y(new_n153));
  MX2X1    g066(.A(\regis[7] ), .B(Rx), .S0(new_n153), .Y(new_n154));
  MX2X1    g067(.A(new_n154), .B(\regis[7] ), .S0(new_n94), .Y(n91));
  NOR4X1   g068(.A(new_n90), .B(\i[2] ), .C(\i[1] ), .D(\i[0] ), .Y(new_n156));
  MX2X1    g069(.A(\regis[8] ), .B(Rx), .S0(new_n156), .Y(new_n157));
  MX2X1    g070(.A(new_n157), .B(\regis[8] ), .S0(new_n94), .Y(n96));
  INVX1    g071(.A(\regis0[0] ), .Y(new_n159));
  XOR2X1   g072(.A(\regis[8] ), .B(\j[0] ), .Y(new_n160));
  NAND3X1  g073(.A(new_n160), .B(new_n91_1), .C(\regis[0] ), .Y(new_n161));
  OAI21X1  g074(.A0(new_n91_1), .A1(new_n159), .B0(new_n161), .Y(n101));
  INVX1    g075(.A(\regis0[1] ), .Y(new_n163));
  NAND3X1  g076(.A(new_n160), .B(new_n91_1), .C(\regis[1] ), .Y(new_n164));
  OAI21X1  g077(.A0(new_n91_1), .A1(new_n163), .B0(new_n164), .Y(n106));
  INVX1    g078(.A(\regis0[2] ), .Y(new_n166));
  NAND3X1  g079(.A(new_n160), .B(new_n91_1), .C(\regis[2] ), .Y(new_n167));
  OAI21X1  g080(.A0(new_n91_1), .A1(new_n166), .B0(new_n167), .Y(n111));
  INVX1    g081(.A(\regis0[3] ), .Y(new_n169));
  NAND3X1  g082(.A(new_n160), .B(new_n91_1), .C(\regis[3] ), .Y(new_n170));
  OAI21X1  g083(.A0(new_n91_1), .A1(new_n169), .B0(new_n170), .Y(n116));
  INVX1    g084(.A(\regis0[4] ), .Y(new_n172));
  NAND3X1  g085(.A(new_n160), .B(new_n91_1), .C(\regis[4] ), .Y(new_n173));
  OAI21X1  g086(.A0(new_n91_1), .A1(new_n172), .B0(new_n173), .Y(n121));
  INVX1    g087(.A(\regis0[5] ), .Y(new_n175));
  NAND3X1  g088(.A(new_n160), .B(new_n91_1), .C(\regis[5] ), .Y(new_n176));
  OAI21X1  g089(.A0(new_n91_1), .A1(new_n175), .B0(new_n176), .Y(n126));
  INVX1    g090(.A(\regis0[6] ), .Y(new_n178));
  NAND3X1  g091(.A(new_n160), .B(new_n91_1), .C(\regis[6] ), .Y(new_n179));
  OAI21X1  g092(.A0(new_n91_1), .A1(new_n178), .B0(new_n179), .Y(n131));
  INVX1    g093(.A(\regis0[7] ), .Y(new_n181));
  NAND3X1  g094(.A(new_n160), .B(new_n91_1), .C(\regis[7] ), .Y(new_n182));
  OAI21X1  g095(.A0(new_n91_1), .A1(new_n181), .B0(new_n182), .Y(n136));
  NAND3X1  g096(.A(new_n131_1), .B(new_n93), .C(Rx_error), .Y(new_n184));
  OAI21X1  g097(.A0(new_n160), .A1(new_n93), .B0(new_n184), .Y(n141));
  NAND2X1  g098(.A(new_n160), .B(new_n91_1), .Y(new_n186));
  NAND3X1  g099(.A(new_n131_1), .B(new_n93), .C(DONE), .Y(new_n187));
  NAND2X1  g100(.A(new_n187), .B(new_n186), .Y(n145));
  BUFX1    g101(.A(\regis0[0] ), .Y(\DATA[0] ));
  BUFX1    g102(.A(\regis0[1] ), .Y(\DATA[1] ));
  BUFX1    g103(.A(\regis0[2] ), .Y(\DATA[2] ));
  BUFX1    g104(.A(\regis0[3] ), .Y(\DATA[3] ));
  BUFX1    g105(.A(\regis0[4] ), .Y(\DATA[4] ));
  BUFX1    g106(.A(\regis0[5] ), .Y(\DATA[5] ));
  BUFX1    g107(.A(\regis0[6] ), .Y(\DATA[6] ));
  BUFX1    g108(.A(\regis0[7] ), .Y(\DATA[7] ));
  always @ (posedge clock) begin
    \i[0]  <= n26;
    \i[1]  <= n31;
    \i[2]  <= n36;
    \i[3]  <= n41;
    \j[0]  <= n46;
    init <= n51;
    \regis[0]  <= n56;
    \regis[1]  <= n61;
    \regis[2]  <= n66;
    \regis[3]  <= n71;
    \regis[4]  <= n76;
    \regis[5]  <= n81;
    \regis[6]  <= n86;
    \regis[7]  <= n91;
    \regis[8]  <= n96;
    \regis0[0]  <= n101;
    \regis0[1]  <= n106;
    \regis0[2]  <= n111;
    \regis0[3]  <= n116;
    \regis0[4]  <= n121;
    \regis0[5]  <= n126;
    \regis0[6]  <= n131;
    \regis0[7]  <= n136;
    Rx_error <= n141;
    DONE <= n145;
  end
  initial begin
    \i[0]  <= 1'b0;
    \i[1]  <= 1'b0;
    \i[2]  <= 1'b0;
    \i[3]  <= 1'b0;
    \j[0]  <= 1'b0;
    init <= 1'b0;
    \regis[0]  <= 1'b0;
    \regis[1]  <= 1'b0;
    \regis[2]  <= 1'b0;
    \regis[3]  <= 1'b0;
    \regis[4]  <= 1'b0;
    \regis[5]  <= 1'b0;
    \regis[6]  <= 1'b0;
    \regis[7]  <= 1'b0;
    \regis[8]  <= 1'b0;
    \regis0[0]  <= 1'b0;
    \regis0[1]  <= 1'b0;
    \regis0[2]  <= 1'b0;
    \regis0[3]  <= 1'b0;
    \regis0[4]  <= 1'b0;
    \regis0[5]  <= 1'b0;
    \regis0[6]  <= 1'b0;
    \regis0[7]  <= 1'b0;
    Rx_error <= 1'b0;
    DONE <= 1'b0;
  end
endmodule


