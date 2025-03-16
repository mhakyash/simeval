// Benchmark "SNPS_CLOCK_GATE_HIGH_Up_counter_COUNTER_WIDTH4" written by ABC on Wed Jun 26 15:22:06 2024

module SNPS_CLOCK_GATE_HIGH_Up_counter_COUNTER_WIDTH4 ( clock, 
    CLK, EN, TE,
    ENCLK  );
  input  clock;
  input  CLK, EN, TE;
  output ENCLK;
  reg Q;
  wire new_n8, n10;
  NAND2X1  g0(.A(TE), .B(EN), .Y(new_n8));
  AND2X1   g1(.A(new_n8), .B(Q), .Y(n10));
  BUFX1    g2(.A(Q), .Y(ENCLK));
  always @ (posedge clock) begin
    Q <= n10;
  end
endmodule


