// Benchmark "hamming_code" written by ABC on Wed Jun 26 15:21:58 2024

module hamming_code ( 
    \in[0] , \in[1] , \in[2] , \in[3] ,
    \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6]   );
  input  \in[0] , \in[1] , \in[2] , \in[3] ;
  output \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ;
  ZERO     g0(.Y(\out[0] ));
  ZERO     g1(.Y(\out[1] ));
  ZERO     g2(.Y(\out[2] ));
  ZERO     g3(.Y(\out[3] ));
  ZERO     g4(.Y(\out[4] ));
  ZERO     g5(.Y(\out[5] ));
  ZERO     g6(.Y(\out[6] ));
endmodule


