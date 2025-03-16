module mux4to1 (
    out,
    in0,
    in1,
    in2,
    in3,
    sel0,
    sel1
);

    // Module ports
    output out;
    input  in0;
    input  in1;
    input  in2;
    input  in3;
    input  sel0;
    input  sel1;

    // Local signals
    wire mux_2to1_n0_out_Y;
    wire mux_2to1_n1_out_Y;
    wire mux_2to1_n2_out_Y;

    // 2-to-1 multiplexer
    sky130_fd_sc_hdll__udp_mux_2to1_N mux_2to1_n0 (mux_2to1_n0_out_Y, in0, in1, sel1);
    sky130_fd_sc_hdll__udp_mux_2to1_N mux_2to1_n1 (mux_2to1_n1_out_Y, in2, in3, sel1);
    sky130_fd_sc_hdll__udp_mux_2to1_N mux_2to1_n2 (mux_2to1_n2_out_Y, mux_2to1_n0_out_Y, mux_2to1_n1_out_Y, sel0);

    // Buffer
    buf buf0 (out, mux_2to1_n2_out_Y);

endmodule