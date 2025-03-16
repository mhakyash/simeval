module binary_adder_4bit(
    input [3:0] A, B,
    input Cin, Clock,
    output [3:0] Sum,
    output Cout
);

    wire [3:0] xor_out, and_out;
    wire [2:0] carry_out;
    
    // Full adder for the least significant bit
    full_adder fa0(
        .A(A[0]), .B(B[0]), .Cin(Cin),
        .Sum(xor_out[0]), .Cout(carry_out[0])
    );
    
    // Full adders for the remaining bits
    full_adder fa1(
        .A(A[1]), .B(B[1]), .Cin(carry_out[0]),
        .Sum(xor_out[1]), .Cout(carry_out[1])
    );
    
    full_adder fa2(
        .A(A[2]), .B(B[2]), .Cin(carry_out[1]),
        .Sum(xor_out[2]), .Cout(carry_out[2])
    );
    
    full_adder fa3(
        .A(A[3]), .B(B[3]), .Cin(carry_out[2]),
        .Sum(xor_out[3]), .Cout(Cout)
    );
    
    // Bitwise AND for the carry-out
    and and0(
        .A(carry_out[0]), .B(carry_out[1]),
        .Z(and_out[0])
    );
    
    and and1(
        .A(carry_out[1]), .B(carry_out[2]),
        .Z(and_out[1])
    );
    
    and and2(
        .A(carry_out[0]), .B(carry_out[2]),
        .Z(and_out[2])
    );
    
    // Output the sum
    assign Sum = xor_out;
    
endmodule

// Full adder module
module full_adder(
    input A, B, Cin,
    output Sum, Cout
);

    wire xor_out, and_out1, and_out2;
    
    // XOR gate for the sum
    xor xor0(
        .A(A), .B(B),
        .Z(xor_out)
    );
    
    // AND gates for the carry
    and and1(
        .A(A), .B(B),
        .Z(and_out1)
    );
    
    and and2(
        .A(xor_out), .B(Cin),
        .Z(and_out2)
    );
    
    // OR gate for the carry
    or or0(
        .A(and_out1), .B(and_out2),
        .Z(Cout)
    );
    
    // Output the sum
    assign Sum = xor_out;
    
endmodule