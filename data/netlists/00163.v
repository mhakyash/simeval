// Benchmark "compression_decompression" written by ABC on Wed Jun 26 15:22:02 2024

module compression_decompression ( 
    \data_in[0] , \data_in[1] , \data_in[2] , \data_in[3] , \data_in[4] ,
    \data_in[5] , \data_in[6] , \data_in[7] ,
    \data_out[0] , \data_out[1] , \data_out[2] , \data_out[3]   );
  input  \data_in[0] , \data_in[1] , \data_in[2] , \data_in[3] ,
    \data_in[4] , \data_in[5] , \data_in[6] , \data_in[7] ;
  output \data_out[0] , \data_out[1] , \data_out[2] , \data_out[3] ;
  wire new_n13;
  OR4X1    g0(.A(\data_in[3] ), .B(\data_in[2] ), .C(\data_in[1] ), .D(\data_in[0] ), .Y(new_n13));
  MX2X1    g1(.A(\data_in[4] ), .B(\data_in[0] ), .S0(new_n13), .Y(\data_out[0] ));
  MX2X1    g2(.A(\data_in[5] ), .B(\data_in[1] ), .S0(new_n13), .Y(\data_out[1] ));
  MX2X1    g3(.A(\data_in[6] ), .B(\data_in[2] ), .S0(new_n13), .Y(\data_out[2] ));
  MX2X1    g4(.A(\data_in[7] ), .B(\data_in[3] ), .S0(new_n13), .Y(\data_out[3] ));
endmodule


