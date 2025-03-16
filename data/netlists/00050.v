// Benchmark "comparator" written by ABC on Wed Jun 26 15:21:58 2024

module comparator ( 
    \A[0] , \A[1] , \B[0] , \B[1] ,
    \out[0] , \out[1]   );
  input  \A[0] , \A[1] , \B[0] , \B[1] ;
  output \out[0] , \out[1] ;
  wire new_n7, new_n8, new_n9, new_n10, new_n11, new_n12, new_n13, new_n14;
  INVX1    g0(.A(\A[1] ), .Y(new_n7));
  OR2X1    g1(.A(\B[1] ), .B(new_n7), .Y(new_n8));
  XOR2X1   g2(.A(\B[1] ), .B(new_n7), .Y(new_n9));
  INVX1    g3(.A(\B[0] ), .Y(new_n10));
  XOR2X1   g4(.A(new_n10), .B(\A[0] ), .Y(new_n11));
  AND2X1   g5(.A(\B[1] ), .B(\A[1] ), .Y(new_n12));
  NOR2X1   g6(.A(\B[1] ), .B(\A[1] ), .Y(new_n13));
  OAI22X1  g7(.A0(new_n13), .A1(new_n12), .B0(new_n10), .B1(\A[0] ), .Y(new_n14));
  AOI22X1  g8(.A0(new_n14), .A1(new_n8), .B0(new_n11), .B1(new_n9), .Y(\out[0] ));
  AND2X1   g9(.A(new_n14), .B(new_n8), .Y(\out[1] ));
endmodule


