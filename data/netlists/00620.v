// Benchmark "decoder" written by ABC on Wed Jun 26 15:22:15 2024

module decoder ( 
    \A[0] , \A[1] , \A[2] , \A[3] ,
    \Y[0] , \Y[1] , \Y[2] , \Y[3] , \Y[4] , \Y[5] , \Y[6] , \Y[7] , \Y[8] ,
    \Y[9] , \Y[10] , \Y[11] , \Y[12] , \Y[13] , \Y[14] , \Y[15]   );
  input  \A[0] , \A[1] , \A[2] , \A[3] ;
  output \Y[0] , \Y[1] , \Y[2] , \Y[3] , \Y[4] , \Y[5] , \Y[6] , \Y[7] ,
    \Y[8] , \Y[9] , \Y[10] , \Y[11] , \Y[12] , \Y[13] , \Y[14] , \Y[15] ;
  wire new_n22, new_n24, new_n27, new_n32;
  NOR4X1   g00(.A(\A[3] ), .B(\A[2] ), .C(\A[1] ), .D(\A[0] ), .Y(\Y[0] ));
  INVX1    g01(.A(\A[0] ), .Y(new_n22));
  NOR4X1   g02(.A(\A[3] ), .B(\A[2] ), .C(\A[1] ), .D(new_n22), .Y(\Y[1] ));
  INVX1    g03(.A(\A[1] ), .Y(new_n24));
  NOR4X1   g04(.A(\A[3] ), .B(\A[2] ), .C(new_n24), .D(\A[0] ), .Y(\Y[2] ));
  NOR4X1   g05(.A(\A[3] ), .B(\A[2] ), .C(new_n24), .D(new_n22), .Y(\Y[3] ));
  INVX1    g06(.A(\A[2] ), .Y(new_n27));
  NOR4X1   g07(.A(\A[3] ), .B(new_n27), .C(\A[1] ), .D(\A[0] ), .Y(\Y[4] ));
  NOR4X1   g08(.A(\A[3] ), .B(new_n27), .C(\A[1] ), .D(new_n22), .Y(\Y[5] ));
  NOR4X1   g09(.A(\A[3] ), .B(new_n27), .C(new_n24), .D(\A[0] ), .Y(\Y[6] ));
  NOR4X1   g10(.A(\A[3] ), .B(new_n27), .C(new_n24), .D(new_n22), .Y(\Y[7] ));
  INVX1    g11(.A(\A[3] ), .Y(new_n32));
  NOR4X1   g12(.A(new_n32), .B(\A[2] ), .C(\A[1] ), .D(\A[0] ), .Y(\Y[8] ));
  NOR4X1   g13(.A(new_n32), .B(\A[2] ), .C(\A[1] ), .D(new_n22), .Y(\Y[9] ));
  NOR4X1   g14(.A(new_n32), .B(\A[2] ), .C(new_n24), .D(\A[0] ), .Y(\Y[10] ));
  NOR4X1   g15(.A(new_n32), .B(\A[2] ), .C(new_n24), .D(new_n22), .Y(\Y[11] ));
  NOR4X1   g16(.A(new_n32), .B(new_n27), .C(\A[1] ), .D(\A[0] ), .Y(\Y[12] ));
  NOR4X1   g17(.A(new_n32), .B(new_n27), .C(\A[1] ), .D(new_n22), .Y(\Y[13] ));
  NOR4X1   g18(.A(new_n32), .B(new_n27), .C(new_n24), .D(\A[0] ), .Y(\Y[14] ));
  NOR4X1   g19(.A(new_n32), .B(new_n27), .C(new_n24), .D(new_n22), .Y(\Y[15] ));
endmodule


