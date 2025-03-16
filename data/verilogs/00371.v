module nand4 (
    input A,
    input B,
    input C,
    input D,
    output Y
);

    wire w1, w2, w3;
    
    nand2 n1(
        .A(A),
        .B(B),
        .Y(w1)
    );
    
    nand2 n2(
        .A(C),
        .B(D),
        .Y(w2)
    );
    
    nand2 n3(
        .A(w1),
        .B(w2),
        .Y(w3)
    );
    
    nand2 n4(
        .A(w3),
        .B(w3),
        .Y(Y)
    );

endmodule