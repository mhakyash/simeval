module mux6to1_pipeline (
    input [2:0] sel,
    input [3:0] data0,
    input [3:0] data1,
    input [3:0] data2,
    input [3:0] data3,
    input [3:0] data4,
    input [3:0] data5,
    output reg [3:0] out
);

reg [3:0] stage1_out;
reg [3:0] stage2_out;
reg [3:0] stage3_out;

always @(*) begin
    case(sel)
        3'b000: stage1_out = data0;
        3'b001: stage1_out = data1;
        3'b010: stage1_out = data2;
        3'b011: stage1_out = data3;
        3'b100: stage1_out = data4;
        3'b101: stage1_out = data5;
        default: stage1_out = {data5[3], data5[3], data5[3], data5[3]};
    endcase
end

always @(*) begin
    case(sel)
        3'b000: stage2_out = stage1_out;
        3'b001: stage2_out = stage1_out;
        3'b010: stage2_out = stage1_out;
        3'b011: stage2_out = stage1_out;
        3'b100: stage2_out = stage1_out;
        3'b101: stage2_out = stage1_out;
        default: stage2_out = {stage1_out[3], stage1_out[3], stage1_out[3], stage1_out[3]};
    endcase
end

always @(*) begin
    case(sel)
        3'b000: stage3_out = stage2_out;
        3'b001: stage3_out = stage2_out;
        3'b010: stage3_out = stage2_out;
        3'b011: stage3_out = stage2_out;
        3'b100: stage3_out = stage2_out;
        3'b101: stage3_out = stage2_out;
        default: stage3_out = {stage2_out[3], stage2_out[3], stage2_out[3], stage2_out[3]};
    endcase
end

assign out = stage3_out;

endmodule