// Benchmark "binary_to_3bit_decoder" written by ABC on Wed Jun 26 15:22:13 2024

module binary_to_3bit_decoder ( 
    \in[0] , \in[1] , \in[2] ,
    o0, o1, o2  );
  input  \in[0] , \in[1] , \in[2] ;
  output o0, o1, o2;
  BUFX1    g0(.A(\in[0] ), .Y(o0));
  BUFX1    g1(.A(\in[1] ), .Y(o1));
  BUFX1    g2(.A(\in[2] ), .Y(o2));
endmodule


