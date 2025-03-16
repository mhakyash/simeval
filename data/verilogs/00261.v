module full_adder (
    input A,
    input B,
    input CIN,
    output S,
    output COUT
);

    assign S = A ^ B ^ CIN;
    assign COUT = (A & B) | (CIN & (A ^ B));

endmodule


module adder_4bit (
    input [3:0] A,
    input [3:0] B,
    input CIN,
    output [3:0] S,
    output COUT
);

    wire [3:0] c;
    full_adder fa0(A[0], B[0], CIN, S[0], c[0]);
    full_adder fa1(A[1], B[1], c[0], S[1], c[1]);
    full_adder fa2(A[2], B[2], c[1], S[2], c[2]);
    full_adder fa3(A[3], B[3], c[2], S[3], COUT);

endmodule