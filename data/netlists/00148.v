// Benchmark "priority_encoder" written by ABC on Wed Jun 26 15:22:01 2024

module priority_encoder ( 
    A, B, C, D,
    \X[0] , \X[1] , Y  );
  input  A, B, C, D;
  output \X[0] , \X[1] , Y;
  wire new_n8, new_n9, new_n10, new_n11, new_n12, new_n13, new_n15, new_n16,
    new_n18, new_n19;
  INVX1    g00(.A(A), .Y(new_n8));
  NOR4X1   g01(.A(D), .B(C), .C(B), .D(new_n8), .Y(new_n9));
  INVX1    g02(.A(C), .Y(new_n10));
  NOR4X1   g03(.A(D), .B(new_n10), .C(B), .D(A), .Y(new_n11));
  INVX1    g04(.A(B), .Y(new_n12));
  NOR4X1   g05(.A(D), .B(C), .C(new_n12), .D(A), .Y(new_n13));
  OR2X1    g06(.A(new_n11), .B(new_n9), .Y(\X[0] ));
  NOR2X1   g07(.A(new_n13), .B(new_n9), .Y(new_n15));
  NOR3X1   g08(.A(new_n13), .B(new_n11), .C(new_n9), .Y(new_n16));
  NOR2X1   g09(.A(new_n16), .B(new_n15), .Y(\X[1] ));
  INVX1    g10(.A(D), .Y(new_n18));
  NOR4X1   g11(.A(new_n18), .B(C), .C(B), .D(A), .Y(new_n19));
  OR4X1    g12(.A(new_n19), .B(new_n13), .C(new_n11), .D(new_n9), .Y(Y));
endmodule


