// Benchmark "gray_to_binary" written by ABC on Wed Jun 26 15:22:25 2024

module gray_to_binary ( 
    \gray[0] , \gray[1] , \gray[2] , \gray[3] ,
    \binary[0] , \binary[1] , \binary[2] , \binary[3]   );
  input  \gray[0] , \gray[1] , \gray[2] , \gray[3] ;
  output \binary[0] , \binary[1] , \binary[2] , \binary[3] ;
  XOR2X1   g0(.A(\gray[3] ), .B(\gray[2] ), .Y(\binary[2] ));
  XOR2X1   g1(.A(\binary[2] ), .B(\gray[1] ), .Y(\binary[1] ));
  XOR2X1   g2(.A(\binary[1] ), .B(\gray[0] ), .Y(\binary[0] ));
  BUFX1    g3(.A(\gray[3] ), .Y(\binary[3] ));
endmodule


