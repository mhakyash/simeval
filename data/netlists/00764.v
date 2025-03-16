// Benchmark "DFF_SR" written by ABC on Wed Jun 26 15:22:19 2024

module DFF_SR ( clock, 
    CLK, D, RST,
    Q  );
  input  clock;
  input  CLK, D, RST;
  output Q;
  reg Q;
  wire new_n8, n10;
  INVX1    g0(.A(RST), .Y(new_n8));
  AND2X1   g1(.A(new_n8), .B(D), .Y(n10));
  always @ (posedge clock) begin
    Q <= n10;
  end
endmodule


