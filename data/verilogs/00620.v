module decoder (
    input [3:0] A,
    output [15:0] Y
);

wire [15:0] not_A;
assign not_A = ~A;

assign Y[0] = not_A[3] & not_A[2] & not_A[1] & not_A[0];
assign Y[1] = not_A[3] & not_A[2] & not_A[1] & A[0];
assign Y[2] = not_A[3] & not_A[2] & A[1] & not_A[0];
assign Y[3] = not_A[3] & not_A[2] & A[1] & A[0];
assign Y[4] = not_A[3] & A[2] & not_A[1] & not_A[0];
assign Y[5] = not_A[3] & A[2] & not_A[1] & A[0];
assign Y[6] = not_A[3] & A[2] & A[1] & not_A[0];
assign Y[7] = not_A[3] & A[2] & A[1] & A[0];
assign Y[8] = A[3] & not_A[2] & not_A[1] & not_A[0];
assign Y[9] = A[3] & not_A[2] & not_A[1] & A[0];
assign Y[10] = A[3] & not_A[2] & A[1] & not_A[0];
assign Y[11] = A[3] & not_A[2] & A[1] & A[0];
assign Y[12] = A[3] & A[2] & not_A[1] & not_A[0];
assign Y[13] = A[3] & A[2] & not_A[1] & A[0];
assign Y[14] = A[3] & A[2] & A[1] & not_A[0];
assign Y[15] = A[3] & A[2] & A[1] & A[0];

endmodule