module counter_4bit_sync_reset (
    input clk,
    input reset,
    input enable,
    output [3:0] count
);

reg [3:0] count_reg;

always @(posedge clk) begin
    if (reset) begin
        count_reg <= 4'b0000;
    end else if (enable) begin
        count_reg <= count_reg + 1;
    end
end

assign count = count_reg;

endmodule