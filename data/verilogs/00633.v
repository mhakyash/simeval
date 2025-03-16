module sky130_fd_sc_hvl__dfsbp (
    Q    ,
    Q_N  ,
    CLK  ,
    D    ,
    SET_B
);

    // Module ports
    output Q    ;
    output Q_N  ;
    input  CLK  ;
    input  D    ;
    input  SET_B;

    // Module supplies
    supply1 VPWR;
    supply0 VGND;
    supply1 VPB ;
    supply0 VNB ;

    // Local signals
    wire buf_Q        ;
    wire SET          ;
    reg  notifier     ;
    wire cond0        ;
    wire D_delayed    ;
    wire SET_B_delayed;
    wire CLK_delayed  ;

    // Delayed signals
    sky130_fd_sc_hvl__udp_inv$PP inv0 (D_delayed, D, VPWR, VGND);
    sky130_fd_sc_hvl__udp_inv$PP inv1 (SET_B_delayed, SET_B, VPWR, VGND);
    sky130_fd_sc_hvl__udp_inv$PP inv2 (CLK_delayed, CLK, VPWR, VGND);

    // Asynchronous set logic
    not not0 (SET, SET_B_delayed);
    buf buf0 (SET, SET);

    // D flip-flop
    sky130_fd_sc_hvl__udp_dff$PS_pp$PG$N dff0 (buf_Q, D_delayed, CLK_delayed, SET, notifier, VPWR, VGND);

    // Inverter and buffer for Q and Q_N
    not not1 (Q_N, buf_Q);
    buf buf1 (Q, buf_Q);

endmodule