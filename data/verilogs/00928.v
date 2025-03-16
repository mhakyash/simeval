module top_module (
    input clk,
    input [7:0] d,
    input sel_b1,
    input sel_b2,
    output reg out_always
);

reg [7:0] flip_flop [0:7];
wire mux_out;

// D flip-flops
always @(negedge clk) begin
    flip_flop[0] <= d[0];
    flip_flop[1] <= d[1];
    flip_flop[2] <= d[2];
    flip_flop[3] <= d[3];
    flip_flop[4] <= d[4];
    flip_flop[5] <= d[5];
    flip_flop[6] <= d[6];
    flip_flop[7] <= d[7];
end

// 2-to-1 multiplexer
assign mux_out = (sel_b1 & sel_b2) ? flip_flop[1] : flip_flop[0];

// Output always connected to mux_out
always @(posedge clk) begin
    out_always <= mux_out;
end

endmodule