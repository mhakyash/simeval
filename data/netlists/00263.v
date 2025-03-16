// Benchmark "two_input_logic" written by ABC on Wed Jun 26 15:22:05 2024

module two_input_logic ( 
    a, b, op,
    out  );
  input  a, b, op;
  output out;
  wire new_n5, new_n6;
  INVX1    g0(.A(a), .Y(new_n5));
  XOR2X1   g1(.A(b), .B(a), .Y(new_n6));
  MX2X1    g2(.A(new_n6), .B(new_n5), .S0(op), .Y(out));
endmodule


