module shift_left_wrap(
    input [31:0] i,
    output [31:0] o
);

assign o = {i[1:31], i[0:1]};

endmodule