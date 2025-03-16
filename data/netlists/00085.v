// Benchmark "arithmetic_module" written by ABC on Wed Jun 26 15:21:59 2024

module arithmetic_module ( 
    Boo_ba1, Boo_ba2, b, Boo_ba3, c,
    \f4_dotnamed[0] , \f4_dotnamed[1] , \f4_dotnamed[2] , \f4_dotnamed[3]   );
  input  Boo_ba1, Boo_ba2, b, Boo_ba3, c;
  output \f4_dotnamed[0] , \f4_dotnamed[1] , \f4_dotnamed[2] ,
    \f4_dotnamed[3] ;
  wire new_n10, new_n11, new_n13, new_n14, new_n15, new_n16, new_n17,
    new_n18, new_n19, new_n21, new_n22, new_n23, new_n24;
  XOR2X1   g00(.A(b), .B(Boo_ba2), .Y(new_n10));
  XOR2X1   g01(.A(c), .B(Boo_ba3), .Y(new_n11));
  XOR2X1   g02(.A(new_n11), .B(new_n10), .Y(\f4_dotnamed[0] ));
  INVX1    g03(.A(Boo_ba1), .Y(new_n13));
  AND2X1   g04(.A(b), .B(Boo_ba2), .Y(new_n14));
  XOR2X1   g05(.A(new_n14), .B(new_n13), .Y(new_n15));
  INVX1    g06(.A(c), .Y(new_n16));
  OR2X1    g07(.A(new_n16), .B(Boo_ba3), .Y(new_n17));
  XOR2X1   g08(.A(new_n17), .B(new_n15), .Y(new_n18));
  AND2X1   g09(.A(new_n11), .B(new_n10), .Y(new_n19));
  XOR2X1   g10(.A(new_n19), .B(new_n18), .Y(\f4_dotnamed[1] ));
  AND2X1   g11(.A(new_n14), .B(Boo_ba1), .Y(new_n21));
  XOR2X1   g12(.A(new_n21), .B(new_n17), .Y(new_n22));
  NOR2X1   g13(.A(new_n17), .B(new_n15), .Y(new_n23));
  AOI21X1  g14(.A0(new_n19), .A1(new_n18), .B0(new_n23), .Y(new_n24));
  XOR2X1   g15(.A(new_n24), .B(new_n22), .Y(\f4_dotnamed[2] ));
  NOR4X1   g16(.A(new_n19), .B(new_n17), .C(new_n14), .D(Boo_ba1), .Y(\f4_dotnamed[3] ));
endmodule


