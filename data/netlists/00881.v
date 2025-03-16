// Benchmark "binary_adder" written by ABC on Wed Jun 26 15:22:23 2024

module binary_adder ( 
    \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] , Cin,
    \S[0] , \S[1] , \S[2] , \S[3] , Cout  );
  input  \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ,
    Cin;
  output \S[0] , \S[1] , \S[2] , \S[3] , Cout;
  wire new_n15, new_n17, new_n18, new_n22, new_n23, new_n24;
  XOR2X1   g00(.A(\B[0] ), .B(\A[0] ), .Y(new_n15));
  XOR2X1   g01(.A(new_n15), .B(Cin), .Y(\S[0] ));
  XOR2X1   g02(.A(\B[1] ), .B(\A[1] ), .Y(new_n17));
  AND2X1   g03(.A(new_n15), .B(Cin), .Y(new_n18));
  XOR2X1   g04(.A(new_n18), .B(new_n17), .Y(\S[1] ));
  XOR2X1   g05(.A(\B[2] ), .B(\A[2] ), .Y(\S[2] ));
  XOR2X1   g06(.A(\B[3] ), .B(\A[3] ), .Y(\S[3] ));
  NAND4X1  g07(.A(new_n15), .B(Cin), .C(\B[2] ), .D(\A[2] ), .Y(new_n22));
  AND2X1   g08(.A(\B[1] ), .B(\A[1] ), .Y(new_n23));
  AOI22X1  g09(.A0(new_n23), .A1(Cin), .B0(\B[0] ), .B1(\A[0] ), .Y(new_n24));
  NAND2X1  g10(.A(new_n24), .B(new_n22), .Y(Cout));
endmodule


