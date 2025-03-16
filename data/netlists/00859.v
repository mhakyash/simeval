// Benchmark "axi_gpio" written by ABC on Wed Jun 26 15:22:22 2024

module axi_gpio ( clock, 
    s_axi_aclk, s_axi_aresetn, \s_axi_awaddr[0] , \s_axi_awaddr[1] ,
    \s_axi_awaddr[2] , \s_axi_awaddr[3] , \s_axi_awaddr[4] ,
    \s_axi_awaddr[5] , \s_axi_awaddr[6] , \s_axi_awaddr[7] ,
    \s_axi_awaddr[8] , s_axi_awvalid, \s_axi_wdata[0] , \s_axi_wdata[1] ,
    \s_axi_wdata[2] , \s_axi_wdata[3] , \s_axi_wdata[4] , \s_axi_wdata[5] ,
    \s_axi_wdata[6] , \s_axi_wdata[7] , \s_axi_wdata[8] , \s_axi_wdata[9] ,
    \s_axi_wdata[10] , \s_axi_wdata[11] , \s_axi_wdata[12] ,
    \s_axi_wdata[13] , \s_axi_wdata[14] , \s_axi_wdata[15] ,
    \s_axi_wdata[16] , \s_axi_wdata[17] , \s_axi_wdata[18] ,
    \s_axi_wdata[19] , \s_axi_wdata[20] , \s_axi_wdata[21] ,
    \s_axi_wdata[22] , \s_axi_wdata[23] , \s_axi_wdata[24] ,
    \s_axi_wdata[25] , \s_axi_wdata[26] , \s_axi_wdata[27] ,
    \s_axi_wdata[28] , \s_axi_wdata[29] , \s_axi_wdata[30] ,
    \s_axi_wdata[31] , \s_axi_wstrb[0] , \s_axi_wstrb[1] ,
    \s_axi_wstrb[2] , \s_axi_wstrb[3] , s_axi_wvalid, s_axi_bready,
    \s_axi_araddr[0] , \s_axi_araddr[1] , \s_axi_araddr[2] ,
    \s_axi_araddr[3] , \s_axi_araddr[4] , \s_axi_araddr[5] ,
    \s_axi_araddr[6] , \s_axi_araddr[7] , \s_axi_araddr[8] , s_axi_arvalid,
    s_axi_rready,
    s_axi_awready, s_axi_wready, \s_axi_bresp[0] , \s_axi_bresp[1] ,
    s_axi_bvalid, s_axi_arready, \s_axi_rdata[0] , \s_axi_rdata[1] ,
    \s_axi_rdata[2] , \s_axi_rdata[3] , \s_axi_rdata[4] , \s_axi_rdata[5] ,
    \s_axi_rdata[6] , \s_axi_rdata[7] , \s_axi_rdata[8] , \s_axi_rdata[9] ,
    \s_axi_rdata[10] , \s_axi_rdata[11] , \s_axi_rdata[12] ,
    \s_axi_rdata[13] , \s_axi_rdata[14] , \s_axi_rdata[15] ,
    \s_axi_rdata[16] , \s_axi_rdata[17] , \s_axi_rdata[18] ,
    \s_axi_rdata[19] , \s_axi_rdata[20] , \s_axi_rdata[21] ,
    \s_axi_rdata[22] , \s_axi_rdata[23] , \s_axi_rdata[24] ,
    \s_axi_rdata[25] , \s_axi_rdata[26] , \s_axi_rdata[27] ,
    \s_axi_rdata[28] , \s_axi_rdata[29] , \s_axi_rdata[30] ,
    \s_axi_rdata[31] , \s_axi_rresp[0] , \s_axi_rresp[1] , s_axi_rvalid,
    \gpio_io_o[0] , \gpio_io_o[1] , \gpio_io_o[2] , \gpio_io_o[3] ,
    \gpio_io_o[4] , \gpio_io_o[5] , \gpio_io_o[6] , \gpio_io_o[7]   );
  input  clock;
  input  s_axi_aclk, s_axi_aresetn, \s_axi_awaddr[0] , \s_axi_awaddr[1] ,
    \s_axi_awaddr[2] , \s_axi_awaddr[3] , \s_axi_awaddr[4] ,
    \s_axi_awaddr[5] , \s_axi_awaddr[6] , \s_axi_awaddr[7] ,
    \s_axi_awaddr[8] , s_axi_awvalid, \s_axi_wdata[0] , \s_axi_wdata[1] ,
    \s_axi_wdata[2] , \s_axi_wdata[3] , \s_axi_wdata[4] , \s_axi_wdata[5] ,
    \s_axi_wdata[6] , \s_axi_wdata[7] , \s_axi_wdata[8] , \s_axi_wdata[9] ,
    \s_axi_wdata[10] , \s_axi_wdata[11] , \s_axi_wdata[12] ,
    \s_axi_wdata[13] , \s_axi_wdata[14] , \s_axi_wdata[15] ,
    \s_axi_wdata[16] , \s_axi_wdata[17] , \s_axi_wdata[18] ,
    \s_axi_wdata[19] , \s_axi_wdata[20] , \s_axi_wdata[21] ,
    \s_axi_wdata[22] , \s_axi_wdata[23] , \s_axi_wdata[24] ,
    \s_axi_wdata[25] , \s_axi_wdata[26] , \s_axi_wdata[27] ,
    \s_axi_wdata[28] , \s_axi_wdata[29] , \s_axi_wdata[30] ,
    \s_axi_wdata[31] , \s_axi_wstrb[0] , \s_axi_wstrb[1] ,
    \s_axi_wstrb[2] , \s_axi_wstrb[3] , s_axi_wvalid, s_axi_bready,
    \s_axi_araddr[0] , \s_axi_araddr[1] , \s_axi_araddr[2] ,
    \s_axi_araddr[3] , \s_axi_araddr[4] , \s_axi_araddr[5] ,
    \s_axi_araddr[6] , \s_axi_araddr[7] , \s_axi_araddr[8] , s_axi_arvalid,
    s_axi_rready;
  output s_axi_awready, s_axi_wready, \s_axi_bresp[0] , \s_axi_bresp[1] ,
    s_axi_bvalid, s_axi_arready, \s_axi_rdata[0] , \s_axi_rdata[1] ,
    \s_axi_rdata[2] , \s_axi_rdata[3] , \s_axi_rdata[4] , \s_axi_rdata[5] ,
    \s_axi_rdata[6] , \s_axi_rdata[7] , \s_axi_rdata[8] , \s_axi_rdata[9] ,
    \s_axi_rdata[10] , \s_axi_rdata[11] , \s_axi_rdata[12] ,
    \s_axi_rdata[13] , \s_axi_rdata[14] , \s_axi_rdata[15] ,
    \s_axi_rdata[16] , \s_axi_rdata[17] , \s_axi_rdata[18] ,
    \s_axi_rdata[19] , \s_axi_rdata[20] , \s_axi_rdata[21] ,
    \s_axi_rdata[22] , \s_axi_rdata[23] , \s_axi_rdata[24] ,
    \s_axi_rdata[25] , \s_axi_rdata[26] , \s_axi_rdata[27] ,
    \s_axi_rdata[28] , \s_axi_rdata[29] , \s_axi_rdata[30] ,
    \s_axi_rdata[31] , \s_axi_rresp[0] , \s_axi_rresp[1] , s_axi_rvalid,
    \gpio_io_o[0] , \gpio_io_o[1] , \gpio_io_o[2] , \gpio_io_o[3] ,
    \gpio_io_o[4] , \gpio_io_o[5] , \gpio_io_o[6] , \gpio_io_o[7] ;
  reg \s_axi_rdata[0] , \gpio_reg[0] , \gpio_reg[1] , \gpio_reg[2] ,
    \gpio_reg[3] , \gpio_reg[4] , \gpio_reg[5] , \gpio_reg[6] ,
    \gpio_reg[7] ;
  wire new_n178, new_n179, new_n180, new_n181, new_n182, new_n183, new_n184,
    new_n185, new_n186, new_n187, new_n188, new_n189, new_n190, new_n191,
    new_n192, new_n193, new_n194, new_n195, new_n196, new_n197, new_n198,
    new_n200, new_n201, new_n202, new_n203, new_n205, new_n206, new_n207,
    new_n208, new_n210, new_n211, new_n212, new_n213, new_n215, new_n216,
    new_n217, new_n219, new_n220, new_n221, new_n222_1, new_n224, new_n225,
    new_n226_1, new_n228, new_n229, new_n230, new_n232, new_n233, new_n234,
    n222, n226, n231, n236, n241, n246, n251, n256, n261;
  INVX1    g000(.A(\s_axi_araddr[0] ), .Y(new_n178));
  INVX1    g001(.A(\s_axi_araddr[1] ), .Y(new_n179));
  NOR4X1   g002(.A(\s_axi_araddr[3] ), .B(\s_axi_araddr[2] ), .C(new_n179), .D(new_n178), .Y(new_n180));
  NOR4X1   g003(.A(\s_axi_araddr[3] ), .B(\s_axi_araddr[2] ), .C(new_n179), .D(\s_axi_araddr[0] ), .Y(new_n181));
  NOR4X1   g004(.A(\s_axi_araddr[3] ), .B(\s_axi_araddr[2] ), .C(\s_axi_araddr[1] ), .D(new_n178), .Y(new_n182));
  NOR4X1   g005(.A(\s_axi_araddr[3] ), .B(\s_axi_araddr[2] ), .C(\s_axi_araddr[1] ), .D(\s_axi_araddr[0] ), .Y(new_n183));
  NOR4X1   g006(.A(new_n183), .B(new_n182), .C(new_n181), .D(new_n180), .Y(new_n184));
  INVX1    g007(.A(\s_axi_araddr[2] ), .Y(new_n185));
  NOR4X1   g008(.A(\s_axi_araddr[3] ), .B(new_n185), .C(new_n179), .D(new_n178), .Y(new_n186));
  NOR4X1   g009(.A(\s_axi_araddr[3] ), .B(new_n185), .C(new_n179), .D(\s_axi_araddr[0] ), .Y(new_n187));
  NOR4X1   g010(.A(\s_axi_araddr[3] ), .B(new_n185), .C(\s_axi_araddr[1] ), .D(new_n178), .Y(new_n188));
  NOR4X1   g011(.A(\s_axi_araddr[3] ), .B(new_n185), .C(\s_axi_araddr[1] ), .D(\s_axi_araddr[0] ), .Y(new_n189));
  NOR4X1   g012(.A(new_n189), .B(new_n188), .C(new_n187), .D(new_n186), .Y(new_n190));
  AND2X1   g013(.A(new_n190), .B(new_n184), .Y(new_n191));
  AOI22X1  g014(.A0(new_n181), .A1(\gpio_reg[2] ), .B0(new_n180), .B1(\gpio_reg[3] ), .Y(new_n192));
  AOI22X1  g015(.A0(new_n183), .A1(\gpio_reg[0] ), .B0(new_n182), .B1(\gpio_reg[1] ), .Y(new_n193));
  AOI22X1  g016(.A0(new_n187), .A1(\gpio_reg[6] ), .B0(new_n186), .B1(\gpio_reg[7] ), .Y(new_n194));
  AOI22X1  g017(.A0(new_n189), .A1(\gpio_reg[4] ), .B0(new_n188), .B1(\gpio_reg[5] ), .Y(new_n195));
  NAND4X1  g018(.A(new_n195), .B(new_n194), .C(new_n193), .D(new_n192), .Y(new_n196));
  MX2X1    g019(.A(new_n196), .B(\s_axi_rdata[0] ), .S0(new_n191), .Y(new_n197));
  MX2X1    g020(.A(\s_axi_rdata[0] ), .B(new_n197), .S0(s_axi_arvalid), .Y(new_n198));
  MX2X1    g021(.A(\s_axi_rdata[0] ), .B(new_n198), .S0(s_axi_aresetn), .Y(n222));
  INVX1    g022(.A(s_axi_awvalid), .Y(new_n200));
  NOR4X1   g023(.A(\s_axi_awaddr[3] ), .B(\s_axi_awaddr[2] ), .C(\s_axi_awaddr[1] ), .D(\s_axi_awaddr[0] ), .Y(new_n201));
  MX2X1    g024(.A(\gpio_reg[0] ), .B(\s_axi_wdata[0] ), .S0(new_n201), .Y(new_n202));
  MX2X1    g025(.A(new_n202), .B(\gpio_reg[0] ), .S0(new_n200), .Y(new_n203));
  AND2X1   g026(.A(new_n203), .B(s_axi_aresetn), .Y(n226));
  INVX1    g027(.A(\s_axi_awaddr[0] ), .Y(new_n205));
  NOR4X1   g028(.A(\s_axi_awaddr[3] ), .B(\s_axi_awaddr[2] ), .C(\s_axi_awaddr[1] ), .D(new_n205), .Y(new_n206));
  MX2X1    g029(.A(\gpio_reg[1] ), .B(\s_axi_wdata[0] ), .S0(new_n206), .Y(new_n207));
  MX2X1    g030(.A(new_n207), .B(\gpio_reg[1] ), .S0(new_n200), .Y(new_n208));
  AND2X1   g031(.A(new_n208), .B(s_axi_aresetn), .Y(n231));
  INVX1    g032(.A(\s_axi_awaddr[1] ), .Y(new_n210));
  NOR4X1   g033(.A(\s_axi_awaddr[3] ), .B(\s_axi_awaddr[2] ), .C(new_n210), .D(\s_axi_awaddr[0] ), .Y(new_n211));
  MX2X1    g034(.A(\gpio_reg[2] ), .B(\s_axi_wdata[0] ), .S0(new_n211), .Y(new_n212));
  MX2X1    g035(.A(new_n212), .B(\gpio_reg[2] ), .S0(new_n200), .Y(new_n213));
  AND2X1   g036(.A(new_n213), .B(s_axi_aresetn), .Y(n236));
  NOR4X1   g037(.A(\s_axi_awaddr[3] ), .B(\s_axi_awaddr[2] ), .C(new_n210), .D(new_n205), .Y(new_n215));
  MX2X1    g038(.A(\gpio_reg[3] ), .B(\s_axi_wdata[0] ), .S0(new_n215), .Y(new_n216));
  MX2X1    g039(.A(new_n216), .B(\gpio_reg[3] ), .S0(new_n200), .Y(new_n217));
  AND2X1   g040(.A(new_n217), .B(s_axi_aresetn), .Y(n241));
  INVX1    g041(.A(\s_axi_awaddr[2] ), .Y(new_n219));
  NOR4X1   g042(.A(\s_axi_awaddr[3] ), .B(new_n219), .C(\s_axi_awaddr[1] ), .D(\s_axi_awaddr[0] ), .Y(new_n220));
  MX2X1    g043(.A(\gpio_reg[4] ), .B(\s_axi_wdata[0] ), .S0(new_n220), .Y(new_n221));
  MX2X1    g044(.A(new_n221), .B(\gpio_reg[4] ), .S0(new_n200), .Y(new_n222_1));
  AND2X1   g045(.A(new_n222_1), .B(s_axi_aresetn), .Y(n246));
  NOR4X1   g046(.A(\s_axi_awaddr[3] ), .B(new_n219), .C(\s_axi_awaddr[1] ), .D(new_n205), .Y(new_n224));
  MX2X1    g047(.A(\gpio_reg[5] ), .B(\s_axi_wdata[0] ), .S0(new_n224), .Y(new_n225));
  MX2X1    g048(.A(new_n225), .B(\gpio_reg[5] ), .S0(new_n200), .Y(new_n226_1));
  AND2X1   g049(.A(new_n226_1), .B(s_axi_aresetn), .Y(n251));
  NOR4X1   g050(.A(\s_axi_awaddr[3] ), .B(new_n219), .C(new_n210), .D(\s_axi_awaddr[0] ), .Y(new_n228));
  MX2X1    g051(.A(\gpio_reg[6] ), .B(\s_axi_wdata[0] ), .S0(new_n228), .Y(new_n229));
  MX2X1    g052(.A(new_n229), .B(\gpio_reg[6] ), .S0(new_n200), .Y(new_n230));
  AND2X1   g053(.A(new_n230), .B(s_axi_aresetn), .Y(n256));
  NOR4X1   g054(.A(\s_axi_awaddr[3] ), .B(new_n219), .C(new_n210), .D(new_n205), .Y(new_n232));
  MX2X1    g055(.A(\gpio_reg[7] ), .B(\s_axi_wdata[0] ), .S0(new_n232), .Y(new_n233));
  MX2X1    g056(.A(new_n233), .B(\gpio_reg[7] ), .S0(new_n200), .Y(new_n234));
  AND2X1   g057(.A(new_n234), .B(s_axi_aresetn), .Y(n261));
  ONE      g058(.Y(s_axi_awready));
  ONE      g059(.Y(s_axi_wready));
  ZERO     g060(.Y(\s_axi_bresp[0] ));
  ZERO     g061(.Y(\s_axi_bresp[1] ));
  ZERO     g062(.Y(s_axi_bvalid));
  ONE      g063(.Y(s_axi_arready));
  ZERO     g064(.Y(\s_axi_rdata[1] ));
  ZERO     g065(.Y(\s_axi_rdata[2] ));
  ZERO     g066(.Y(\s_axi_rdata[3] ));
  ZERO     g067(.Y(\s_axi_rdata[4] ));
  ZERO     g068(.Y(\s_axi_rdata[5] ));
  ZERO     g069(.Y(\s_axi_rdata[6] ));
  ZERO     g070(.Y(\s_axi_rdata[7] ));
  ZERO     g071(.Y(\s_axi_rdata[8] ));
  ZERO     g072(.Y(\s_axi_rdata[9] ));
  ZERO     g073(.Y(\s_axi_rdata[10] ));
  ZERO     g074(.Y(\s_axi_rdata[11] ));
  ZERO     g075(.Y(\s_axi_rdata[12] ));
  ZERO     g076(.Y(\s_axi_rdata[13] ));
  ZERO     g077(.Y(\s_axi_rdata[14] ));
  ZERO     g078(.Y(\s_axi_rdata[15] ));
  ZERO     g079(.Y(\s_axi_rdata[16] ));
  ZERO     g080(.Y(\s_axi_rdata[17] ));
  ZERO     g081(.Y(\s_axi_rdata[18] ));
  ZERO     g082(.Y(\s_axi_rdata[19] ));
  ZERO     g083(.Y(\s_axi_rdata[20] ));
  ZERO     g084(.Y(\s_axi_rdata[21] ));
  ZERO     g085(.Y(\s_axi_rdata[22] ));
  ZERO     g086(.Y(\s_axi_rdata[23] ));
  ZERO     g087(.Y(\s_axi_rdata[24] ));
  ZERO     g088(.Y(\s_axi_rdata[25] ));
  ZERO     g089(.Y(\s_axi_rdata[26] ));
  ZERO     g090(.Y(\s_axi_rdata[27] ));
  ZERO     g091(.Y(\s_axi_rdata[28] ));
  ZERO     g092(.Y(\s_axi_rdata[29] ));
  ZERO     g093(.Y(\s_axi_rdata[30] ));
  ZERO     g094(.Y(\s_axi_rdata[31] ));
  ZERO     g095(.Y(\s_axi_rresp[0] ));
  ZERO     g096(.Y(\s_axi_rresp[1] ));
  ONE      g097(.Y(s_axi_rvalid));
  BUFX1    g098(.A(\gpio_reg[0] ), .Y(\gpio_io_o[0] ));
  BUFX1    g099(.A(\gpio_reg[1] ), .Y(\gpio_io_o[1] ));
  BUFX1    g100(.A(\gpio_reg[2] ), .Y(\gpio_io_o[2] ));
  BUFX1    g101(.A(\gpio_reg[3] ), .Y(\gpio_io_o[3] ));
  BUFX1    g102(.A(\gpio_reg[4] ), .Y(\gpio_io_o[4] ));
  BUFX1    g103(.A(\gpio_reg[5] ), .Y(\gpio_io_o[5] ));
  BUFX1    g104(.A(\gpio_reg[6] ), .Y(\gpio_io_o[6] ));
  BUFX1    g105(.A(\gpio_reg[7] ), .Y(\gpio_io_o[7] ));
  always @ (posedge clock) begin
    \s_axi_rdata[0]  <= n222;
    \gpio_reg[0]  <= n226;
    \gpio_reg[1]  <= n231;
    \gpio_reg[2]  <= n236;
    \gpio_reg[3]  <= n241;
    \gpio_reg[4]  <= n246;
    \gpio_reg[5]  <= n251;
    \gpio_reg[6]  <= n256;
    \gpio_reg[7]  <= n261;
  end
endmodule


