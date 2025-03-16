module Convolutional_Encoder_Viterbi_Decoder (
  input [k-1:0] in,
  output [n-1:0] enc_out,
  output [k-1:0] dec_out
);

parameter k = 1; // number of input bits in each group
parameter n = 2; // number of output bits in each group
parameter p = 2; // number of bits in the encoder's shift register
parameter m = 2; // number of bits in the decoder's shift register

reg [p-1:0] shift_reg; // encoder's shift register
reg [m-1:0] dec_reg; // decoder's shift register

// Encoder mapping function
function [n-1:0] encode;
  input [k-1:0] data;
  begin
    case (data)
      0: encode = {1, 0};
      1: encode = {0, 1};
      2: encode = {1, 1};
      3: encode = {0, 0};
    endcase
  end
endfunction

// Decoder decoding algorithm
function [k-1:0] decode;
  input [n-1:0] data;
  begin
    if (data == {1, 0}) decode = 0;
    else if (data == {0, 1}) decode = 1;
    else if (data == {1, 1}) decode = 2;
    else if (data == {0, 0}) decode = 3;
  end
endfunction

// Encoder process
always @(in) begin
  shift_reg = {in, shift_reg[k-1:1]}; // shift in new input bit
  enc_out = encode(shift_reg); // encode input data
end

// Decoder process
always @(enc_out) begin
  dec_reg = {enc_out, dec_reg[m-1:1]}; // shift in new encoded bit
  dec_out = decode(dec_reg); // decode encoded data
end

endmodule