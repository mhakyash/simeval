module sky130_fd_sc_ls__or4b (
    X   ,
    A   ,
    B   ,
    C   ,
    D_N ,
    VPWR,
    VGND,
    VPB ,
    VNB
);

    // Module ports
    output X   ;
    input  A   ;
    input  B   ;
    input  C   ;
    input  D_N ;
    input  VPWR;
    input  VGND;
    input  VPB ;
    input  VNB ;

    // Local signals
    wire not0_out         ;
    wire or0_out_X        ;
    wire pwrgood_pp0_out_X;

    //                                 Name         Output             Other arguments
    not                                not0        (not0_out         , D_N                  );
    or                                 or0         (or0_out_X        , not0_out, C, B, A    );
    sky130_fd_sc_ls__udp_pwrgood_pp$PG pwrgood_pp0 (pwrgood_pp0_out_X, or0_out_X, VPWR, VGND);
    buf                                buf0        (X                , pwrgood_pp0_out_X    );

endmodule