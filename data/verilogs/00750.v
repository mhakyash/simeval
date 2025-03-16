module nand2_en (
    output Z,
    input A,
    input B,
    input EN
);

    wire nand1_out;
    wire nand2_out;
    wire and_out;

    // Implement NAND1 gate
    assign nand1_out = ~(A & B);

    // Implement NAND2 gate
    assign nand2_out = ~(nand1_out & EN);

    // Implement AND gate
    assign and_out = A & B;

    // Implement final output
    assign Z = nand2_out & and_out;

endmodule