// Benchmark "shift_register" written by ABC on Wed Jun 26 15:22:12 2024

module shift_register ( 
    data,
    \out[0] , \out[1] , \out[2] , \out[3]   );
  input  data;
  output \out[0] , \out[1] , \out[2] , \out[3] ;
  BUFX1    g0(.A(data), .Y(\out[0] ));
  BUFX1    g1(.A(data), .Y(\out[1] ));
  BUFX1    g2(.A(data), .Y(\out[2] ));
  BUFX1    g3(.A(data), .Y(\out[3] ));
endmodule


