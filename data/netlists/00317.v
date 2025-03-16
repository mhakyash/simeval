// Benchmark "synchronizer_ff" written by ABC on Wed Jun 26 15:22:06 2024

module synchronizer_ff ( 
    \Q[0] , \Q[1] , \Q[2] , \Q[3] , m_aclk, AR,
    \D[0] , \D[1] , \D[2] , \D[3]   );
  input  \Q[0] , \Q[1] , \Q[2] , \Q[3] , m_aclk, AR;
  output \D[0] , \D[1] , \D[2] , \D[3] ;
  ZERO     g0(.Y(\D[0] ));
  ZERO     g1(.Y(\D[1] ));
  ZERO     g2(.Y(\D[2] ));
  ZERO     g3(.Y(\D[3] ));
endmodule


