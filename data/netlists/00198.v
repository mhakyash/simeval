// Benchmark "dual_edge_ff" written by ABC on Wed Jun 26 15:22:03 2024

module dual_edge_ff ( clock, 
    clk, d,
    q  );
  input  clock;
  input  clk, d;
  output q;
  reg q;
  wire n7;
  BUFX1    g0(.A(d), .Y(n7));
  always @ (posedge clock) begin
    q <= n7;
  end
endmodule


