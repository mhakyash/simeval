module top_module(
    input [15:0] a,
    input [15:0] b,
    output [31:0] sum
);

    wire [15:0] diff;
    wire [15:0] carry_in;
    wire [31:0] adder_out;

    // Calculate absolute difference between a and b
    abs_diff16 diff16(a, b, diff);

    // Create two 16-bit adders
    ripple_adder16 adder1(a, b, carry_in, adder_out[15:0]);
    ripple_adder16 adder2(diff, 16'b0, carry_in, adder_out[31:16]);

    // Create carry select adder
    carry_select_adder32 adder3(adder_out, sum);

endmodule

// 16-bit ripple carry adder
module ripple_adder16(
    input [15:0] a,
    input [15:0] b,
    input cin,
    output [15:0] sum
);

    wire [15:0] carry;

    assign sum = a + b + cin;
    assign carry = (a[15] & b[15]) | (a[15] & cin) | (b[15] & cin);

    assign sum = {carry, sum[14:0]};

endmodule

// 16-bit absolute difference calculator
module abs_diff16(
    input [15:0] a,
    input [15:0] b,
    output [15:0] diff
);

    assign diff = (a > b) ? a - b : b - a;

endmodule

// 32-bit carry select adder
module carry_select_adder32(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire [31:0] carry;
    wire [31:0] sum1;
    wire [31:0] sum2;

    assign {carry, sum1} = a + b;
    assign {carry, sum2} = a + ~b + 1;

    assign sum = (carry == 0) ? sum1 : sum2;

endmodule