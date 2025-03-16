module popcount_pipeline (
    input [254:0] in,
    output [7:0] out
);

reg [7:0] count_reg;
reg [7:0] count_reg_next;
reg [7:0] count_reg_final;

wire [7:0] stage1_out;
wire [7:0] stage2_out;
wire [7:0] stage3_out;
wire [7:0] stage4_out;
wire [7:0] stage5_out;
wire [7:0] stage6_out;
wire [7:0] stage7_out;

assign stage1_out = in[7:0];
assign stage2_out = stage1_out + in[15:8];
assign stage3_out = stage2_out + in[23:16];
assign stage4_out = stage3_out + in[31:24];
assign stage5_out = stage4_out + in[39:32];
assign stage6_out = stage5_out + in[47:40];
assign stage7_out = stage6_out + in[55:48];

always @ (posedge clk) begin
    count_reg_next <= stage7_out + count_reg;
end

always @ (posedge clk) begin
    count_reg <= count_reg_next;
end

always @ (posedge clk) begin
    count_reg_final <= count_reg_next + count_reg;
end

assign out = count_reg_final;

endmodule