// Benchmark "dual_edge_triggered_ff" written by ABC on Wed Jun 26 15:22:15 2024

module dual_edge_triggered_ff ( clock, 
    clk, d,
    q  );
  input  clock;
  input  clk, d;
  output q;
  reg q1, q2;
  wire n7, n11;
  BUFX1    g0(.A(q2), .Y(q));
  BUFX1    g1(.A(d), .Y(n7));
  BUFX1    g2(.A(q1), .Y(n11));
  always @ (posedge clock) begin
    q1 <= n7;
    q2 <= n11;
  end
endmodule


