module sum_module (
    input KAPWR,
    input VPWR,
    input VGND,
    input VPB,
    input VNB,
    output [1:0] sum
);

    sky130_fd_sc_lp__decapkapwr_3 base (
        .KAPWR(KAPWR),
        .VPWR(VPWR),
        .VGND(VGND),
        .VPB(VPB),
        .VNB(VNB)
    );

    assign sum = VPWR + VPB;

endmodule