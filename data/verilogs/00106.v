module and_nand (
    input A,
    input B,
    output Y
);

    wire nand1;
    wire nand2;
    wire nand3;

    nand nand_gate1(nand1, A, B);
    nand nand_gate2(nand2, nand1, nand1);
    nand nand_gate3(nand3, nand2, nand2);
    nand nand_gate4(Y, nand3, nand3);

endmodule