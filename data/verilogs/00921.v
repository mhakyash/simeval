module barrel_shifter (
    input [3:0] A,
    input [1:0] S,
    output [3:0] B
);

    assign B = (S[1]) ? {A[3], A[3]} : // right shift
                       {A[1:0], A[3:2]}; // left shift

    assign B = (S[0]) ? B >> 1 : B; // shift by 1 if S[0] is 1

endmodule