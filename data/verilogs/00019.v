module bcd_counter (
    input clk,
    input reset,   // Synchronous active-high reset
    output reg [3:1] ena,
    output reg [15:0] q
);

reg [3:0] count;

always @(posedge clk) begin
    if (reset) begin
        count <= 0;
        ena <= 3'b000;
    end else begin
        count <= count + 1;
        ena <= {ena[1:0], 1'b1};
    end
end

assign q[3:0] = count % 10;
assign q[7:4] = (count / 10) % 10;
assign q[11:8] = (count / 100) % 10;
assign q[15:12] = (count / 1000) % 10;

endmodule

module top_module (
    input clk,
    input reset,   // Synchronous active-high reset
    output [3:1] ena,
    output [15:0] q
);

bcd_counter counter (
    .clk(clk),
    .reset(reset),
    .ena(ena),
    .q(q)
);

endmodule