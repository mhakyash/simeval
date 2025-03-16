// Benchmark "half_adder" written by ABC on Wed Jun 26 15:22:13 2024

module half_adder ( 
    a, b,
    sum, carry_out  );
  input  a, b;
  output sum, carry_out;
  XOR2X1   g0(.A(b), .B(a), .Y(sum));
  AND2X1   g1(.A(b), .B(a), .Y(carry_out));
endmodule


