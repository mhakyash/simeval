module binary_counter(
    input clk,
    input reset,
    output reg [3:0] counter_value,
    output reg reached_9
);

    always @(posedge clk) begin
        if (reset) begin
            counter_value <= 4'b0000;
            reached_9 <= 1'b0;
        end else begin
            counter_value <= counter_value + 1;
            if (counter_value == 4'b1001) begin
                reached_9 <= 1'b1;
            end else begin
                reached_9 <= 1'b0;
            end
        end
    end

endmodule