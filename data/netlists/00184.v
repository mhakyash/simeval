// Benchmark "xor_gate" written by ABC on Wed Jun 26 15:22:03 2024

module xor_gate ( clock, 
    a, b,
    out  );
  input  clock;
  input  a, b;
  output out;
  reg out, b_reg;
  wire n8, n11;
  XOR2X1   g0(.A(b_reg), .B(a), .Y(n8));
  BUFX1    g1(.A(b), .Y(n11));
  always @ (posedge clock) begin
    out <= n8;
    b_reg <= n11;
  end
endmodule


