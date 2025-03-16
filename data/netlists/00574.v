// Benchmark "counter_2bit" written by ABC on Wed Jun 26 15:22:14 2024

module counter_2bit ( clock, 
    CLK, RESET,
    Q1, Q0  );
  input  clock;
  input  CLK, RESET;
  output Q1, Q0;
  reg Q1, Q0;
  wire new_n11, new_n12, new_n14_1, new_n15, n10, n14;
  INVX1    g0(.A(Q1), .Y(new_n11));
  XOR2X1   g1(.A(Q0), .B(new_n11), .Y(new_n12));
  NOR2X1   g2(.A(new_n12), .B(RESET), .Y(n10));
  OR2X1    g3(.A(Q0), .B(new_n11), .Y(new_n14_1));
  OR2X1    g4(.A(Q0), .B(Q1), .Y(new_n15));
  AOI21X1  g5(.A0(new_n15), .A1(new_n14_1), .B0(RESET), .Y(n14));
  always @ (posedge clock) begin
    Q1 <= n10;
    Q0 <= n14;
  end
endmodule


