module fifo_queue
#(
    parameter DEPTH = 8
)
(
    input sys_clk_i,
    input sys_reset_i,
    input [7:0] d_i,
    input we_i,
    output [7:0] q_o,
    output full_o,
    output empty_o,
    input wp_inc_i,
    input rp_inc_i
);

reg [7:0] fifo [DEPTH-1:0];
reg [3:0] wp;
reg [3:0] rp;
wire data_available_o = (wp != rp);
wire [3:0] next_wp = wp + 1;
wire [3:0] next_rp = rp + 1;

assign full_o = (next_wp == rp) ? 1'b1 : 1'b0;
assign empty_o = (wp == rp) ? 1'b1 : 1'b0;
assign q_o = fifo[rp];

always @(posedge sys_clk_i) begin
    if (sys_reset_i) begin
        wp <= 4'b0;
        rp <= 4'b0;
    end else begin
        if (we_i && ~full_o) begin
            fifo[wp] <= d_i;
            wp <= next_wp;
        end
        if (rp_inc_i && data_available_o) begin
            rp <= next_rp;
        end
        if (wp_inc_i && ~full_o) begin
            wp <= next_wp;
        end
    end
end

endmodule