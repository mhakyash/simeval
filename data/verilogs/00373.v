module sky130_fd_sc_hd__parity_gen (
    input [1:0] A,
    output Y
);

    // Internal signals
    wire xor_out;

    // XOR gate
    xor #(.N(1)) xor0 (
        .A(A[0]),
        .B(A[1]),
        .Z(xor_out)
    );

    // Odd parity
    assign Y = ~xor_out;

endmodule