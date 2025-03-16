module dual_edge_triggered_ff (
    input clk,
    input d,
    output q
);

reg q1, q2;

always @(posedge clk) begin
    q1 <= d;
end

always @(negedge clk) begin
    q2 <= q1;
end

assign q = q2;

endmodule

module top_module (
    input clk,
    input d,
    output q
);

wire q_ff1, q_ff2;

dual_edge_triggered_ff ff1 (
    .clk(clk),
    .d(d),
    .q(q_ff1)
);

dual_edge_triggered_ff ff2 (
    .clk(clk),
    .d(q_ff1),
    .q(q_ff2)
);

assign q = q_ff2;

endmodule