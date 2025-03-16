module LogExp (
  input [31:0] in,
  input ctrl,
  output [31:0] out
);

  reg [31:0] ln_out;
  reg [31:0] exp_out;
  
  always @(*) begin
    if (ctrl == 0) begin
      // Compute natural logarithm
      ln_out = $ln(in);
      out = ln_out;
    end else begin
      // Compute exponential
      exp_out = $exp(in);
      out = exp_out;
    end
  end
  
endmodule