module top_module( 
    input wire [15:0] in,
    output wire [7:0] out_hi,
    output wire [7:0] out_lo );

    wire [7:0] lo_adder_out;
    wire [7:0] hi_adder_out;

    ripple_adder adder_lo(.a(in[7:0]), .b(in[15:8]), .c(1'b0), .s(lo_adder_out));
    carry_select_adder adder_hi(.a(in[15:8]), .b(in[7:0]), .c(1'b0), .s(hi_adder_out));

    assign out_lo = lo_adder_out;
    assign out_hi = hi_adder_out;

endmodule

module ripple_adder(
    input wire [7:0] a,
    input wire [7:0] b,
    input wire c,
    output wire [7:0] s
);

    wire [7:0] sum;
    wire [7:0] carry;

    assign sum = a + b + c;
    assign s = sum;

endmodule

module carry_select_adder(
    input wire [7:0] a,
    input wire [7:0] b,
    input wire c,
    output wire [7:0] s
);

    wire [7:0] sum;
    wire [7:0] carry;

    assign {carry, sum} = a + b + c;
    assign s = (carry == 1'b0) ? sum : (a + b + 1'b1);

endmodule