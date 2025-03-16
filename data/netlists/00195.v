// Benchmark "comparator_4bit" written by ABC on Wed Jun 26 15:22:03 2024

module comparator_4bit ( 
    \a[0] , \a[1] , \a[2] , \a[3] , \b[0] , \b[1] , \b[2] , \b[3] ,
    eq, gt, lt  );
  input  \a[0] , \a[1] , \a[2] , \a[3] , \b[0] , \b[1] , \b[2] , \b[3] ;
  output eq, gt, lt;
  wire new_n12, new_n13, new_n14, new_n15, new_n17, new_n18, new_n19,
    new_n20, new_n21, new_n22, new_n23, new_n24;
  XOR2X1   g00(.A(\b[3] ), .B(\a[3] ), .Y(new_n12));
  XOR2X1   g01(.A(\b[2] ), .B(\a[2] ), .Y(new_n13));
  XOR2X1   g02(.A(\b[1] ), .B(\a[1] ), .Y(new_n14));
  XOR2X1   g03(.A(\b[0] ), .B(\a[0] ), .Y(new_n15));
  NOR4X1   g04(.A(new_n15), .B(new_n14), .C(new_n13), .D(new_n12), .Y(eq));
  XOR2X1   g05(.A(\b[3] ), .B(\a[3] ), .Y(new_n17));
  AOI22X1  g06(.A0(\b[3] ), .A1(\a[3] ), .B0(\b[2] ), .B1(\a[2] ), .Y(new_n18));
  AOI22X1  g07(.A0(\b[1] ), .A1(\a[1] ), .B0(\b[0] ), .B1(\a[0] ), .Y(new_n19));
  NAND2X1  g08(.A(new_n19), .B(new_n18), .Y(new_n20));
  XOR2X1   g09(.A(\b[0] ), .B(\a[0] ), .Y(new_n21));
  XOR2X1   g10(.A(\b[2] ), .B(\a[2] ), .Y(new_n22));
  XOR2X1   g11(.A(\b[1] ), .B(\a[1] ), .Y(new_n23));
  OR2X1    g12(.A(new_n23), .B(new_n22), .Y(new_n24));
  OR4X1    g13(.A(new_n24), .B(new_n21), .C(new_n20), .D(new_n17), .Y(gt));
  OR4X1    g14(.A(new_n23), .B(new_n22), .C(new_n21), .D(new_n17), .Y(lt));
endmodule


