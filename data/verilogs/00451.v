module rotator(
    input clk,
    input reset,
    input load,
    input [1:0] ena,
    input [99:0] in,
    output reg [99:0] q
);

always @(posedge clk, posedge reset) begin
    if (reset) begin
        q <= 100'b0;
    end else if (load) begin
        q <= in;
    end else if (ena[0]) begin
        q <= {q[98:0], q[99]};
    end else if (ena[1]) begin
        q <= {q[1:99], q[0]};
    end
end

endmodule

module bdd_circuit(
    input [99:0] in,
    output out_or,
    output out_xor,
    output out_and
);

assign out_or = |in;
assign out_xor = ^in;
assign out_and = &in;

endmodule

module bitwise_or(
    input [99:0] in1,
    input [99:0] in2,
    output [99:0] out
);

assign out = in1 | in2;

endmodule

module top_module(
    input clk,
    input reset,
    input load,
    input [1:0] ena,
    input [99:0] in,
    output out_or,
    output out_xor,
    output out_and,
    output reg [99:0] q
);

rotator rotator_inst(
    .clk(clk),
    .reset(reset),
    .load(load),
    .ena(ena),
    .in(in),
    .q(q)
);

bdd_circuit bdd_circuit_inst(
    .in(q),
    .out_or(out_or),
    .out_xor(out_xor),
    .out_and(out_and)
);

bitwise_or bitwise_or_inst(
    .in1(q),
    .in2({out_or, out_xor, out_and}),
    .out(out)
);

endmodule