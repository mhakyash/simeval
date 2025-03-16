module num_blk_mem_gen_v8_3_5_synth
   (douta,
    addra,
    clka,
    dina,
    wea);
  output [11:0]douta;
  input [12:0]addra;
  input clka;
  input [11:0]dina;
  input [0:0]wea;

  wire [12:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
  wire [0:0]wea;

  num_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule