// Benchmark "two_to_four_decoder" written by ABC on Wed Jun 26 15:22:03 2024

module two_to_four_decoder ( 
    enable, \in[0] , \in[1] ,
    \out[0] , \out[1] , \out[2] , \out[3]   );
  input  enable, \in[0] , \in[1] ;
  output \out[0] , \out[1] , \out[2] , \out[3] ;
  wire new_n8, new_n10, new_n12;
  INVX1    g0(.A(enable), .Y(new_n8));
  NOR3X1   g1(.A(\in[1] ), .B(\in[0] ), .C(new_n8), .Y(\out[0] ));
  INVX1    g2(.A(\in[0] ), .Y(new_n10));
  NOR3X1   g3(.A(\in[1] ), .B(new_n10), .C(new_n8), .Y(\out[1] ));
  INVX1    g4(.A(\in[1] ), .Y(new_n12));
  NOR3X1   g5(.A(new_n12), .B(\in[0] ), .C(new_n8), .Y(\out[2] ));
  NOR3X1   g6(.A(new_n12), .B(new_n10), .C(new_n8), .Y(\out[3] ));
endmodule


