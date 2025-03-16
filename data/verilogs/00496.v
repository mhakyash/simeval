module sky130_fd_sc_ls__dlrbp (
    Q      ,
    Q_N    ,
    RESET_B,
    D      ,
    GATE
);

    // Module ports
    output Q      ;
    output Q_N    ;
    input  RESET_B;
    input  D      ;
    input  GATE   ;

    // Module supplies
    supply1 VPWR;
    supply0 VGND;
    supply1 VPB ;
    supply0 VNB ;

    // Local signals
    wire RESET          ;
    reg  notifier       ;
    wire D_delayed      ;
    wire GATE_delayed   ;
    wire RESET_delayed  ;
    wire RESET_B_delayed;
    wire buf_Q          ;
    wire awake          ;
    wire cond0          ;
    wire cond1          ;

    //                                     Name     Output  Other arguments
    not                                    not0    (RESET , RESET_B_delayed                                     );
    sky130_fd_sc_ls__udp_dlatch$PR_pp$PG$N dlatch0 (buf_Q , D_delayed, GATE_delayed, RESET, notifier, VPWR, VGND);
    assign awake = ( VPWR === 1'b1 );
    assign cond0 = ( awake && ( RESET_B_delayed === 1'b1 ) );
    assign cond1 = ( awake && ( RESET_B === 1'b1 ) );
    buf                                    buf0    (Q     , buf_Q                                               );
    not                                    not1    (Q_N   , buf_Q                                               );

    // Delayed signals
    sky130_fd_sc_ls__dlat$PP$ND$N dlat0 (D_delayed, D, VGND, VPWR);
    sky130_fd_sc_ls__dlat$PP$ND$N dlat1 (GATE_delayed, GATE, VGND, VPWR);
    sky130_fd_sc_ls__dlat$PP$ND$N dlat2 (RESET_delayed, RESET, VGND, VPWR);
    not not2 (RESET_B_delayed, RESET_B);
    
    // Notifier
    always @(posedge VPWR) begin
        if (cond0 || cond1) begin
            notifier <= 1'b1;
        end else begin
            notifier <= 1'b0;
        end
    end

endmodule