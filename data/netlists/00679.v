// Benchmark "comparator_2bit" written by ABC on Wed Jun 26 15:22:17 2024

module comparator_2bit ( 
    \A[0] , \A[1] , \B[0] , \B[1] ,
    equal, greater  );
  input  \A[0] , \A[1] , \B[0] , \B[1] ;
  output equal, greater;
  wire new_n7, new_n8, new_n10, new_n11, new_n12, new_n13, new_n14, new_n15,
    new_n16, new_n17;
  XOR2X1   g00(.A(\B[0] ), .B(\A[0] ), .Y(new_n7));
  XOR2X1   g01(.A(\B[1] ), .B(\A[1] ), .Y(new_n8));
  NOR2X1   g02(.A(new_n8), .B(new_n7), .Y(equal));
  INVX1    g03(.A(\A[1] ), .Y(new_n10));
  OR2X1    g04(.A(\B[1] ), .B(new_n10), .Y(new_n11));
  XOR2X1   g05(.A(\B[1] ), .B(new_n10), .Y(new_n12));
  INVX1    g06(.A(\B[0] ), .Y(new_n13));
  XOR2X1   g07(.A(new_n13), .B(\A[0] ), .Y(new_n14));
  AND2X1   g08(.A(\B[1] ), .B(\A[1] ), .Y(new_n15));
  NOR2X1   g09(.A(\B[1] ), .B(\A[1] ), .Y(new_n16));
  OAI22X1  g10(.A0(new_n16), .A1(new_n15), .B0(new_n13), .B1(\A[0] ), .Y(new_n17));
  AOI22X1  g11(.A0(new_n17), .A1(new_n11), .B0(new_n14), .B1(new_n12), .Y(greater));
endmodule


