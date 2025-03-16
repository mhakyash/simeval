// Benchmark "delay_line" written by ABC on Wed Jun 26 15:22:05 2024

module delay_line ( clock, 
    clk, in,
    out  );
  input  clock;
  input  clk, in;
  output out;
  reg \sr[0] , \sr[1] , \sr[2] , \sr[3] ;
  wire n7, n11, n15, n19;
  BUFX1    g0(.A(\sr[3] ), .Y(out));
  BUFX1    g1(.A(in), .Y(n7));
  BUFX1    g2(.A(\sr[0] ), .Y(n11));
  BUFX1    g3(.A(\sr[1] ), .Y(n15));
  BUFX1    g4(.A(\sr[2] ), .Y(n19));
  always @ (posedge clock) begin
    \sr[0]  <= n7;
    \sr[1]  <= n11;
    \sr[2]  <= n15;
    \sr[3]  <= n19;
  end
endmodule


