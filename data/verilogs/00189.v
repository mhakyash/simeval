module MUX4(input [3:0] I, input [1:0] S, output O);

wire w1, w2, w3;

MUXF7 m1(.I0(I[0]), .I1(I[1]), .S(S[0]), .O(w1));
MUXF7 m2(.I0(I[2]), .I1(I[3]), .S(S[0]), .O(w2));
MUXF7 m3(.I0(w1), .I1(w2), .S(S[1]), .O(w3));
assign O = w3;

endmodule