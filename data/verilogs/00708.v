module counter(
    clk,
    reset,
    count
);
    input clk, reset;
    output reg [3:0] count;

    always @(posedge clk or negedge reset) begin
        if (!reset) begin
            count <= 4'b0;
        end else begin
            count <= count + 1;
        end
    end

endmodule