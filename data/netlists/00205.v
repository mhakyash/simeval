// Benchmark "sdio_function_template" written by ABC on Wed Jun 26 15:22:03 2024

module sdio_function_template ( 
    clk, rst, \i_reg_example[0] , \i_reg_example[1] , \i_reg_example[2] ,
    \i_reg_example[3] , \i_reg_example[4] , \i_reg_example[5] ,
    \i_reg_example[6] , \i_reg_example[7] ,
    \o_reg_example[0] , \o_reg_example[1] , \o_reg_example[2] ,
    \o_reg_example[3] , \o_reg_example[4] , \o_reg_example[5] ,
    \o_reg_example[6] , \o_reg_example[7]   );
  input  clk, rst, \i_reg_example[0] , \i_reg_example[1] ,
    \i_reg_example[2] , \i_reg_example[3] , \i_reg_example[4] ,
    \i_reg_example[5] , \i_reg_example[6] , \i_reg_example[7] ;
  output \o_reg_example[0] , \o_reg_example[1] , \o_reg_example[2] ,
    \o_reg_example[3] , \o_reg_example[4] , \o_reg_example[5] ,
    \o_reg_example[6] , \o_reg_example[7] ;
  ZERO     g0(.Y(\o_reg_example[0] ));
  ZERO     g1(.Y(\o_reg_example[1] ));
  ZERO     g2(.Y(\o_reg_example[2] ));
  ZERO     g3(.Y(\o_reg_example[3] ));
  ZERO     g4(.Y(\o_reg_example[4] ));
  ZERO     g5(.Y(\o_reg_example[5] ));
  ZERO     g6(.Y(\o_reg_example[6] ));
  ZERO     g7(.Y(\o_reg_example[7] ));
endmodule


