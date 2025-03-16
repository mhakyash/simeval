// Benchmark "my_clock_gate" written by ABC on Wed Jun 26 15:22:11 2024

module my_clock_gate ( clock, 
    clk, en, te,
    enclk  );
  input  clock;
  input  clk, en, te;
  output enclk;
  reg enclk;
  wire n10;
  MX2X1    g0(.A(enclk), .B(te), .S0(en), .Y(n10));
  always @ (posedge clock) begin
    enclk <= n10;
  end
endmodule


