module logic_circuit (
    input Q,
    input CLK,
    input D,
    input SCD,
    input SCE,
    input VPWR,
    input VGND,
    input VPB,
    input VNB,
    output powergood,
    output reg Q_out
);

    // Local signals
    wire buf_Q;
    wire mux_out;
    reg  notifier;
    wire cond1;
    wire cond2;
    wire cond3;
    wire D_delayed;
    wire SCD_delayed;
    wire SCE_delayed;
    wire CLK_delayed;
    wire buf0_out_Q;

    //                                  Name         Output      Other arguments
    sky130_fd_sc_hvl__udp_mux_2to1      mux_2to10   (mux_out   , D_delayed, SCD_delayed, SCE_delayed       );
    sky130_fd_sc_hvl__udp_dff$P_pp$PG$N dff0        (buf_Q     , mux_out, CLK_delayed, notifier, VPWR, VGND);
    assign cond1 = ( SCE_delayed === 1'b0 );
    assign cond2 = ( SCE_delayed === 1'b1 );
    assign cond3 = ( D_delayed !== SCD_delayed );
    buf                                 buf0        (buf0_out_Q, buf_Q                                     );
    sky130_fd_sc_hvl__udp_pwrgood_pp$PG pwrgood_pp0 (Q_out     , buf0_out_Q, VPWR, VGND                    );

    // Delayed signals
    sky130_fd_sc_hvl__udp_buf_1        buf1        (D_delayed  , D         , CLK_delayed, VPB, VNB        );
    sky130_fd_sc_hvl__udp_buf_1        buf2        (SCD_delayed, SCD       , CLK_delayed, VPB, VNB        );
    sky130_fd_sc_hvl__udp_buf_1        buf3        (SCE_delayed, SCE       , CLK_delayed, VPB, VNB        );
    sky130_fd_sc_hvl__udp_buf_1        buf4        (CLK_delayed, CLK       , CLK_delayed, VPB, VNB        );

    // Combinational logic
    assign mux_out = mux_2to10.out;
    assign buf_Q = buf0_out_Q;

    always @(posedge CLK) begin
        if (cond1) begin
            Q_out <= 1'b0;
            notifier <= 1'b0;
        end else if (cond2) begin
            Q_out <= buf_Q;
            notifier <= 1'b0;
        end else if (cond3) begin
            Q_out <= buf_Q;
            notifier <= 1'b1;
        end
    end

    assign powergood = (VPWR > 1.8 && VPWR < 2.2 && VGND > -0.2 && VGND < 0.2);

endmodule