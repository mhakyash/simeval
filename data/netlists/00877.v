// Benchmark "magnitude_comparator" written by ABC on Wed Jun 26 15:22:23 2024

module magnitude_comparator ( clock, 
    \a[0] , \a[1] , \a[2] , \a[3] , \b[0] , \b[1] , \b[2] , \b[3] ,
    \out[0] , \out[1]   );
  input  clock;
  input  \a[0] , \a[1] , \a[2] , \a[3] , \b[0] , \b[1] , \b[2] , \b[3] ;
  output \out[0] , \out[1] ;
  reg \out_reg[0] , \out_reg[1] , \b_reg[0] , \b_reg[1] , \b_reg[2] ,
    \b_reg[3] , \a_reg[0] , \a_reg[1] , \a_reg[2] , \a_reg[3] ;
  wire new_n41, new_n42, new_n43_1, new_n44, new_n45, new_n46, new_n47_1,
    new_n48, new_n49, new_n50, new_n51_1, new_n52, new_n53, new_n54,
    new_n55_1, new_n56, new_n57, new_n58, new_n59_1, new_n60, new_n61,
    new_n62, new_n63, new_n64, new_n65, new_n67, n22, n27, n31, n35, n39,
    n43, n47, n51, n55, n59;
  XOR2X1   g00(.A(\a_reg[3] ), .B(\b_reg[3] ), .Y(new_n41));
  XOR2X1   g01(.A(\a_reg[2] ), .B(\b_reg[2] ), .Y(new_n42));
  NOR2X1   g02(.A(new_n42), .B(new_n41), .Y(new_n43_1));
  INVX1    g03(.A(\b_reg[1] ), .Y(new_n44));
  AND2X1   g04(.A(\a_reg[1] ), .B(new_n44), .Y(new_n45));
  INVX1    g05(.A(\a_reg[0] ), .Y(new_n46));
  XOR2X1   g06(.A(\a_reg[1] ), .B(\b_reg[1] ), .Y(new_n47_1));
  AOI21X1  g07(.A0(new_n46), .A1(\b_reg[0] ), .B0(new_n47_1), .Y(new_n48));
  OAI21X1  g08(.A0(new_n48), .A1(new_n45), .B0(new_n43_1), .Y(new_n49));
  INVX1    g09(.A(\b_reg[3] ), .Y(new_n50));
  INVX1    g10(.A(\a_reg[2] ), .Y(new_n51_1));
  NOR3X1   g11(.A(new_n41), .B(new_n51_1), .C(\b_reg[2] ), .Y(new_n52));
  AOI21X1  g12(.A0(\a_reg[3] ), .A1(new_n50), .B0(new_n52), .Y(new_n53));
  XOR2X1   g13(.A(\a_reg[0] ), .B(\b_reg[0] ), .Y(new_n54));
  NOR4X1   g14(.A(new_n54), .B(new_n47_1), .C(new_n42), .D(new_n41), .Y(new_n55_1));
  AOI21X1  g15(.A0(new_n53), .A1(new_n49), .B0(new_n55_1), .Y(new_n56));
  INVX1    g16(.A(\b_reg[0] ), .Y(new_n57));
  OAI22X1  g17(.A0(\a_reg[1] ), .A1(new_n44), .B0(\a_reg[0] ), .B1(new_n57), .Y(new_n58));
  INVX1    g18(.A(\b_reg[2] ), .Y(new_n59_1));
  OAI22X1  g19(.A0(\a_reg[3] ), .A1(new_n50), .B0(\a_reg[2] ), .B1(new_n59_1), .Y(new_n60));
  INVX1    g20(.A(\a_reg[3] ), .Y(new_n61));
  OAI22X1  g21(.A0(new_n61), .A1(\b_reg[3] ), .B0(new_n51_1), .B1(\b_reg[2] ), .Y(new_n62));
  INVX1    g22(.A(\a_reg[1] ), .Y(new_n63));
  OAI22X1  g23(.A0(new_n63), .A1(\b_reg[1] ), .B0(new_n46), .B1(\b_reg[0] ), .Y(new_n64));
  OR4X1    g24(.A(new_n64), .B(new_n62), .C(new_n60), .D(new_n58), .Y(new_n65));
  AND2X1   g25(.A(new_n65), .B(new_n56), .Y(n22));
  NOR4X1   g26(.A(new_n64), .B(new_n62), .C(new_n60), .D(new_n58), .Y(new_n67));
  NOR2X1   g27(.A(new_n67), .B(new_n56), .Y(n27));
  BUFX1    g28(.A(\out_reg[0] ), .Y(\out[0] ));
  BUFX1    g29(.A(\out_reg[1] ), .Y(\out[1] ));
  BUFX1    g30(.A(\b[0] ), .Y(n31));
  BUFX1    g31(.A(\b[1] ), .Y(n35));
  BUFX1    g32(.A(\b[2] ), .Y(n39));
  BUFX1    g33(.A(\b[3] ), .Y(n43));
  BUFX1    g34(.A(\a[0] ), .Y(n47));
  BUFX1    g35(.A(\a[1] ), .Y(n51));
  BUFX1    g36(.A(\a[2] ), .Y(n55));
  BUFX1    g37(.A(\a[3] ), .Y(n59));
  always @ (posedge clock) begin
    \out_reg[0]  <= n22;
    \out_reg[1]  <= n27;
    \b_reg[0]  <= n31;
    \b_reg[1]  <= n35;
    \b_reg[2]  <= n39;
    \b_reg[3]  <= n43;
    \a_reg[0]  <= n47;
    \a_reg[1]  <= n51;
    \a_reg[2]  <= n55;
    \a_reg[3]  <= n59;
  end
endmodule


