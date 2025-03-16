// Benchmark "shift_register" written by ABC on Wed Jun 26 15:22:18 2024

module shift_register ( clock, 
    clk, d,
    q  );
  input  clock;
  input  clk, d;
  output q;
  reg \shift_reg[0] , \shift_reg[1] , \shift_reg[2] ;
  wire n7, n11, n15;
  BUFX1    g0(.A(\shift_reg[2] ), .Y(q));
  BUFX1    g1(.A(d), .Y(n7));
  BUFX1    g2(.A(\shift_reg[0] ), .Y(n11));
  BUFX1    g3(.A(\shift_reg[1] ), .Y(n15));
  always @ (posedge clock) begin
    \shift_reg[0]  <= n7;
    \shift_reg[1]  <= n11;
    \shift_reg[2]  <= n15;
  end
endmodule


