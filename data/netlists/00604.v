// Benchmark "binary_adder" written by ABC on Wed Jun 26 15:22:15 2024

module binary_adder ( 
    \a[0] , \a[1] , \a[2] , \a[3] , \b[0] , \b[1] , \b[2] , \b[3] ,
    \sum[0] , \sum[1] , \sum[2] , \sum[3] , overflow  );
  input  \a[0] , \a[1] , \a[2] , \a[3] , \b[0] , \b[1] , \b[2] , \b[3] ;
  output \sum[0] , \sum[1] , \sum[2] , \sum[3] , overflow;
  wire new_n15, new_n17, new_n19, new_n21, new_n22, new_n23, new_n24,
    new_n25;
  XOR2X1   g00(.A(\b[0] ), .B(\a[0] ), .Y(\sum[0] ));
  XOR2X1   g01(.A(\b[1] ), .B(\a[1] ), .Y(new_n15));
  XOR2X1   g02(.A(new_n15), .B(\sum[0] ), .Y(\sum[1] ));
  XOR2X1   g03(.A(\b[2] ), .B(\a[2] ), .Y(new_n17));
  XOR2X1   g04(.A(new_n17), .B(\sum[1] ), .Y(\sum[2] ));
  XOR2X1   g05(.A(\b[3] ), .B(\a[3] ), .Y(new_n19));
  XOR2X1   g06(.A(new_n19), .B(\sum[2] ), .Y(\sum[3] ));
  INVX1    g07(.A(new_n19), .Y(new_n21));
  AOI22X1  g08(.A0(\b[1] ), .A1(\a[1] ), .B0(\b[0] ), .B1(\a[0] ), .Y(new_n22));
  AOI22X1  g09(.A0(\b[3] ), .A1(\a[3] ), .B0(\b[2] ), .B1(\a[2] ), .Y(new_n23));
  NAND2X1  g10(.A(new_n23), .B(new_n22), .Y(new_n24));
  NOR4X1   g11(.A(new_n24), .B(new_n17), .C(new_n15), .D(\sum[0] ), .Y(new_n25));
  OAI21X1  g12(.A0(new_n21), .A1(\sum[2] ), .B0(new_n25), .Y(overflow));
endmodule


