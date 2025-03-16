module bin2gray(
    input [3:0] bin,
    output [3:0] gray
);

wire w1, w2, w3;

assign w1 = bin[0] ^ bin[1];
assign w2 = bin[1] ^ bin[2];
assign w3 = bin[2] ^ bin[3];

assign gray[0] = bin[0];
assign gray[1] = w1;
assign gray[2] = w2 ^ w1;
assign gray[3] = w3 ^ w2 ^ bin[3];

endmodule