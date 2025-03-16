module mux_2to1 (
    input sel,
    input in0,
    input in1,
    output out
);

    wire e0;
    wire e1;
    example_module em0 ( .a(in0), .b(sel), .c(e0), .d() );
    example_module em1 ( .a(in1), .b(~sel), .c(e1), .d() );
    assign out = e0 | e1;

endmodule