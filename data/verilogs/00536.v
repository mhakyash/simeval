module counter(
    input clk,
    input rst,
    output reg [3:0] out
);

always @(posedge clk) begin
    if (rst) begin
        out <= 4'b0;
    end else begin
        out <= out + 1;
    end
end

endmodule