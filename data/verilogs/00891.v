module and2_gate (
    input A,
    input B,
    input VPWR,
    input VGND,
    output Y
);

    wire and_out;

    sky130_fd_sc_ls__and2 and_gate (
        .A(A),
        .B(B),
        .VPWR(VPWR),
        .VGND(VGND),
        .Y(and_out)
    );

    assign Y = and_out;

endmodule