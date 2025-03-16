// Benchmark "LCD_driver" written by ABC on Wed Jun 26 15:22:13 2024

module LCD_driver ( 
    \data[0] , \data[1] , \data[2] , \data[3] , \data[4] , \data[5] ,
    \data[6] , \data[7] ,
    \ctrl[0] , \ctrl[1] , \ctrl[2]   );
  input  \data[0] , \data[1] , \data[2] , \data[3] , \data[4] ,
    \data[5] , \data[6] , \data[7] ;
  output \ctrl[0] , \ctrl[1] , \ctrl[2] ;
  AND2X1   g0(.A(\data[1] ), .B(\data[0] ), .Y(\ctrl[0] ));
  OR2X1    g1(.A(\data[3] ), .B(\data[2] ), .Y(\ctrl[1] ));
  XOR2X1   g2(.A(\data[5] ), .B(\data[4] ), .Y(\ctrl[2] ));
endmodule


