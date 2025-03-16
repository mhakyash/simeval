module combinational_circuit(
    input [49:0] in,
    input sel,
    output out_and,
    output out_or,
    output out_xnor
);

    wire [49:0] in_sel;
    wire [49:0] in_inv;

    // 2-to-1 multiplexer
    assign in_sel = sel ? in : 50'b0;
    assign in_inv = sel ? ~in : 50'b0;

    // AND gate
    assign out_and = &in_sel;

    // OR gate
    assign out_or = |in_sel;

    // XNOR gate
    assign out_xnor = ~(in_sel ^ in_inv);

endmodule