// Benchmark "shift_register" written by ABC on Wed Jun 26 15:21:59 2024

module shift_register ( clock, 
    clk, d, shift,
    q  );
  input  clock;
  input  clk, d, shift;
  output q;
  reg \register[0] , \register[1] , \register[2] ;
  wire n10, n15, n20;
  MX2X1    g0(.A(\register[1] ), .B(d), .S0(shift), .Y(n10));
  MX2X1    g1(.A(d), .B(\register[0] ), .S0(shift), .Y(n15));
  MX2X1    g2(.A(\register[2] ), .B(\register[1] ), .S0(shift), .Y(n20));
  BUFX1    g3(.A(\register[2] ), .Y(q));
  always @ (posedge clock) begin
    \register[0]  <= n10;
    \register[1]  <= n15;
    \register[2]  <= n20;
  end
endmodule


