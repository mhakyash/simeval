// Benchmark "clock_gate" written by ABC on Wed Jun 26 15:22:16 2024

module clock_gate ( clock, 
    CLK, EN, TE, \data_in[0] , \data_in[1] , \data_in[2] , \data_in[3] ,
    \data_in[4] , \data_in[5] , \data_in[6] , \data_in[7] , \data_in[8] ,
    \data_in[9] , \data_in[10] , \data_in[11] , \data_in[12] ,
    \data_in[13] , \data_in[14] , \data_in[15] , \data_in[16] ,
    \data_in[17] , \data_in[18] , \data_in[19] , \data_in[20] ,
    \data_in[21] , \data_in[22] , \data_in[23] , \data_in[24] ,
    \data_in[25] , \data_in[26] , \data_in[27] , \data_in[28] ,
    \data_in[29] , \data_in[30] , \data_in[31] ,
    ENCLK  );
  input  clock;
  input  CLK, EN, TE, \data_in[0] , \data_in[1] , \data_in[2] ,
    \data_in[3] , \data_in[4] , \data_in[5] , \data_in[6] , \data_in[7] ,
    \data_in[8] , \data_in[9] , \data_in[10] , \data_in[11] ,
    \data_in[12] , \data_in[13] , \data_in[14] , \data_in[15] ,
    \data_in[16] , \data_in[17] , \data_in[18] , \data_in[19] ,
    \data_in[20] , \data_in[21] , \data_in[22] , \data_in[23] ,
    \data_in[24] , \data_in[25] , \data_in[26] , \data_in[27] ,
    \data_in[28] , \data_in[29] , \data_in[30] , \data_in[31] ;
  output ENCLK;
  reg ENCLK;
  wire new_n40, n74;
  AND2X1   g0(.A(EN), .B(CLK), .Y(new_n40));
  OR2X1    g1(.A(new_n40), .B(TE), .Y(n74));
  always @ (posedge clock) begin
    ENCLK <= n74;
  end
endmodule


