module binary_counter (
    input reset,
    input load,
    input clk,
    input [3:0] data_in,
    output reg [3:0] count
);

reg [3:0] stage1_count;
reg [3:0] stage2_count;

always @(posedge clk) begin
    if (reset) begin
        stage1_count <= 4'b0;
        stage2_count <= 4'b0;
    end
    else if (load) begin
        stage1_count <= data_in;
        stage2_count <= data_in;
    end
    else begin
        stage1_count <= stage2_count;
        stage2_count <= stage2_count + 4'b1;
    end
end

assign count = stage1_count;

endmodule