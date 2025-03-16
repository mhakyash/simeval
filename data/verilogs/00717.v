module Comparator (
  input [n-1:0] a,
  input [n-1:0] b,
  output gt,
  output lt,
  output eq
);

parameter n = 8; // number of bits in the binary numbers

wire [n-1:0] a_xor_b;
wire [n-1:0] a_and_b;
wire [n-1:0] a_lt_b;
wire [n-1:0] a_eq_b;

assign a_xor_b = a ^ b;
assign a_and_b = a & b;
assign a_lt_b = ~a_and_b & a_xor_b;
assign a_eq_b = ~a_xor_b;

assign gt = |(a_lt_b);
assign lt = |(~(a_lt_b | a_eq_b));
assign eq = |(a_eq_b);

endmodule