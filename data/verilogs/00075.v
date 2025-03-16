module my_module (
    Y   ,
    A1  ,
    A2  ,
    A3  ,
    B1  ,
    C1  ,
    VPWR,
    VGND,
    VPB ,
    VNB
);

    // Module ports
    output Y   ;
    input  A1  ;
    input  A2  ;
    input  A3  ;
    input  B1  ;
    input  C1  ;
    input  VPWR;
    input  VGND;
    input  VPB ;
    input  VNB ;

    // Local signals
    wire and0_out         ;
    wire nor0_out_Y       ;
    wire pwrgood_pp0_out_Y;

    //                                 Name         Output             Other arguments
    and                                and0        (and0_out         , A3, A1, A2            );
    nor                                nor0        (nor0_out_Y       , B1, C1, and0_out      );
    sky130_fd_sc_ls__udp_pwrgood_pp$PG pwrgood_pp0 (pwrgood_pp0_out_Y, nor0_out_Y, VPWR, VGND);
    buf                                buf0        (Y                , pwrgood_pp0_out_Y     );

endmodule