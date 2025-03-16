module inverter (
    Y   ,
    A   ,
    VPWR
);

    output Y   ;
    input  A   ;
    input  VPWR;

    // Internal nets
    wire nA;
    wire nVPWR;
    wire nY;

    // Pull-down network
    sky130_fd_sc_hdll__pmos p1 (
        .Y   (nA  ),
        .A   (A   ),
        .VPWR(VPWR)
    );
    sky130_fd_sc_hdll__nmos n1 (
        .Y   (A   ),
        .A   (nA  ),
        .VGND(0   )
    );

    // Pull-up network
    sky130_fd_sc_hdll__nmos n2 (
        .Y   (nVPWR),
        .A   (VPWR),
        .VGND(0    )
    );
    sky130_fd_sc_hdll__pmos p2 (
        .Y   (nY   ),
        .A   (nVPWR),
        .VPWR(VPWR)
    );

    // Inverter stage
    sky130_fd_sc_hdll__nmos n3 (
        .Y   (Y   ),
        .A   (nY  ),
        .VGND(0   )
    );
    sky130_fd_sc_hdll__pmos p3 (
        .Y   (nY  ),
        .A   (Y   ),
        .VPWR(VPWR)
    );

endmodule