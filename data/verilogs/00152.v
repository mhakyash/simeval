module adder_32bit(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire [7:0] a_low = a[7:0];
    wire [7:0] b_low = b[7:0];
    wire [7:0] a_mid = a[15:8];
    wire [7:0] b_mid = b[15:8];
    wire [15:0] a_high = a[31:16];
    wire [15:0] b_high = b[31:16];

    wire [7:0] low_sum;
    wire [7:0] mid_sum;
    wire [15:0] high_sum;

    // Instantiate two 8-bit adders and one 16-bit adder
    adder_8bit adder1(.a(a_low), .b(b_low), .sum(low_sum));
    adder_8bit adder2(.a(a_mid), .b(b_mid), .sum(mid_sum));
    adder_16bit adder3(.a(a_high), .b(b_high), .sum(high_sum));

    // Combine the results of the adders to get the final sum
    assign sum = {high_sum, mid_sum, low_sum};

endmodule

module adder_8bit(
    input [7:0] a,
    input [7:0] b,
    output [7:0] sum
);

    assign sum = a + b;

endmodule

module adder_16bit(
    input [15:0] a,
    input [15:0] b,
    output [15:0] sum
);

    assign sum = a + b;

endmodule