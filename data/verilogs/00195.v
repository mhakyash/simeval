module comparator_4bit (
  input [3:0] a,
  input [3:0] b,
  output reg eq,
  output reg gt,
  output reg lt
);

  wire [3:0] a_xor_b;
  wire [3:0] a_and_b;
  wire [3:0] a_lt_b;
  wire [3:0] a_gt_b;

  assign a_xor_b = a ^ b;
  assign a_and_b = a & b;
  assign a_lt_b = (~a_and_b) & a_xor_b;
  assign a_gt_b = a_and_b | a_lt_b;

  assign eq = ~(|a_xor_b);
  assign lt = |a_lt_b;
  assign gt = |a_gt_b;

endmodule
