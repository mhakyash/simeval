module counter_async_reset(
    input clk,
    input reset,
    output reg [3:0] count
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count <= 4'b0000;
        end else begin
            count <= count + 1;
        end
    end

endmodule