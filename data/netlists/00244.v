// Benchmark "clock_gate" written by ABC on Wed Jun 26 15:22:04 2024

module clock_gate ( clock, 
    CLK, EN, TE,
    ENCLK  );
  input  clock;
  input  CLK, EN, TE;
  output ENCLK;
  reg ENCLK, gated_clk;
  wire new_n12, n10, n14;
  AND2X1   g0(.A(gated_clk), .B(EN), .Y(n10));
  INVX1    g1(.A(TE), .Y(new_n12));
  MX2X1    g2(.A(gated_clk), .B(new_n12), .S0(EN), .Y(n14));
  always @ (posedge clock) begin
    ENCLK <= n10;
    gated_clk <= n14;
  end
endmodule


