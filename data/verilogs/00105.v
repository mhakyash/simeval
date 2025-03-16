module EchoCancellation (
  input signed [n-1:0] s,
  input signed [n-1:0] e,
  output signed [n-1:0] f
);

parameter n = 16; // length of the input signals

assign f = s - e;

endmodule