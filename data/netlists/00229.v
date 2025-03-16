// Benchmark "clock_gating" written by ABC on Wed Jun 26 15:22:03 2024

module clock_gating ( clock, 
    CLK, EN, TE,
    ENCLK  );
  input  clock;
  input  CLK, EN, TE;
  output ENCLK;
  reg ENCLK;
  wire new_n8, n10;
  AND2X1   g0(.A(EN), .B(CLK), .Y(new_n8));
  MX2X1    g1(.A(new_n8), .B(CLK), .S0(TE), .Y(n10));
  always @ (posedge clock) begin
    ENCLK <= n10;
  end
endmodule


