// Benchmark "dff" written by ABC on Wed Jun 26 15:22:25 2024

module dff ( clock, 
    D, C, S, R,
    Q  );
  input  clock;
  input  D, C, S, R;
  output Q;
  reg Q;
  wire new_n9, new_n10, n12;
  INVX1    g0(.A(D), .Y(new_n9));
  INVX1    g1(.A(S), .Y(new_n10));
  OAI21X1  g2(.A0(R), .A1(new_n9), .B0(new_n10), .Y(n12));
  always @ (posedge clock) begin
    Q <= n12;
  end
endmodule


