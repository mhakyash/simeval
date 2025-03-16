module four_bit_adder (output [3:0] S, CO, input [3:0] A, B, CI);
    wire c1, c2, c3;
    full_adder fa1(S[0], c1, A[0], B[0], CI);
    full_adder fa2(S[1], c2, A[1], B[1], c1);
    full_adder fa3(S[2], c3, A[2], B[2], c2);
    full_adder fa4(S[3], CO, A[3], B[3], c3);
endmodule

module full_adder (output sum, carry_out, input a, b, carry_in);
    assign sum = a ^ b ^ carry_in;
    assign carry_out = (a & b) | (a & carry_in) | (b & carry_in);
endmodule