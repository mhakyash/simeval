// Benchmark "decoder" written by ABC on Wed Jun 26 15:22:14 2024

module decoder ( 
    enable, \select[0] , \select[1] ,
    \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] , \out[8] , \out[9] , \out[10] , \out[11] , \out[12] ,
    \out[13] , \out[14] , \out[15]   );
  input  enable, \select[0] , \select[1] ;
  output \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] , \out[8] , \out[9] , \out[10] , \out[11] , \out[12] ,
    \out[13] , \out[14] , \out[15] ;
  wire new_n20, new_n21;
  INVX1    g00(.A(\select[0] ), .Y(new_n20));
  INVX1    g01(.A(\select[1] ), .Y(new_n21));
  NAND3X1  g02(.A(new_n21), .B(new_n20), .C(enable), .Y(\out[0] ));
  NAND3X1  g03(.A(new_n21), .B(\select[0] ), .C(enable), .Y(\out[1] ));
  NAND3X1  g04(.A(\select[1] ), .B(new_n20), .C(enable), .Y(\out[2] ));
  NAND3X1  g05(.A(\select[1] ), .B(\select[0] ), .C(enable), .Y(\out[3] ));
  ONE      g06(.Y(\out[4] ));
  ONE      g07(.Y(\out[5] ));
  ONE      g08(.Y(\out[6] ));
  ONE      g09(.Y(\out[7] ));
  ONE      g10(.Y(\out[8] ));
  ONE      g11(.Y(\out[9] ));
  ONE      g12(.Y(\out[10] ));
  ONE      g13(.Y(\out[11] ));
  ONE      g14(.Y(\out[12] ));
  ONE      g15(.Y(\out[13] ));
  ONE      g16(.Y(\out[14] ));
  ONE      g17(.Y(\out[15] ));
endmodule


