module clk_div (
    input clk_in,
    input reset,
    output reg clk_out
);

reg [24:0] counter;

always @(posedge clk_in or posedge reset) begin
    if (reset) begin
        counter <= 0;
        clk_out <= 0;
    end else begin
        counter <= counter + 1;
        if (counter == 12499999) begin
            counter <= 0;
            clk_out <= ~clk_out;
        end
    end
end

endmodule