module counter (
    input clk,
    input rst,
    output reg [3:0] count
);

always @(posedge clk) begin
    if (rst) begin
        count <= 0;
    end else if (count == 15) begin
        count <= 0;
    end else begin
        count <= count + 1;
    end
end

endmodule