module up_counter_2bit (
    input clk,
    input reset,
    input enable,
    output reg [1:0] count
);

    always @(posedge clk, posedge reset) begin
        if (reset) begin
            count <= 2'b00;
        end else if (enable) begin
            count <= count + 1;
        end
    end

endmodule