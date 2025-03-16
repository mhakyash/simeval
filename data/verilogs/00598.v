module byte_reverse (
    input [31:0] in,
    output [31:0] out
);
    assign out = {in[7:0], in[15:8], in[23:16], in[31:24]};
endmodule

module xor_gate (
    input [31:0] a,
    input [31:0] b,
    output [31:0] out
);
    assign out = a ^ b;
endmodule

module functional_module (
    input [31:0] byte_reverse_out,
    input [31:0] xor_gate_out,
    output [31:0] out
);
    assign out = byte_reverse_out ^ xor_gate_out;
endmodule

module output_select (
    input [31:0] byte_reverse_in,
    input [31:0] xor_gate_in,
    input select,
    output [31:0] out
);
    wire [31:0] byte_reverse_out;
    wire [31:0] xor_gate_out;

    byte_reverse byte_reverse_inst (
        .in(byte_reverse_in),
        .out(byte_reverse_out)
    );

    xor_gate xor_gate_inst (
        .a(xor_gate_in),
        .b(xor_gate_in),
        .out(xor_gate_out)
    );

    assign out = select ? byte_reverse_out : xor_gate_out;
endmodule

module top_module (
    input [31:0] in,
    input a,
    input b,
    input select,
    output [31:0] out
);
    wire [31:0] byte_reverse_out;
    wire [31:0] xor_gate_out;

    byte_reverse byte_reverse_inst (
        .in(in),
        .out(byte_reverse_out)
    );

    xor_gate xor_gate_inst (
        .a(a),
        .b(b),
        .out(xor_gate_out)
    );

    functional_module functional_inst (
        .byte_reverse_out(byte_reverse_out),
        .xor_gate_out(xor_gate_out),
        .out(out)
    );

    output_select output_select_inst (
        .byte_reverse_in(in),
        .xor_gate_in(xor_gate_out),
        .select(select),
        .out(byte_reverse_out)
    );
endmodule