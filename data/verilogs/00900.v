module add_sub_module(
    input [7:0] a,
    input [7:0] b,
    input sub,
    output [7:0] result
);

    wire [7:0] sum;
    wire [7:0] diff;

    adder_subtractor add_sub(.a(a), .b(b), .sub(sub), .sum(sum), .diff(diff));

    assign result = (sub == 1'b0) ? sum : diff;

endmodule