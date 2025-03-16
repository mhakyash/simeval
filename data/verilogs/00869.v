module greater_value (
    input [3:0] a0,
    input [3:0] a1,
    output [3:0] out
);

    wire [3:0] sum0;
    wire [3:0] sum1;
    wire greater;

    // Two 4-bit adders to generate the sum of the two input values
    adder_4bit adder0(.a(a0), .b(a1), .sum(sum0));
    adder_4bit adder1(.a(a1), .b(a0), .sum(sum1));

    // Comparison module to determine the greater value between the two sums
    greater_than compare(.a(sum0), .b(sum1), .greater(greater));

    // 2-to-1 multiplexer to select the greater value and output it as the final output
    mux_2to1 mux(.a(sum0), .b(sum1), .select(greater), .out(out));

endmodule

module adder_4bit (
    input [3:0] a,
    input [3:0] b,
    output [3:0] sum
);

    assign sum = a + b;

endmodule

module greater_than (
    input [3:0] a,
    input [3:0] b,
    output greater
);

    assign greater = (a > b);

endmodule

module mux_2to1 (
    input [3:0] a,
    input [3:0] b,
    input select,
    output [3:0] out
);

    assign out = select ? b : a;

endmodule

module top_module (
    input clk,
    input reset,
    input [3:0] a0,
    input [3:0] a1,
    input select,
    output [3:0] out
);

    greater_value greater(.a0(a0), .a1(a1), .out(out));

endmodule