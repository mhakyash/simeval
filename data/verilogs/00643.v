module input_order(
    input signed [18:0] i_0,
    input signed [18:0] i_1,
    input signed [18:0] i_2,
    input signed [18:0] i_3,
    output signed [18:0] o_0,
    output signed [18:0] o_1,
    output signed [18:0] o_2,
    output signed [18:0] o_3
);
    assign o_0 = i_0;
    assign o_1 = i_2;
    assign o_2 = i_1;
    assign o_3 = i_3;
endmodule