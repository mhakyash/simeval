module shift_left_register (
    input clk,
    input rst,
    input load,
    input shift,
    input [7:0] input_data,
    output reg [7:0] output_data
);

reg [7:0] stage1;
reg [7:0] stage2;

always @(posedge clk) begin
    if (rst) begin
        stage1 <= 8'b0;
        stage2 <= 8'b0;
    end
    else begin
        if (load) begin
            stage1 <= input_data;
            stage2 <= stage1;
        end
        else if (shift) begin
            stage1 <= stage2 << 1;
            stage2 <= stage1;
        end
    end
end

assign output_data = stage1;

endmodule