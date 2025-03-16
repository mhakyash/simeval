// Benchmark "decoder_2to4_with_enable" written by ABC on Wed Jun 26 15:22:18 2024

module decoder_2to4_with_enable ( 
    A, B, EN,
    \Y[0] , \Y[1] , \Y[2] , \Y[3]   );
  input  A, B, EN;
  output \Y[0] , \Y[1] , \Y[2] , \Y[3] ;
  wire new_n8, new_n10, new_n12;
  INVX1    g0(.A(EN), .Y(new_n8));
  NOR3X1   g1(.A(new_n8), .B(B), .C(A), .Y(\Y[0] ));
  INVX1    g2(.A(B), .Y(new_n10));
  NOR3X1   g3(.A(new_n8), .B(new_n10), .C(A), .Y(\Y[1] ));
  INVX1    g4(.A(A), .Y(new_n12));
  NOR3X1   g5(.A(new_n8), .B(B), .C(new_n12), .Y(\Y[2] ));
  NOR3X1   g6(.A(new_n8), .B(new_n10), .C(new_n12), .Y(\Y[3] ));
endmodule


