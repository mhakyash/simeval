module Hyperbolic_Functions (
  input x,
  output sineh,
  output cosh,
  output tanh
);

  reg signed [31:0] exp_x;
  reg signed [31:0] exp_neg_x;
  reg signed [31:0] e_to_x;
  reg signed [31:0] e_to_neg_x;

  assign sineh = (e_to_x - e_to_neg_x) >> 1;
  assign cosh = (e_to_x + e_to_neg_x) >> 1;
  assign tanh = (e_to_x - e_to_neg_x) / (e_to_x + e_to_neg_x);

  always @(*) begin
    exp_x = $exp(x);
    exp_neg_x = $exp(-x);
    e_to_x = exp_x;
    e_to_neg_x = exp_neg_x;
  end

endmodule