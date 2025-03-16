module my_block_ram_controller
   (douta,
    doutb,
    clka,
    clkb,
    ena,
    enb,
    rsta,
    rstb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  
  output reg [1:0] douta;
  output reg [1:0] doutb;
  input clka;
  input clkb;
  input ena;
  input enb;
  input rsta;
  input rstb;
  input [13:0] addra;
  input [13:0] addrb;
  input [1:0] dina;
  input [1:0] dinb;
  input [0:0] wea;
  input [0:0] web;

  wire [13:0] addra_wire;
  wire [13:0] addrb_wire;
  wire clka_wire;
  wire clkb_wire;
  wire [1:0] dina_wire;
  wire [1:0] dinb_wire;
  wire [1:0] douta_wire;
  wire [1:0] doutb_wire;
  wire ena_wire;
  wire enb_wire;
  wire rsta_wire;
  wire rstb_wire;
  wire [0:0] wea_wire;
  wire [0:0] web_wire;

  assign addra_wire = addra;
  assign addrb_wire = addrb;
  assign clka_wire = clka;
  assign clkb_wire = clkb;
  assign dina_wire = dina;
  assign dinb_wire = dinb;
  assign douta = douta_wire;
  assign doutb = doutb_wire;
  assign ena_wire = ena;
  assign enb_wire = enb;
  assign rsta_wire = rsta;
  assign rstb_wire = rstb;
  assign wea_wire = wea;
  assign web_wire = web;

  blk_mem_gen_prim_wrapper #(
    .DATA_WIDTH(2),
    .DEPTH(16384),
    .INIT_FILE_NAME(""),
    .MEMORY_TYPE("block")
  ) my_block_ram (
    .addra(addra_wire),
    .addrb(addrb_wire),
    .clka(clka_wire),
    .clkb(clkb_wire),
    .dina(dina_wire),
    .dinb(dinb_wire),
    .douta(douta_wire),
    .doutb(doutb_wire),
    .ena(ena_wire),
    .enb(enb_wire),
    .rsta(rsta_wire),
    .rstb(rstb_wire),
    .wea(wea_wire),
    .web(web_wire)
  );
endmodule