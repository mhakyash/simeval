// Benchmark "shift_left" written by ABC on Wed Jun 26 15:22:09 2024

module shift_left ( 
    \in[0] , \in[1] , \in[2] , \in[3] ,
    \out[0] , \out[1] , \out[2] , \out[3]   );
  input  \in[0] , \in[1] , \in[2] , \in[3] ;
  output \out[0] , \out[1] , \out[2] , \out[3] ;
  BUFX1    g0(.A(\in[3] ), .Y(\out[0] ));
  BUFX1    g1(.A(\in[0] ), .Y(\out[1] ));
  BUFX1    g2(.A(\in[1] ), .Y(\out[2] ));
  BUFX1    g3(.A(\in[2] ), .Y(\out[3] ));
endmodule


