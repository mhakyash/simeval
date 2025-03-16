module shift_register (
    input [0:0] in,
    output reg [2:0] out
);

reg [2:0] stage1_out;
reg [2:0] stage2_out;

always @(posedge clk) begin
    stage1_out <= in;
end

always @(posedge clk) begin
    stage2_out <= stage1_out;
end

always @(posedge clk) begin
    out <= stage2_out;
end

endmodule