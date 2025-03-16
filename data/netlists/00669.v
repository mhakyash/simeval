// Benchmark "signed_divider" written by ABC on Wed Jun 26 15:22:17 2024

module signed_divider ( 
    \dividend[0] , \dividend[1] , \dividend[2] , \dividend[3] ,
    \dividend[4] , \dividend[5] , \dividend[6] , \dividend[7] ,
    \divisor[0] , \divisor[1] , \divisor[2] , \divisor[3] , \divisor[4] ,
    \divisor[5] , \divisor[6] , \divisor[7] ,
    \quotient[0] , \quotient[1] , \quotient[2] , \quotient[3] ,
    \quotient[4] , \quotient[5] , \quotient[6] , \quotient[7] ,
    \remainder[0] , \remainder[1] , \remainder[2] , \remainder[3] ,
    \remainder[4] , \remainder[5] , \remainder[6] , \remainder[7]   );
  input  \dividend[0] , \dividend[1] , \dividend[2] , \dividend[3] ,
    \dividend[4] , \dividend[5] , \dividend[6] , \dividend[7] ,
    \divisor[0] , \divisor[1] , \divisor[2] , \divisor[3] , \divisor[4] ,
    \divisor[5] , \divisor[6] , \divisor[7] ;
  output \quotient[0] , \quotient[1] , \quotient[2] , \quotient[3] ,
    \quotient[4] , \quotient[5] , \quotient[6] , \quotient[7] ,
    \remainder[0] , \remainder[1] , \remainder[2] , \remainder[3] ,
    \remainder[4] , \remainder[5] , \remainder[6] , \remainder[7] ;
  wire new_n37, new_n38, new_n39, new_n40, new_n42, new_n43, new_n44,
    new_n45, new_n46, new_n47, new_n48, new_n49, new_n51, new_n52, new_n54,
    new_n55, new_n56, new_n57, new_n58, new_n60, new_n61, new_n62, new_n63,
    new_n64, new_n66, new_n67, new_n68, new_n69, new_n70;
  NOR4X1   g00(.A(\dividend[3] ), .B(\dividend[2] ), .C(\dividend[1] ), .D(\dividend[0] ), .Y(new_n37));
  OR4X1    g01(.A(\dividend[3] ), .B(\dividend[2] ), .C(\dividend[1] ), .D(\dividend[0] ), .Y(new_n38));
  INVX1    g02(.A(\dividend[7] ), .Y(new_n39));
  XOR2X1   g03(.A(\divisor[7] ), .B(new_n39), .Y(new_n40));
  OR2X1    g04(.A(new_n38), .B(new_n37), .Y(\quotient[4] ));
  INVX1    g05(.A(\dividend[3] ), .Y(new_n42));
  NOR3X1   g06(.A(\dividend[2] ), .B(\dividend[1] ), .C(\dividend[0] ), .Y(new_n43));
  XOR2X1   g07(.A(new_n43), .B(\dividend[3] ), .Y(new_n44));
  MX2X1    g08(.A(new_n44), .B(new_n42), .S0(new_n39), .Y(new_n45));
  INVX1    g09(.A(\dividend[2] ), .Y(new_n46));
  NOR2X1   g10(.A(\dividend[1] ), .B(\dividend[0] ), .Y(new_n47));
  XOR2X1   g11(.A(new_n47), .B(\dividend[2] ), .Y(new_n48));
  MX2X1    g12(.A(new_n48), .B(new_n46), .S0(new_n39), .Y(new_n49));
  XOR2X1   g13(.A(\divisor[7] ), .B(new_n39), .Y(\quotient[5] ));
  AND2X1   g14(.A(new_n39), .B(\dividend[0] ), .Y(new_n51));
  AND2X1   g15(.A(\dividend[7] ), .B(\dividend[0] ), .Y(new_n52));
  OR2X1    g16(.A(new_n52), .B(new_n51), .Y(\remainder[0] ));
  XOR2X1   g17(.A(\dividend[1] ), .B(\dividend[0] ), .Y(new_n54));
  MX2X1    g18(.A(new_n54), .B(\dividend[1] ), .S0(new_n39), .Y(new_n55));
  OR2X1    g19(.A(new_n52), .B(new_n51), .Y(new_n56));
  XOR2X1   g20(.A(new_n56), .B(new_n55), .Y(new_n57));
  MX2X1    g21(.A(new_n57), .B(new_n55), .S0(new_n37), .Y(new_n58));
  MX2X1    g22(.A(new_n58), .B(new_n55), .S0(new_n40), .Y(\remainder[1] ));
  XOR2X1   g23(.A(new_n47), .B(new_n46), .Y(new_n60));
  MX2X1    g24(.A(new_n60), .B(\dividend[2] ), .S0(new_n39), .Y(new_n61));
  NOR2X1   g25(.A(\dividend[1] ), .B(\dividend[0] ), .Y(new_n62));
  XOR2X1   g26(.A(new_n62), .B(new_n49), .Y(new_n63));
  MX2X1    g27(.A(new_n63), .B(new_n61), .S0(new_n37), .Y(new_n64));
  MX2X1    g28(.A(new_n64), .B(new_n61), .S0(new_n40), .Y(\remainder[2] ));
  XOR2X1   g29(.A(new_n43), .B(new_n42), .Y(new_n66));
  MX2X1    g30(.A(new_n66), .B(\dividend[3] ), .S0(new_n39), .Y(new_n67));
  NOR3X1   g31(.A(\dividend[2] ), .B(\dividend[1] ), .C(\dividend[0] ), .Y(new_n68));
  XOR2X1   g32(.A(new_n68), .B(new_n45), .Y(new_n69));
  MX2X1    g33(.A(new_n69), .B(new_n67), .S0(new_n37), .Y(new_n70));
  MX2X1    g34(.A(new_n70), .B(new_n67), .S0(new_n40), .Y(\remainder[3] ));
  NOR2X1   g35(.A(new_n40), .B(new_n37), .Y(\remainder[4] ));
  ZERO     g36(.Y(\quotient[0] ));
  ZERO     g37(.Y(\quotient[1] ));
  ZERO     g38(.Y(\quotient[2] ));
  ZERO     g39(.Y(\quotient[3] ));
  XOR2X1   g40(.A(\divisor[7] ), .B(new_n39), .Y(\quotient[6] ));
  XOR2X1   g41(.A(\divisor[7] ), .B(new_n39), .Y(\quotient[7] ));
  NOR2X1   g42(.A(new_n40), .B(new_n37), .Y(\remainder[5] ));
  NOR2X1   g43(.A(new_n40), .B(new_n37), .Y(\remainder[6] ));
  NOR2X1   g44(.A(new_n40), .B(new_n37), .Y(\remainder[7] ));
endmodule


