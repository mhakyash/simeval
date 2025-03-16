// Benchmark "flip_flop" written by ABC on Wed Jun 26 15:22:06 2024

module flip_flop ( clock, 
    D, CLK, SET, RESET,
    Q, Q_N  );
  input  clock;
  input  D, CLK, SET, RESET;
  output Q, Q_N;
  reg Q, Q_N;
  wire new_n13, new_n14_1, new_n16, n14, n18;
  INVX1    g0(.A(D), .Y(new_n13));
  INVX1    g1(.A(SET), .Y(new_n14_1));
  OAI21X1  g2(.A0(RESET), .A1(new_n13), .B0(new_n14_1), .Y(n14));
  INVX1    g3(.A(RESET), .Y(new_n16));
  AOI21X1  g4(.A0(new_n16), .A1(D), .B0(SET), .Y(n18));
  always @ (posedge clock) begin
    Q <= n14;
    Q_N <= n18;
  end
endmodule


