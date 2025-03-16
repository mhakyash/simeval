// Benchmark "adder_4bit" written by ABC on Wed Jun 26 15:22:24 2024

module adder_4bit ( 
    \a[0] , \a[1] , \a[2] , \a[3] , \b[0] , \b[1] , \b[2] , \b[3] ,
    \c[0] , \c[1] , \c[2] , \c[3] , \c[4] , co  );
  input  \a[0] , \a[1] , \a[2] , \a[3] , \b[0] , \b[1] , \b[2] , \b[3] ;
  output \c[0] , \c[1] , \c[2] , \c[3] , \c[4] , co;
  wire new_n16, new_n17, new_n19, new_n20, new_n21, new_n22, new_n24,
    new_n25, new_n26, new_n28, new_n29, new_n30, new_n31, new_n32;
  XOR2X1   g00(.A(\b[0] ), .B(\a[0] ), .Y(\c[0] ));
  XOR2X1   g01(.A(\b[1] ), .B(\a[1] ), .Y(new_n16));
  AND2X1   g02(.A(\b[0] ), .B(\a[0] ), .Y(new_n17));
  XOR2X1   g03(.A(new_n17), .B(new_n16), .Y(\c[1] ));
  INVX1    g04(.A(\a[2] ), .Y(new_n19));
  XOR2X1   g05(.A(\b[2] ), .B(new_n19), .Y(new_n20));
  AND2X1   g06(.A(\b[1] ), .B(\a[1] ), .Y(new_n21));
  AOI21X1  g07(.A0(new_n17), .A1(new_n16), .B0(new_n21), .Y(new_n22));
  XOR2X1   g08(.A(new_n22), .B(new_n20), .Y(\c[2] ));
  XOR2X1   g09(.A(\b[3] ), .B(\a[3] ), .Y(new_n24));
  NAND2X1  g10(.A(\b[2] ), .B(\a[2] ), .Y(new_n25));
  OAI21X1  g11(.A0(new_n22), .A1(new_n20), .B0(new_n25), .Y(new_n26));
  XOR2X1   g12(.A(new_n26), .B(new_n24), .Y(\c[3] ));
  XOR2X1   g13(.A(\b[2] ), .B(\a[2] ), .Y(new_n28));
  NAND2X1  g14(.A(new_n24), .B(new_n28), .Y(new_n29));
  AND2X1   g15(.A(\b[2] ), .B(\a[2] ), .Y(new_n30));
  AND2X1   g16(.A(\b[3] ), .B(\a[3] ), .Y(new_n31));
  AOI21X1  g17(.A0(new_n30), .A1(new_n24), .B0(new_n31), .Y(new_n32));
  OAI21X1  g18(.A0(new_n29), .A1(new_n22), .B0(new_n32), .Y(\c[4] ));
  ZERO     g19(.Y(co));
endmodule


