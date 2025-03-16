module my_DFF(
    input D,
    input CLK,
    input nSR,
    input SRMODE,
    output reg Q
);

    wire nRST;
    assign nRST = ~nSR;

    GP_DFFSR #(
        .INIT(1'bX),
        .SRMODE(SRMODE)
    ) myDFF (
        .D(D),
        .CLK(CLK),
        .nSR(nRST),
        .Q(Q)
    );

endmodule