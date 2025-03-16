// Benchmark "greater_value" written by ABC on Wed Jun 26 15:22:22 2024

module greater_value ( 
    \a0[0] , \a0[1] , \a0[2] , \a0[3] , \a1[0] , \a1[1] , \a1[2] , \a1[3] ,
    \out[0] , \out[1] , \out[2] , \out[3]   );
  input  \a0[0] , \a0[1] , \a0[2] , \a0[3] , \a1[0] , \a1[1] , \a1[2] ,
    \a1[3] ;
  output \out[0] , \out[1] , \out[2] , \out[3] ;
  wire new_n14, new_n15, new_n17, new_n18, new_n19, new_n20, new_n22,
    new_n23, new_n24;
  XOR2X1   g00(.A(\a1[0] ), .B(\a0[0] ), .Y(\out[0] ));
  XOR2X1   g01(.A(\a1[1] ), .B(\a0[1] ), .Y(new_n14));
  AND2X1   g02(.A(\a1[0] ), .B(\a0[0] ), .Y(new_n15));
  XOR2X1   g03(.A(new_n15), .B(new_n14), .Y(\out[1] ));
  INVX1    g04(.A(\a0[2] ), .Y(new_n17));
  XOR2X1   g05(.A(\a1[2] ), .B(new_n17), .Y(new_n18));
  AND2X1   g06(.A(\a1[1] ), .B(\a0[1] ), .Y(new_n19));
  AOI21X1  g07(.A0(new_n15), .A1(new_n14), .B0(new_n19), .Y(new_n20));
  XOR2X1   g08(.A(new_n20), .B(new_n18), .Y(\out[2] ));
  XOR2X1   g09(.A(\a1[3] ), .B(\a0[3] ), .Y(new_n22));
  NAND2X1  g10(.A(\a1[2] ), .B(\a0[2] ), .Y(new_n23));
  OAI21X1  g11(.A0(new_n20), .A1(new_n18), .B0(new_n23), .Y(new_n24));
  XOR2X1   g12(.A(new_n24), .B(new_n22), .Y(\out[3] ));
endmodule


