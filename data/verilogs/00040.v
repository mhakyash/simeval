module and4_module (
    X,
    A,
    B,
    C,
    D
);

    output X;
    input A;
    input B;
    input C;
    input D;

    sky130_fd_sc_lp__and4b_lp base (
        .X(X),
        .A_N(1'b0),
        .B(B),
        .C(C),
        .D(D)
    );

    assign base.A_N = ~A;

endmodule