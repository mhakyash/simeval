module add_sub (A, B, C, Y);
    input [2:0] A, B;
    input C;
    output [2:0] Y;

    wire [2:0] B_neg;
    assign B_neg = ~B + 1;

    assign Y = C ? A + B_neg : A + B;

endmodule