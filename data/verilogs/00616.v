module twos_complement (
    in,
    out,
    CLK
);

    input  [3:0] in;
    output [3:0] out;
    input  CLK;

    wire    [3:0] temp;
    wire    [3:0] not_in;

    sky130_fd_sc_ms__dff dff0 (
        .D(in[0] ^ 1),
        .CLK(CLK),
        .Q(temp[0]),
        .Q_N()
    );

    sky130_fd_sc_ms__dff dff1 (
        .D(temp[0]),
        .CLK(CLK),
        .Q(temp[1]),
        .Q_N()
    );

    sky130_fd_sc_ms__dff dff2 (
        .D(temp[1]),
        .CLK(CLK),
        .Q(temp[2]),
        .Q_N()
    );

    sky130_fd_sc_ms__dff dff3 (
        .D(temp[2]),
        .CLK(CLK),
        .Q(temp[3]),
        .Q_N()
    );

    assign not_in = ~in;

    sky130_fd_sc_ms__xnor2 xnor0 (
        .A(in[3]),
        .B(1'b1),
        .Z(temp[3])
    );

    assign out = (in[3]) ? ~temp + 1 : temp;

endmodule