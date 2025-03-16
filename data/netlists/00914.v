// Benchmark "sensor_interface" written by ABC on Wed Jun 26 15:22:24 2024

module sensor_interface ( 
    clk, reset,
    \data[0] , \data[1] , \data[2] , \data[3] , \data[4] , \data[5] ,
    \data[6] , \data[7]   );
  input  clk, reset;
  output \data[0] , \data[1] , \data[2] , \data[3] , \data[4] , \data[5] ,
    \data[6] , \data[7] ;
  ZERO     g0(.Y(\data[0] ));
  ZERO     g1(.Y(\data[1] ));
  ZERO     g2(.Y(\data[2] ));
  ZERO     g3(.Y(\data[3] ));
  ZERO     g4(.Y(\data[4] ));
  ZERO     g5(.Y(\data[5] ));
  ZERO     g6(.Y(\data[6] ));
  ZERO     g7(.Y(\data[7] ));
endmodule


