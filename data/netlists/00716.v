// Benchmark "ring_counter" written by ABC on Wed Jun 26 15:22:18 2024

module ring_counter ( clock, 
    Clk,
    \Q[0] , \Q[1] , \Q[2] , \Q[3]   );
  input  clock;
  input  Clk;
  output \Q[0] , \Q[1] , \Q[2] , \Q[3] ;
  reg \Q[0] , \Q[1] , \Q[2] , \Q[3] ;
  wire n11, n14, n17, n20;
  BUFX1    g0(.A(\Q[3] ), .Y(n11));
  BUFX1    g1(.A(\Q[0] ), .Y(n14));
  BUFX1    g2(.A(\Q[1] ), .Y(n17));
  BUFX1    g3(.A(\Q[2] ), .Y(n20));
  always @ (posedge clock) begin
    \Q[0]  <= n11;
    \Q[1]  <= n14;
    \Q[2]  <= n17;
    \Q[3]  <= n20;
  end
endmodule


