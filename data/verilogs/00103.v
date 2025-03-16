module ripple_carry_adder (
    input wire [3:0] a, b,
    output wire [3:0] sum,
    output wire cout,
    output wire overflow
);

    wire [3:0] c;
    assign c[0] = 1'b0;

    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) begin : adder
            full_adder fa(
                .a(a[i]),
                .b(b[i]),
                .cin(c[i]),
                .sum(sum[i]),
                .cout(c[i+1])
            );
        end
    endgenerate

    assign cout = c[4];
    assign overflow = (a[3] & b[3] & ~sum[3]) | (~a[3] & ~b[3] & sum[3]);

endmodule

module greater_than_9 (
    input wire [3:0] sum,
    output wire greater_than_9
);

    assign greater_than_9 = (sum > 4'b1001);

endmodule

module top_module (
    input wire [3:0] a, b,
    output wire [3:0] sum,
    output wire cout,
    output wire overflow,
    output wire greater_than_9
);

    ripple_carry_adder rca(
        .a(a),
        .b(b),
        .sum(sum),
        .cout(cout),
        .overflow(overflow)
    );

    greater_than_9 gto9(
        .sum(sum),
        .greater_than_9(greater_than_9)
    );

endmodule