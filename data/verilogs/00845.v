module va5ad63 #(
 parameter vc5c8ea = 0
) (
 output [5:0] vbbba94
);
 localparam p0 = vc5c8ea;
 wire [0:5] w1;
 assign vbbba94 = w1;
 va5ad63_v465065 #(
  .VALUE(p0)
 ) v465065 (
  .k(w1)
 );
endmodule

module va5ad63_v465065 #(
 parameter VALUE = 0
) (
 input [5:0] k,
 output [5:0] out
);
 assign out = k | VALUE;
endmodule