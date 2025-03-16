module adder8(input [7:0] A, input [7:0] B, output [7:0] S);
    wire [3:0] S1, S2, S3;
    adder4 a1(.A(A[3:0]), .B(B[3:0]), .S(S1));
    adder4 a2(.A(A[7:4]), .B(B[7:4]), .S(S2));
    \$xor x1(.a(S1[3]), .b(S2[0]), .s(S3[0]));
    adder4 a3(.A({S1[2:0], S3[0]}), .B({S2[3:1], 1'b0}), .S({S3[3:1], S3[0]}));
    \$xor x2(.a(S1[3]), .b(S2[0]), .s(S3[0]));
    adder4 a4(.A({S1[2:0], S3[0]}), .B({S2[3:1], 1'b0}), .S({S3[3:1], S3[0]}));
    assign S = {S3, S2[3:0]};
endmodule