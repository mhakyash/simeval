module seven_segment (
    input [3:0] data_in,
    output reg [6:0] seg_out
);

reg [3:0] stage1_out;
reg [3:0] stage2_out;
reg [3:0] stage3_out;

always @(posedge clk) begin
    stage1_out <= data_in;
end

always @(posedge clk) begin
    stage2_out <= stage1_out;
end

always @(posedge clk) begin
    stage3_out <= stage2_out;
end

always @(*) begin
    case(stage3_out)
        4'b0000: seg_out = 7'b1111110; // 0
        4'b0001: seg_out = 7'b0110000; // 1
        4'b0010: seg_out = 7'b1101101; // 2
        4'b0011: seg_out = 7'b1111001; // 3
        4'b0100: seg_out = 7'b0110011; // 4
        4'b0101: seg_out = 7'b1011011; // 5
        4'b0110: seg_out = 7'b1011111; // 6
        4'b0111: seg_out = 7'b1110000; // 7
        4'b1000: seg_out = 7'b1111111; // 8
        4'b1001: seg_out = 7'b1111011; // 9
        default: seg_out = 7'b0000000; // invalid input
    endcase
end

endmodule