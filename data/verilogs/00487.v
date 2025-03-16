module bit_reverse(
    input [7:0] in,
    output [7:0] out_reversed
);

    reg [7:0] shift_reg;
    integer i;

    always @(*) begin
        shift_reg[0] = in[7];
        for (i = 1; i < 8; i = i + 1) begin
            shift_reg[i] = shift_reg[i-1];
        end
    end

    assign out_reversed = shift_reg;

endmodule

module bitwise_operations(
    input [2:0] a,
    input [2:0] b,
    output [2:0] out_and_bitwise,
    output [2:0] out_xor_bitwise,
    output [2:0] out_nor_bitwise,
    output [5:0] out_not
);

    assign out_and_bitwise = a & b;
    assign out_xor_bitwise = a ^ b;
    assign out_nor_bitwise = ~(a | b);

    assign out_not[5:3] = ~b;
    assign out_not[2:0] = ~a;

endmodule

module top_module( 
    input clk,
    input reset,
    input [7:0] in,
    input [2:0] a,
    input [2:0] b,
    output [7:0] out_reversed,
    output [2:0] out_and_bitwise,
    output [2:0] out_xor_bitwise,
    output [2:0] out_nor_bitwise,
    output [5:0] out_not,
    output [7:0] final_output
);

    wire [7:0] bit_reversed;
    wire [2:0] and_bitwise;
    wire [2:0] xor_bitwise;
    wire [2:0] nor_bitwise;

    bit_reverse bit_rev(.in(in), .out_reversed(bit_reversed));
    bitwise_operations bit_ops(.a(a), .b(b), .out_and_bitwise(and_bitwise), .out_xor_bitwise(xor_bitwise), .out_nor_bitwise(nor_bitwise), .out_not(out_not));

    wire [7:0] step1_output;
    wire [7:0] step2_output;

    assign step1_output = ~nor_bitwise;
    assign step2_output = bit_reversed;

    assign final_output = step1_output ^ step2_output;

endmodule