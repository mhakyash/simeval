module d_flip_flop (
    input CLK,
    input D,
    input RESET,
    input SET,
    output reg Q,
    output reg Q_N
);

    sky130_fd_sc_hs__sdfsbp_2 flip_flop (
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .Q_N(Q_N),
        .SCD(RESET),
        .SCE(SET),
        .SET_B(1'b1),
        .VPWR(1'b1),
        .VGND(1'b0)
    );

endmodule