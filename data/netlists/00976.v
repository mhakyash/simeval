// Benchmark "gray_code" written by ABC on Wed Jun 26 15:22:25 2024

module gray_code ( 
    \a[0] , \a[1] , \a[2] , \a[3] ,
    \gray[0] , \gray[1] , \gray[2] , \gray[3]   );
  input  \a[0] , \a[1] , \a[2] , \a[3] ;
  output \gray[0] , \gray[1] , \gray[2] , \gray[3] ;
  XOR2X1   g0(.A(\a[1] ), .B(\a[0] ), .Y(\gray[0] ));
  XOR2X1   g1(.A(\a[2] ), .B(\a[1] ), .Y(\gray[1] ));
  XOR2X1   g2(.A(\a[3] ), .B(\a[2] ), .Y(\gray[2] ));
  BUFX1    g3(.A(\a[3] ), .Y(\gray[3] ));
endmodule


