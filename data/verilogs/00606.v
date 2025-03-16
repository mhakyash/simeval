module top_module (
    input [7:0] in,
    output [8:0] out);

    wire [11:0] hamming_out;
    wire [8:0] parity_out;

    hamming_code_generator hamming (
        .in(in),
        .out(hamming_out)
    );

    parity_bit_generator parity (
        .in(hamming_out),
        .out(parity_out)
    );

    assign out = {parity_out[7:0], parity_out[8]};
endmodule

module hamming_code_generator (
    input [7:0] in,
    output [11:0] out
);

    assign out[0] = in[0];
    assign out[1] = in[1];
    assign out[2] = in[2];
    assign out[3] = in[3];
    assign out[4] = in[4];
    assign out[5] = in[5];
    assign out[6] = in[6];
    assign out[7] = in[7];

    assign out[8] = in[0] ^ in[1] ^ in[3];
    assign out[9] = in[0] ^ in[2] ^ in[3];
    assign out[10] = in[1] ^ in[2] ^ in[3];
    assign out[11] = in[0] ^ in[1] ^ in[2] ^ in[3];
endmodule

module parity_bit_generator (
    input [11:0] in,
    output [8:0] out
);

    assign out[0] = in[0] ^ in[1] ^ in[2] ^ in[3] ^ in[8] ^ in[10];
    assign out[1] = in[0] ^ in[1] ^ in[4] ^ in[5] ^ in[8] ^ in[11];
    assign out[2] = in[0] ^ in[2] ^ in[4] ^ in[6] ^ in[9] ^ in[11];
    assign out[3] = in[1] ^ in[2] ^ in[5] ^ in[6] ^ in[10] ^ in[11];
    assign out[4] = in[3] ^ in[4] ^ in[5] ^ in[6];
    assign out[5] = in[7] ^ in[8] ^ in[9] ^ in[10];
    assign out[6] = in[3] ^ in[4] ^ in[7] ^ in[8] ^ in[11];
    assign out[7] = in[5] ^ in[6] ^ in[9] ^ in[10] ^ in[11];
    assign out[8] = in[0] ^ in[1] ^ in[2] ^ in[3] ^ in[4] ^ in[5] ^ in[6] ^ in[7] ^ in[8] ^ in[9] ^ in[10] ^ in[11];
endmodule