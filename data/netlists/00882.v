// Benchmark "my_module" written by ABC on Wed Jun 26 15:22:23 2024

module my_module ( 
    VPWR, VGND, A1, A2, B1, C1, D1,
    X  );
  input  VPWR, VGND, A1, A2, B1, C1, D1;
  output X;
  wire new_n9, new_n10;
  OR2X1    g0(.A(A2), .B(A1), .Y(new_n9));
  AOI22X1  g1(.A0(C1), .A1(B1), .B0(A2), .B1(A1), .Y(new_n10));
  AND2X1   g2(.A(new_n10), .B(new_n9), .Y(X));
endmodule


