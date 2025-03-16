module four_bit_adder(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] S,
    output Cout
);

    wire [3:0] xor_out;
    wire [3:0] and_out1;
    wire [3:0] and_out2;

    assign xor_out = A ^ B;
    assign and_out1 = A & B;
    assign and_out2 = xor_out & Cin;

    assign S = xor_out ^ Cin;
    assign Cout = and_out1 | and_out2;

endmodule