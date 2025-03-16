module magnitude_comparison (
  input [3:0] A,
  input [3:0] B,
  output reg eq,
  output reg gt
);

  always @(*) begin
    eq = (A == B);
    gt = (A > B);
  end

endmodule
