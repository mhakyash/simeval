module adder_8bit (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
);

    wire [8:0] c;
    wire [8:0] g;
    wire [8:0] p;
    wire [8:0] e;
    wire [8:0] f;

    assign g[0] = 1'b0;
    assign p[0] = 1'b0;

    generate
        genvar i;
        for (i = 1; i <= 8; i = i + 1) begin : gen
            assign g[i] = a[i-1] & b[i-1];
            assign p[i] = a[i-1] | b[i-1];
            assign e[i] = g[i-1] | (p[i-1] & e[i-1]);
            assign f[i] = p[i-1] & f[i-1];
            assign c[i] = g[i] | (p[i] & e[i]);
        end
    endgenerate

    assign s = {c[8], c[7:1] ^ f[8:2], p[0] ^ e[8]};
    assign overflow = e[8] ^ f[8];

endmodule

module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
);

    adder_8bit adder(.a(a), .b(b), .s(s), .overflow(overflow));

endmodule