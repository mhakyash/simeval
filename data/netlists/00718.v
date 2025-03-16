// Benchmark "d_ff_async_rst_set" written by ABC on Wed Jun 26 15:22:18 2024

module d_ff_async_rst_set ( clock, 
    clk, rst, set, d,
    q, qn  );
  input  clock;
  input  clk, rst, set, d;
  output q, qn;
  reg q_i;
  wire new_n11, new_n12, n14;
  INVX1    g0(.A(q_i), .Y(qn));
  INVX1    g1(.A(rst), .Y(new_n11));
  INVX1    g2(.A(d), .Y(new_n12));
  AOI21X1  g3(.A0(new_n12), .A1(set), .B0(new_n11), .Y(n14));
  BUFX1    g4(.A(q_i), .Y(q));
  always @ (posedge clock) begin
    q_i <= n14;
  end
endmodule


