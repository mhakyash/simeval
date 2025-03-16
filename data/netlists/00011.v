// Benchmark "xor_module" written by ABC on Wed Jun 26 15:21:58 2024

module xor_module ( 
    a, b,
    out  );
  input  a, b;
  output out;
  XOR2X1   g0(.A(b), .B(a), .Y(out));
endmodule


