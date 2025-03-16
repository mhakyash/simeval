module adder(A, B, Cin, S, Cout);
    input [3:0] A, B;
    input Cin;
    output [3:0] S;
    output Cout;

    wire c1, c2, c3;

    full_adder fa0(A[0], B[0], Cin, S[0], c1);
    full_adder fa1(A[1], B[1], c1, S[1], c2);
    full_adder fa2(A[2], B[2], c2, S[2], c3);
    full_adder fa3(A[3], B[3], c3, S[3], Cout);
endmodule