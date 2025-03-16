module ram_test(
    input clk,
    input rst,
    output reg [35:0] douta
);

reg [31:0] reg1, reg2, sum;

Initial_blk_mem_gen_prim_wrapper_init__parameterized38 ram_inst(
    .clka(clk),
    .addra({10'd0}),
    .douta(douta)
);

always @(posedge clk) begin
    if (rst) begin
        reg1 <= 0;
        reg2 <= 0;
        sum <= 0;
        ram_inst.ENARDEN <= 0;
        ram_inst.ENBWREN <= 0;
    end
    else begin
        if (ram_inst.RAM_MODE == "TDP") begin
            ram_inst.ENARDEN <= 1;
            ram_inst.ENBWREN <= 0;
            ram_inst.ADDRA <= 10'd0;
            ram_inst.DIADI <= 36'h12345678;
            #1;
            ram_inst.ADDRA <= 10'd1;
            ram_inst.DIADI <= 36'h87654321;
            #1;
            ram_inst.ADDRA <= 10'd0;
            reg1 <= ram_inst.DOA_DOA;
            #1;
            ram_inst.ADDRA <= 10'd1;
            reg2 <= ram_inst.DOA_DOA;
            #1;
            sum <= reg1 + reg2;
            ram_inst.ENARDEN <= 0;
            ram_inst.ENBWREN <= 1;
            ram_inst.ADDRA <= 10'd2;
            ram_inst.DIADI <= sum;
            #1;
            ram_inst.ADDRA <= 10'd2;
            douta <= ram_inst.DOA_DOA;
            #1;
            ram_inst.ENARDEN <= 0;
            ram_inst.ENBWREN <= 0;
        end
    end
end

endmodule