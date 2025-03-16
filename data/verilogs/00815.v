module top_module (
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);

wire [15:0] a_low;
wire [15:0] a_high;
wire [15:0] b_low;
wire [15:0] b_high;
wire [15:0] add_low;
wire [15:0] add_high;
wire [31:0] add_out;
wire [31:0] sub_out;

// Split a and b into low and high 16-bit parts
assign a_low = a[15:0];
assign a_high = a[31:16];
assign b_low = b[15:0];
assign b_high = b[31:16];

// Instantiate the 16-bit adder module
adder_16bit adder_inst (
    .a(a_low),
    .b(b_low ^ sub),
    .cin(sub),
    .sum(add_low),
    .cout()
);

// Instantiate the 16-bit adder module for the high bits
adder_16bit adder_inst_high (
    .a(a_high),
    .b(b_high ^ sub),
    .cin(adder_inst.cout),
    .sum(add_high),
    .cout()
);

// Combine the low and high bits of the addition result
assign add_out = {add_high, add_low};

// Calculate the subtraction result by XORing b with sub and adding 1
assign sub_out = add_out + (b ^ sub) + 1;

// Select the output based on the sub input
assign sum = sub ? sub_out : add_out;

endmodule

// 16-bit adder module
module adder_16bit (
    input [15:0] a,
    input [15:0] b,
    input cin,
    output [15:0] sum,
    output cout
);

wire [15:0] sum_wire;

// Generate the sum and carry-out
assign sum_wire = a + b + cin;
assign sum = sum_wire[15:0];
assign cout = sum_wire[16];

endmodule