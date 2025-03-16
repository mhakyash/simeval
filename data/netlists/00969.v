// Benchmark "tr_clk_data" written by ABC on Wed Jun 26 15:22:25 2024

module tr_clk_data ( 
    clk, clkx2, jrst_n, \tw[0] , \tw[1] , \tw[2] , \tw[3] , \tw[4] ,
    \tw[5] , \tw[6] , \tw[7] , \tw[8] , \tw[9] , \tw[10] , \tw[11] ,
    \tw[12] , \tw[13] , \tw[14] , \tw[15] , \tw[16] , \tw[17] , \tw[18] ,
    \tw[19] , \tw[20] , \tw[21] , \tw[22] , \tw[23] , \tw[24] , \tw[25] ,
    \tw[26] , \tw[27] , \tw[28] , \tw[29] , \tw[30] , \tw[31] , \tw[32] ,
    \tw[33] , \tw[34] , \tw[35] ,
    tr_clk, \tr_data[0] , \tr_data[1] , \tr_data[2] , \tr_data[3] ,
    \tr_data[4] , \tr_data[5] , \tr_data[6] , \tr_data[7] , \tr_data[8] ,
    \tr_data[9] , \tr_data[10] , \tr_data[11] , \tr_data[12] ,
    \tr_data[13] , \tr_data[14] , \tr_data[15] , \tr_data[16] ,
    \tr_data[17]   );
  input  clk, clkx2, jrst_n, \tw[0] , \tw[1] , \tw[2] , \tw[3] , \tw[4] ,
    \tw[5] , \tw[6] , \tw[7] , \tw[8] , \tw[9] , \tw[10] , \tw[11] ,
    \tw[12] , \tw[13] , \tw[14] , \tw[15] , \tw[16] , \tw[17] , \tw[18] ,
    \tw[19] , \tw[20] , \tw[21] , \tw[22] , \tw[23] , \tw[24] , \tw[25] ,
    \tw[26] , \tw[27] , \tw[28] , \tw[29] , \tw[30] , \tw[31] , \tw[32] ,
    \tw[33] , \tw[34] , \tw[35] ;
  output tr_clk, \tr_data[0] , \tr_data[1] , \tr_data[2] , \tr_data[3] ,
    \tr_data[4] , \tr_data[5] , \tr_data[6] , \tr_data[7] , \tr_data[8] ,
    \tr_data[9] , \tr_data[10] , \tr_data[11] , \tr_data[12] ,
    \tr_data[13] , \tr_data[14] , \tr_data[15] , \tr_data[16] ,
    \tr_data[17] ;
  ZERO     g00(.Y(tr_clk));
  ZERO     g01(.Y(\tr_data[0] ));
  ZERO     g02(.Y(\tr_data[1] ));
  ZERO     g03(.Y(\tr_data[2] ));
  ZERO     g04(.Y(\tr_data[3] ));
  ZERO     g05(.Y(\tr_data[4] ));
  ZERO     g06(.Y(\tr_data[5] ));
  ZERO     g07(.Y(\tr_data[6] ));
  ZERO     g08(.Y(\tr_data[7] ));
  ZERO     g09(.Y(\tr_data[8] ));
  ZERO     g10(.Y(\tr_data[9] ));
  ZERO     g11(.Y(\tr_data[10] ));
  ZERO     g12(.Y(\tr_data[11] ));
  ZERO     g13(.Y(\tr_data[12] ));
  ZERO     g14(.Y(\tr_data[13] ));
  ZERO     g15(.Y(\tr_data[14] ));
  ZERO     g16(.Y(\tr_data[15] ));
  ZERO     g17(.Y(\tr_data[16] ));
  ZERO     g18(.Y(\tr_data[17] ));
endmodule


