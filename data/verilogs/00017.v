module barrel_shifter (
    input [3:0] data,
    input shift_left,
    input shift_right,
    input rotate_right,
    output reg [3:0] shifted_data
);

reg [3:0] stage1_data;
reg [3:0] stage2_data;

always @(*) begin
    stage1_data = shift_left ? {data[2:0], 1'b0} : {1'b0, data[3:1]};
end

always @(*) begin
    stage2_data = shift_right ? {1'b0, stage1_data[3:1]} : (rotate_right ? {stage1_data[0], stage1_data[3:1]} : stage1_data);
end

assign shifted_data = stage2_data;

endmodule