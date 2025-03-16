module mux2 (
    X,
    A0,
    A1,
    S
);

    output X;
    input A0;
    input A1;
    input S;

    assign X = (S == 0) ? A0 : A1;

endmodule