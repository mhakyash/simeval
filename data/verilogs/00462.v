module digital_circuit (
    input A1,
    input A2,
    input B1_N,
    output Y
);

    // Local signals
    wire b;
    wire and0_out;
    wire nor0_out_Y;

    //  Name  Output      Other arguments
    not not0 (b, B1_N);
    and and0 (and0_out, A1, A2);
    nor nor0 (nor0_out_Y, b, and0_out);
    buf buf0 (Y, nor0_out_Y);

endmodule