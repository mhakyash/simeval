module shift_register_4bit (
    input [3:0] data_in,
    input load,
    input clk,
    output reg [3:0] data_out
);

reg [3:0] stage1_data;
reg [3:0] stage2_data;
reg [3:0] stage3_data;
reg [3:0] stage4_data;

always @(posedge clk) begin
    if (load) begin
        stage1_data <= data_in;
        stage2_data <= stage1_data;
        stage3_data <= stage2_data;
        stage4_data <= stage3_data;
    end else begin
        stage1_data <= stage2_data;
        stage2_data <= stage3_data;
        stage3_data <= stage4_data;
        stage4_data <= data_in;
    end
end

assign data_out = stage1_data;

endmodule