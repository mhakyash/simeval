// Benchmark "BUFFER16" written by ABC on Wed Jun 26 15:22:19 2024

module BUFFER16 ( 
    \IN[0] , \IN[1] , \IN[2] , \IN[3] , \IN[4] , \IN[5] , \IN[6] , \IN[7] ,
    \IN[8] , \IN[9] , \IN[10] , \IN[11] , \IN[12] , \IN[13] , \IN[14] ,
    \IN[15] ,
    \OUT[0] , \OUT[1] , \OUT[2] , \OUT[3] , \OUT[4] , \OUT[5] , \OUT[6] ,
    \OUT[7] , \OUT[8] , \OUT[9] , \OUT[10] , \OUT[11] , \OUT[12] ,
    \OUT[13] , \OUT[14] , \OUT[15]   );
  input  \IN[0] , \IN[1] , \IN[2] , \IN[3] , \IN[4] , \IN[5] , \IN[6] ,
    \IN[7] , \IN[8] , \IN[9] , \IN[10] , \IN[11] , \IN[12] , \IN[13] ,
    \IN[14] , \IN[15] ;
  output \OUT[0] , \OUT[1] , \OUT[2] , \OUT[3] , \OUT[4] , \OUT[5] , \OUT[6] ,
    \OUT[7] , \OUT[8] , \OUT[9] , \OUT[10] , \OUT[11] , \OUT[12] ,
    \OUT[13] , \OUT[14] , \OUT[15] ;
  BUFX1    g00(.A(\IN[0] ), .Y(\OUT[0] ));
  BUFX1    g01(.A(\IN[1] ), .Y(\OUT[1] ));
  BUFX1    g02(.A(\IN[2] ), .Y(\OUT[2] ));
  BUFX1    g03(.A(\IN[3] ), .Y(\OUT[3] ));
  BUFX1    g04(.A(\IN[4] ), .Y(\OUT[4] ));
  BUFX1    g05(.A(\IN[5] ), .Y(\OUT[5] ));
  BUFX1    g06(.A(\IN[6] ), .Y(\OUT[6] ));
  BUFX1    g07(.A(\IN[7] ), .Y(\OUT[7] ));
  BUFX1    g08(.A(\IN[8] ), .Y(\OUT[8] ));
  BUFX1    g09(.A(\IN[9] ), .Y(\OUT[9] ));
  BUFX1    g10(.A(\IN[10] ), .Y(\OUT[10] ));
  BUFX1    g11(.A(\IN[11] ), .Y(\OUT[11] ));
  BUFX1    g12(.A(\IN[12] ), .Y(\OUT[12] ));
  BUFX1    g13(.A(\IN[13] ), .Y(\OUT[13] ));
  BUFX1    g14(.A(\IN[14] ), .Y(\OUT[14] ));
  BUFX1    g15(.A(\IN[15] ), .Y(\OUT[15] ));
endmodule


