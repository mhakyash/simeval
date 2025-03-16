// Benchmark "priority_encoder" written by ABC on Wed Jun 26 15:22:12 2024

module priority_encoder ( 
    A, B, C, D,
    \Y[0] , \Y[1]   );
  input  A, B, C, D;
  output \Y[0] , \Y[1] ;
  wire new_n7, new_n8, new_n9, new_n10, new_n11, new_n12, new_n13, new_n16,
    new_n17;
  INVX1    g00(.A(A), .Y(new_n7));
  INVX1    g01(.A(B), .Y(new_n8));
  INVX1    g02(.A(D), .Y(new_n9));
  NOR4X1   g03(.A(new_n9), .B(C), .C(new_n8), .D(new_n7), .Y(new_n10));
  INVX1    g04(.A(C), .Y(new_n11));
  NOR4X1   g05(.A(new_n9), .B(new_n11), .C(new_n8), .D(A), .Y(new_n12));
  OR4X1    g06(.A(new_n9), .B(new_n11), .C(B), .D(new_n7), .Y(new_n13));
  OR2X1    g07(.A(new_n12), .B(new_n10), .Y(\Y[0] ));
  OR4X1    g08(.A(new_n9), .B(new_n11), .C(new_n8), .D(A), .Y(new_n16));
  NOR2X1   g09(.A(new_n12), .B(new_n10), .Y(new_n17));
  OAI21X1  g10(.A0(new_n17), .A1(new_n16), .B0(new_n13), .Y(\Y[1] ));
endmodule


