module pipeline_splitter(
    input wire [15:0] in,
    output wire [7:0] out_hi,
    output wire [7:0] out_lo
);

reg [7:0] stage1_out;
reg [7:0] stage2_out;

pipeline_stage1 stage1(.in(in), .out(stage1_out));
pipeline_stage2 stage2(.in(stage1_out), .out(stage2_out));

assign out_hi = stage2_out;
assign out_lo = stage1_out;

endmodule

module pipeline_stage1(
    input wire [15:0] in,
    output reg [7:0] out
);

always @(posedge clk) begin
    out <= in[15:8];
end

endmodule

module pipeline_stage2(
    input wire [7:0] in,
    output reg [7:0] out
);

always @(posedge clk) begin
    out <= in;
end

endmodule