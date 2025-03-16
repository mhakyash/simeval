// Benchmark "adder_8bit" written by ABC on Wed Jun 26 15:22:10 2024

module adder_8bit ( 
    \a[0] , \a[1] , \a[2] , \a[3] , \a[4] , \a[5] , \a[6] , \a[7] , \b[0] ,
    \b[1] , \b[2] , \b[3] , \b[4] , \b[5] , \b[6] , \b[7] ,
    \s[0] , \s[1] , \s[2] , \s[3] , \s[4] , \s[5] , \s[6] , \s[7] ,
    overflow  );
  input  \a[0] , \a[1] , \a[2] , \a[3] , \a[4] , \a[5] , \a[6] , \a[7] ,
    \b[0] , \b[1] , \b[2] , \b[3] , \b[4] , \b[5] , \b[6] , \b[7] ;
  output \s[0] , \s[1] , \s[2] , \s[3] , \s[4] , \s[5] , \s[6] , \s[7] ,
    overflow;
  wire new_n26, new_n27, new_n28, new_n29, new_n30, new_n31, new_n32,
    new_n33, new_n34, new_n35, new_n36, new_n37, new_n39, new_n41, new_n43,
    new_n47;
  NAND2X1  g00(.A(\b[6] ), .B(\a[6] ), .Y(new_n26));
  NOR2X1   g01(.A(\b[6] ), .B(\a[6] ), .Y(new_n27));
  AND2X1   g02(.A(\b[5] ), .B(\a[5] ), .Y(new_n28));
  OR2X1    g03(.A(\b[5] ), .B(\a[5] ), .Y(new_n29));
  NAND2X1  g04(.A(\b[4] ), .B(\a[4] ), .Y(new_n30));
  NOR2X1   g05(.A(\b[4] ), .B(\a[4] ), .Y(new_n31));
  AND2X1   g06(.A(\b[3] ), .B(\a[3] ), .Y(new_n32));
  OR2X1    g07(.A(\b[3] ), .B(\a[3] ), .Y(new_n33));
  NAND2X1  g08(.A(\b[2] ), .B(\a[2] ), .Y(new_n34));
  NOR2X1   g09(.A(\b[2] ), .B(\a[2] ), .Y(new_n35));
  AND2X1   g10(.A(\b[1] ), .B(\a[1] ), .Y(new_n36));
  OR2X1    g11(.A(\b[1] ), .B(\a[1] ), .Y(new_n37));
  AND2X1   g12(.A(\b[0] ), .B(\a[0] ), .Y(\s[1] ));
  AOI21X1  g13(.A0(\s[1] ), .A1(new_n37), .B0(new_n36), .Y(new_n39));
  OAI21X1  g14(.A0(new_n39), .A1(new_n35), .B0(new_n34), .Y(\s[3] ));
  AOI21X1  g15(.A0(\s[3] ), .A1(new_n33), .B0(new_n32), .Y(new_n41));
  OAI21X1  g16(.A0(new_n41), .A1(new_n31), .B0(new_n30), .Y(\s[5] ));
  AOI21X1  g17(.A0(\s[5] ), .A1(new_n29), .B0(new_n28), .Y(new_n43));
  OAI21X1  g18(.A0(new_n43), .A1(new_n27), .B0(new_n26), .Y(\s[0] ));
  INVX1    g19(.A(new_n39), .Y(\s[2] ));
  INVX1    g20(.A(new_n41), .Y(\s[4] ));
  AND2X1   g21(.A(\s[5] ), .B(new_n29), .Y(new_n47));
  OR2X1    g22(.A(new_n47), .B(new_n28), .Y(\s[6] ));
  OAI21X1  g23(.A0(new_n43), .A1(new_n27), .B0(new_n26), .Y(\s[7] ));
  OAI21X1  g24(.A0(new_n43), .A1(new_n27), .B0(new_n26), .Y(overflow));
endmodule


