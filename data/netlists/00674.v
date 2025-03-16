// Benchmark "input_output_pipeline" written by ABC on Wed Jun 26 15:22:17 2024

module input_output_pipeline ( 
    clk, reset_n, in_valid, \in_data[0] , \in_data[1] , \in_data[2] ,
    \in_data[3] , \in_data[4] , \in_data[5] , \in_data[6] , \in_data[7] ,
    out_ready,
    out_valid, \out_data[0] , \out_data[1] , \out_data[2] , \out_data[3] ,
    \out_data[4] , \out_data[5] , \out_data[6] , \out_data[7]   );
  input  clk, reset_n, in_valid, \in_data[0] , \in_data[1] ,
    \in_data[2] , \in_data[3] , \in_data[4] , \in_data[5] , \in_data[6] ,
    \in_data[7] , out_ready;
  output out_valid, \out_data[0] , \out_data[1] , \out_data[2] ,
    \out_data[3] , \out_data[4] , \out_data[5] , \out_data[6] ,
    \out_data[7] ;
  BUFX1    g0(.A(in_valid), .Y(out_valid));
  BUFX1    g1(.A(\in_data[0] ), .Y(\out_data[0] ));
  BUFX1    g2(.A(\in_data[1] ), .Y(\out_data[1] ));
  BUFX1    g3(.A(\in_data[2] ), .Y(\out_data[2] ));
  BUFX1    g4(.A(\in_data[3] ), .Y(\out_data[3] ));
  BUFX1    g5(.A(\in_data[4] ), .Y(\out_data[4] ));
  BUFX1    g6(.A(\in_data[5] ), .Y(\out_data[5] ));
  BUFX1    g7(.A(\in_data[6] ), .Y(\out_data[6] ));
  BUFX1    g8(.A(\in_data[7] ), .Y(\out_data[7] ));
endmodule


