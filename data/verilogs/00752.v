module OR4B(
    input A,
    input B,
    input C,
    input D_N,
    input VPWR,
    input VGND,
    input VPB,
    input VNB,
    output reg X
);

    assign X = A | B | C | D_N;

endmodule