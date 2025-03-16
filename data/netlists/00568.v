// Benchmark "async_sr_ff" written by ABC on Wed Jun 26 15:22:14 2024

module async_sr_ff ( clock, 
    clk, reset, set, d,
    q, q_n  );
  input  clock;
  input  clk, reset, set, d;
  output q, q_n;
  reg q, q_n;
  wire new_n13, new_n14_1, new_n16, n14, n18;
  INVX1    g0(.A(reset), .Y(new_n13));
  INVX1    g1(.A(d), .Y(new_n14_1));
  AOI21X1  g2(.A0(new_n14_1), .A1(set), .B0(new_n13), .Y(n14));
  INVX1    g3(.A(set), .Y(new_n16));
  OAI21X1  g4(.A0(d), .A1(new_n16), .B0(reset), .Y(n18));
  always @ (posedge clock) begin
    q <= n14;
    q_n <= n18;
  end
endmodule


