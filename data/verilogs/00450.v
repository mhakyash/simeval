module byte_reverse_xor(
    input [31:0] in,
    output reg out
);

reg [7:0] byte0, byte1, byte2, byte3;

// Byte reversal module
assign byte0 = in[7:0];
assign byte1 = in[15:8];
assign byte2 = in[23:16];
assign byte3 = in[31:24];

assign out1 = {byte0, byte1, byte2, byte3};

// XOR gate
assign out = in1 ^ in2;

endmodule