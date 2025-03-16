module mux_2to1 (
    A,
    B,
    S,
    Y
);

    input A, B, S;
    output Y;

    // Voltage supply signals
    supply1 VPWR;
    supply0 VGND;
    supply1 VPB ;
    supply0 VNB ;

    wire not_S;
    sky130_fd_sc_ls__dlxtp_1 base (
        .Q(Y),
        .D(B),
        .GATE(S)
    );
    sky130_fd_sc_ls__dlxtp_1 inv (
        .Q(not_S),
        .D(S),
        .GATE(VPWR)
    );

    assign Y = (not_S & A) | (S & B);
endmodule