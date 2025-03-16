module nor_gate_expression (
    input A,
    input B,
    input C,
    input D,
    output Y
);

    wire AB;
    wire CD;
    wire CD_nor;
    wire AB_nor_CD_nor;

    // NOR gate to implement A NOR B
    nor gate_AB (AB, A, B);

    // NOR gate to implement C NOR D
    nor gate_CD (CD, C, D);

    // Inverter to implement NOT (C NOR D)
    not gate_CD_nor (CD_nor, CD);

    // NOR gate to implement (A NOR B) NOR (C NOR D)
    nor gate_AB_nor_CD_nor (AB_nor_CD_nor, AB, CD_nor);

    // Output of the module is (A AND B) OR (C NOR D)
    assign Y = AB_nor_CD_nor;

endmodule