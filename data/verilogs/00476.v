module pipelined_module ( 
    input wire [3:0] in_vec,
    output wire [3:0] out_vec,
    output wire msb_out,
    output wire mid_out,
    output wire lsb_out );

    wire [3:0] sum1, sum2, sum3;
    wire [2:0] carry1, carry2, carry3;

    // First stage of the pipelined carry lookahead adder
    cla_adder_stage1 stage1(.a(in_vec[3:2]), .b(in_vec[1:0]), .c_in(1'b0), .sum(sum1), .c_out(carry1));

    // Second stage of the pipelined carry lookahead adder
    cla_adder_stage2 stage2(.a(in_vec[2]), .b(in_vec[3]), .c_in(carry1[0]), .sum(sum2), .c_out(carry2));

    // Third stage of the pipelined carry lookahead adder
    cla_adder_stage3 stage3(.a(in_vec[1]), .b(in_vec[2]), .c_in(carry2[0]), .sum(sum3), .c_out(carry3));

    // Final stage of the pipelined carry lookahead adder
    assign out_vec = {carry3[0], sum3, sum2, sum1};

    // Multiplexer to output MSB, middle bit, and LSB
    assign msb_out = in_vec[3];
    assign mid_out = in_vec[2];
    assign lsb_out = in_vec[0];

endmodule

module cla_adder_stage1 ( 
    input wire [1:0] a,
    input wire [1:0] b,
    input wire c_in,
    output wire [1:0] sum,
    output wire [1:0] c_out );

    assign {c_out[0], sum[1:0]} = a + b + c_in;

endmodule

module cla_adder_stage2 ( 
    input wire a,
    input wire b,
    input wire c_in,
    output wire sum,
    output wire [1:0] c_out );

    assign {c_out[0], sum} = a + b + c_in;

endmodule

module cla_adder_stage3 ( 
    input wire a,
    input wire b,
    input wire c_in,
    output wire sum,
    output wire [1:0] c_out );

    assign {c_out[0], sum} = a + b + c_in;

endmodule