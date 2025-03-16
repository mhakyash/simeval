module clock_gating_cell (
  input clk,
  input enable,
  output reg clk_out
);

  always @(posedge clk) begin
    if (enable)
      clk_out <= clk;
    else
      clk_out <= 1'b0;
  end

endmodule