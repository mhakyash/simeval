module min_value (
    input [7:0] a, b, c, d,
    output reg [7:0] min
);

always @(*) begin
    if (a <= b && a <= c && a <= d)
        min = a;
    else if (b <= a && b <= c && b <= d)
        min = b;
    else if (c <= a && c <= b && c <= d)
        min = c;
    else
        min = d;
end

endmodule

module functional_module (
    input [3:0] counter_out,
    input [7:0] min_value_out,
    output reg [3:0] q
);

always @(*) begin
    q = counter_out - min_value_out[3:0];
end

endmodule

module top_module (
    input [7:0] a, b, c, d,
    input clk, reset,
    output [3:0] q
);

reg [3:0] counter;
wire [7:0] min_value_out;

min_value min_value_inst (
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .min(min_value_out)
);

functional_module func_inst (
    .counter_out(counter),
    .min_value_out(min_value_out),
    .q(q)
);

always @(posedge clk) begin
    if (reset)
        counter <= 4'b0000;
    else
        counter <= counter + 1;
end

endmodule