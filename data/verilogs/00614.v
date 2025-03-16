module pipelined_adder(
    input [99:0] a,
    input [99:0] b,
    input cin,
    output [99:0] sum,
    output cout
);

wire [99:0] p, g, c;

assign p = a ^ b;
assign g = a & b;
assign c[0] = cin;

genvar i;

generate
    for (i = 1; i < 100; i = i + 1) begin : carry_lookahead
        assign c[i] = g[i-1] | (p[i-1] & c[i-1]);
    end
endgenerate

genvar j;

generate
    for (j = 0; j < 99; j = j + 1) begin : pipeline
        wire [99:0] s;
        wire co;

        assign s = a[j+1:0] + b[j+1:0] + c[j+1];
        assign co = c[j+1];

        assign a[j+1] = s[0];
        assign b[j+1] = s[0];

        assign sum[j] = s[1:0];
        assign c[j] = co;
    end
endgenerate

assign sum[99] = a[99] ^ b[99] ^ cin;
assign cout = c[99];

endmodule