module pipelined_mux (
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
reg [3:0] stage4_out;
reg [3:0] stage5_out;
reg [3:0] stage6_out;

always @(*) begin
    case(sel)
        0: stage1_out = data0;
        1: stage1_out = data1;
        2: stage1_out = data2;
        3: stage1_out = data3;
        4: stage1_out = data4;
        5: stage1_out = data5;
        default: stage1_out = stage6_out;
    endcase
end

always @(*) begin
    stage2_out = stage1_out;
end

always @(*) begin
    stage3_out = stage2_out;
end

always @(*) begin
    stage4_out = stage3_out;
end

always @(*) begin
    stage5_out = stage4_out;
end

always @(*) begin
    stage6_out = stage5_out;
end

assign out = stage6_out;

endmodule