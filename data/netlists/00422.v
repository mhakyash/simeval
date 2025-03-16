// Benchmark "my_module" written by ABC on Wed Jun 26 15:22:10 2024

module my_module ( 
    A1, A2, A3, B1,
    X  );
  input  A1, A2, A3, B1;
  output X;
  wire new_n6, new_n7;
  OR2X1    g0(.A(A2), .B(A1), .Y(new_n6));
  NAND3X1  g1(.A(A3), .B(A2), .C(A1), .Y(new_n7));
  OAI22X1  g2(.A0(new_n7), .A1(B1), .B0(new_n6), .B1(A3), .Y(X));
endmodule


