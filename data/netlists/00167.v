// Benchmark "carry_lookahead_adder" written by ABC on Wed Jun 26 15:22:02 2024

module carry_lookahead_adder ( 
    \a[0] , \a[1] , \a[2] , \a[3] , \a[4] , \a[5] , \a[6] , \a[7] , \b[0] ,
    \b[1] , \b[2] , \b[3] , \b[4] , \b[5] , \b[6] , \b[7] ,
    \s[0] , \s[1] , \s[2] , \s[3] , \s[4] , \s[5] , \s[6] , \s[7] ,
    overflow  );
  input  \a[0] , \a[1] , \a[2] , \a[3] , \a[4] , \a[5] , \a[6] , \a[7] ,
    \b[0] , \b[1] , \b[2] , \b[3] , \b[4] , \b[5] , \b[6] , \b[7] ;
  output \s[0] , \s[1] , \s[2] , \s[3] , \s[4] , \s[5] , \s[6] , \s[7] ,
    overflow;
  wire new_n27, new_n29, new_n30, new_n31, new_n32, new_n33, new_n34,
    new_n35, new_n36, new_n38, new_n39, new_n40, new_n41, new_n42, new_n43,
    new_n44, new_n46, new_n47, new_n48, new_n49, new_n50, new_n51, new_n52,
    new_n53, new_n54, new_n55, new_n56, new_n57, new_n58, new_n60, new_n61,
    new_n62, new_n63, new_n64, new_n65, new_n66, new_n67, new_n68, new_n69,
    new_n70, new_n71, new_n73, new_n74, new_n75, new_n76, new_n77, new_n78,
    new_n79, new_n80, new_n81, new_n82, new_n83, new_n84, new_n85, new_n86,
    new_n87, new_n89, new_n90, new_n91, new_n92, new_n93, new_n94, new_n95,
    new_n96, new_n97, new_n98, new_n99, new_n100, new_n102;
  XOR2X1   g00(.A(\b[0] ), .B(\a[0] ), .Y(\s[0] ));
  AND2X1   g01(.A(\b[0] ), .B(\a[0] ), .Y(new_n27));
  XOR2X1   g02(.A(\b[1] ), .B(\a[1] ), .Y(\s[1] ));
  INVX1    g03(.A(\a[2] ), .Y(new_n29));
  XOR2X1   g04(.A(\b[1] ), .B(\a[1] ), .Y(new_n30));
  AND2X1   g05(.A(\b[1] ), .B(\a[1] ), .Y(new_n31));
  AOI21X1  g06(.A0(new_n30), .A1(new_n27), .B0(new_n31), .Y(new_n32));
  XOR2X1   g07(.A(\b[2] ), .B(new_n29), .Y(new_n33));
  INVX1    g08(.A(new_n33), .Y(new_n34));
  INVX1    g09(.A(new_n27), .Y(new_n35));
  NOR2X1   g10(.A(new_n30), .B(new_n35), .Y(new_n36));
  XOR2X1   g11(.A(new_n36), .B(new_n34), .Y(\s[2] ));
  XOR2X1   g12(.A(\b[2] ), .B(new_n29), .Y(new_n38));
  AND2X1   g13(.A(\b[2] ), .B(\a[2] ), .Y(new_n39));
  XOR2X1   g14(.A(\b[3] ), .B(\a[3] ), .Y(new_n40));
  XOR2X1   g15(.A(\b[2] ), .B(\a[2] ), .Y(new_n41));
  NOR2X1   g16(.A(new_n41), .B(new_n32), .Y(new_n42));
  NOR3X1   g17(.A(new_n33), .B(new_n30), .C(new_n35), .Y(new_n43));
  OR2X1    g18(.A(new_n43), .B(new_n42), .Y(new_n44));
  XOR2X1   g19(.A(new_n44), .B(new_n40), .Y(\s[3] ));
  XOR2X1   g20(.A(\b[4] ), .B(\a[4] ), .Y(new_n46));
  XOR2X1   g21(.A(\b[3] ), .B(\a[3] ), .Y(new_n47));
  NAND2X1  g22(.A(new_n47), .B(new_n41), .Y(new_n48));
  AND2X1   g23(.A(\b[3] ), .B(\a[3] ), .Y(new_n49));
  AOI21X1  g24(.A0(new_n47), .A1(new_n39), .B0(new_n49), .Y(new_n50));
  OAI21X1  g25(.A0(new_n48), .A1(new_n32), .B0(new_n50), .Y(new_n51));
  XOR2X1   g26(.A(new_n51), .B(new_n46), .Y(new_n52));
  NAND2X1  g27(.A(\b[2] ), .B(\a[2] ), .Y(new_n53));
  OAI21X1  g28(.A0(new_n38), .A1(new_n32), .B0(new_n53), .Y(new_n54));
  AOI21X1  g29(.A0(new_n47), .A1(new_n54), .B0(new_n49), .Y(new_n55));
  XOR2X1   g30(.A(new_n55), .B(new_n52), .Y(new_n56));
  MX2X1    g31(.A(new_n54), .B(new_n42), .S0(new_n47), .Y(new_n57));
  AOI21X1  g32(.A0(new_n43), .A1(new_n40), .B0(new_n57), .Y(new_n58));
  XOR2X1   g33(.A(new_n58), .B(new_n56), .Y(\s[4] ));
  XOR2X1   g34(.A(\b[5] ), .B(\a[5] ), .Y(new_n60));
  AND2X1   g35(.A(\b[4] ), .B(\a[4] ), .Y(new_n61));
  AOI21X1  g36(.A0(new_n51), .A1(new_n46), .B0(new_n61), .Y(new_n62));
  XOR2X1   g37(.A(new_n62), .B(new_n60), .Y(new_n63));
  INVX1    g38(.A(new_n46), .Y(new_n64));
  INVX1    g39(.A(new_n61), .Y(new_n65));
  OAI21X1  g40(.A0(new_n55), .A1(new_n64), .B0(new_n65), .Y(new_n66));
  XOR2X1   g41(.A(new_n66), .B(new_n63), .Y(new_n67));
  INVX1    g42(.A(new_n67), .Y(new_n68));
  XOR2X1   g43(.A(new_n51), .B(new_n64), .Y(new_n69));
  OR2X1    g44(.A(new_n55), .B(new_n69), .Y(new_n70));
  OAI21X1  g45(.A0(new_n58), .A1(new_n56), .B0(new_n70), .Y(new_n71));
  XOR2X1   g46(.A(new_n71), .B(new_n68), .Y(\s[5] ));
  XOR2X1   g47(.A(\b[6] ), .B(\a[6] ), .Y(new_n73));
  AND2X1   g48(.A(new_n60), .B(new_n46), .Y(new_n74));
  INVX1    g49(.A(new_n60), .Y(new_n75));
  NAND2X1  g50(.A(\b[5] ), .B(\a[5] ), .Y(new_n76));
  OAI21X1  g51(.A0(new_n65), .A1(new_n75), .B0(new_n76), .Y(new_n77));
  AOI21X1  g52(.A0(new_n74), .A1(new_n51), .B0(new_n77), .Y(new_n78));
  XOR2X1   g53(.A(new_n78), .B(new_n73), .Y(new_n79));
  INVX1    g54(.A(new_n76), .Y(new_n80));
  AOI21X1  g55(.A0(new_n66), .A1(new_n60), .B0(new_n80), .Y(new_n81));
  XOR2X1   g56(.A(new_n81), .B(new_n79), .Y(new_n82));
  NOR3X1   g57(.A(new_n67), .B(new_n58), .C(new_n56), .Y(new_n83));
  XOR2X1   g58(.A(new_n62), .B(new_n75), .Y(new_n84));
  NAND2X1  g59(.A(new_n66), .B(new_n84), .Y(new_n85));
  OAI21X1  g60(.A0(new_n70), .A1(new_n67), .B0(new_n85), .Y(new_n86));
  OR2X1    g61(.A(new_n86), .B(new_n83), .Y(new_n87));
  XOR2X1   g62(.A(new_n87), .B(new_n82), .Y(\s[6] ));
  INVX1    g63(.A(\a[7] ), .Y(new_n89));
  XOR2X1   g64(.A(\b[7] ), .B(new_n89), .Y(new_n90));
  INVX1    g65(.A(new_n73), .Y(new_n91));
  AND2X1   g66(.A(\b[6] ), .B(\a[6] ), .Y(new_n92));
  INVX1    g67(.A(new_n92), .Y(new_n93));
  OAI21X1  g68(.A0(new_n78), .A1(new_n91), .B0(new_n93), .Y(new_n94));
  XOR2X1   g69(.A(new_n94), .B(new_n90), .Y(new_n95));
  OR2X1    g70(.A(new_n81), .B(new_n91), .Y(new_n96));
  AND2X1   g71(.A(new_n96), .B(new_n93), .Y(new_n97));
  XOR2X1   g72(.A(new_n97), .B(new_n95), .Y(new_n98));
  OAI21X1  g73(.A0(new_n86), .A1(new_n83), .B0(new_n82), .Y(new_n99));
  OAI21X1  g74(.A0(new_n81), .A1(new_n79), .B0(new_n99), .Y(new_n100));
  XOR2X1   g75(.A(new_n100), .B(new_n98), .Y(\s[7] ));
  NAND2X1  g76(.A(\b[7] ), .B(\a[7] ), .Y(new_n102));
  OAI21X1  g77(.A0(new_n97), .A1(new_n90), .B0(new_n102), .Y(overflow));
endmodule


