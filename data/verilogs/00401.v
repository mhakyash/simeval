module top_module (
    input clk,
    input reset,
    input [31:0] in,
    input [7:0] in2,
    output reg out
);

reg [31:0] bit_change;
reg [7:0] edge_detect;

detect_bit_change bit_change_module (
    .clk(clk),
    .reset(reset),
    .in(in),
    .out(bit_change)
);

detect_edge edge_detect_module (
    .clk(clk),
    .in(in2),
    .out(edge_detect)
);

or_gate or_gate_module (
    .in1(bit_change),
    .in2(edge_detect),
    .out(out)
);

always @(posedge clk) begin
    if (reset) begin
        out <= 0;
    end else begin
        out <= or_gate_module.out;
    end
end

endmodule

module detect_bit_change (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);

reg [31:0] prev_in;

always @(posedge clk) begin
    if (reset) begin
        prev_in <= 0;
    end else begin
        prev_in <= in;
    end
end

assign out = (prev_in ^ in) & ~in;

endmodule

module detect_edge (
    input clk,
    input [7:0] in,
    output reg [7:0] out
);

reg [7:0] prev_in;

always @(posedge clk) begin
    prev_in <= in;
end

assign out = (in ^ prev_in);

endmodule

module or_gate (
    input [31:0] in1,
    input [7:0] in2,
    output reg out
);

always @(*) begin
    out = |(in1 | {24'b0, in2});
end

endmodule