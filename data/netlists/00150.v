// Benchmark "full_adder" written by ABC on Wed Jun 26 15:22:02 2024

module full_adder ( 
    A, B, CI,
    SUM, COUT  );
  input  A, B, CI;
  output SUM, COUT;
  wire new_n6, new_n8, new_n9;
  XOR2X1   g0(.A(B), .B(A), .Y(new_n6));
  XOR2X1   g1(.A(new_n6), .B(CI), .Y(SUM));
  NAND2X1  g2(.A(CI), .B(A), .Y(new_n8));
  OAI21X1  g3(.A0(CI), .A1(A), .B0(B), .Y(new_n9));
  NAND2X1  g4(.A(new_n9), .B(new_n8), .Y(COUT));
endmodule


