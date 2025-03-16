module binary_counter (
    input clk,
    input reset,
    input enable,
    output reg [3:0] count
);

always @(posedge clk) begin
    if (reset) begin
        count <= 4'b0;
    end else if (enable) begin
        if (count == 4'b1111) begin
            count <= 4'b0;
        end else begin
            count <= count + 1;
        end
    end
end

endmodule