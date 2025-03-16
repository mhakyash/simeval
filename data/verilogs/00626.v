module my_module (
    Y,
    A1,
    A2,
    A3,
    B1,
    B2,
    C
);

    output Y;
    input A1;
    input A2;
    input A3;
    input B1;
    input B2;
    input C;

    wire Y_wire;
    sky130_fd_sc_hs__o32ai_1 base (
        .Y(Y_wire),
        .A1(A1),
        .A2(A2),
        .A3(A3),
        .B1(B1),
        .B2(B2)
    );

    assign Y = (C == 1'b1) ? Y_wire : ~Y_wire;

endmodule