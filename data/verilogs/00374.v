module sky130_fd_sc_hs__mux4_2 (
    X ,
    A0,
    A1,
    A2,
    A3,
    S0,
    S1
);

    output X ;
    input  A0;
    input  A1;
    input  A2;
    input  A3;
    input  S0;
    input  S1;

    // Voltage supply signals
    supply1 VPWR;
    supply0 VGND;

    wire X1, X2, X3;

    // Implementing the behavior of the multiplexer
    assign X1 = (S0 & S1) ? A3 : A2;
    assign X2 = (!S0 & S1) ? A1 : X1;
    assign X3 = (S0 & !S1) ? A2 : X2;
    assign X = (!S0 & !S1) ? A0 : X3;

endmodule