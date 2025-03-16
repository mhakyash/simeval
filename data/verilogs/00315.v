module dff_with_async_set_reset(
    input D,
    input SET,
    input RESET,
    input CLK_N,
    output reg Q
);

    sky130_fd_sc_ms__udp_dff$NSR dut (.SET(SET), .RESET(RESET), .D(D), .Q(Q), .CLK_N(CLK_N));

endmodule