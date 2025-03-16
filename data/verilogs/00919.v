module ripple_carry_adder(
    input [3:0] A,
    input [3:0] B,
    input CI,
    output [3:0] S,
    output CO
);

    wire [3:0] C;

    ADDFX1 adder0(.A(A[0]), .B(B[0]), .CI(CI), .CO(C[0]), .S(S[0]));
    ADDFX1 adder1(.A(A[1]), .B(B[1]), .CI(C[0]), .CO(C[1]), .S(S[1]));
    ADDFX1 adder2(.A(A[2]), .B(B[2]), .CI(C[1]), .CO(C[2]), .S(S[2]));
    ADDFX1 adder3(.A(A[3]), .B(B[3]), .CI(C[2]), .CO(CO), .S(S[3]));

    assign C[0] = CI;
    assign C[1] = C[0] & C[1];
    assign C[2] = C[1] & C[2];

endmodule