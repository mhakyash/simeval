// Benchmark "half_adder" written by ABC on Wed Jun 26 15:22:16 2024

module half_adder ( 
    a, b,
    s, c  );
  input  a, b;
  output s, c;
  XOR2X1   g0(.A(b), .B(a), .Y(s));
  AND2X1   g1(.A(b), .B(a), .Y(c));
endmodule


