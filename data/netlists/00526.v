// Benchmark "RS" written by ABC on Wed Jun 26 15:22:13 2024

module RS ( 
    \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] , \in[6] , \in[7] ,
    \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] , \out[8] , \out[9] , \out[10] , \out[11]   );
  input  \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] , \in[6] ,
    \in[7] ;
  output \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] , \out[8] , \out[9] , \out[10] , \out[11] ;
  ZERO     g00(.Y(\out[0] ));
  ZERO     g01(.Y(\out[1] ));
  ZERO     g02(.Y(\out[2] ));
  ZERO     g03(.Y(\out[3] ));
  BUFX1    g04(.A(\in[0] ), .Y(\out[4] ));
  BUFX1    g05(.A(\in[1] ), .Y(\out[5] ));
  BUFX1    g06(.A(\in[2] ), .Y(\out[6] ));
  BUFX1    g07(.A(\in[3] ), .Y(\out[7] ));
  BUFX1    g08(.A(\in[4] ), .Y(\out[8] ));
  BUFX1    g09(.A(\in[5] ), .Y(\out[9] ));
  BUFX1    g10(.A(\in[6] ), .Y(\out[10] ));
  BUFX1    g11(.A(\in[7] ), .Y(\out[11] ));
endmodule


