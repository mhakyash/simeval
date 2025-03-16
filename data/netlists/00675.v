// Benchmark "four_bit_adder" written by ABC on Wed Jun 26 15:22:17 2024

module four_bit_adder ( 
    \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ,
    \CI[0] , \CI[1] , \CI[2] , \CI[3] ,
    \S[0] , \S[1] , \S[2] , \S[3] , \CO[0] , \CO[1] , \CO[2] , \CO[3]   );
  input  \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ,
    \CI[0] , \CI[1] , \CI[2] , \CI[3] ;
  output \S[0] , \S[1] , \S[2] , \S[3] , \CO[0] , \CO[1] , \CO[2] , \CO[3] ;
  wire new_n21, new_n23, new_n24, new_n25, new_n26, new_n28, new_n29,
    new_n30, new_n31, new_n32, new_n33, new_n34, new_n35, new_n37, new_n38,
    new_n39, new_n40, new_n41, new_n43, new_n44, new_n45;
  XOR2X1   g00(.A(\B[0] ), .B(\A[0] ), .Y(new_n21));
  XOR2X1   g01(.A(new_n21), .B(\CI[0] ), .Y(\S[0] ));
  XOR2X1   g02(.A(\B[1] ), .B(\A[1] ), .Y(new_n23));
  NAND2X1  g03(.A(\CI[0] ), .B(\B[0] ), .Y(new_n24));
  OAI21X1  g04(.A0(\CI[0] ), .A1(\B[0] ), .B0(\A[0] ), .Y(new_n25));
  NAND2X1  g05(.A(new_n25), .B(new_n24), .Y(new_n26));
  XOR2X1   g06(.A(new_n26), .B(new_n23), .Y(\S[1] ));
  INVX1    g07(.A(\A[2] ), .Y(new_n28));
  XOR2X1   g08(.A(\B[2] ), .B(new_n28), .Y(new_n29));
  INVX1    g09(.A(\B[1] ), .Y(new_n30));
  AOI21X1  g10(.A0(new_n25), .A1(new_n24), .B0(new_n30), .Y(new_n31));
  AND2X1   g11(.A(\B[1] ), .B(\A[1] ), .Y(new_n32));
  INVX1    g12(.A(\A[1] ), .Y(new_n33));
  AOI21X1  g13(.A0(new_n25), .A1(new_n24), .B0(new_n33), .Y(new_n34));
  NOR3X1   g14(.A(new_n34), .B(new_n32), .C(new_n31), .Y(new_n35));
  XOR2X1   g15(.A(new_n35), .B(new_n29), .Y(\S[2] ));
  XOR2X1   g16(.A(\B[3] ), .B(\A[3] ), .Y(new_n37));
  INVX1    g17(.A(\B[2] ), .Y(new_n38));
  NOR2X1   g18(.A(new_n35), .B(new_n38), .Y(new_n39));
  AOI21X1  g19(.A0(new_n35), .A1(new_n38), .B0(new_n28), .Y(new_n40));
  OR2X1    g20(.A(new_n40), .B(new_n39), .Y(new_n41));
  XOR2X1   g21(.A(new_n41), .B(new_n37), .Y(\S[3] ));
  OAI21X1  g22(.A0(new_n40), .A1(new_n39), .B0(\B[3] ), .Y(new_n43));
  NAND2X1  g23(.A(\B[3] ), .B(\A[3] ), .Y(new_n44));
  OAI21X1  g24(.A0(new_n40), .A1(new_n39), .B0(\A[3] ), .Y(new_n45));
  NAND3X1  g25(.A(new_n45), .B(new_n44), .C(new_n43), .Y(\CO[0] ));
  ZERO     g26(.Y(\CO[1] ));
  ZERO     g27(.Y(\CO[2] ));
  ZERO     g28(.Y(\CO[3] ));
endmodule


