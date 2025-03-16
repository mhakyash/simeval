module my_xor3 (
    output X,
    input  A,
    input  B,
    input  C
);

    wire notA, notB, notC;
    wire and1, and2, and3, and4;
    wire or1, or2, or3;

    // Invert inputs
    not (notA, A);
    not (notB, B);
    not (notC, C);

    // AND gates
    and (and1, A, notB, notC);
    and (and2, notA, B, notC);
    and (and3, notA, notB, C);
    and (and4, A, B, C);

    // OR gates
    or (or1, and1, and2);
    or (or2, or1, and3);
    or (or3, or2, and4);

    // Output
    assign X = or3;

endmodule