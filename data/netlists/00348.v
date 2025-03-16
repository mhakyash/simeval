// Benchmark "dual_ff" written by ABC on Wed Jun 26 15:22:07 2024

module dual_ff ( clock, 
    clk, d1, d2, reset, select,
    q  );
  input  clock;
  input  clk, d1, d2, reset, select;
  output q;
  reg q, \ff1_q[0] , \ff2_q[0] ;
  wire new_n16, new_n18_1, new_n19, new_n21, n14, n18, n23;
  MX2X1    g0(.A(\ff2_q[0] ), .B(\ff1_q[0] ), .S0(select), .Y(new_n16));
  MX2X1    g1(.A(new_n16), .B(q), .S0(reset), .Y(n14));
  INVX1    g2(.A(reset), .Y(new_n18_1));
  MX2X1    g3(.A(\ff1_q[0] ), .B(d1), .S0(select), .Y(new_n19));
  AND2X1   g4(.A(new_n19), .B(new_n18_1), .Y(n18));
  MX2X1    g5(.A(d2), .B(\ff2_q[0] ), .S0(select), .Y(new_n21));
  AND2X1   g6(.A(new_n21), .B(new_n18_1), .Y(n23));
  always @ (posedge clock) begin
    q <= n14;
    \ff1_q[0]  <= n18;
    \ff2_q[0]  <= n23;
  end
  initial begin
    \ff1_q[0]  <= 1'b0;
    \ff2_q[0]  <= 1'b0;
  end
endmodule


