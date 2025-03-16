// Benchmark "byte_reverse" written by ABC on Wed Jun 26 15:22:01 2024

module byte_reverse ( 
    \input_vector[0] , \input_vector[1] , \input_vector[2] ,
    \input_vector[3] , \input_vector[4] , \input_vector[5] ,
    \input_vector[6] , \input_vector[7] , \input_vector[8] ,
    \input_vector[9] , \input_vector[10] , \input_vector[11] ,
    \input_vector[12] , \input_vector[13] , \input_vector[14] ,
    \input_vector[15] , \input_vector[16] , \input_vector[17] ,
    \input_vector[18] , \input_vector[19] , \input_vector[20] ,
    \input_vector[21] , \input_vector[22] , \input_vector[23] ,
    \input_vector[24] , \input_vector[25] , \input_vector[26] ,
    \input_vector[27] , \input_vector[28] , \input_vector[29] ,
    \input_vector[30] , \input_vector[31] ,
    \output_vector[0] , \output_vector[1] , \output_vector[2] ,
    \output_vector[3] , \output_vector[4] , \output_vector[5] ,
    \output_vector[6] , \output_vector[7] , \output_vector[8] ,
    \output_vector[9] , \output_vector[10] , \output_vector[11] ,
    \output_vector[12] , \output_vector[13] , \output_vector[14] ,
    \output_vector[15] , \output_vector[16] , \output_vector[17] ,
    \output_vector[18] , \output_vector[19] , \output_vector[20] ,
    \output_vector[21] , \output_vector[22] , \output_vector[23] ,
    \output_vector[24] , \output_vector[25] , \output_vector[26] ,
    \output_vector[27] , \output_vector[28] , \output_vector[29] ,
    \output_vector[30] , \output_vector[31]   );
  input  \input_vector[0] , \input_vector[1] , \input_vector[2] ,
    \input_vector[3] , \input_vector[4] , \input_vector[5] ,
    \input_vector[6] , \input_vector[7] , \input_vector[8] ,
    \input_vector[9] , \input_vector[10] , \input_vector[11] ,
    \input_vector[12] , \input_vector[13] , \input_vector[14] ,
    \input_vector[15] , \input_vector[16] , \input_vector[17] ,
    \input_vector[18] , \input_vector[19] , \input_vector[20] ,
    \input_vector[21] , \input_vector[22] , \input_vector[23] ,
    \input_vector[24] , \input_vector[25] , \input_vector[26] ,
    \input_vector[27] , \input_vector[28] , \input_vector[29] ,
    \input_vector[30] , \input_vector[31] ;
  output \output_vector[0] , \output_vector[1] , \output_vector[2] ,
    \output_vector[3] , \output_vector[4] , \output_vector[5] ,
    \output_vector[6] , \output_vector[7] , \output_vector[8] ,
    \output_vector[9] , \output_vector[10] , \output_vector[11] ,
    \output_vector[12] , \output_vector[13] , \output_vector[14] ,
    \output_vector[15] , \output_vector[16] , \output_vector[17] ,
    \output_vector[18] , \output_vector[19] , \output_vector[20] ,
    \output_vector[21] , \output_vector[22] , \output_vector[23] ,
    \output_vector[24] , \output_vector[25] , \output_vector[26] ,
    \output_vector[27] , \output_vector[28] , \output_vector[29] ,
    \output_vector[30] , \output_vector[31] ;
  BUFX1    g00(.A(\input_vector[24] ), .Y(\output_vector[0] ));
  BUFX1    g01(.A(\input_vector[25] ), .Y(\output_vector[1] ));
  BUFX1    g02(.A(\input_vector[26] ), .Y(\output_vector[2] ));
  BUFX1    g03(.A(\input_vector[27] ), .Y(\output_vector[3] ));
  BUFX1    g04(.A(\input_vector[28] ), .Y(\output_vector[4] ));
  BUFX1    g05(.A(\input_vector[29] ), .Y(\output_vector[5] ));
  BUFX1    g06(.A(\input_vector[30] ), .Y(\output_vector[6] ));
  BUFX1    g07(.A(\input_vector[31] ), .Y(\output_vector[7] ));
  BUFX1    g08(.A(\input_vector[16] ), .Y(\output_vector[8] ));
  BUFX1    g09(.A(\input_vector[17] ), .Y(\output_vector[9] ));
  BUFX1    g10(.A(\input_vector[18] ), .Y(\output_vector[10] ));
  BUFX1    g11(.A(\input_vector[19] ), .Y(\output_vector[11] ));
  BUFX1    g12(.A(\input_vector[20] ), .Y(\output_vector[12] ));
  BUFX1    g13(.A(\input_vector[21] ), .Y(\output_vector[13] ));
  BUFX1    g14(.A(\input_vector[22] ), .Y(\output_vector[14] ));
  BUFX1    g15(.A(\input_vector[23] ), .Y(\output_vector[15] ));
  BUFX1    g16(.A(\input_vector[8] ), .Y(\output_vector[16] ));
  BUFX1    g17(.A(\input_vector[9] ), .Y(\output_vector[17] ));
  BUFX1    g18(.A(\input_vector[10] ), .Y(\output_vector[18] ));
  BUFX1    g19(.A(\input_vector[11] ), .Y(\output_vector[19] ));
  BUFX1    g20(.A(\input_vector[12] ), .Y(\output_vector[20] ));
  BUFX1    g21(.A(\input_vector[13] ), .Y(\output_vector[21] ));
  BUFX1    g22(.A(\input_vector[14] ), .Y(\output_vector[22] ));
  BUFX1    g23(.A(\input_vector[15] ), .Y(\output_vector[23] ));
  BUFX1    g24(.A(\input_vector[0] ), .Y(\output_vector[24] ));
  BUFX1    g25(.A(\input_vector[1] ), .Y(\output_vector[25] ));
  BUFX1    g26(.A(\input_vector[2] ), .Y(\output_vector[26] ));
  BUFX1    g27(.A(\input_vector[3] ), .Y(\output_vector[27] ));
  BUFX1    g28(.A(\input_vector[4] ), .Y(\output_vector[28] ));
  BUFX1    g29(.A(\input_vector[5] ), .Y(\output_vector[29] ));
  BUFX1    g30(.A(\input_vector[6] ), .Y(\output_vector[30] ));
  BUFX1    g31(.A(\input_vector[7] ), .Y(\output_vector[31] ));
endmodule


