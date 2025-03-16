module adder_subtractor(A, B, sub, result, overflow);
  input signed [15:0] A, B;
  input sub;
  output signed [15:0] result;
  output overflow;

  wire [15:0] sum;
  wire [15:0] neg_B;

  assign neg_B = ~B + 1;

  assign sum = A + (sub ? neg_B : B);

  assign overflow = (sum[15] == sum[14]) ? 0 : 1;

  assign result = sum;

endmodule