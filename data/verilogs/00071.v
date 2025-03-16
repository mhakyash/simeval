module sky130_fd_sc_hd__sdfbbn (
    Q      ,
    Q_N    ,
    D      ,
    SCD    ,
    SCE    ,
    CLK_N  ,
    SET_B  ,
    RESET_B
);

    // Module ports
    output Q      ;
    output Q_N    ;
    input  D      ;
    input  SCD    ;
    input  SCE    ;
    input  CLK_N  ;
    input  SET_B  ;
    input  RESET_B;

    // Module supplies
    supply1 VPWR;
    supply0 VGND;
    supply1 VPB ;
    supply0 VNB ;

    // Local signals
    wire RESET          ;
    wire SET            ;
    wire CLK            ;
    wire buf_Q          ;
    reg  notifier       ;
    wire D_delayed      ;
    wire SCD_delayed    ;
    wire SCE_delayed    ;
    wire CLK_N_delayed  ;
    wire SET_B_delayed  ;
    wire RESET_B_delayed;
    wire mux_out        ;
    wire awake          ;
    wire cond0          ;
    wire cond1          ;
    wire condb          ;
    wire cond_D         ;
    wire cond_SCD       ;
    wire cond_SCE       ;

    //                                   Name       Output   Other arguments
    not                                  not0      (RESET  , RESET_B_delayed                               );
    not                                  not1      (SET    , SET_B_delayed                                 );
    not                                  not2      (CLK    , CLK_N_delayed                                 );
    sky130_fd_sc_hd__udp_mux_2to1        mux_2to10 (mux_out, D_delayed, SCD_delayed, SCE_delayed           );
    sky130_fd_sc_hd__udp_dff$NSR_pp$PG$N dff0      (buf_Q  , SET, RESET, CLK, mux_out, notifier, VPWR, VGND);
    assign awake = ( VPWR === 1'b1 );
    assign cond0 = ( awake && ( RESET_B_delayed === 1'b1 ) );
    assign cond1 = ( awake && ( SET_B_delayed === 1'b1 ) );
    assign condb = ( cond0 & cond1 );
    assign cond_D = ( ( SCE_delayed === 1'b0 ) && condb );
    assign cond_SCD = ( ( SCE_delayed === 1'b1 ) && condb );
    assign cond_SCE = ( ( D_delayed !== SCD_delayed ) && condb );
    buf                                  buf0      (Q      , buf_Q                                         );
    not                                  not3      (Q_N    , buf_Q                                         );

    // Delaying inputs
    sky130_fd_sc_hd__udp_inv inv_D (D_delayed, D, VPWR, VGND);
    sky130_fd_sc_hd__udp_inv inv_SCD (SCD_delayed, SCD, VPWR, VGND);
    sky130_fd_sc_hd__udp_inv inv_SCE (SCE_delayed, SCE, VPWR, VGND);
    sky130_fd_sc_hd__udp_inv inv_CLK_N (CLK_N_delayed, CLK_N, VPWR, VGND);
    sky130_fd_sc_hd__udp_inv inv_SET_B (SET_B_delayed, SET_B, VPWR, VGND);
    sky130_fd_sc_hd__udp_inv inv_RESET_B (RESET_B_delayed, RESET_B, VPWR, VGND);

    // Implementing the logic circuit
    always @ (posedge CLK_N or negedge VPWR) begin
        if (!awake) begin
            notifier <= 1'b0;
        end else begin
            notifier <= mux_out;
        end
    end

    always @ (posedge CLK_N or negedge VPWR) begin
        if (!awake) begin
            D_delayed <= 1'b0;
            SCD_delayed <= 1'b0;
            SCE_delayed <= 1'b0;
            CLK_N_delayed <= 1'b0;
            SET_B_delayed <= 1'b0;
            RESET_B_delayed <= 1'b0;
        end else begin
            D_delayed <= D;
            SCD_delayed <= SCD;
            SCE_delayed <= SCE;
            CLK_N_delayed <= CLK_N;
            SET_B_delayed <= SET_B;
            RESET_B_delayed <= RESET_B;
        end
    end

    always @ (posedge CLK_N or negedge VPWR) begin
        if (!awake) begin
            RESET <= 1'b0;
            SET <= 1'b0;
        end else begin
            RESET <= RESET_B_delayed;
            SET <= SET_B_delayed;
        end
    end

    always @ (posedge CLK_N or negedge VPWR) begin
        if (!awake) begin
            CLK <= 1'b0;
        end else begin
            CLK <= CLK_N_delayed;
        end
    end

    always @ (posedge CLK_N or negedge VPWR) begin
        if (!awake) begin
            buf_Q <= 1'b0;
        end else if (cond0) begin
            buf_Q <= 1'b0;
        end else if (cond1) begin
            buf_Q <= 1'b1;
        end else if (cond_D) begin
            buf_Q <= D_delayed;
        end else if (cond_SCD) begin
            buf_Q <= D_delayed;
        end else if (cond_SCE) begin
            buf_Q <= D_delayed;
        end else begin
            buf_Q <= notifier;
        end
    end

endmodule