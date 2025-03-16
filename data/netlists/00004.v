// Benchmark "clock_gating_cell" written by ABC on Wed Jun 26 15:21:58 2024

module clock_gating_cell ( clock, 
    clk, enable,
    clk_out  );
  input  clock;
  input  clk, enable;
  output clk_out;
  reg clk_out;
  wire n8;
  AND2X1   g0(.A(enable), .B(clk), .Y(n8));
  always @ (posedge clock) begin
    clk_out <= n8;
  end
endmodule


