// Benchmark "lab3_master_0_p2b_adapter" written by ABC on Wed Jun 26 15:22:24 2024

module lab3_master_0_p2b_adapter ( 
    clk, reset_n, in_valid, \in_data[0] , \in_data[1] , \in_data[2] ,
    \in_data[3] , \in_data[4] , \in_data[5] , \in_data[6] , \in_data[7] ,
    in_startofpacket, in_endofpacket, out_ready,
    in_ready, out_valid, \out_data[0] , \out_data[1] , \out_data[2] ,
    \out_data[3] , \out_data[4] , \out_data[5] , \out_data[6] ,
    \out_data[7] , out_startofpacket, out_endofpacket, \out_channel[0] ,
    \out_channel[1] , \out_channel[2] , \out_channel[3] , \out_channel[4] ,
    \out_channel[5] , \out_channel[6] , \out_channel[7]   );
  input  clk, reset_n, in_valid, \in_data[0] , \in_data[1] ,
    \in_data[2] , \in_data[3] , \in_data[4] , \in_data[5] , \in_data[6] ,
    \in_data[7] , in_startofpacket, in_endofpacket, out_ready;
  output in_ready, out_valid, \out_data[0] , \out_data[1] , \out_data[2] ,
    \out_data[3] , \out_data[4] , \out_data[5] , \out_data[6] ,
    \out_data[7] , out_startofpacket, out_endofpacket, \out_channel[0] ,
    \out_channel[1] , \out_channel[2] , \out_channel[3] , \out_channel[4] ,
    \out_channel[5] , \out_channel[6] , \out_channel[7] ;
  ZERO     g00(.Y(\out_channel[0] ));
  ZERO     g01(.Y(\out_channel[1] ));
  ZERO     g02(.Y(\out_channel[2] ));
  ZERO     g03(.Y(\out_channel[3] ));
  ZERO     g04(.Y(\out_channel[4] ));
  ZERO     g05(.Y(\out_channel[5] ));
  ZERO     g06(.Y(\out_channel[6] ));
  ZERO     g07(.Y(\out_channel[7] ));
  BUFX1    g08(.A(out_ready), .Y(in_ready));
  BUFX1    g09(.A(in_valid), .Y(out_valid));
  BUFX1    g10(.A(\in_data[0] ), .Y(\out_data[0] ));
  BUFX1    g11(.A(\in_data[1] ), .Y(\out_data[1] ));
  BUFX1    g12(.A(\in_data[2] ), .Y(\out_data[2] ));
  BUFX1    g13(.A(\in_data[3] ), .Y(\out_data[3] ));
  BUFX1    g14(.A(\in_data[4] ), .Y(\out_data[4] ));
  BUFX1    g15(.A(\in_data[5] ), .Y(\out_data[5] ));
  BUFX1    g16(.A(\in_data[6] ), .Y(\out_data[6] ));
  BUFX1    g17(.A(\in_data[7] ), .Y(\out_data[7] ));
  BUFX1    g18(.A(in_startofpacket), .Y(out_startofpacket));
  BUFX1    g19(.A(in_endofpacket), .Y(out_endofpacket));
endmodule


