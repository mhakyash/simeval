module four_bit_adder (
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] S,
    output Cout
);

    wire c1, c2, c3;
    
    // First bit
    xor(S[0], A[0], B[0], Cin);
    and(c1, A[0], B[0]);
    and(c2, A[0], Cin);
    and(c3, B[0], Cin);
    or(Cout, c1, c2, c3);
    
    // Second bit
    xor(S[1], A[1], B[1], c1);
    and(c1, A[1], B[1]);
    and(c2, A[1], c1);
    and(c3, B[1], c1);
    or(c1, c2, c3);
    
    // Third bit
    xor(S[2], A[2], B[2], c1);
    and(c1, A[2], B[2]);
    and(c2, A[2], c1);
    and(c3, B[2], c1);
    or(c1, c2, c3);
    
    // Fourth bit
    xor(S[3], A[3], B[3], c1);
    and(c1, A[3], B[3]);
    and(c2, A[3], c1);
    and(c3, B[3], c1);
    or(Cout, c1, c2, c3, Cout);
    
endmodule