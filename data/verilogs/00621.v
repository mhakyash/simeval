module eight_bit_adder (
    input [7:0] in1,
    input [7:0] in2,
    input cin,
    output [7:0] sum,
    output cout
);

    wire [3:0] carry;
    wire [7:0] sum_temp;

    // First 4-bit adder
    four_bit_adder fa1(
        .in1(in1[3:0]),
        .in2(in2[3:0]),
        .cin(cin),
        .sum(sum_temp[3:0]),
        .cout(carry[0])
    );

    // Second 4-bit adder
    four_bit_adder fa2(
        .in1(in1[7:4]),
        .in2(in2[7:4]),
        .cin(carry[0]),
        .sum(sum_temp[7:4]),
        .cout(carry[1])
    );

    assign sum = sum_temp;
    assign cout = carry[1];

endmodule

module four_bit_adder (
    input [3:0] in1,
    input [3:0] in2,
    input cin,
    output [3:0] sum,
    output cout
);

    wire c1, c2, c3;

    assign sum = in1 + in2 + cin;
    assign cout = (in1[3] & in2[3]) | (in1[3] & cin) | (in2[3] & cin);

endmodule

module difference_module (
    input [3:0] in1,
    input [3:0] in2,
    output [3:0] diff
);

    assign diff = in1 - in2;

endmodule

module top_module (
    input clk,
    input reset,
    input [7:0] in1,
    input [7:0] in2,
    input cin,
    output [7:0] sum,
    output cout,
    output [3:0] diff
);

    eight_bit_adder eba(
        .in1(in1),
        .in2(in2),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    difference_module dm(
        .in1(eba.sum[3:0]),
        .in2(eba.sum[7:4]),
        .diff(diff)
    );

endmodule