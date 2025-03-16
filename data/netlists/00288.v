// Benchmark "priority_encoder" written by ABC on Wed Jun 26 15:22:05 2024

module priority_encoder ( 
    \in[0] , \in[1] , \in[2] , \in[3] ,
    \out[0] , \out[1]   );
  input  \in[0] , \in[1] , \in[2] , \in[3] ;
  output \out[0] , \out[1] ;
  ZERO     g0(.Y(\out[0] ));
  ZERO     g1(.Y(\out[1] ));
endmodule


