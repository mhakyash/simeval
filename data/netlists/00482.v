// Benchmark "ODDR" written by ABC on Wed Jun 26 15:22:12 2024

module ODDR ( clock, 
    D1, D2, C, CE, R,
    Q  );
  input  clock;
  input  D1, D2, C, CE, R;
  output Q;
  reg Q;
  wire new_n10, n14;
  MX2X1    g0(.A(D1), .B(D2), .S0(R), .Y(new_n10));
  MX2X1    g1(.A(Q), .B(new_n10), .S0(CE), .Y(n14));
  always @ (posedge clock) begin
    Q <= n14;
  end
endmodule


