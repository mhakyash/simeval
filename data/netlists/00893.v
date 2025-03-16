// Benchmark "bitwise_and" written by ABC on Wed Jun 26 15:22:23 2024

module bitwise_and ( 
    \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ,
    \Y[0] , \Y[1] , \Y[2] , \Y[3]   );
  input  \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ;
  output \Y[0] , \Y[1] , \Y[2] , \Y[3] ;
  AND2X1   g0(.A(\B[0] ), .B(\A[0] ), .Y(\Y[0] ));
  AND2X1   g1(.A(\B[1] ), .B(\A[1] ), .Y(\Y[1] ));
  AND2X1   g2(.A(\B[2] ), .B(\A[2] ), .Y(\Y[2] ));
  AND2X1   g3(.A(\B[3] ), .B(\A[3] ), .Y(\Y[3] ));
endmodule


