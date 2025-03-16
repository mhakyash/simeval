module FFT (
  input signed [2*n-1:0] in_re, // input real part
  input signed [2*n-1:0] in_im, // input imaginary part
  output signed [2*n-1:0] out_re, // output real part
  output signed [2*n-1:0] out_im // output imaginary part
);

parameter n = 8; // length of input sequence
parameter twiddle_bits = 4; // number of bits to represent twiddle factors

// Your FFT implementation goes here

endmodule

module IFFT (
  input signed [2*n-1:0] in_re, // input real part
  input signed [2*n-1:0] in_im, // input imaginary part
  output signed [2*n-1:0] out_re, // output real part
  output signed [2*n-1:0] out_im // output imaginary part
);

parameter n = 8; // length of input sequence
parameter twiddle_bits = 4; // number of bits to represent twiddle factors

// Your IFFT implementation goes here

endmodule

module butterfly (
    input wire [1:0] select, // select bit
    input wire [twiddle_bits-1:0] tw_re, // twiddle factor real part
    input wire [twiddle_bits-1:0] tw_im, // twiddle factor imaginary part
    input wire [1:0] input_re, // input real part
    input wire [1:0] input_im, // input imaginary part
    output wire [1:0] output_re, // output real part
    output wire [1:0] output_im // output imaginary part
);

// Your butterfly implementation goes here

endmodule