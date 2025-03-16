// Benchmark "comparator_2bit" written by ABC on Wed Jun 26 15:22:03 2024

module comparator_2bit ( 
    \A[0] , \A[1] , \B[0] , \B[1] ,
    X  );
  input  \A[0] , \A[1] , \B[0] , \B[1] ;
  output X;
  wire new_n6, new_n7, new_n8, new_n9, new_n10, new_n11, new_n12, new_n13,
    new_n14;
  XOR2X1   g0(.A(\B[1] ), .B(\A[1] ), .Y(new_n6));
  XOR2X1   g1(.A(\B[0] ), .B(\A[0] ), .Y(new_n7));
  OR2X1    g2(.A(new_n7), .B(new_n6), .Y(new_n8));
  INVX1    g3(.A(\A[1] ), .Y(new_n9));
  OR2X1    g4(.A(\B[1] ), .B(new_n9), .Y(new_n10));
  INVX1    g5(.A(\B[0] ), .Y(new_n11));
  AND2X1   g6(.A(\B[1] ), .B(\A[1] ), .Y(new_n12));
  NOR2X1   g7(.A(\B[1] ), .B(\A[1] ), .Y(new_n13));
  OAI22X1  g8(.A0(new_n13), .A1(new_n12), .B0(new_n11), .B1(\A[0] ), .Y(new_n14));
  NAND3X1  g9(.A(new_n14), .B(new_n10), .C(new_n8), .Y(X));
endmodule


