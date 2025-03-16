// Benchmark "wireless_comm" written by ABC on Wed Jun 26 15:22:22 2024

module wireless_comm ( 
    clk, reset_n, \tx_data[0] , \tx_data[1] , \tx_data[2] , \tx_data[3] ,
    \tx_data[4] , \tx_data[5] , \tx_data[6] , \tx_data[7] , tx_en, rx_en,
    \rx_data[0] , \rx_data[1] , \rx_data[2] , \rx_data[3] , \rx_data[4] ,
    \rx_data[5] , \rx_data[6] , \rx_data[7] , tx_busy  );
  input  clk, reset_n, \tx_data[0] , \tx_data[1] , \tx_data[2] ,
    \tx_data[3] , \tx_data[4] , \tx_data[5] , \tx_data[6] , \tx_data[7] ,
    tx_en, rx_en;
  output \rx_data[0] , \rx_data[1] , \rx_data[2] , \rx_data[3] , \rx_data[4] ,
    \rx_data[5] , \rx_data[6] , \rx_data[7] , tx_busy;
  ZERO     g0(.Y(\rx_data[0] ));
  ZERO     g1(.Y(\rx_data[1] ));
  ZERO     g2(.Y(\rx_data[2] ));
  ZERO     g3(.Y(\rx_data[3] ));
  ZERO     g4(.Y(\rx_data[4] ));
  ZERO     g5(.Y(\rx_data[5] ));
  ZERO     g6(.Y(\rx_data[6] ));
  ZERO     g7(.Y(\rx_data[7] ));
  ZERO     g8(.Y(tx_busy));
endmodule


