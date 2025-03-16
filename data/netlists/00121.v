// Benchmark "barrel_shifter" written by ABC on Wed Jun 26 15:22:01 2024

module barrel_shifter ( 
    \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] ,
    \shifted[0] , \shifted[1] , \shifted[2] , \shifted[3]   );
  input  \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] ;
  output \shifted[0] , \shifted[1] , \shifted[2] , \shifted[3] ;
  wire new_n11, new_n12, new_n13, new_n14, new_n15, new_n16, new_n17,
    new_n18, new_n20, new_n21, new_n23, new_n24, new_n26, new_n27;
  AND2X1   g00(.A(\B[1] ), .B(\B[0] ), .Y(new_n11));
  INVX1    g01(.A(\B[1] ), .Y(new_n12));
  NOR2X1   g02(.A(new_n12), .B(\B[0] ), .Y(new_n13));
  AOI22X1  g03(.A0(new_n13), .A1(\A[2] ), .B0(new_n11), .B1(\A[1] ), .Y(new_n14));
  AND2X1   g04(.A(new_n12), .B(\B[0] ), .Y(new_n15));
  NOR2X1   g05(.A(\B[1] ), .B(\B[0] ), .Y(new_n16));
  AOI22X1  g06(.A0(new_n16), .A1(\A[0] ), .B0(new_n15), .B1(\A[3] ), .Y(new_n17));
  NOR4X1   g07(.A(new_n16), .B(new_n15), .C(new_n13), .D(new_n11), .Y(new_n18));
  AOI21X1  g08(.A0(new_n17), .A1(new_n14), .B0(new_n18), .Y(\shifted[0] ));
  AOI22X1  g09(.A0(new_n13), .A1(\A[3] ), .B0(new_n11), .B1(\A[2] ), .Y(new_n20));
  AOI22X1  g10(.A0(new_n16), .A1(\A[1] ), .B0(new_n15), .B1(\A[0] ), .Y(new_n21));
  AOI21X1  g11(.A0(new_n21), .A1(new_n20), .B0(new_n18), .Y(\shifted[1] ));
  AOI22X1  g12(.A0(new_n13), .A1(\A[0] ), .B0(new_n11), .B1(\A[3] ), .Y(new_n23));
  AOI22X1  g13(.A0(new_n16), .A1(\A[2] ), .B0(new_n15), .B1(\A[1] ), .Y(new_n24));
  AOI21X1  g14(.A0(new_n24), .A1(new_n23), .B0(new_n18), .Y(\shifted[2] ));
  AOI22X1  g15(.A0(new_n13), .A1(\A[1] ), .B0(new_n11), .B1(\A[0] ), .Y(new_n26));
  AOI22X1  g16(.A0(new_n16), .A1(\A[3] ), .B0(new_n15), .B1(\A[2] ), .Y(new_n27));
  AOI21X1  g17(.A0(new_n27), .A1(new_n26), .B0(new_n18), .Y(\shifted[3] ));
endmodule


