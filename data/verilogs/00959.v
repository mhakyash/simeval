module my_or4 (
    input A,
    input B,
    input C,
    input D,
    output X
);

    // Local signals
    wire or0_out_X;

    // OR gate implementation
    assign or0_out_X = A | B | C | D;

    // Output buffer implementation
    assign X = or0_out_X;

endmodule