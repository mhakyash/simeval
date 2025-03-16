// Benchmark "station_management" written by ABC on Wed Jun 26 15:22:26 2024

module station_management ( clock, 
    reset, clock, mdc, mdi, mode, begin_transaction, \phy_address[0] ,
    \phy_address[1] , \phy_address[2] , \phy_address[3] , \phy_address[4] ,
    \reg_address[0] , \reg_address[1] , \reg_address[2] , \reg_address[3] ,
    \reg_address[4] , \data_in[0] , \data_in[1] , \data_in[2] ,
    \data_in[3] , \data_in[4] , \data_in[5] , \data_in[6] , \data_in[7] ,
    \data_in[8] , \data_in[9] , \data_in[10] , \data_in[11] ,
    \data_in[12] , \data_in[13] , \data_in[14] , \data_in[15] ,
    mdo, \data_out[0] , \data_out[1] , \data_out[2] , \data_out[3] ,
    \data_out[4] , \data_out[5] , \data_out[6] , \data_out[7] ,
    \data_out[8] , \data_out[9] , \data_out[10] , \data_out[11] ,
    \data_out[12] , \data_out[13] , \data_out[14] , \data_out[15]   );
  input  clock;
  input  reset, clock, mdc, mdi, mode, begin_transaction,
    \phy_address[0] , \phy_address[1] , \phy_address[2] , \phy_address[3] ,
    \phy_address[4] , \reg_address[0] , \reg_address[1] , \reg_address[2] ,
    \reg_address[3] , \reg_address[4] , \data_in[0] , \data_in[1] ,
    \data_in[2] , \data_in[3] , \data_in[4] , \data_in[5] , \data_in[6] ,
    \data_in[7] , \data_in[8] , \data_in[9] , \data_in[10] , \data_in[11] ,
    \data_in[12] , \data_in[13] , \data_in[14] , \data_in[15] ;
  output mdo, \data_out[0] , \data_out[1] , \data_out[2] , \data_out[3] ,
    \data_out[4] , \data_out[5] , \data_out[6] , \data_out[7] ,
    \data_out[8] , \data_out[9] , \data_out[10] , \data_out[11] ,
    \data_out[12] , \data_out[13] , \data_out[14] , \data_out[15] ;
  reg \state[0] , \state[1] , \state[2] , \reg_data[0] , \reg_data[1] ,
    \reg_data[2] , \reg_data[3] , \reg_data[4] , \reg_data[5] ,
    \reg_data[6] , \reg_data[7] , \reg_data[8] , \reg_data[9] ,
    \reg_data[10] , \reg_data[11] , \reg_data[12] , \reg_data[13] ,
    \reg_data[14] , \reg_data[15] ;
  wire new_n124, new_n125_1, new_n126, new_n127, new_n128, new_n129,
    new_n131, new_n132, new_n133, new_n134, new_n135_1, new_n136, new_n137,
    new_n138, new_n140_1, new_n141, new_n142, new_n143, new_n145_1,
    new_n146, new_n147, new_n148, new_n149, new_n151, new_n152, new_n153,
    new_n154, new_n156, new_n157, new_n158, new_n159, new_n161, new_n162,
    new_n163, new_n164, new_n166, new_n167, new_n168, new_n169, new_n171,
    new_n172, new_n173, new_n174, new_n176, new_n177, new_n178, new_n179,
    new_n181, new_n182, new_n183, new_n184, new_n186, new_n187, new_n188,
    new_n189, new_n191, new_n192, new_n193, new_n194, new_n196, new_n197,
    new_n198, new_n199, new_n201, new_n202, new_n203, new_n204, new_n206,
    new_n207, new_n208, new_n209, new_n211, new_n212, new_n213, new_n214,
    new_n216, new_n217, new_n218, new_n219, new_n221, new_n222, new_n223,
    new_n224, n100, n105, n110, n115, n120, n125, n130, n135, n140, n145,
    n150, n155, n160, n165, n170, n175, n180, n185, n190;
  AND2X1   g000(.A(\reg_data[15] ), .B(\state[2] ), .Y(mdo));
  INVX1    g001(.A(mdc), .Y(new_n124));
  INVX1    g002(.A(mdi), .Y(new_n125_1));
  NOR2X1   g003(.A(\state[2] ), .B(\state[1] ), .Y(new_n126));
  OR4X1    g004(.A(new_n126), .B(new_n125_1), .C(new_n124), .D(reset), .Y(new_n127));
  INVX1    g005(.A(begin_transaction), .Y(new_n128));
  AOI21X1  g006(.A0(\state[0] ), .A1(new_n128), .B0(reset), .Y(new_n129));
  NAND2X1  g007(.A(new_n129), .B(new_n127), .Y(n100));
  INVX1    g008(.A(\state[1] ), .Y(new_n131));
  AND2X1   g009(.A(new_n125_1), .B(mdc), .Y(new_n132));
  AND2X1   g010(.A(mdi), .B(mdc), .Y(new_n133));
  OR4X1    g011(.A(new_n133), .B(new_n132), .C(new_n131), .D(reset), .Y(new_n134));
  INVX1    g012(.A(mode), .Y(new_n135_1));
  INVX1    g013(.A(\state[0] ), .Y(new_n136));
  OR4X1    g014(.A(new_n136), .B(new_n128), .C(new_n135_1), .D(reset), .Y(new_n137));
  OR4X1    g015(.A(new_n131), .B(mdi), .C(new_n124), .D(reset), .Y(new_n138));
  NAND3X1  g016(.A(new_n138), .B(new_n137), .C(new_n134), .Y(n105));
  INVX1    g017(.A(\state[2] ), .Y(new_n140_1));
  OR4X1    g018(.A(new_n133), .B(new_n132), .C(new_n140_1), .D(reset), .Y(new_n141));
  OR4X1    g019(.A(new_n140_1), .B(mdi), .C(new_n124), .D(reset), .Y(new_n142));
  OR4X1    g020(.A(new_n136), .B(new_n128), .C(mode), .D(reset), .Y(new_n143));
  NAND3X1  g021(.A(new_n143), .B(new_n142), .C(new_n141), .Y(n110));
  NAND2X1  g022(.A(new_n126), .B(\reg_data[0] ), .Y(new_n145_1));
  MX2X1    g023(.A(\reg_data[0] ), .B(\data_in[15] ), .S0(new_n133), .Y(new_n146));
  MX2X1    g024(.A(new_n146), .B(\data_in[15] ), .S0(new_n132), .Y(new_n147));
  MX2X1    g025(.A(\reg_data[0] ), .B(mdi), .S0(mdc), .Y(new_n148));
  AOI22X1  g026(.A0(new_n148), .A1(\state[2] ), .B0(new_n147), .B1(\state[1] ), .Y(new_n149));
  AOI21X1  g027(.A0(new_n149), .A1(new_n145_1), .B0(reset), .Y(n115));
  NAND2X1  g028(.A(new_n126), .B(\reg_data[1] ), .Y(new_n151));
  MX2X1    g029(.A(\reg_data[1] ), .B(\reg_data[0] ), .S0(new_n133), .Y(new_n152));
  MX2X1    g030(.A(new_n152), .B(\reg_data[0] ), .S0(new_n132), .Y(new_n153));
  OAI21X1  g031(.A0(\state[2] ), .A1(\state[1] ), .B0(new_n153), .Y(new_n154));
  AOI21X1  g032(.A0(new_n154), .A1(new_n151), .B0(reset), .Y(n120));
  NAND2X1  g033(.A(new_n126), .B(\reg_data[2] ), .Y(new_n156));
  MX2X1    g034(.A(\reg_data[2] ), .B(\reg_data[1] ), .S0(new_n133), .Y(new_n157));
  MX2X1    g035(.A(new_n157), .B(\reg_data[1] ), .S0(new_n132), .Y(new_n158));
  OAI21X1  g036(.A0(\state[2] ), .A1(\state[1] ), .B0(new_n158), .Y(new_n159));
  AOI21X1  g037(.A0(new_n159), .A1(new_n156), .B0(reset), .Y(n125));
  NAND2X1  g038(.A(new_n126), .B(\reg_data[3] ), .Y(new_n161));
  MX2X1    g039(.A(\reg_data[3] ), .B(\reg_data[2] ), .S0(new_n133), .Y(new_n162));
  MX2X1    g040(.A(new_n162), .B(\reg_data[2] ), .S0(new_n132), .Y(new_n163));
  OAI21X1  g041(.A0(\state[2] ), .A1(\state[1] ), .B0(new_n163), .Y(new_n164));
  AOI21X1  g042(.A0(new_n164), .A1(new_n161), .B0(reset), .Y(n130));
  NAND2X1  g043(.A(new_n126), .B(\reg_data[4] ), .Y(new_n166));
  MX2X1    g044(.A(\reg_data[4] ), .B(\reg_data[3] ), .S0(new_n133), .Y(new_n167));
  MX2X1    g045(.A(new_n167), .B(\reg_data[3] ), .S0(new_n132), .Y(new_n168));
  OAI21X1  g046(.A0(\state[2] ), .A1(\state[1] ), .B0(new_n168), .Y(new_n169));
  AOI21X1  g047(.A0(new_n169), .A1(new_n166), .B0(reset), .Y(n135));
  NAND2X1  g048(.A(new_n126), .B(\reg_data[5] ), .Y(new_n171));
  MX2X1    g049(.A(\reg_data[5] ), .B(\reg_data[4] ), .S0(new_n133), .Y(new_n172));
  MX2X1    g050(.A(new_n172), .B(\reg_data[4] ), .S0(new_n132), .Y(new_n173));
  OAI21X1  g051(.A0(\state[2] ), .A1(\state[1] ), .B0(new_n173), .Y(new_n174));
  AOI21X1  g052(.A0(new_n174), .A1(new_n171), .B0(reset), .Y(n140));
  NAND2X1  g053(.A(new_n126), .B(\reg_data[6] ), .Y(new_n176));
  MX2X1    g054(.A(\reg_data[6] ), .B(\reg_data[5] ), .S0(new_n133), .Y(new_n177));
  MX2X1    g055(.A(new_n177), .B(\reg_data[5] ), .S0(new_n132), .Y(new_n178));
  OAI21X1  g056(.A0(\state[2] ), .A1(\state[1] ), .B0(new_n178), .Y(new_n179));
  AOI21X1  g057(.A0(new_n179), .A1(new_n176), .B0(reset), .Y(n145));
  NAND2X1  g058(.A(new_n126), .B(\reg_data[7] ), .Y(new_n181));
  MX2X1    g059(.A(\reg_data[7] ), .B(\reg_data[6] ), .S0(new_n133), .Y(new_n182));
  MX2X1    g060(.A(new_n182), .B(\reg_data[6] ), .S0(new_n132), .Y(new_n183));
  OAI21X1  g061(.A0(\state[2] ), .A1(\state[1] ), .B0(new_n183), .Y(new_n184));
  AOI21X1  g062(.A0(new_n184), .A1(new_n181), .B0(reset), .Y(n150));
  NAND2X1  g063(.A(new_n126), .B(\reg_data[8] ), .Y(new_n186));
  MX2X1    g064(.A(\reg_data[8] ), .B(\reg_data[7] ), .S0(new_n133), .Y(new_n187));
  MX2X1    g065(.A(new_n187), .B(\reg_data[7] ), .S0(new_n132), .Y(new_n188));
  OAI21X1  g066(.A0(\state[2] ), .A1(\state[1] ), .B0(new_n188), .Y(new_n189));
  AOI21X1  g067(.A0(new_n189), .A1(new_n186), .B0(reset), .Y(n155));
  NAND2X1  g068(.A(new_n126), .B(\reg_data[9] ), .Y(new_n191));
  MX2X1    g069(.A(\reg_data[9] ), .B(\reg_data[8] ), .S0(new_n133), .Y(new_n192));
  MX2X1    g070(.A(new_n192), .B(\reg_data[8] ), .S0(new_n132), .Y(new_n193));
  OAI21X1  g071(.A0(\state[2] ), .A1(\state[1] ), .B0(new_n193), .Y(new_n194));
  AOI21X1  g072(.A0(new_n194), .A1(new_n191), .B0(reset), .Y(n160));
  NAND2X1  g073(.A(new_n126), .B(\reg_data[10] ), .Y(new_n196));
  MX2X1    g074(.A(\reg_data[10] ), .B(\reg_data[9] ), .S0(new_n133), .Y(new_n197));
  MX2X1    g075(.A(new_n197), .B(\reg_data[9] ), .S0(new_n132), .Y(new_n198));
  OAI21X1  g076(.A0(\state[2] ), .A1(\state[1] ), .B0(new_n198), .Y(new_n199));
  AOI21X1  g077(.A0(new_n199), .A1(new_n196), .B0(reset), .Y(n165));
  NAND2X1  g078(.A(new_n126), .B(\reg_data[11] ), .Y(new_n201));
  MX2X1    g079(.A(\reg_data[11] ), .B(\reg_data[10] ), .S0(new_n133), .Y(new_n202));
  MX2X1    g080(.A(new_n202), .B(\reg_data[10] ), .S0(new_n132), .Y(new_n203));
  OAI21X1  g081(.A0(\state[2] ), .A1(\state[1] ), .B0(new_n203), .Y(new_n204));
  AOI21X1  g082(.A0(new_n204), .A1(new_n201), .B0(reset), .Y(n170));
  NAND2X1  g083(.A(new_n126), .B(\reg_data[12] ), .Y(new_n206));
  MX2X1    g084(.A(\reg_data[12] ), .B(\reg_data[11] ), .S0(new_n133), .Y(new_n207));
  MX2X1    g085(.A(new_n207), .B(\reg_data[11] ), .S0(new_n132), .Y(new_n208));
  OAI21X1  g086(.A0(\state[2] ), .A1(\state[1] ), .B0(new_n208), .Y(new_n209));
  AOI21X1  g087(.A0(new_n209), .A1(new_n206), .B0(reset), .Y(n175));
  NAND2X1  g088(.A(new_n126), .B(\reg_data[13] ), .Y(new_n211));
  MX2X1    g089(.A(\reg_data[13] ), .B(\reg_data[12] ), .S0(new_n133), .Y(new_n212));
  MX2X1    g090(.A(new_n212), .B(\reg_data[12] ), .S0(new_n132), .Y(new_n213));
  OAI21X1  g091(.A0(\state[2] ), .A1(\state[1] ), .B0(new_n213), .Y(new_n214));
  AOI21X1  g092(.A0(new_n214), .A1(new_n211), .B0(reset), .Y(n180));
  NAND2X1  g093(.A(new_n126), .B(\reg_data[14] ), .Y(new_n216));
  MX2X1    g094(.A(\reg_data[14] ), .B(\reg_data[13] ), .S0(new_n133), .Y(new_n217));
  MX2X1    g095(.A(new_n217), .B(\reg_data[13] ), .S0(new_n132), .Y(new_n218));
  OAI21X1  g096(.A0(\state[2] ), .A1(\state[1] ), .B0(new_n218), .Y(new_n219));
  AOI21X1  g097(.A0(new_n219), .A1(new_n216), .B0(reset), .Y(n185));
  NAND2X1  g098(.A(new_n126), .B(\reg_data[15] ), .Y(new_n221));
  MX2X1    g099(.A(\reg_data[15] ), .B(\reg_data[14] ), .S0(new_n133), .Y(new_n222));
  MX2X1    g100(.A(new_n222), .B(\reg_data[14] ), .S0(new_n132), .Y(new_n223));
  OAI21X1  g101(.A0(\state[2] ), .A1(\state[1] ), .B0(new_n223), .Y(new_n224));
  AOI21X1  g102(.A0(new_n224), .A1(new_n221), .B0(reset), .Y(n190));
  ZERO     g103(.Y(\data_out[0] ));
  ZERO     g104(.Y(\data_out[1] ));
  ZERO     g105(.Y(\data_out[2] ));
  ZERO     g106(.Y(\data_out[3] ));
  ZERO     g107(.Y(\data_out[4] ));
  ZERO     g108(.Y(\data_out[5] ));
  ZERO     g109(.Y(\data_out[6] ));
  ZERO     g110(.Y(\data_out[7] ));
  ZERO     g111(.Y(\data_out[8] ));
  ZERO     g112(.Y(\data_out[9] ));
  ZERO     g113(.Y(\data_out[10] ));
  ZERO     g114(.Y(\data_out[11] ));
  ZERO     g115(.Y(\data_out[12] ));
  ZERO     g116(.Y(\data_out[13] ));
  ZERO     g117(.Y(\data_out[14] ));
  ZERO     g118(.Y(\data_out[15] ));
  always @ (posedge clock) begin
    \state[0]  <= n100;
    \state[1]  <= n105;
    \state[2]  <= n110;
    \reg_data[0]  <= n115;
    \reg_data[1]  <= n120;
    \reg_data[2]  <= n125;
    \reg_data[3]  <= n130;
    \reg_data[4]  <= n135;
    \reg_data[5]  <= n140;
    \reg_data[6]  <= n145;
    \reg_data[7]  <= n150;
    \reg_data[8]  <= n155;
    \reg_data[9]  <= n160;
    \reg_data[10]  <= n165;
    \reg_data[11]  <= n170;
    \reg_data[12]  <= n175;
    \reg_data[13]  <= n180;
    \reg_data[14]  <= n185;
    \reg_data[15]  <= n190;
  end
endmodule


