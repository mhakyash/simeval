module clock_module
(
    input CLK_IN1,
    output CLK_OUT1,
    output CLKFX,
    input RESET,
    output LOCKED
);

    wire clkfb;
    wire locked_int;
    wire [7:0] status_int;
    wire psdone_unused;

    IBUFG clkin1_buf (.O(clkin1), .I(CLK_IN1));
    BUFG clkout1_buf (.O(CLK_OUT1), .I(clkfx));

    DCM_SP #(
        .CLKDV_DIVIDE(2.000),
        .CLKFX_DIVIDE(3),
        .CLKFX_MULTIPLY(10),
        .CLKIN_DIVIDE_BY_2("FALSE"),
        .CLKIN_PERIOD(10.0),
        .CLKOUT_PHASE_SHIFT("NONE"),
        .CLK_FEEDBACK("NONE"),
        .DESKEW_ADJUST("SYSTEM_SYNCHRONOUS"),
        .PHASE_SHIFT(0),
        .STARTUP_WAIT("FALSE")
    ) dcm_sp_inst (
        .CLKIN(clkin1),
        .CLKFB(clkfb),
        .CLK0(),
        .CLK90(),
        .CLK180(),
        .CLK270(),
        .CLK2X(),
        .CLK2X180(),
        .CLKFX(CLKFX),
        .CLKFX180(),
        .CLKDV(),
        .PSCLK(1'b0),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PSDONE(psdone_unused),
        .LOCKED(locked_int),
        .STATUS(status_int),
        .RST(RESET),
        .DSSEN(1'b0)
    );

    assign CLKFX = clkfx;
    assign LOCKED = locked_int;

endmodule