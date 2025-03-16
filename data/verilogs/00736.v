module shift_register (
    input wire clk,
    input wire reset,
    input wire [3:0] si,
    output wire [3:0] po,
    output wire so
);

    wire [3:0] q;
    wire [3:0] q_n;

    sky130_fd_sc_hd__sdfbbp_1 ff (
        .Q(q[0]),
        .Q_N(q_n[0]),
        .D(si[0]),
        .CLK(clk),
        .SET_B(reset),
        .RESET_B(reset)
    );

    sky130_fd_sc_hd__sdfbbp_1 ff1 (
        .Q(q[1]),
        .Q_N(q_n[1]),
        .D(q[0]),
        .CLK(clk),
        .SET_B(reset),
        .RESET_B(reset)
    );

    sky130_fd_sc_hd__sdfbbp_1 ff2 (
        .Q(q[2]),
        .Q_N(q_n[2]),
        .D(q[1]),
        .CLK(clk),
        .SET_B(reset),
        .RESET_B(reset)
    );

    sky130_fd_sc_hd__sdfbbp_1 ff3 (
        .Q(q[3]),
        .Q_N(q_n[3]),
        .D(q[2]),
        .CLK(clk),
        .SET_B(reset),
        .RESET_B(reset)
    );

    assign po = q;
    assign so = q_n[3];

endmodule