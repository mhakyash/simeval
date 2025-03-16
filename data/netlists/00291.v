// Benchmark "d_to_jk_ff" written by ABC on Wed Jun 26 15:22:05 2024

module d_to_jk_ff ( clock, 
    clk, d,
    q  );
  input  clock;
  input  clk, d;
  output q;
  reg q, k;
  wire new_n10, n8, n12;
  INVX1    g0(.A(q), .Y(new_n10));
  XOR2X1   g1(.A(k), .B(new_n10), .Y(n8));
  INVX1    g2(.A(d), .Y(n12));
  always @ (posedge clock) begin
    q <= n8;
    k <= n12;
  end
endmodule


