module dff_async_reset_enable (
    input CLK,
    input D,
    input RST,
    input EN,
    input VPWR,
    input VGND,
    output Q,
    output Q_N
);

    wire D_int;
    wire Q_int;
    wire Q_N_int;

    sky130_fd_sc_hvl__dfxbp_1 base (
        .Q(Q_int),
        .Q_N(Q_N_int),
        .CLK(CLK),
        .D(D_int),
        .VPWR(VPWR),
        .VGND(VGND),
        .VPB(1'b0),
        .VNB(1'b0)
    );

    assign D_int = (EN) ? D : Q_int;
    assign Q = (RST) ? 1'b0 : Q_int;
    assign Q_N = ~Q_int;

endmodule