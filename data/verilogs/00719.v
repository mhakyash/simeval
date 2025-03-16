module ram_4x8(
    input clk,
    input [2:0] addr,
    input [3:0] din,
    input en,
    input we,
    output reg [3:0] dout
);

reg [3:0] memory [0:7];

always @(posedge clk) begin
    if (en) begin
        if (we) begin
            memory[addr] <= din;
        end else begin
            dout <= memory[addr];
        end
    end
end

endmodule