// Benchmark "byte_reverse" written by ABC on Wed Jun 26 15:22:14 2024

module byte_reverse ( 
    \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] , \in[6] , \in[7] ,
    \in[8] , \in[9] , \in[10] , \in[11] , \in[12] , \in[13] , \in[14] ,
    \in[15] , \in[16] , \in[17] , \in[18] , \in[19] , \in[20] , \in[21] ,
    \in[22] , \in[23] , \in[24] , \in[25] , \in[26] , \in[27] , \in[28] ,
    \in[29] , \in[30] , \in[31] ,
    \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] , \out[8] , \out[9] , \out[10] , \out[11] , \out[12] ,
    \out[13] , \out[14] , \out[15] , \out[16] , \out[17] , \out[18] ,
    \out[19] , \out[20] , \out[21] , \out[22] , \out[23] , \out[24] ,
    \out[25] , \out[26] , \out[27] , \out[28] , \out[29] , \out[30] ,
    \out[31]   );
  input  \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] , \in[6] ,
    \in[7] , \in[8] , \in[9] , \in[10] , \in[11] , \in[12] , \in[13] ,
    \in[14] , \in[15] , \in[16] , \in[17] , \in[18] , \in[19] , \in[20] ,
    \in[21] , \in[22] , \in[23] , \in[24] , \in[25] , \in[26] , \in[27] ,
    \in[28] , \in[29] , \in[30] , \in[31] ;
  output \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] , \out[8] , \out[9] , \out[10] , \out[11] , \out[12] ,
    \out[13] , \out[14] , \out[15] , \out[16] , \out[17] , \out[18] ,
    \out[19] , \out[20] , \out[21] , \out[22] , \out[23] , \out[24] ,
    \out[25] , \out[26] , \out[27] , \out[28] , \out[29] , \out[30] ,
    \out[31] ;
  BUFX1    g00(.A(\in[24] ), .Y(\out[0] ));
  BUFX1    g01(.A(\in[25] ), .Y(\out[1] ));
  BUFX1    g02(.A(\in[26] ), .Y(\out[2] ));
  BUFX1    g03(.A(\in[27] ), .Y(\out[3] ));
  BUFX1    g04(.A(\in[28] ), .Y(\out[4] ));
  BUFX1    g05(.A(\in[29] ), .Y(\out[5] ));
  BUFX1    g06(.A(\in[30] ), .Y(\out[6] ));
  BUFX1    g07(.A(\in[31] ), .Y(\out[7] ));
  BUFX1    g08(.A(\in[16] ), .Y(\out[8] ));
  BUFX1    g09(.A(\in[17] ), .Y(\out[9] ));
  BUFX1    g10(.A(\in[18] ), .Y(\out[10] ));
  BUFX1    g11(.A(\in[19] ), .Y(\out[11] ));
  BUFX1    g12(.A(\in[20] ), .Y(\out[12] ));
  BUFX1    g13(.A(\in[21] ), .Y(\out[13] ));
  BUFX1    g14(.A(\in[22] ), .Y(\out[14] ));
  BUFX1    g15(.A(\in[23] ), .Y(\out[15] ));
  BUFX1    g16(.A(\in[8] ), .Y(\out[16] ));
  BUFX1    g17(.A(\in[9] ), .Y(\out[17] ));
  BUFX1    g18(.A(\in[10] ), .Y(\out[18] ));
  BUFX1    g19(.A(\in[11] ), .Y(\out[19] ));
  BUFX1    g20(.A(\in[12] ), .Y(\out[20] ));
  BUFX1    g21(.A(\in[13] ), .Y(\out[21] ));
  BUFX1    g22(.A(\in[14] ), .Y(\out[22] ));
  BUFX1    g23(.A(\in[15] ), .Y(\out[23] ));
  BUFX1    g24(.A(\in[0] ), .Y(\out[24] ));
  BUFX1    g25(.A(\in[1] ), .Y(\out[25] ));
  BUFX1    g26(.A(\in[2] ), .Y(\out[26] ));
  BUFX1    g27(.A(\in[3] ), .Y(\out[27] ));
  BUFX1    g28(.A(\in[4] ), .Y(\out[28] ));
  BUFX1    g29(.A(\in[5] ), .Y(\out[29] ));
  BUFX1    g30(.A(\in[6] ), .Y(\out[30] ));
  BUFX1    g31(.A(\in[7] ), .Y(\out[31] ));
endmodule


