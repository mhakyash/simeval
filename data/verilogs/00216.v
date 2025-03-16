module comparator (
    inout Vplus,
    inout Vminus,
    input clock,
    output CmpOut
);

    wire Net_1;

    cy_psoc3_ctcomp_v1_0 ctComp (
        .vplus(Vplus),
        .vminus(Vminus),
        .cmpout(Net_1),
        .clk_udb(clock),
        .clock(clock)
    );

    assign CmpOut = Net_1;

endmodule