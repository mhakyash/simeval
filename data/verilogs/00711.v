module rising_edge_detector (
    input clk,
    input reset,
    input [31:0] in,
    output reg [31:0] out
);

reg [31:0] pipeline_reg [0:2];

always @(posedge clk) begin
    if (reset) begin
        pipeline_reg[0] <= 0;
        pipeline_reg[1] <= 0;
        pipeline_reg[2] <= 0;
        out <= 0;
    end else begin
        pipeline_reg[0] <= in;
        pipeline_reg[1] <= pipeline_reg[0];
        pipeline_reg[2] <= pipeline_reg[1];
        out <= pipeline_reg[0] & ~pipeline_reg[1] & pipeline_reg[2];
    end
end

endmodule

module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);

rising_edge_detector detector (
    .clk(clk),
    .reset(reset),
    .in(in),
    .out(out)
);

endmodule