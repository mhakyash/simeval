module Comparator (
  input [n-1:0] a,
  input [n-1:0] b,
  output gt,
  output eq,
  output lt
);

parameter n = 8; // bit width of input signals

assign gt = (a > b) ? 1'b1 : 1'b0;
assign eq = (a == b) ? 1'b1 : 1'b0;
assign lt = (a < b) ? 1'b1 : 1'b0;

endmodule