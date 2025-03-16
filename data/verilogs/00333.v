module delay_module (
    input A,
    output X
);

    // Local signals
    wire buf0_out_X;
    wire u_vpwr_vgnd0_out_X;
    wire buf1_out_X;

    // Buffers
    buf buf0(buf0_out_X, A);
    sky130_fd_sc_hs__u_vpwr_vgnd u_vpwr_vgnd0(u_vpwr_vgnd0_out_X, buf0_out_X, 1'b1, 1'b0);
    buf buf1(buf1_out_X, u_vpwr_vgnd0_out_X);

    // Delay
    assign #5 X = buf1_out_X;

endmodule