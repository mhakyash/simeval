// Benchmark "vending_machine" written by ABC on Wed Jun 26 15:22:23 2024

module vending_machine ( clock, 
    clk, reset, nickel, dime, quarter,
    candy_dispense, soda_dispense, \display[0] , \display[1] ,
    \display[2] , \display[3] , \display[4] , \display[5] , \display[6] ,
    \display[7]   );
  input  clock;
  input  clk, reset, nickel, dime, quarter;
  output candy_dispense, soda_dispense, \display[0] , \display[1] ,
    \display[2] , \display[3] , \display[4] , \display[5] , \display[6] ,
    \display[7] ;
  reg \display[0] , \display[1] , \display[2] , \display[3] , \display[4] ,
    \display[5] , \display[6] , \display[7] , \balance[0] , \balance[1] ,
    \balance[2] , \balance[3] , \balance[4] , \balance[5] , \balance[6] ,
    \balance[7] ;
  wire new_n64_1, new_n65, new_n66, new_n67, new_n68, new_n69_1, new_n70,
    new_n71, new_n72, new_n73, new_n74_1, new_n76, new_n77, new_n78,
    new_n79_1, new_n80, new_n81, new_n82, new_n83, new_n84_1, new_n85,
    new_n86, new_n88, new_n97, new_n98, new_n99_1, new_n100, new_n101,
    new_n103, new_n104, new_n105, new_n106, new_n107, new_n108, new_n109,
    new_n110, new_n112, new_n113, new_n114, new_n115, new_n116, new_n117,
    new_n118, new_n119, new_n120, new_n121, new_n122, new_n123, new_n124,
    new_n126, new_n127, new_n128, new_n129, new_n130, new_n131, new_n132,
    new_n133, new_n134, new_n135, new_n136, new_n137, new_n138, new_n139,
    new_n140, new_n142, new_n143, new_n144, new_n145, new_n146, new_n147,
    new_n148, new_n149, new_n150, new_n151, new_n152, new_n153, new_n154,
    new_n156, new_n157, new_n158, new_n159, new_n160, new_n161, new_n162,
    new_n163, new_n164, new_n165, new_n166, new_n167, new_n168, new_n169,
    new_n170, new_n171, new_n173, new_n174, new_n175, new_n176, new_n177,
    new_n178, new_n179, new_n180, new_n181, new_n182, new_n183, new_n184,
    new_n185, new_n186, new_n187, new_n188, new_n190, new_n191, new_n192,
    new_n193, new_n194, new_n195, new_n196, new_n197, new_n198, new_n199,
    new_n200, new_n201, new_n202, new_n203, new_n204, n32, n36, n40, n44,
    n48, n52, n56, n60, n64, n69, n74, n79, n84, n89, n94, n99;
  INVX1    g000(.A(\balance[1] ), .Y(new_n64_1));
  OR4X1    g001(.A(\balance[7] ), .B(\balance[6] ), .C(\balance[5] ), .D(\balance[4] ), .Y(new_n65));
  INVX1    g002(.A(\balance[3] ), .Y(new_n66));
  OR2X1    g003(.A(new_n66), .B(\balance[2] ), .Y(new_n67));
  NOR4X1   g004(.A(new_n67), .B(new_n65), .C(new_n64_1), .D(\balance[0] ), .Y(new_n68));
  OAI21X1  g005(.A0(\balance[2] ), .A1(\balance[1] ), .B0(\balance[3] ), .Y(new_n69_1));
  NOR4X1   g006(.A(\balance[7] ), .B(\balance[6] ), .C(\balance[5] ), .D(\balance[4] ), .Y(new_n70));
  OAI21X1  g007(.A0(new_n69_1), .A1(new_n65), .B0(new_n70), .Y(new_n71));
  NOR3X1   g008(.A(quarter), .B(dime), .C(nickel), .Y(new_n72));
  INVX1    g009(.A(new_n72), .Y(new_n73));
  OAI21X1  g010(.A0(new_n71), .A1(new_n68), .B0(new_n73), .Y(new_n74_1));
  INVX1    g011(.A(new_n74_1), .Y(candy_dispense));
  INVX1    g012(.A(\balance[0] ), .Y(new_n76));
  INVX1    g013(.A(\balance[4] ), .Y(new_n77));
  OR4X1    g014(.A(\balance[7] ), .B(\balance[6] ), .C(\balance[5] ), .D(new_n77), .Y(new_n78));
  NOR4X1   g015(.A(new_n78), .B(new_n67), .C(\balance[1] ), .D(new_n76), .Y(new_n79_1));
  INVX1    g016(.A(\balance[2] ), .Y(new_n80));
  NOR2X1   g017(.A(\balance[1] ), .B(\balance[0] ), .Y(new_n81));
  AOI21X1  g018(.A0(new_n81), .A1(new_n80), .B0(new_n66), .Y(new_n82));
  INVX1    g019(.A(new_n82), .Y(new_n83));
  NOR3X1   g020(.A(\balance[7] ), .B(\balance[6] ), .C(\balance[5] ), .Y(new_n84_1));
  OAI21X1  g021(.A0(new_n83), .A1(new_n78), .B0(new_n84_1), .Y(new_n85));
  OAI21X1  g022(.A0(new_n85), .A1(new_n79_1), .B0(new_n73), .Y(new_n86));
  INVX1    g023(.A(new_n86), .Y(soda_dispense));
  INVX1    g024(.A(reset), .Y(new_n88));
  AND2X1   g025(.A(\balance[0] ), .B(new_n88), .Y(n32));
  AND2X1   g026(.A(\balance[1] ), .B(new_n88), .Y(n36));
  AND2X1   g027(.A(\balance[2] ), .B(new_n88), .Y(n40));
  AND2X1   g028(.A(\balance[3] ), .B(new_n88), .Y(n44));
  AND2X1   g029(.A(\balance[4] ), .B(new_n88), .Y(n48));
  AND2X1   g030(.A(\balance[5] ), .B(new_n88), .Y(n52));
  AND2X1   g031(.A(\balance[6] ), .B(new_n88), .Y(n56));
  AND2X1   g032(.A(\balance[7] ), .B(new_n88), .Y(n60));
  XOR2X1   g033(.A(\balance[0] ), .B(nickel), .Y(new_n97));
  MX2X1    g034(.A(new_n97), .B(\balance[0] ), .S0(dime), .Y(new_n98));
  MX2X1    g035(.A(new_n98), .B(new_n76), .S0(quarter), .Y(new_n99_1));
  MX2X1    g036(.A(\balance[0] ), .B(new_n99_1), .S0(new_n74_1), .Y(new_n100));
  MX2X1    g037(.A(new_n76), .B(new_n100), .S0(new_n86), .Y(new_n101));
  AND2X1   g038(.A(new_n101), .B(new_n88), .Y(n64));
  XOR2X1   g039(.A(\balance[1] ), .B(\balance[0] ), .Y(new_n103));
  INVX1    g040(.A(nickel), .Y(new_n104));
  MX2X1    g041(.A(new_n103), .B(\balance[1] ), .S0(new_n104), .Y(new_n105));
  MX2X1    g042(.A(new_n105), .B(new_n64_1), .S0(dime), .Y(new_n106));
  MX2X1    g043(.A(new_n106), .B(new_n103), .S0(quarter), .Y(new_n107));
  MX2X1    g044(.A(new_n64_1), .B(new_n107), .S0(new_n74_1), .Y(new_n108));
  XOR2X1   g045(.A(\balance[1] ), .B(new_n76), .Y(new_n109));
  MX2X1    g046(.A(new_n109), .B(new_n108), .S0(new_n86), .Y(new_n110));
  AND2X1   g047(.A(new_n110), .B(new_n88), .Y(n69));
  INVX1    g048(.A(quarter), .Y(new_n112));
  INVX1    g049(.A(dime), .Y(new_n113));
  AND2X1   g050(.A(\balance[1] ), .B(\balance[0] ), .Y(new_n114));
  XOR2X1   g051(.A(new_n114), .B(new_n80), .Y(new_n115));
  MX2X1    g052(.A(new_n115), .B(\balance[2] ), .S0(new_n104), .Y(new_n116));
  XOR2X1   g053(.A(\balance[2] ), .B(\balance[1] ), .Y(new_n117));
  MX2X1    g054(.A(new_n117), .B(new_n116), .S0(new_n113), .Y(new_n118));
  XOR2X1   g055(.A(new_n114), .B(\balance[2] ), .Y(new_n119));
  MX2X1    g056(.A(new_n119), .B(new_n118), .S0(new_n112), .Y(new_n120));
  XOR2X1   g057(.A(\balance[2] ), .B(new_n64_1), .Y(new_n121));
  MX2X1    g058(.A(new_n121), .B(new_n120), .S0(new_n74_1), .Y(new_n122));
  XOR2X1   g059(.A(new_n81), .B(\balance[2] ), .Y(new_n123));
  MX2X1    g060(.A(new_n123), .B(new_n122), .S0(new_n86), .Y(new_n124));
  AND2X1   g061(.A(new_n124), .B(new_n88), .Y(n74));
  AOI21X1  g062(.A0(\balance[1] ), .A1(\balance[0] ), .B0(\balance[2] ), .Y(new_n126));
  XOR2X1   g063(.A(new_n126), .B(new_n66), .Y(new_n127));
  MX2X1    g064(.A(new_n127), .B(\balance[3] ), .S0(new_n104), .Y(new_n128));
  AND2X1   g065(.A(\balance[2] ), .B(\balance[1] ), .Y(new_n129));
  XOR2X1   g066(.A(new_n129), .B(new_n66), .Y(new_n130));
  MX2X1    g067(.A(new_n130), .B(new_n128), .S0(new_n113), .Y(new_n131));
  NAND3X1  g068(.A(\balance[2] ), .B(\balance[1] ), .C(\balance[0] ), .Y(new_n132));
  XOR2X1   g069(.A(new_n132), .B(\balance[3] ), .Y(new_n133));
  MX2X1    g070(.A(new_n133), .B(new_n131), .S0(new_n112), .Y(new_n134));
  NOR2X1   g071(.A(\balance[2] ), .B(\balance[1] ), .Y(new_n135));
  XOR2X1   g072(.A(new_n135), .B(new_n66), .Y(new_n136));
  MX2X1    g073(.A(new_n136), .B(new_n134), .S0(new_n74_1), .Y(new_n137));
  NOR3X1   g074(.A(\balance[2] ), .B(\balance[1] ), .C(\balance[0] ), .Y(new_n138));
  XOR2X1   g075(.A(new_n138), .B(new_n66), .Y(new_n139));
  MX2X1    g076(.A(new_n139), .B(new_n137), .S0(new_n86), .Y(new_n140));
  AND2X1   g077(.A(new_n140), .B(new_n88), .Y(n79));
  OAI21X1  g078(.A0(new_n114), .A1(\balance[2] ), .B0(\balance[3] ), .Y(new_n142));
  XOR2X1   g079(.A(new_n142), .B(new_n77), .Y(new_n143));
  MX2X1    g080(.A(new_n143), .B(\balance[4] ), .S0(new_n104), .Y(new_n144));
  AOI21X1  g081(.A0(\balance[2] ), .A1(\balance[1] ), .B0(\balance[3] ), .Y(new_n145));
  XOR2X1   g082(.A(new_n145), .B(new_n77), .Y(new_n146));
  MX2X1    g083(.A(new_n146), .B(new_n144), .S0(new_n113), .Y(new_n147));
  AOI21X1  g084(.A0(new_n114), .A1(\balance[2] ), .B0(\balance[3] ), .Y(new_n148));
  XOR2X1   g085(.A(new_n148), .B(\balance[4] ), .Y(new_n149));
  MX2X1    g086(.A(new_n149), .B(new_n147), .S0(new_n112), .Y(new_n150));
  XOR2X1   g087(.A(new_n69_1), .B(\balance[4] ), .Y(new_n151));
  MX2X1    g088(.A(new_n151), .B(new_n150), .S0(new_n74_1), .Y(new_n152));
  XOR2X1   g089(.A(new_n82), .B(\balance[4] ), .Y(new_n153));
  MX2X1    g090(.A(new_n153), .B(new_n152), .S0(new_n86), .Y(new_n154));
  AND2X1   g091(.A(new_n154), .B(new_n88), .Y(n84));
  NOR2X1   g092(.A(new_n142), .B(new_n77), .Y(new_n156));
  XOR2X1   g093(.A(new_n156), .B(\balance[5] ), .Y(new_n157));
  MX2X1    g094(.A(new_n157), .B(\balance[5] ), .S0(new_n104), .Y(new_n158));
  NOR2X1   g095(.A(new_n145), .B(new_n77), .Y(new_n159));
  XOR2X1   g096(.A(new_n159), .B(\balance[5] ), .Y(new_n160));
  MX2X1    g097(.A(new_n160), .B(new_n158), .S0(new_n113), .Y(new_n161));
  INVX1    g098(.A(\balance[5] ), .Y(new_n162));
  AND2X1   g099(.A(new_n148), .B(new_n77), .Y(new_n163));
  XOR2X1   g100(.A(new_n163), .B(new_n162), .Y(new_n164));
  MX2X1    g101(.A(new_n164), .B(new_n161), .S0(new_n112), .Y(new_n165));
  AND2X1   g102(.A(new_n69_1), .B(new_n77), .Y(new_n166));
  XOR2X1   g103(.A(new_n166), .B(\balance[5] ), .Y(new_n167));
  MX2X1    g104(.A(new_n167), .B(new_n165), .S0(new_n74_1), .Y(new_n168));
  AND2X1   g105(.A(new_n82), .B(\balance[4] ), .Y(new_n169));
  XOR2X1   g106(.A(new_n169), .B(new_n162), .Y(new_n170));
  MX2X1    g107(.A(new_n170), .B(new_n168), .S0(new_n86), .Y(new_n171));
  AND2X1   g108(.A(new_n171), .B(new_n88), .Y(n89));
  NOR3X1   g109(.A(new_n142), .B(new_n162), .C(new_n77), .Y(new_n173));
  XOR2X1   g110(.A(new_n173), .B(\balance[6] ), .Y(new_n174));
  MX2X1    g111(.A(new_n174), .B(\balance[6] ), .S0(new_n104), .Y(new_n175));
  NOR3X1   g112(.A(new_n145), .B(new_n162), .C(new_n77), .Y(new_n176));
  XOR2X1   g113(.A(new_n176), .B(\balance[6] ), .Y(new_n177));
  MX2X1    g114(.A(new_n177), .B(new_n175), .S0(new_n113), .Y(new_n178));
  AOI21X1  g115(.A0(new_n148), .A1(new_n77), .B0(new_n162), .Y(new_n179));
  XOR2X1   g116(.A(new_n179), .B(\balance[6] ), .Y(new_n180));
  MX2X1    g117(.A(new_n180), .B(new_n178), .S0(new_n112), .Y(new_n181));
  INVX1    g118(.A(\balance[6] ), .Y(new_n182));
  NAND3X1  g119(.A(new_n69_1), .B(new_n162), .C(new_n77), .Y(new_n183));
  XOR2X1   g120(.A(new_n183), .B(new_n182), .Y(new_n184));
  MX2X1    g121(.A(new_n184), .B(new_n181), .S0(new_n74_1), .Y(new_n185));
  AOI21X1  g122(.A0(new_n82), .A1(\balance[4] ), .B0(\balance[5] ), .Y(new_n186));
  XOR2X1   g123(.A(new_n186), .B(\balance[6] ), .Y(new_n187));
  MX2X1    g124(.A(new_n187), .B(new_n185), .S0(new_n86), .Y(new_n188));
  AND2X1   g125(.A(new_n188), .B(new_n88), .Y(n94));
  NOR4X1   g126(.A(new_n142), .B(new_n182), .C(new_n162), .D(new_n77), .Y(new_n190));
  XOR2X1   g127(.A(new_n190), .B(\balance[7] ), .Y(new_n191));
  MX2X1    g128(.A(new_n191), .B(\balance[7] ), .S0(new_n104), .Y(new_n192));
  NOR4X1   g129(.A(new_n145), .B(new_n182), .C(new_n162), .D(new_n77), .Y(new_n193));
  XOR2X1   g130(.A(new_n193), .B(\balance[7] ), .Y(new_n194));
  MX2X1    g131(.A(new_n194), .B(new_n192), .S0(new_n113), .Y(new_n195));
  AND2X1   g132(.A(new_n179), .B(\balance[6] ), .Y(new_n196));
  XOR2X1   g133(.A(new_n196), .B(\balance[7] ), .Y(new_n197));
  MX2X1    g134(.A(new_n197), .B(new_n195), .S0(new_n112), .Y(new_n198));
  NOR2X1   g135(.A(new_n183), .B(\balance[6] ), .Y(new_n199));
  XOR2X1   g136(.A(new_n199), .B(\balance[7] ), .Y(new_n200));
  MX2X1    g137(.A(new_n200), .B(new_n198), .S0(new_n74_1), .Y(new_n201));
  AND2X1   g138(.A(new_n186), .B(new_n182), .Y(new_n202));
  XOR2X1   g139(.A(new_n202), .B(\balance[7] ), .Y(new_n203));
  MX2X1    g140(.A(new_n203), .B(new_n201), .S0(new_n86), .Y(new_n204));
  AND2X1   g141(.A(new_n204), .B(new_n88), .Y(n99));
  always @ (posedge clock) begin
    \display[0]  <= n32;
    \display[1]  <= n36;
    \display[2]  <= n40;
    \display[3]  <= n44;
    \display[4]  <= n48;
    \display[5]  <= n52;
    \display[6]  <= n56;
    \display[7]  <= n60;
    \balance[0]  <= n64;
    \balance[1]  <= n69;
    \balance[2]  <= n74;
    \balance[3]  <= n79;
    \balance[4]  <= n84;
    \balance[5]  <= n89;
    \balance[6]  <= n94;
    \balance[7]  <= n99;
  end
  initial begin
    \balance[0]  <= 1'b0;
    \balance[1]  <= 1'b0;
    \balance[2]  <= 1'b0;
    \balance[3]  <= 1'b0;
    \balance[4]  <= 1'b0;
    \balance[5]  <= 1'b0;
    \balance[6]  <= 1'b0;
    \balance[7]  <= 1'b0;
  end
endmodule


