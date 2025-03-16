// Benchmark "Multiplexer" written by ABC on Wed Jun 26 15:22:20 2024

module Multiplexer ( 
    ctrl, D0, D1,
    S  );
  input  ctrl, D0, D1;
  output S;
  MX2X1    g0(.A(D0), .B(D1), .S0(ctrl), .Y(S));
endmodule


