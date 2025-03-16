// Benchmark "adder_4bit" written by ABC on Wed Jun 26 15:22:10 2024

module adder_4bit ( 
    \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ,
    \S[0] , \S[1] , \S[2] , \S[3] , C  );
  input  \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ;
  output \S[0] , \S[1] , \S[2] , \S[3] , C;
  wire new_n15, new_n16, new_n18, new_n19, new_n20, new_n21, new_n23,
    new_n24, new_n25;
  XOR2X1   g00(.A(\B[0] ), .B(\A[0] ), .Y(\S[0] ));
  XOR2X1   g01(.A(\B[1] ), .B(\A[1] ), .Y(new_n15));
  AND2X1   g02(.A(\B[0] ), .B(\A[0] ), .Y(new_n16));
  XOR2X1   g03(.A(new_n16), .B(new_n15), .Y(\S[1] ));
  INVX1    g04(.A(\A[2] ), .Y(new_n18));
  XOR2X1   g05(.A(\B[2] ), .B(new_n18), .Y(new_n19));
  AND2X1   g06(.A(\B[1] ), .B(\A[1] ), .Y(new_n20));
  AOI21X1  g07(.A0(new_n16), .A1(new_n15), .B0(new_n20), .Y(new_n21));
  XOR2X1   g08(.A(new_n21), .B(new_n19), .Y(\S[2] ));
  XOR2X1   g09(.A(\B[3] ), .B(\A[3] ), .Y(new_n23));
  NAND2X1  g10(.A(\B[2] ), .B(\A[2] ), .Y(new_n24));
  OAI21X1  g11(.A0(new_n21), .A1(new_n19), .B0(new_n24), .Y(new_n25));
  XOR2X1   g12(.A(new_n25), .B(new_n23), .Y(\S[3] ));
  XOR2X1   g13(.A(new_n25), .B(new_n23), .Y(C));
endmodule


