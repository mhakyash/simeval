// Benchmark "d_ff_asynchronous" written by ABC on Wed Jun 26 15:22:13 2024

module d_ff_asynchronous ( clock, 
    CLK, D, SCD, SCE,
    Q, Q_N  );
  input  clock;
  input  CLK, D, SCD, SCE;
  output Q, Q_N;
  reg Q;
  wire new_n11, n14;
  INVX1    g0(.A(Q), .Y(Q_N));
  NOR2X1   g1(.A(SCE), .B(D), .Y(new_n11));
  NOR2X1   g2(.A(new_n11), .B(SCD), .Y(n14));
  always @ (posedge clock) begin
    Q <= n14;
  end
endmodule


