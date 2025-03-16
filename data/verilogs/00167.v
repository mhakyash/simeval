module carry_lookahead_adder (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
);

wire [7:0] g;
wire [7:0] p;
wire [7:0] c;

assign g = a & b;
assign p = a ^ b;
assign c[0] = 0;
assign c[1] = g[0] | (p[0] & c[0]);
assign c[2] = g[1] | (p[1] & c[1]);
assign c[3] = g[2] | (p[2] & c[2]);
assign c[4] = g[3] | (p[3] & c[3]);
assign c[5] = g[4] | (p[4] & c[4]);
assign c[6] = g[5] | (p[5] & c[5]);
assign c[7] = g[6] | (p[6] & c[6]);
assign overflow = g[7] | (p[7] & c[7]);

assign s = a + b + c;

endmodule

module absolute_difference (
    input [7:0] s,
    input overflow,
    output [7:0] abs_diff
);

reg [7:0] a_minus_b;
reg [7:0] b_minus_a;

always @(*) begin
    if (overflow) begin
        abs_diff = 8'b0;
    end else if (s > 8'b00000000) begin
        a_minus_b = s - b;
        abs_diff = a_minus_b;
    end else begin
        b_minus_a = b - s;
        abs_diff = b_minus_a;
    end
end

endmodule

module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow,
    output [7:0] abs_diff
);

carry_lookahead_adder adder(.a(a), .b(b), .s(s), .overflow(overflow));
absolute_difference diff(.s(s), .overflow(overflow), .abs_diff(abs_diff));

endmodule