// Benchmark "parity" written by ABC on Wed Jun 26 15:22:21 2024

module parity ( 
    \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] , \in[6] , \in[7] ,
    parity_out, error_flag  );
  input  \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] , \in[6] ,
    \in[7] ;
  output parity_out, error_flag;
  INVX1    g0(.A(\in[7] ), .Y(parity_out));
  BUFX1    g1(.A(\in[7] ), .Y(error_flag));
endmodule


