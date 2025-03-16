module top_module (
    input clk,
    input Up,
    input Down,
    output reg [3:0] Q
);

reg [2:0] lfsr_out;
reg [3:0] up_down_out;
wire xor_out;

lfsr_3bit lfsr_inst (
    .CLK(clk),
    .Q0(lfsr_out[0]),
    .Q1(lfsr_out[1]),
    .Q2(lfsr_out[2])
);

up_down_counter_4bit up_down_inst (
    .clk(clk),
    .Up(Up),
    .Down(Down),
    .Q(up_down_out)
);

xor_gate xor_inst (
    .input_values({lfsr_out[2], lfsr_out[1], lfsr_out[0], up_down_out[0]}),
    .xor_output(xor_out)
);

always @(posedge clk) begin
    if (xor_out) begin
        Q <= up_down_out;
    end else begin
        Q <= lfsr_out;
    end
end

endmodule

module lfsr_3bit (
    input CLK,
    output reg Q0,
    output reg Q1,
    output reg Q2
);

always @(posedge CLK) begin
    Q0 <= Q1;
    Q1 <= Q2;
    Q2 <= Q0 ^ Q1;
end

endmodule

module up_down_counter_4bit (
    input clk,
    input Up,
    input Down,
    output reg [3:0] Q
);

always @(posedge clk) begin
    if (Up) begin
        Q <= Q + 1;
    end else if (Down) begin
        Q <= Q - 1;
    end
end

endmodule

module xor_gate (
    input [2:0] input_values,
    output xor_output
);

assign xor_output = ^input_values;

endmodule