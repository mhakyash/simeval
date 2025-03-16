module mux4 (
    A,
    B,
    C,
    D,
    sel,
    Y
);

    // Module ports
    input  A;
    input  B;
    input  C;
    input  D;
    input  [1:0] sel;
    output Y;

    // Local signals
    wire    inv_sel_0;
    wire    inv_sel_1;
    wire    nand0_out;
    wire    nand1_out;
    wire    and0_out;
    wire    and1_out;
    wire    or0_out;

    // Invert select signal
    sky130_fd_sc_hdll__inv inv_sel_0_inst (
        .A(sel[0]),
        .Y(inv_sel_0)
    );

    sky130_fd_sc_hdll__inv inv_sel_1_inst (
        .A(sel[1]),
        .Y(inv_sel_1)
    );

    // NAND gates
    sky130_fd_sc_hdll__nand2 nand0_inst (
        .A(A),
        .B(inv_sel_0),
        .Y(nand0_out)
    );

    sky130_fd_sc_hdll__nand2 nand1_inst (
        .A(B),
        .B(inv_sel_1),
        .Y(nand1_out)
    );

    // AND gates
    sky130_fd_sc_hdll__and2 and0_inst (
        .A(nand0_out),
        .B(nand1_out),
        .Y(and0_out)
    );

    sky130_fd_sc_hdll__and2 and1_inst (
        .A(C),
        .B(sel),
        .Y(and1_out)
    );

    // OR gate
    sky130_fd_sc_hdll__or2 or0_inst (
        .A(and0_out),
        .B(and1_out),
        .Y(or0_out)
    );

    // Buffer
    sky130_fd_sc_hdll__buf buf_inst (
        .A(or0_out),
        .X(Y)
    );

endmodule