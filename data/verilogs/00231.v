module comparator_2bit (
    A,
    B,
    X
);

    input [1:0] A;
    input [1:0] B;
    output X;

    assign X = (A >= B) ? 1'b1 : 1'b0;

    // Voltage supply signals
    supply1 VPWR;
    supply0 VGND;
    supply1 VPB ;
    supply0 VNB ;

endmodule