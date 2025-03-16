module sky130_fd_sc_hdll__inputiso0n (
    X      ,
    A      ,
    SLEEP_B,
    VPWR   ,
    VGND   ,
    VPB    ,
    VNB
);

    // Module ports
    output X      ;
    input  A      ;
    input  SLEEP_B;
    input  VPWR   ;
    input  VGND   ;
    input  VPB    ;
    input  VNB    ;

    // Local signals
    wire and0_out_X;

    //                                   Name         Output      Other arguments
    and                                  and0        (and0_out_X, A, SLEEP_B            );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp0 (X         , and0_out_X, VPWR, VGND);

endmodule