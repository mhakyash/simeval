module xnor3_module(
    A,
    B,
    C,
    X
);

    output X;
    input A;
    input B;
    input C;

    // Voltage supply signals
    supply1 VPWR;
    supply0 VGND;
    supply1 VPB ;
    supply0 VNB ;

    assign X = ~(A^B^C);

endmodule