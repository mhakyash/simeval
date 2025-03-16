// Benchmark "priority_encoder" written by ABC on Wed Jun 26 15:22:07 2024

module priority_encoder ( 
    \in[0] , \in[1] , \in[2] , \in[3] ,
    \pos[0] , \pos[1]   );
  input  \in[0] , \in[1] , \in[2] , \in[3] ;
  output \pos[0] , \pos[1] ;
  wire new_n7, new_n8, new_n9;
  INVX1    g0(.A(\in[2] ), .Y(new_n7));
  AOI21X1  g1(.A0(new_n7), .A1(\in[1] ), .B0(\in[3] ), .Y(new_n8));
  NOR4X1   g2(.A(\in[3] ), .B(\in[2] ), .C(\in[1] ), .D(\in[0] ), .Y(new_n9));
  NOR2X1   g3(.A(new_n9), .B(new_n8), .Y(\pos[0] ));
  OR2X1    g4(.A(\in[3] ), .B(\in[2] ), .Y(\pos[1] ));
endmodule


