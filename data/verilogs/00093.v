module my_logic (
    input  A1,
    input  A2,
    input  A3,
    input  [1:0] B,
    output Y
);

    wire or_b;
    assign or_b = |B;

    assign Y = (A1 || (A2 && !A1) || (A3 && !A2 && !A1)) ? 1 : or_b;

endmodule