module top_module(
    input [3:0] binary_in, // 4-bit binary input
    output [3:0] final_out // 4-bit output from the functional module
);

    wire [3:0] gray_out;
    wire [3:0] xor_out;

    gray_code_converter gray_converter(
        .binary_in(binary_in),
        .gray_out(gray_out)
    );

    xor_gate xor(
        .a(binary_in),
        .b(gray_out),
        .out(xor_out)
    );

    functional_module func(
        .gray_in(gray_out),
        .xor_in(xor_out),
        .final_out(final_out)
    );

endmodule

module gray_code_converter(
    input [3:0] binary_in, // 4-bit binary input
    output [3:0] gray_out // 4-bit Gray code output
);

    assign gray_out[0] = binary_in[0];
    assign gray_out[1] = binary_in[0] ^ binary_in[1];
    assign gray_out[2] = binary_in[1] ^ binary_in[2];
    assign gray_out[3] = binary_in[2] ^ binary_in[3];

endmodule

module xor_gate(
    input a,
    input b,
    output reg out
);

    always @ (a, b)
        out <= a ^ b;

endmodule

module functional_module(
    input [3:0] gray_in, // 4-bit Gray code input
    input [3:0] xor_in, // 4-bit XOR gate output input
    output [3:0] final_out // 4-bit output from the functional module
);

    assign final_out = gray_in ^ xor_in;

endmodule