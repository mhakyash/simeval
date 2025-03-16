// Benchmark "top_module" written by ABC on Wed Jun 26 15:22:01 2024

module top_module ( 
    \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] , C,
    \D[0] , \D[1] , \D[2] , \D[3] ,
    eq, gt, \final_output[0] , \final_output[1] , \final_output[2] ,
    \final_output[3]   );
  input  \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ,
    C, \D[0] , \D[1] , \D[2] , \D[3] ;
  output eq, gt, \final_output[0] , \final_output[1] , \final_output[2] ,
    \final_output[3] ;
  ZERO     g0(.Y(eq));
  ZERO     g1(.Y(gt));
  ZERO     g2(.Y(\final_output[0] ));
  ZERO     g3(.Y(\final_output[1] ));
  ZERO     g4(.Y(\final_output[2] ));
  ZERO     g5(.Y(\final_output[3] ));
endmodule


