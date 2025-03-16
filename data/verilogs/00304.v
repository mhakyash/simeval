module second_largest (
    input [7:0] in0,
    input [7:0] in1,
    input [7:0] in2,
    input [7:0] in3,
    input [7:0] in4,
    input [7:0] in5,
    input [7:0] in6,
    input [7:0] in7,
    output reg [7:0] out
);

reg [7:0] stage1_out0, stage1_out1, stage1_out2, stage1_out3;
reg [7:0] stage2_out0, stage2_out1;
reg [7:0] stage3_out0;

// Stage 1
// Compare adjacent pairs of inputs and output the larger value
always @(*) begin
    if (in0 > in1) begin
        stage1_out0 = in0;
        stage1_out1 = in1;
    end else begin
        stage1_out0 = in1;
        stage1_out1 = in0;
    end
    
    if (in2 > in3) begin
        stage1_out2 = in2;
        stage1_out3 = in3;
    end else begin
        stage1_out2 = in3;
        stage1_out3 = in2;
    end
    
    if (in4 > in5) begin
        in4 = stage1_out0;
        in5 = stage1_out1;
        stage1_out0 = in4;
        stage1_out1 = in5;
    end
    
    if (in6 > in7) begin
        in6 = stage1_out2;
        in7 = stage1_out3;
        stage1_out2 = in6;
        stage1_out3 = in7;
    end
end

// Stage 2
// Compare adjacent pairs of outputs from Stage 1 and output the larger value
always @(*) begin
    if (stage1_out0 > stage1_out2) begin
        stage2_out0 = stage1_out0;
        stage2_out1 = stage1_out2;
    end else begin
        stage2_out0 = stage1_out2;
        stage2_out1 = stage1_out0;
    end
    
    if (stage1_out1 > stage1_out3) begin
        stage1_out1 = stage2_out1;
        stage1_out3 = stage2_out0;
        stage2_out0 = stage1_out1;
        stage2_out1 = stage1_out3;
    end
end

// Stage 3
// Output the second largest value
always @(*) begin
    if (stage2_out0 > stage2_out1) begin
        out = stage2_out1;
    end else begin
        out = stage2_out0;
    end
end

endmodule