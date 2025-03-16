module xor3_1 (
    X   ,
    A   ,
    B   ,
    C   ,
    VPWR,
    VGND,
    VPB ,
    VNB
);

    output X   ;
    input  A   ;
    input  B   ;
    input  C   ;
    input  VPWR;
    input  VGND;
    input  VPB ;
    input  VNB ;
    
    // The following code snippet performs the XOR operation between three inputs
    // Fill in the missing parts to complete the module
    
    wire ab = A ^ B;
    wire bc = B ^ C;
    wire ca = C ^ A;
    
    assign X = ab ^ ca;
    
    sky130_fd_sc_ls__xor2 base1 (
        .X(ab),
        .A(A),
        .B(B),
        .VPWR(VPWR),
        .VGND(VGND),
        .VPB(VPB),
        .VNB(VNB)
    );
    
    sky130_fd_sc_ls__xor2 base2 (
        .X(bc),
        .A(B),
        .B(C),
        .VPWR(VPWR),
        .VGND(VGND),
        .VPB(VPB),
        .VNB(VNB)
    );
    
    sky130_fd_sc_ls__xor2 base3 (
        .X(ca),
        .A(C),
        .B(A),
        .VPWR(VPWR),
        .VGND(VGND),
        .VPB(VPB),
        .VNB(VNB)
    );

endmodule