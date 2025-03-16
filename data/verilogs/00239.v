module signal_converter (
    input A1,
    input A2,
    input B1_N,
    output X
);

    assign X = (A1 & ~A2 & B1_N) | (~A1 & A2 & ~B1_N) | (A1 & A2) | (~A1 & ~A2);

endmodule