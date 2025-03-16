module parity_generator_checker (
  input [n-1:0] in,
  input par,
  output out,
  output err
);

parameter n = 4; // number of input signals

wire parity = in[0];
genvar i;
generate
  for (i = 1; i < n; i = i + 1) begin : xor_loop
    assign parity = parity ^ in[i];
  end
endgenerate

assign out = parity;
assign err = (par == parity) ? 1'b0 : 1'b1;

endmodule