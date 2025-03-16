module my_module (
    Y,
    A1,
    A2,
    A3,
    A4,
    B1
);

    output Y;
    input A1;
    input A2;
    input A3;
    input A4;
    input B1;

    wire and1;
    wire and2;
    wire or1;
    wire and3;
    wire not1;
    wire not2;

    assign and1 = A1 & A2;
    assign and2 = A3 & A4;
    assign or1 = B1 | and1;
    assign and3 = not2 & or1;
    assign not1 = ~A3;
    assign not2 = ~not1;
    sky130_fd_sc_lp__o41ai_2 base (
        .Y(Y),
        .A1(and1),
        .A2(and2),
        .A3(not1),
        .A4(A4),
        .B1(and3)
    );

endmodule