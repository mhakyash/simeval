module flip_flop (clk, reset, d, q);
  input clk;
  input reset;
  input [16:0] d;
  output [16:0] q;
  reg [16:0] q;

  always @(posedge clk) begin
    if (!reset)
      q <= 17'b0;
    else
      q <= d;
  end
endmodule