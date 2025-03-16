module compression_decompression (
  input [7:0] data_in,
  output [3:0] data_out
);

  // Compression algorithm
  wire [1:0] code;
  assign code[1:0] = (data_in[7:4] == 4'b0000) ? 2'b10 :
                     (data_in[7:4] == 4'b1111) ? 2'b10 :
                     (data_in[7:4] == data_in[3:0]) ? 2'b01 :
                     (data_in[7:4] == 4'b0000) ? 2'b11 :
                     (data_in[3:0] == 4'b0000) ? 2'b11 : 2'b00;
  
  // Compressed data output
  assign data_out = {code, (data_in[3:0] == 4'b0000) ? data_in[7:4] : data_in[3:0]};
  
  // Decompression algorithm
  wire [7:0] data_out_uncompressed;
  assign data_out_uncompressed = {data_out[3:2], (data_out[1] == 1'b1) ? data_out[3:0] : data_out[7:4]};
  
endmodule