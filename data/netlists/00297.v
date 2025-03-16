// Benchmark "four_to_one" written by ABC on Wed Jun 26 15:22:06 2024

module four_to_one ( 
    A1, A2, B1, B2,
    Y  );
  input  A1, A2, B1, B2;
  output Y;
  wire new_n6, new_n7, new_n8, new_n9, new_n10, new_n11, new_n12, new_n13;
  INVX1    g0(.A(A1), .Y(new_n6));
  INVX1    g1(.A(A2), .Y(new_n7));
  INVX1    g2(.A(B1), .Y(new_n8));
  INVX1    g3(.A(B2), .Y(new_n9));
  NOR4X1   g4(.A(new_n9), .B(new_n8), .C(new_n7), .D(new_n6), .Y(new_n10));
  NOR4X1   g5(.A(B2), .B(B1), .C(new_n7), .D(new_n6), .Y(new_n11));
  NOR4X1   g6(.A(B2), .B(new_n8), .C(A2), .D(new_n6), .Y(new_n12));
  NOR4X1   g7(.A(new_n9), .B(B1), .C(new_n7), .D(A1), .Y(new_n13));
  OR4X1    g8(.A(new_n13), .B(new_n12), .C(new_n11), .D(new_n10), .Y(Y));
endmodule


