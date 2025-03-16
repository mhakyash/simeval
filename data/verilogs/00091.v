module adder(
    input clk,
    input rst,
    input [7:0] a,
    input [7:0] b,
    input cin,
    output reg [7:0] sum,
    output reg cout
);

always @(posedge clk) begin
    if (rst) begin
        sum <= 8'b0;
        cout <= 1'b0;
    end else begin
        {cout, sum} <= a + b + cin;
    end
end

endmodule