module counter_module(
    input clk,
    input rst,
    input en,
    output reg [3:0] count
);

always @(posedge clk) begin
    if (rst) begin
        count <= 4'b0000;
    end else if (en) begin
        count <= count + 1;
    end
end

endmodule