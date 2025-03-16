module my_module (
    input A1,
    input A2,
    input A3,
    input B1,
    output X
);

    wire a_or = A1 | A2 | A3;
    wire a_and = A1 & A2 & A3;

    assign X = ((~a_or & ~B1) | a_and | B1) & ~(a_or & B1);

endmodule