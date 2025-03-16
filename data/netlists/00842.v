// Benchmark "full_adder" written by ABC on Wed Jun 26 15:22:22 2024

module full_adder ( 
    A, B, cin,
    sum, cout  );
  input  A, B, cin;
  output sum, cout;
  wire new_n6, new_n7, new_n8, new_n10;
  INVX1    g0(.A(cin), .Y(new_n6));
  INVX1    g1(.A(A), .Y(new_n7));
  XOR2X1   g2(.A(B), .B(new_n7), .Y(new_n8));
  XOR2X1   g3(.A(new_n8), .B(new_n6), .Y(sum));
  NAND2X1  g4(.A(B), .B(A), .Y(new_n10));
  OAI21X1  g5(.A0(new_n8), .A1(new_n6), .B0(new_n10), .Y(cout));
endmodule


