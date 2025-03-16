module adder_subtractor(
    input [15:0] a,
    input [15:0] b,
    input sub,
    output [31:0] out
);

    wire [15:0] b_inverted;
    wire [15:0] b_complemented;
    wire [15:0] add_result;
    wire [15:0] sub_result;

    // XOR gate to invert b input when sub is 1
    xor #(.N(16)) xor_gate(
        .a(b),
        .b({16{sub}}),
        .y(b_inverted)
    );

    // 2's complement module to convert sub input to its 2's complement form
    twos_complement twos_comp(
        .in(b_inverted),
        .out(b_complemented)
    );

    // 16-bit adder module for add operation
    adder add(
        .a(a),
        .b(b),
        .out(add_result)
    );

    // 16-bit adder module for sub operation
    adder sub(
        .a(a),
        .b(b_complemented),
        .out(sub_result)
    );

    // Output selection based on sub and select inputs
    assign out = (sub) ? sub_result : add_result;

endmodule

module adder(
    input [15:0] a,
    input [15:0] b,
    output [15:0] out
);

    assign out = a + b;

endmodule

module twos_complement(
    input [15:0] in,
    output [15:0] out
);

    assign out = ~in + 1;

endmodule

module splitter(
    input [15:0] in,
    output [7:0] out_hi,
    output [7:0] out_lo
);

    reg [15:0] reg_in;
    reg [7:0] reg_hi;
    reg [7:0] reg_lo;

    always @ (posedge clk) begin
        reg_in <= in;
        reg_hi <= reg_in[15:8];
        reg_lo <= reg_in[7:0];
    end

    assign out_hi = reg_hi;
    assign out_lo = reg_lo;

endmodule

module top_module( 
    input [31:0] a,
    input [15:0] in,
    input sub,
    input select,
    output [31:0] out,
    output [7:0] out_hi,
    output [7:0] out_lo
);

    wire [15:0] splitter_out_hi;
    wire [15:0] splitter_out_lo;
    wire [31:0] adder_subtractor_out;

    splitter splitter_inst(
        .in(in),
        .out_hi(splitter_out_hi),
        .out_lo(splitter_out_lo)
    );

    adder_subtractor adder_subtractor_inst(
        .a(a),
        .b({16{select}} ? splitter_out_lo : splitter_out_hi),
        .sub(sub),
        .out(adder_subtractor_out)
    );

    assign out = adder_subtractor_out;
    assign out_hi = splitter_out_hi;
    assign out_lo = splitter_out_lo;

endmodule