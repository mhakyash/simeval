module register_adder (
    input clk,
    input reset,
    input [7:0] d1,
    input [7:0] d2,
    output [7:0] q
);

reg [7:0] reg1, reg2;

always @(negedge clk) begin
    if (reset) begin
        reg1 <= 8'h34;
        reg2 <= 8'h34;
    end else begin
        reg1 <= d1;
        reg2 <= d2;
    end
end

assign q = reg1 + reg2;

endmodule