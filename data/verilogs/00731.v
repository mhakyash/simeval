module top_module (
    input a,
    input b,
    input c,
    input reset,
    output out
);

wire mux_2to1_out;
wire mux_3to1_out;

mux_2to1 mux_2to1_inst (
    .a(a),
    .b(b),
    .select(reset ? 0 : 1),
    .out(mux_2to1_out)
);

mux_3to1 mux_3to1_inst (
    .a(mux_2to1_out),
    .b(c),
    .c(reset ? 0 : 1),
    .select(reset ? 0 : 1),
    .out(mux_3to1_out)
);

output_module output_module_inst (
    .mux_2to1_out(mux_2to1_out),
    .mux_3to1_out(mux_3to1_out),
    .out(out)
);

endmodule

module mux_2to1 (
    input a,
    input b,
    input select,
    output out
);

assign out = select ? b : a;

endmodule

module mux_3to1 (
    input a,
    input b,
    input c,
    input select,
    output out
);

assign out = select ? c : (select ? b : a);

endmodule

module output_module (
    input mux_2to1_out,
    input mux_3to1_out,
    output out
);

assign out = mux_3to1_out;

endmodule