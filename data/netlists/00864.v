// Benchmark "bit_change_detector" written by ABC on Wed Jun 26 15:22:22 2024

module bit_change_detector ( clock, 
    clk, reset, in,
    out  );
  input  clock;
  input  clk, reset, in;
  output out;
  reg out, last_in;
  wire new_n11, new_n12, n10, n14;
  INVX1    g0(.A(reset), .Y(new_n11));
  XOR2X1   g1(.A(last_in), .B(in), .Y(new_n12));
  AND2X1   g2(.A(new_n12), .B(new_n11), .Y(n10));
  AND2X1   g3(.A(in), .B(new_n11), .Y(n14));
  always @ (posedge clock) begin
    out <= n10;
    last_in <= n14;
  end
endmodule


