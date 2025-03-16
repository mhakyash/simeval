// Benchmark "comparator_3bit" written by ABC on Wed Jun 26 15:22:10 2024

module comparator_3bit ( 
    \A[0] , \A[1] , \A[2] , \B[0] , \B[1] , \B[2] ,
    EQ  );
  input  \A[0] , \A[1] , \A[2] , \B[0] , \B[1] , \B[2] ;
  output EQ;
  wire new_n8, new_n9, new_n10;
  XOR2X1   g0(.A(\B[0] ), .B(\A[0] ), .Y(new_n8));
  XOR2X1   g1(.A(\B[1] ), .B(\A[1] ), .Y(new_n9));
  XOR2X1   g2(.A(\B[2] ), .B(\A[2] ), .Y(new_n10));
  NOR3X1   g3(.A(new_n10), .B(new_n9), .C(new_n8), .Y(EQ));
endmodule


