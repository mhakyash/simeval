module top_module (
    input [1:0] in,    // Input for the 2-to-4 decoder
    input [3:0] a,    // Input A for the adder-subtractor
    input [3:0] b,    // Input B for the adder-subtractor
    input sub,         // Subtraction flag for the adder-subtractor
    output [3:0] q,    // Output from the functional module
    output overflow   // Overflow output from the adder-subtractor
);

    // 2-to-4 decoder module
    wire [3:0] dec_out;
    decoder_2to4 dec_2to4(
        .in(in),
        .out(dec_out)
    );

    // Adder-subtractor module
    wire [3:0] addsub_out;
    wire addsub_overflow;
    adder_subtractor addsub(
        .a(a),
        .b(b),
        .sub(sub),
        .q(addsub_out),
        .overflow(addsub_overflow)
    );

    // Functional module
    assign q = (dec_out[0] == 0) ? addsub_out : 4'b0;
    assign overflow = (dec_out[0] == 0) ? addsub_overflow : (dec_out[1] | dec_out[2] | dec_out[3]);

endmodule