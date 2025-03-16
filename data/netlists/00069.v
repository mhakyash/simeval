// Benchmark "dff_module" written by ABC on Wed Jun 26 15:21:59 2024

module dff_module ( clock, 
    clk, d,
    q  );
  input  clock;
  input  clk, d;
  output q;
  reg t1, q, t2;
  wire n8, n13, n17;
  INVX1    g0(.A(d), .Y(n8));
  INVX1    g1(.A(t2), .Y(n13));
  INVX1    g2(.A(t1), .Y(n17));
  always @ (posedge clock) begin
    t1 <= n8;
    q <= n13;
    t2 <= n17;
  end
endmodule


