module counter_8bit (
    input clk,
    input reset,
    input enable,
    output reg [7:0] count
);

reg [7:0] count_reg1, count_reg2;

always @(posedge clk) begin
    if (reset) begin
        count_reg1 <= 8'b0;
        count_reg2 <= 8'b0;
    end else if (enable) begin
        count_reg1 <= count_reg2 + 1;
        count_reg2 <= count_reg1;
    end
end

assign count = count_reg2;

endmodule