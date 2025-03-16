module ram_test(
    input [9:0] addra,
    input [9:0] addrb,
    input [35:0] diadi,
    input [35:0] dibdi,
    input [3:0] wea,
    input [3:0] webwe,
    output [35:0] douta,
    output [35:0] doutb
);

    reg [35:0] dout;
    wire [35:0] douta, doutb;
    wire [7:0] eccparity;
    wire dbiterr, sbiterr;

    Initial_blk_mem_gen_prim_wrapper_init__parameterized15 ram(
        .ADDRARDADDR({1'b1, addra, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}),
        .ADDRBWRADDR({1'b0, addrb, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}),
        .DIADI(diadi),
        .DIBDI(dibdi),
        .WEA(wea),
        .WEBWE(webwe),
        .DOADO(douta),
        .DOBDO(doutb),
        .ECCPARITY(eccparity),
        .DBITERR(dbiterr),
        .SBITERR(sbiterr)
    );

    initial begin
        // Initialize RAM
        #5;
        $display("Initializing RAM...");
        ram.ADDRARDADDR = {1'b1, 10'h0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1};
        ram.DIADI = 36'h123456789ABCDEF;
        ram.WEA = 4'b1111;
        #5;
        ram.ADDRARDADDR = {1'b1, 5'h5, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1};
        ram.DIADI = 36'h9876543210ABCDEF;
        ram.WEA = 4'b1111;
        #5;
        $display("RAM initialization complete.");

        // Read from RAM
        #5;
        ram.ADDRARDADDR = {1'b1, 3'h3, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1};
        ram.WEA = 4'b0000;
        dout = ram.DOADO;
        $display("Value at address 3: %h", dout);
        #5;
        ram.ADDRARDADDR = {1'b1, 10'hA, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1};
        ram.WEA = 4'b0000;
        dout = ram.DOADO;
        $display("Value at address 10: %h", dout);
        #5;
        ram.ADDRARDADDR = {1'b1, 5'h5, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1};
        ram.WEA = 4'b0000;
        dout = ram.DOADO;
        $display("Value at address 5: %h", dout);
    end

    assign douta = dout;
    assign doutb = 36'h0;

endmodule