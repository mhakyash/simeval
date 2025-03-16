module FULL_ADDER(A, B, Cin, Sum, Cout);
input A, B, Cin;
output Sum, Cout;

wire w1, w2, w3;

xor(w1, A, B);
xor(Sum, Cin, w1);
and(w2, A, B);
and(w3, w1, Cin);
or(Cout, w2, w3);

endmodule

module ADD4(A, B, Cin, Sum, Cout);
input [3:0] A, B;
input Cin;
output [3:0] Sum;
output Cout;

wire c1, c2, c3;
FULL_ADDER fa1(A[0], B[0], Cin, Sum[0], c1);
FULL_ADDER fa2(A[1], B[1], c1, Sum[1], c2);
FULL_ADDER fa3(A[2], B[2], c2, Sum[2], c3);
FULL_ADDER fa4(A[3], B[3], c3, Sum[3], Cout);

endmodule