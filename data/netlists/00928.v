// Benchmark "top_module" written by ABC on Wed Jun 26 15:22:24 2024

module top_module ( clock, 
    clk, \d[0] , \d[1] , \d[2] , \d[3] , \d[4] , \d[5] , \d[6] , \d[7] ,
    sel_b1, sel_b2,
    out_always  );
  input  clock;
  input  clk, \d[0] , \d[1] , \d[2] , \d[3] , \d[4] , \d[5] , \d[6] ,
    \d[7] , sel_b1, sel_b2;
  output out_always;
  reg \flip_flop[1][0] , \flip_flop[0][0] , out_always;
  wire new_n22, n25, n29, n34;
  AND2X1   g0(.A(sel_b2), .B(sel_b1), .Y(new_n22));
  MX2X1    g1(.A(\flip_flop[0][0] ), .B(\flip_flop[1][0] ), .S0(new_n22), .Y(n34));
  BUFX1    g2(.A(\d[1] ), .Y(n25));
  BUFX1    g3(.A(\d[0] ), .Y(n29));
  always @ (posedge clock) begin
    \flip_flop[1][0]  <= n25;
    \flip_flop[0][0]  <= n29;
    out_always <= n34;
  end
endmodule


