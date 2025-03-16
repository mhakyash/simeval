// Benchmark "barrel_shifter" written by ABC on Wed Jun 26 15:21:58 2024

module barrel_shifter ( 
    \in[0] , \in[1] , \in[2] , \in[3] , \shift_amt[0] , \shift_amt[1] ,
    \out[0] , \out[1] , \out[2] , \out[3]   );
  input  \in[0] , \in[1] , \in[2] , \in[3] , \shift_amt[0] ,
    \shift_amt[1] ;
  output \out[0] , \out[1] , \out[2] , \out[3] ;
  wire new_n11, new_n12, new_n13, new_n14, new_n15, new_n16;
  NOR2X1   g0(.A(\shift_amt[1] ), .B(\shift_amt[0] ), .Y(new_n11));
  INVX1    g1(.A(\shift_amt[0] ), .Y(new_n12));
  NOR2X1   g2(.A(\shift_amt[1] ), .B(new_n12), .Y(new_n13));
  AND2X1   g3(.A(\shift_amt[1] ), .B(new_n12), .Y(new_n14));
  AND2X1   g4(.A(\shift_amt[1] ), .B(\shift_amt[0] ), .Y(new_n15));
  OR4X1    g5(.A(new_n15), .B(new_n14), .C(new_n13), .D(new_n11), .Y(new_n16));
  AND2X1   g6(.A(new_n16), .B(\in[0] ), .Y(\out[0] ));
  AND2X1   g7(.A(new_n16), .B(\in[1] ), .Y(\out[1] ));
  AND2X1   g8(.A(new_n16), .B(\in[2] ), .Y(\out[2] ));
  AND2X1   g9(.A(new_n16), .B(\in[3] ), .Y(\out[3] ));
endmodule


