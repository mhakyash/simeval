module mux_2to1 (A, B, S, Y);
    input [3:0] A;
    input [3:0] B;
    input S;
    output [3:0] Y;

    assign Y = S ? B : A;
endmodule