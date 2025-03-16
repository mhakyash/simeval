module sky130_fd_sc_hs__sdfrtp (
    VPWR   ,
    VGND   ,
    Q      ,
    CLK    ,
    D      ,
    SCD    ,
    SCE    ,
    RESET_B
);

    // Module ports
    input  VPWR   ;
    input  VGND   ;
    output Q      ;
    input  CLK    ;
    input  D      ;
    input  SCD    ;
    input  SCE    ;
    input  RESET_B;

    // Local signals
    wire buf_Q  ;
    wire RESET  ;
    wire mux_out;

    //                           Delay       Name          Output   Other arguments
    not                                      not0         (RESET  , RESET_B                        );
    sky130_fd_sc_hs__u_mux_2_1               u_mux_20     (mux_out, D, SCD, SCE                    );
    sky130_fd_sc_hs__u_df_p_r_pg #(
        .DATA_WIDTH(1) // Set data width to 1 for single bit flip-flop
    ) u_df_p_r_pg0 (buf_Q  , mux_out, CLK, RESET, VPWR, VGND);
    buf                                      buf0         (Q      , buf_Q                          );

endmodule