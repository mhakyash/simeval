// Benchmark "my_module" written by ABC on Wed Jun 26 15:22:10 2024

module my_module ( 
    A1, A2, A3, A4, B1,
    X  );
  input  A1, A2, A3, A4, B1;
  output X;
  wire new_n7, new_n8;
  INVX1    g0(.A(B1), .Y(new_n7));
  NAND4X1  g1(.A(A4), .B(A3), .C(A2), .D(A1), .Y(new_n8));
  NAND2X1  g2(.A(new_n8), .B(new_n7), .Y(X));
endmodule


