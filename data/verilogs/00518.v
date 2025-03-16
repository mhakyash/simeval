module and_gate (
    input A,
    input B,
    input C,
    output Y
);

    assign Y = (A & B & C);

endmodule