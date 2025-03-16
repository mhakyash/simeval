module four_input_module (
    Y ,
    A1,
    A2,
    B1,
    C1
);

    output Y ;
    input  A1;
    input  A2;
    input  B1;
    input  C1;

    // Voltage supply signals
    supply1 VPWR;
    supply0 VGND;
    supply1 VPB ;
    supply0 VNB ;

    sky130_fd_sc_hdll__o211ai base (
        .Y(Y),
        .A1(A1),
        .A2(A2),
        .B1(B1),
        .C1(C1)
    );

endmodule