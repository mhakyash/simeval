module complexMultiply (
    input signed [17:0] in1_re, // sfix18_En16
    input signed [17:0] in1_im, // sfix18_En16
    input signed [17:0] in2_re, // sfix18_En16
    input signed [17:0] in2_im, // sfix18_En16
    output signed [35:0] re,    // sfix36_En32
    output signed [35:0] im     // sfix36_En32
);

    wire signed [35:0] product1; // sfix36_En32
    wire signed [35:0] product2; // sfix36_En32
    wire signed [35:0] add1;     // sfix36_En32
    wire signed [35:0] product3; // sfix36_En32
    wire signed [35:0] product4; // sfix36_En32
    wire signed [35:0] add2;     // sfix36_En32

    // Multiply the first input's real part with the second input's real part.
    assign product1 = in1_re * in2_re;

    // Multiply the first input's imaginary part with the second input's imaginary part.
    assign product2 = in1_im * in2_im;

    // Subtract the product from step 2 from the product from step 1. This is the real part of the result.
    assign add1 = product1 - product2;

    // Multiply the first input's real part with the second input's imaginary part.
    assign product3 = in1_re * in2_im;

    // Multiply the first input's imaginary part with the second input's real part.
    assign product4 = in1_im * in2_re;

    // Add the products from steps 4 and 5. This is the imaginary part of the result.
    assign add2 = product3 + product4;

    // Output the real and imaginary parts of the result.
    assign re = add1;
    assign im = add2;

endmodule