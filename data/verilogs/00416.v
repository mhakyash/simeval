module logic_operation (
    Y  ,
    A  ,
    B  ,
    C  ,
    D
);

    output Y  ;
    input  A  ;
    input  B  ;
    input  C  ;
    input  D  ;

    // Voltage supply signals
    supply1 VPWR;
    supply0 VGND;
    supply1 VPB ;
    supply0 VNB ;

    // Implement AND gates
    wire AB;
    wire CD;
    and and1 (.Y(AB), .A(A), .B(B));
    and and2 (.Y(CD), .A(C), .B(D));

    // Implement OR gate
    or or1 (.Y(Y), .A(AB), .B(CD));

endmodule