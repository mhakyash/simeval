module dual_edge_ff (
    input clk,
    input d,
    output reg q
);

reg q_delayed;

always @(posedge clk) begin
    q_delayed <= q;
    q <= d;
end

always @(negedge clk) begin
    q <= q_delayed;
end

assign q = q_delayed;

endmodule

module top_module (
    input clk,
    input d,
    output q
);

dual_edge_ff ff (
    .clk(clk),
    .d(d),
    .q(q)
);

endmodule