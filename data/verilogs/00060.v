module top_module (
    input [31:0] a,
    input [31:0] b,
    input select, //Select input to choose between adder and multiplexer
    output [31:0] sum
);

    wire [31:0] adder_out;
    wire [31:0] mux_out;
    wire [31:0] final_out;

    ripple_carry_adder adder_inst (
        .a(a),
        .b(b),
        .sum(adder_out)
    );

    mux mux_inst (
        .a(a),
        .b(b),
        .c(adder_out),
        .w(mux_out),
        .x(mux_out),
        .y(mux_out),
        .z(mux_out)
    );

    final_output final_inst (
        .adder_out(adder_out),
        .select(select),
        .a(a),
        .b(b),
        .c(adder_out),
        .final_out(final_out)
    );

    assign sum = (select == 1'b0) ? adder_out : mux_out;

endmodule

module ripple_carry_adder (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    genvar i;
    generate
        for (i = 0; i < 32; i = i + 1) begin : adder_loop
            full_adder adder_inst (
                .a(a[i]),
                .b(b[i]),
                .cin(sum[i]),
                .sum(sum[i]),
                .cout(sum[i+1])
            );
        end
    endgenerate

endmodule

module full_adder (
    input a,
    input b,
    input cin,
    output sum,
    output cout
);

    assign {cout,sum} = a + b + cin;

endmodule

module mux (
    input a,b,c,
    output w,x,y,z
);

    assign w = (c == 1'b0) ? a : b;
    assign x = (c == 1'b1) ? a : b;
    assign y = (c == 2'b10) ? a : b;
    assign z = (c == 2'b11) ? a : b;

endmodule

module final_output (
    input [31:0] adder_out,
    input [1:0] select,
    input a,b,c,
    output [31:0] final_out
);

    assign final_out = (select == 1'b0) ? (a + b + c) : (adder_out + c);

endmodule