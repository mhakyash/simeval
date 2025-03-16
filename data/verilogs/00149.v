module nor_buf (
    Y,
    A,
    B,
    C
);

    // Module ports
    output Y;
    input  A;
    input  B;
    input  C;

    // Local signals
    wire nor_out_Y;

    //  Name  Output      Other arguments
    nor nor_gate (nor_out_Y, A, B, C);
    buf buffer (Y, nor_out_Y);

endmodule