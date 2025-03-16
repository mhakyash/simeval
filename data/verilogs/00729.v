module nor_gate (
    Z,
    A,
    B,
    C,
    D,
    TE
);

    output Z;
    input A, B, C, D, TE;

    wire nand1_out, nand2_out, nand3_out;

    sky130_fd_sc_hd__nand2p1vT nand1 (
        .Z(nand1_out),
        .A(A),
        .B(B),
        .TE(TE)
    );

    sky130_fd_sc_hd__nand2p1vT nand2 (
        .Z(nand2_out),
        .A(C),
        .B(D),
        .TE(TE)
    );

    sky130_fd_sc_hd__nand2p1vT nand3 (
        .Z(Z),
        .A(nand1_out),
        .B(nand2_out),
        .TE(TE)
    );

endmodule