module parity (
  input [n-1:0] in,
  output parity_out,
  output error_flag
);

parameter n = 8; // number of input bits

wire [n:0] sum;
assign sum = {in, 1'b0} ^ {n+1{1'b0}}; // XOR with a vector of n+1 zeros

assign parity_out = ~sum[n]; // invert the most significant bit of the sum to get the parity bit

assign error_flag = sum[n]; // the error flag is the parity bit

endmodule