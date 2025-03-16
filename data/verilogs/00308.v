module clock_gate (
    input CLK,
    input EN,
    input TE,
    output ENCLK
);

    TLATNTSCAX2TS latch (
        .E(EN),
        .SE(TE),
        .CK(CLK),
        .ECK(ENCLK)
    );

endmodule