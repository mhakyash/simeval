module synchronous_counter(
    input clk,
    input rst,
    input en,
    output reg [3:0] q
);

    always @(posedge clk) begin
        if (rst) begin
            q <= 4'b0000;
        end
        else if (en) begin
            q <= q + 1;
        end
    end

endmodule