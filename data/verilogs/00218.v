module my_fifo (
    aclr,
    clock,
    data,
    rdreq,
    wrreq,
    q,
    usedw
);

    input aclr;
    input clock;
    input [33:0] data;
    input rdreq;
    input wrreq;
    output [33:0] q;
    output [9:0] usedw;

    wire [9:0] sub_wire0;
    wire [33:0] sub_wire1;

    scfifo scfifo_component (
        .aclr(aclr),
        .clock(clock),
        .data(data),
        .rdreq(rdreq),
        .wrreq(wrreq),
        .q(sub_wire1),
        .usedw(sub_wire0)
    );

    assign q = sub_wire1;
    assign usedw = sub_wire0;

endmodule