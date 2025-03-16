// Benchmark "two_bit_comparator" written by ABC on Wed Jun 26 15:22:26 2024

module two_bit_comparator ( 
    \A[0] , \A[1] , \B[0] , \B[1] ,
    \Z[0] , \Z[1]   );
  input  \A[0] , \A[1] , \B[0] , \B[1] ;
  output \Z[0] , \Z[1] ;
  wire new_n7, new_n8, new_n9, new_n10, new_n11, new_n12;
  INVX1    g0(.A(\B[1] ), .Y(new_n7));
  AND2X1   g1(.A(new_n7), .B(\A[1] ), .Y(new_n8));
  INVX1    g2(.A(\A[0] ), .Y(new_n9));
  XOR2X1   g3(.A(\B[1] ), .B(\A[1] ), .Y(new_n10));
  AOI21X1  g4(.A0(\B[0] ), .A1(new_n9), .B0(new_n10), .Y(new_n11));
  XOR2X1   g5(.A(\B[0] ), .B(\A[0] ), .Y(new_n12));
  OR2X1    g6(.A(new_n11), .B(new_n8), .Y(\Z[0] ));
  OAI22X1  g7(.A0(new_n11), .A1(new_n8), .B0(new_n12), .B1(new_n10), .Y(\Z[1] ));
endmodule


