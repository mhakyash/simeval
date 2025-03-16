module top_module (
    input [7:0] a,
    input [7:0] b,
    output reg [15:0] product,
    output reg overflow
);

wire [3:0] a_low = a[3:0];
wire [3:0] a_high = a[7:4];
wire [3:0] b_low = b[3:0];
wire [3:0] b_high = b[7:4];

wire [7:0] p0 = a_low * b_low;
wire [7:0] p1 = a_low * b_high;
wire [7:0] p2 = a_high * b_low;
wire [7:0] p3 = a_high * b_high;

wire [15:0] s0, s1, s2, s3, s4, s5, s6;
wire c0, c1, c2, c3, c4, c5;

adder adder0(.a({8'd0, p0}), .b({8'd0, p1}), .cin(1'b0), .sum(s0), .cout(c0));
adder adder1(.a({8'd0, p2}), .b({8'd0, p3}), .cin(1'b0), .sum(s1), .cout(c1));
adder adder2(.a({s0, 8'd0}), .b({s1, 8'd0}), .cin(c0), .sum(s2), .cout(c2));
adder adder3(.a({s2, 8'd0}), .b({8'd0, p2}), .cin(c2), .sum(s3), .cout(c3));
adder adder4(.a({s3, 8'd0}), .b({8'd0, p1}), .cin(c3), .sum(s4), .cout(c4));
adder adder5(.a({s4, 8'd0}), .b({8'd0, p0}), .cin(c4), .sum(s5), .cout(c5));
adder adder6(.a({s5, 8'd0}), .b({8'd0, 8'd0}), .cin(c5), .sum(product), .cout(overflow));

overflow_detector detector(.product(product), .overflow(overflow));

endmodule

module adder (
    input [15:0] a,
    input [15:0] b,
    input cin,
    output [15:0] sum,
    output cout
);

wire [3:0] a_low = a[3:0];
wire [3:0] a_high = a[7:4];
wire [3:0] b_low = b[3:0];
wire [3:0] b_high = b[7:4];

wire [3:0] s0 = a_low + b_low;
wire [3:0] s1 = a_high + b_high;
wire [3:0] s2 = a_low + b_high;
wire [3:0] s3 = a_high + b_low;

wire [3:0] c0 = s0[3] & s1[0];
wire [3:0] c1 = s2[3] & s3[0];

assign sum = {c1, s1[3:0], s0[3:0]};
assign cout = c0 | c1 | (s0[3] & s2[3]);

endmodule

module overflow_detector (
    input [15:0] product,
    output reg overflow
);

parameter LIMIT = 255;

assign overflow = (product > LIMIT);

endmodule