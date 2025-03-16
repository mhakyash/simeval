module mux4to1_with_pwrgood (
    X   ,
    A0  ,
    A1  ,
    A2  ,
    A3  ,
    S   ,
    VPWR,
    VGND,
    VPB ,
    VNB
);

    // Module ports
    output X   ;
    input  A0  ;
    input  A1  ;
    input  A2  ;
    input  A3  ;
    input  S   ;
    input  VPWR;
    input  VGND;
    input  VPB ;
    input  VNB ;

    // Local signals
    wire mux_2to1_out_0  ;
    wire mux_2to1_out_1  ;
    wire pwrgood_0_out   ;
    wire pwrgood_1_out   ;

    // Instantiate modules
    sky130_fd_sc_hd__udp_mux_2to1 mux_2to1_0 (mux_2to1_out_0, A0, A1, S);
    sky130_fd_sc_hd__udp_mux_2to1 mux_2to1_1 (mux_2to1_out_1, A2, A3, S);
    sky130_fd_sc_hd__udp_pwrgood_pp$PG pwrgood_0 (pwrgood_0_out, mux_2to1_out_0, VPWR, VGND);
    sky130_fd_sc_hd__udp_pwrgood_pp$PG pwrgood_1 (pwrgood_1_out, mux_2to1_out_1, VPWR, VGND);
    buf buf0 (X, pwrgood_0_out);
    buf buf1 (X, pwrgood_1_out);

    // Power connections
    assign VPB = VPWR;
    assign VNB = VGND;

endmodule