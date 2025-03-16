module byte_reverse (
  input [31:0] input_vector,
  output [31:0] output_vector
);

  wire [7:0] byte0 = input_vector[7:0];
  wire [7:0] byte1 = input_vector[15:8];
  wire [7:0] byte2 = input_vector[23:16];
  wire [7:0] byte3 = input_vector[31:24];

  assign output_vector = {byte0, byte1, byte2, byte3};

endmodule
