// Benchmark "adder" written by ABC on Wed Jun 26 15:22:23 2024

module adder ( 
    \a[0] , \a[1] , \a[2] , \a[3] , \b[0] , \b[1] , \b[2] , \b[3] , cin,
    \sum[0] , \sum[1] , \sum[2] , \sum[3] , cout  );
  input  \a[0] , \a[1] , \a[2] , \a[3] , \b[0] , \b[1] , \b[2] , \b[3] ,
    cin;
  output \sum[0] , \sum[1] , \sum[2] , \sum[3] , cout;
  wire new_n15, new_n17, new_n18, new_n19, new_n20, new_n22, new_n23,
    new_n24, new_n25, new_n26, new_n27, new_n28, new_n30, new_n31, new_n32,
    new_n33, new_n34, new_n36, new_n37;
  XOR2X1   g00(.A(\b[0] ), .B(\a[0] ), .Y(new_n15));
  XOR2X1   g01(.A(new_n15), .B(cin), .Y(\sum[0] ));
  XOR2X1   g02(.A(\b[1] ), .B(\a[1] ), .Y(new_n17));
  NAND2X1  g03(.A(\b[0] ), .B(\a[0] ), .Y(new_n18));
  XOR2X1   g04(.A(new_n18), .B(new_n17), .Y(new_n19));
  NAND2X1  g05(.A(new_n15), .B(cin), .Y(new_n20));
  XOR2X1   g06(.A(new_n20), .B(new_n19), .Y(\sum[1] ));
  INVX1    g07(.A(\a[2] ), .Y(new_n22));
  XOR2X1   g08(.A(\b[2] ), .B(new_n22), .Y(new_n23));
  AND2X1   g09(.A(\b[0] ), .B(\a[0] ), .Y(new_n24));
  AND2X1   g10(.A(\b[1] ), .B(\a[1] ), .Y(new_n25));
  AOI21X1  g11(.A0(new_n24), .A1(new_n17), .B0(new_n25), .Y(new_n26));
  XOR2X1   g12(.A(new_n26), .B(new_n23), .Y(new_n27));
  NOR2X1   g13(.A(new_n20), .B(new_n19), .Y(new_n28));
  XOR2X1   g14(.A(new_n28), .B(new_n27), .Y(\sum[2] ));
  XOR2X1   g15(.A(\b[3] ), .B(\a[3] ), .Y(new_n30));
  NAND2X1  g16(.A(\b[2] ), .B(\a[2] ), .Y(new_n31));
  OAI21X1  g17(.A0(new_n26), .A1(new_n23), .B0(new_n31), .Y(new_n32));
  XOR2X1   g18(.A(new_n32), .B(new_n30), .Y(new_n33));
  AND2X1   g19(.A(new_n28), .B(new_n27), .Y(new_n34));
  XOR2X1   g20(.A(new_n34), .B(new_n33), .Y(\sum[3] ));
  NAND2X1  g21(.A(cin), .B(\b[3] ), .Y(new_n36));
  OAI21X1  g22(.A0(cin), .A1(\b[3] ), .B0(\a[3] ), .Y(new_n37));
  NAND2X1  g23(.A(new_n37), .B(new_n36), .Y(cout));
endmodule


