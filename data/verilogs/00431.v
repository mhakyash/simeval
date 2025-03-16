module block_mem_generator (
    input wire clka,
    input wire [11:0] addra,
    input wire [11:0] dina,
    input wire wea,
    output wire [11:0] douta
);

    wire [11:0] douta_int;
    wire [11:0] addra_int;
    wire [11:0] dina_int;
    wire wea_int;

    assign addra_int = addra;
    assign dina_int = dina;
    assign wea_int = wea;

    title3_blk_mem_gen_top block_mem (
        .clka(clka),
        .addra(addra_int),
        .dina(dina_int),
        .douta(douta_int),
        .wea(wea_int)
    );

    assign douta = douta_int;

endmodule