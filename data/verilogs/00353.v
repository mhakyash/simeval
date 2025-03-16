module RLE (
  input [n*w-1:0] in,
  output [m*w-1:0] out
);

parameter n = 16; // number of input data values
parameter m = 8; // number of encoded data values
parameter w = 8; // number of bits per data value

reg [w-1:0] prev_val; // previous input data value
reg [w-1:0] curr_val; // current input data value
reg [w-1:0] enc_val; // encoded data value
reg [w-1:0] dec_val; // decoded data value
reg [w-1:0] count; // count of consecutive occurrences
reg [w-1:0] enc_count; // count of consecutive occurrences for encoded data value
reg [w-1:0] dec_count; // count of consecutive occurrences for decoded data value
reg [m*w-1:0] encoded; // encoded data values
reg [n*w-1:0] decoded; // decoded data values

integer i; // loop counter

// Encoding operation
always @(*) begin
  prev_val = in[0:w-1];
  count = 1;
  enc_count = 1;
  i = 0;
  for (i = 1; i < n; i = i + 1) begin
    curr_val = in[i*w:i*w+w-1];
    if (curr_val == prev_val) begin
      count = count + 1;
    end else begin
      enc_val = prev_val;
      encoded[enc_count*w:enc_count*w+w-1] = enc_val;
      encoded[enc_count*w+w:enc_count*w+2*w-1] = count;
      enc_count = enc_count + 1;
      count = 1;
    end
    prev_val = curr_val;
  end
  enc_val = prev_val;
  encoded[enc_count*w:enc_count*w+w-1] = enc_val;
  encoded[enc_count*w+w:enc_count*w+2*w-1] = count;
end

// Decoding operation
always @(*) begin
  dec_count = 0;
  i = 0;
  for (i = 0; i < m; i = i + 1) begin
    enc_val = encoded[i*w:i*w+w-1];
    enc_count = encoded[i*w+w:i*w+2*w-1];
    for (dec_count = 0; dec_count < enc_count; dec_count = dec_count + 1) begin
      decoded[dec_count*w:dec_count*w+w-1] = enc_val;
    end
  end
end

assign out = encoded;
assign decoded = out;

endmodule