// Benchmark "decoder_2to4" written by ABC on Wed Jun 26 15:22:10 2024

module decoder_2to4 ( 
    A, B,
    Y0, Y1, Y2, Y3  );
  input  A, B;
  output Y0, Y1, Y2, Y3;
  wire new_n8;
  NOR2X1   g0(.A(B), .B(A), .Y(Y0));
  INVX1    g1(.A(B), .Y(new_n8));
  NOR2X1   g2(.A(new_n8), .B(A), .Y(Y1));
  AND2X1   g3(.A(new_n8), .B(A), .Y(Y2));
  AND2X1   g4(.A(B), .B(A), .Y(Y3));
endmodule


