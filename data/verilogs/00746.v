module or_gate (
    X   ,
    A   ,
    B   ,
    VPWR,
    VGND,
    VDD ,
    VPB ,
    VNB
);

    output X   ;
    input  A   ;
    input  B   ;
    input  VPWR;
    input  VGND;
    input  VDD ;
    output VPB ;
    output VNB ;
    
    sky130_fd_sc_lp__or2 base (
        .X(X),
        .A(A),
        .B(B),
        .VPWR(VPWR),
        .VGND(VGND),
        .VDD(VDD),
        .VPB(VPB),
        .VNB(VNB)
    );

endmodule