module top_module(
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor,
    output [3:0] final_output
);

wire and1, and2, and3;
wire or1, or2, or3;
wire xor1, xor2, xor3;

andgate and_1(in[0], in[1], and1);
andgate and_2(in[2], in[3], and2);
andgate and_3(and1, and2, and3);

orgate or_1(in[0], in[1], or1);
orgate or_2(in[2], in[3], or2);
orgate or_3(or1, or2, or3);

xorgate xor_1(in[0], in[1], xor1);
xorgate xor_2(in[2], in[3], xor2);
xorgate xor_3(xor1, xor2, xor3);

ripple_carry_adder adder(and3, or3, 1'b0, final_output);

assign out_and = and3;
assign out_or = or3;
assign out_xor = xor3;

endmodule

module andgate(input a, input b, output y);
    assign y = a & b;
endmodule

module orgate(input a, input b, output y);
    assign y = a | b;
endmodule

module xorgate(input a, input b, output y);
    assign y = a ^ b;
endmodule

module ripple_carry_adder(input [3:0] A, input [3:0] B, input cin, output [3:0] S);
    wire [3:0] C;

    full_adder fa0(A[0], B[0], cin, S[0], C[0]);
    full_adder fa1(A[1], B[1], C[0], S[1], C[1]);
    full_adder fa2(A[2], B[2], C[1], S[2], C[2]);
    full_adder fa3(A[3], B[3], C[2], S[3], C[3]);

endmodule

module full_adder(input a, input b, input cin, output sum, output cout);
    assign {cout, sum} = a + b + cin;
endmodule