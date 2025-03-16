// Benchmark "binary_multiplier" written by ABC on Wed Jun 26 15:22:18 2024

module binary_multiplier ( clock, 
    \a[0] , \a[1] , \a[2] , \a[3] , \a[4] , \a[5] , \a[6] , \a[7] , \b[0] ,
    \b[1] , \b[2] , \b[3] , \b[4] , \b[5] , \b[6] , \b[7] ,
    \result[0] , \result[1] , \result[2] , \result[3] , \result[4] ,
    \result[5] , \result[6] , \result[7] , \result[8] , \result[9] ,
    \result[10] , \result[11] , \result[12] , \result[13] , \result[14] ,
    \result[15]   );
  input  clock;
  input  \a[0] , \a[1] , \a[2] , \a[3] , \a[4] , \a[5] , \a[6] , \a[7] ,
    \b[0] , \b[1] , \b[2] , \b[3] , \b[4] , \b[5] , \b[6] , \b[7] ;
  output \result[0] , \result[1] , \result[2] , \result[3] , \result[4] ,
    \result[5] , \result[6] , \result[7] , \result[8] , \result[9] ,
    \result[10] , \result[11] , \result[12] , \result[13] , \result[14] ,
    \result[15] ;
  reg \stage[0] , \stage[1] , \stage[2] , \stage[3] , \result[8] ;
  wire new_n48, new_n49, new_n50, new_n51, new_n52, new_n53, new_n54,
    new_n55, new_n56, new_n57, new_n58, new_n59, new_n60, new_n61, new_n62,
    new_n63, new_n64, new_n65, new_n66_1, new_n67, new_n68, new_n69,
    new_n70, new_n71_1, new_n73, new_n74, new_n75, new_n77, new_n78,
    new_n79, new_n80, new_n81_1, new_n82, new_n84, new_n85, n66, n71, n76,
    n81, n86;
  INVX1    g00(.A(\stage[1] ), .Y(new_n48));
  NOR4X1   g01(.A(\stage[3] ), .B(\stage[2] ), .C(new_n48), .D(\stage[0] ), .Y(new_n49));
  INVX1    g02(.A(\stage[2] ), .Y(new_n50));
  NOR4X1   g03(.A(\stage[3] ), .B(new_n50), .C(new_n48), .D(\stage[0] ), .Y(new_n51));
  OR2X1    g04(.A(\stage[1] ), .B(\stage[0] ), .Y(new_n52));
  NOR3X1   g05(.A(new_n52), .B(\stage[3] ), .C(new_n50), .Y(new_n53));
  OR2X1    g06(.A(new_n48), .B(\stage[0] ), .Y(new_n54));
  NAND2X1  g07(.A(\stage[3] ), .B(\stage[2] ), .Y(new_n55));
  INVX1    g08(.A(\stage[3] ), .Y(new_n56));
  OR2X1    g09(.A(new_n56), .B(\stage[2] ), .Y(new_n57));
  AOI22X1  g10(.A0(new_n57), .A1(new_n55), .B0(new_n52), .B1(new_n54), .Y(new_n58));
  OR4X1    g11(.A(new_n58), .B(new_n53), .C(new_n51), .D(new_n49), .Y(new_n59));
  INVX1    g12(.A(\stage[0] ), .Y(new_n60));
  OAI21X1  g13(.A0(new_n48), .A1(new_n60), .B0(\stage[2] ), .Y(new_n61));
  NOR4X1   g14(.A(new_n56), .B(\stage[2] ), .C(new_n48), .D(\stage[0] ), .Y(new_n62));
  NOR3X1   g15(.A(new_n52), .B(new_n56), .C(\stage[2] ), .Y(new_n63));
  NOR4X1   g16(.A(new_n56), .B(\stage[2] ), .C(new_n48), .D(new_n60), .Y(new_n64));
  NOR4X1   g17(.A(new_n56), .B(\stage[2] ), .C(\stage[1] ), .D(new_n60), .Y(new_n65));
  NOR4X1   g18(.A(new_n65), .B(new_n64), .C(new_n63), .D(new_n62), .Y(new_n66_1));
  NOR3X1   g19(.A(new_n55), .B(new_n48), .C(new_n60), .Y(new_n67));
  NOR4X1   g20(.A(\stage[3] ), .B(new_n50), .C(new_n48), .D(new_n60), .Y(new_n68));
  NOR4X1   g21(.A(\stage[3] ), .B(\stage[2] ), .C(new_n48), .D(new_n60), .Y(new_n69));
  NOR4X1   g22(.A(new_n69), .B(new_n68), .C(new_n67), .D(new_n49), .Y(new_n70));
  NAND3X1  g23(.A(new_n70), .B(new_n66_1), .C(new_n61), .Y(new_n71_1));
  AND2X1   g24(.A(new_n71_1), .B(new_n59), .Y(n66));
  AND2X1   g25(.A(new_n48), .B(\stage[0] ), .Y(new_n73));
  OAI21X1  g26(.A0(\stage[3] ), .A1(\stage[2] ), .B0(new_n73), .Y(new_n74));
  OR2X1    g27(.A(new_n48), .B(\stage[0] ), .Y(new_n75));
  NAND3X1  g28(.A(new_n75), .B(new_n74), .C(new_n71_1), .Y(n71));
  AND2X1   g29(.A(new_n70), .B(new_n66_1), .Y(new_n77));
  AND2X1   g30(.A(\stage[3] ), .B(\stage[2] ), .Y(new_n78));
  OAI21X1  g31(.A0(new_n48), .A1(new_n60), .B0(new_n78), .Y(new_n79));
  NOR4X1   g32(.A(\stage[3] ), .B(new_n50), .C(\stage[1] ), .D(new_n60), .Y(new_n80));
  OR2X1    g33(.A(new_n80), .B(new_n53), .Y(new_n81_1));
  NOR4X1   g34(.A(new_n69), .B(new_n64), .C(new_n81_1), .D(new_n51), .Y(new_n82));
  AOI22X1  g35(.A0(new_n82), .A1(new_n79), .B0(new_n77), .B1(new_n61), .Y(n76));
  OR4X1    g36(.A(\stage[3] ), .B(new_n50), .C(new_n48), .D(new_n60), .Y(new_n84));
  NAND3X1  g37(.A(new_n79), .B(new_n84), .C(new_n66_1), .Y(new_n85));
  AND2X1   g38(.A(new_n85), .B(new_n71_1), .Y(n81));
  ZERO     g39(.Y(n86));
  BUFX1    g40(.A(\result[8] ), .Y(\result[0] ));
  BUFX1    g41(.A(\result[8] ), .Y(\result[1] ));
  BUFX1    g42(.A(\result[8] ), .Y(\result[2] ));
  BUFX1    g43(.A(\result[8] ), .Y(\result[3] ));
  BUFX1    g44(.A(\result[8] ), .Y(\result[4] ));
  BUFX1    g45(.A(\result[8] ), .Y(\result[5] ));
  BUFX1    g46(.A(\result[8] ), .Y(\result[6] ));
  BUFX1    g47(.A(\result[8] ), .Y(\result[7] ));
  BUFX1    g48(.A(\result[8] ), .Y(\result[9] ));
  BUFX1    g49(.A(\result[8] ), .Y(\result[10] ));
  BUFX1    g50(.A(\result[8] ), .Y(\result[11] ));
  BUFX1    g51(.A(\result[8] ), .Y(\result[12] ));
  BUFX1    g52(.A(\result[8] ), .Y(\result[13] ));
  BUFX1    g53(.A(\result[8] ), .Y(\result[14] ));
  BUFX1    g54(.A(\result[8] ), .Y(\result[15] ));
  always @ (posedge clock) begin
    \stage[0]  <= n66;
    \stage[1]  <= n71;
    \stage[2]  <= n76;
    \stage[3]  <= n81;
    \result[8]  <= n86;
  end
endmodule


