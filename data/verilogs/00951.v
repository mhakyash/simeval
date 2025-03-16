module nand_mux_4to1 (
    input [3:0] A,
    input [1:0] S,
    output reg out
);

wire nand1, nand2, nand3, nand4, nand5, nand6;

assign nand1 = ~(S[1] & S[0]);
assign nand2 = ~(S[1] & ~S[0]);
assign nand3 = ~(~S[1] & S[0]);
assign nand4 = ~(~S[1] & ~S[0]);

assign nand5 = ~(nand1 & A[0] & A[1]);
assign nand6 = ~(nand2 & A[1] & A[2]);

assign out = ~(nand3 & A[2] & A[3]) & ~(nand4 & A[3] & A[0]) & ~(nand5) & ~(nand6);

endmodule