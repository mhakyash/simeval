module buffer_power_good (
    X,
    SLEEP,
    A,
    KAPWR,
    VPWR,
    VGND,
    VPB,
    VNB
);

    // Module ports
    output X;
    input SLEEP;
    input A;
    input KAPWR;
    input VPWR;
    input VGND;
    input VPB;
    input VNB;

    // Local signals
    wire not_sleep;
    wire and_enable;
    wire power_good;
    wire in_range;

    // Invert SLEEP signal
    assign not_sleep = ~SLEEP;

    // Enable buffer when A is high and SLEEP is low
    assign and_enable = not_sleep & A;

    // Enable power good signal when KAPWR is high
    assign power_good = KAPWR;

    // Check if buffer output is within power supply voltage range
    assign in_range = (VPB == VPWR) | (VPB == VNB);

    // Set buffer output to 0 when SLEEP is high
    assign X = not_sleep ? 1'b0 : (and_enable ? VPB : 1'b0);

    // Enable power good signal when buffer output is within range
    assign power_good = power_good & in_range;

endmodule