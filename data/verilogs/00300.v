module top_module ( 
    input [99:0] a, b, // 100-bit inputs for the multiplier
    input [3:0] in, // 4-bit inputs for the multiplexer
    input [1:0] sel, // Select input for the multiplexer
    output [7:0] sum // 8-bit output from the functional module
);

// Instantiate the multiplier module
wire [199:0] product;
multiplier_100bit multiplier_inst (
    .a(a),
    .b(b),
    .product(product)
);

// Instantiate the multiplexer module
wire [199:0] mux_output;
mux_4to1 mux_inst (
    .in0(product),
    .in1({200{in[0]}}),
    .in2({200{in[1]}}),
    .in3({200{in[2]}}),
    .sel(sel),
    .out(mux_output)
);

// Instantiate the functional module
wire [7:0] final_output;
add_200bit_8bit add_inst (
    .in1(mux_output),
    .in2({200{sum}}),
    .out(final_output)
);

// Assign the final output to the sum output port
assign sum = final_output;

endmodule