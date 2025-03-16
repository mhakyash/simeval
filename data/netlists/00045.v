// Benchmark "mux_2to1" written by ABC on Wed Jun 26 15:21:58 2024

module mux_2to1 ( 
    \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] , S,
    \Y[0] , \Y[1] , \Y[2] , \Y[3]   );
  input  \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ,
    S;
  output \Y[0] , \Y[1] , \Y[2] , \Y[3] ;
  MX2X1    g0(.A(\A[0] ), .B(\B[0] ), .S0(S), .Y(\Y[0] ));
  MX2X1    g1(.A(\A[1] ), .B(\B[1] ), .S0(S), .Y(\Y[1] ));
  MX2X1    g2(.A(\A[2] ), .B(\B[2] ), .S0(S), .Y(\Y[2] ));
  MX2X1    g3(.A(\A[3] ), .B(\B[3] ), .S0(S), .Y(\Y[3] ));
endmodule


