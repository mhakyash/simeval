module binary_to_gray(
    input [3:0] binary_in,
    output [3:0] gray_out
);

assign gray_out[0] = binary_in[0];
assign gray_out[1] = binary_in[0] ^ binary_in[1];
assign gray_out[2] = binary_in[1] ^ binary_in[2];
assign gray_out[3] = binary_in[2] ^ binary_in[3];

endmodule