// Benchmark "xor_8bit" written by ABC on Wed Jun 26 15:22:00 2024

module xor_8bit ( 
    \A[0] , \A[1] , \A[2] , \A[3] , \A[4] , \A[5] , \A[6] , \A[7] , \B[0] ,
    \B[1] , \B[2] , \B[3] , \B[4] , \B[5] , \B[6] , \B[7] , RST,
    \Y[0] , \Y[1] , \Y[2] , \Y[3] , \Y[4] , \Y[5] , \Y[6] , \Y[7]   );
  input  \A[0] , \A[1] , \A[2] , \A[3] , \A[4] , \A[5] , \A[6] , \A[7] ,
    \B[0] , \B[1] , \B[2] , \B[3] , \B[4] , \B[5] , \B[6] , \B[7] , RST;
  output \Y[0] , \Y[1] , \Y[2] , \Y[3] , \Y[4] , \Y[5] , \Y[6] , \Y[7] ;
  wire new_n26, new_n27, new_n29, new_n31, new_n33, new_n35, new_n37,
    new_n39, new_n41;
  INVX1    g00(.A(RST), .Y(new_n26));
  XOR2X1   g01(.A(\B[0] ), .B(\A[0] ), .Y(new_n27));
  AND2X1   g02(.A(new_n27), .B(new_n26), .Y(\Y[0] ));
  XOR2X1   g03(.A(\B[1] ), .B(\A[1] ), .Y(new_n29));
  AND2X1   g04(.A(new_n29), .B(new_n26), .Y(\Y[1] ));
  XOR2X1   g05(.A(\B[2] ), .B(\A[2] ), .Y(new_n31));
  AND2X1   g06(.A(new_n31), .B(new_n26), .Y(\Y[2] ));
  XOR2X1   g07(.A(\B[3] ), .B(\A[3] ), .Y(new_n33));
  AND2X1   g08(.A(new_n33), .B(new_n26), .Y(\Y[3] ));
  XOR2X1   g09(.A(\B[4] ), .B(\A[4] ), .Y(new_n35));
  AND2X1   g10(.A(new_n35), .B(new_n26), .Y(\Y[4] ));
  XOR2X1   g11(.A(\B[5] ), .B(\A[5] ), .Y(new_n37));
  AND2X1   g12(.A(new_n37), .B(new_n26), .Y(\Y[5] ));
  XOR2X1   g13(.A(\B[6] ), .B(\A[6] ), .Y(new_n39));
  AND2X1   g14(.A(new_n39), .B(new_n26), .Y(\Y[6] ));
  XOR2X1   g15(.A(\B[7] ), .B(\A[7] ), .Y(new_n41));
  AND2X1   g16(.A(new_n41), .B(new_n26), .Y(\Y[7] ));
endmodule


