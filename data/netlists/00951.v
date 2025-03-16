// Benchmark "nand_mux_4to1" written by ABC on Wed Jun 26 15:22:25 2024

module nand_mux_4to1 ( 
    \A[0] , \A[1] , \A[2] , \A[3] , \S[0] , \S[1] ,
    out  );
  input  \A[0] , \A[1] , \A[2] , \A[3] , \S[0] , \S[1] ;
  output out;
  wire new_n8, new_n9, new_n10, new_n11, new_n12, new_n13, new_n14, new_n15,
    new_n16, new_n17;
  AND2X1   g00(.A(\A[1] ), .B(\A[0] ), .Y(new_n8));
  NAND2X1  g01(.A(\S[1] ), .B(\S[0] ), .Y(new_n9));
  INVX1    g02(.A(\S[1] ), .Y(new_n10));
  OR2X1    g03(.A(new_n10), .B(\S[0] ), .Y(new_n11));
  NAND4X1  g04(.A(new_n11), .B(new_n9), .C(new_n8), .D(\A[2] ), .Y(new_n12));
  NAND2X1  g05(.A(\A[3] ), .B(\A[2] ), .Y(new_n13));
  AOI21X1  g06(.A0(new_n10), .A1(\S[0] ), .B0(new_n13), .Y(new_n14));
  OR2X1    g07(.A(\S[1] ), .B(\S[0] ), .Y(new_n15));
  AND2X1   g08(.A(\A[3] ), .B(\A[0] ), .Y(new_n16));
  AND2X1   g09(.A(new_n16), .B(new_n15), .Y(new_n17));
  NOR3X1   g10(.A(new_n17), .B(new_n14), .C(new_n12), .Y(out));
endmodule


