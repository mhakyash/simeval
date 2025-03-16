// Benchmark "PRNG" written by ABC on Wed Jun 26 15:22:23 2024

module PRNG ( clock, 
    clk, rst, \seed[0] , \seed[1] , \seed[2] , \seed[3] , \seed[4] ,
    \seed[5] , \seed[6] , \seed[7] ,
    \rand[0] , \rand[1] , \rand[2] , \rand[3] , \rand[4] , \rand[5] ,
    \rand[6] , \rand[7]   );
  input  clock;
  input  clk, rst, \seed[0] , \seed[1] , \seed[2] , \seed[3] , \seed[4] ,
    \seed[5] , \seed[6] , \seed[7] ;
  output \rand[0] , \rand[1] , \rand[2] , \rand[3] , \rand[4] , \rand[5] ,
    \rand[6] , \rand[7] ;
  reg \state[0] , \state[1] , \state[2] , \state[3] , \state[4] ,
    \state[5] , \state[6] , \state[7] ;
  wire new_n43_1, new_n45, new_n47, new_n48_1, new_n49, new_n51, new_n52,
    new_n53_1, new_n54, new_n55, new_n56, new_n57, new_n59, new_n60,
    new_n61, new_n62, new_n63_1, new_n64, new_n65, new_n66, new_n67,
    new_n68_1, new_n69, new_n70, new_n72, new_n73_1, new_n74, new_n75,
    new_n76, new_n77, new_n78, new_n79, new_n80, new_n81, new_n82, new_n83,
    new_n84, new_n86, new_n87, new_n88, new_n89, new_n90, new_n91, new_n92,
    new_n93, new_n94, new_n95, new_n96, new_n97, new_n98, new_n99,
    new_n100, new_n101, new_n103, new_n104, new_n105, new_n106, new_n107,
    new_n108, new_n109, new_n110, new_n111, new_n112, new_n113, new_n114,
    new_n115, new_n116, new_n117, new_n118, new_n119, n38, n43, n48, n53,
    n58, n63, n68, n73;
  INVX1    g00(.A(\state[0] ), .Y(new_n43_1));
  MX2X1    g01(.A(new_n43_1), .B(\seed[0] ), .S0(rst), .Y(n38));
  XOR2X1   g02(.A(\state[1] ), .B(\state[0] ), .Y(new_n45));
  MX2X1    g03(.A(new_n45), .B(\seed[1] ), .S0(rst), .Y(n43));
  XOR2X1   g04(.A(\state[2] ), .B(\state[0] ), .Y(new_n47));
  AND2X1   g05(.A(\state[1] ), .B(\state[0] ), .Y(new_n48_1));
  XOR2X1   g06(.A(new_n48_1), .B(new_n47), .Y(new_n49));
  MX2X1    g07(.A(new_n49), .B(\seed[2] ), .S0(rst), .Y(n48));
  XOR2X1   g08(.A(\state[3] ), .B(\state[0] ), .Y(new_n51));
  NAND2X1  g09(.A(\state[2] ), .B(\state[0] ), .Y(new_n52));
  XOR2X1   g10(.A(new_n52), .B(new_n51), .Y(new_n53_1));
  XOR2X1   g11(.A(new_n53_1), .B(\state[1] ), .Y(new_n54));
  NAND2X1  g12(.A(new_n48_1), .B(new_n47), .Y(new_n55));
  INVX1    g13(.A(new_n55), .Y(new_n56));
  XOR2X1   g14(.A(new_n56), .B(new_n54), .Y(new_n57));
  MX2X1    g15(.A(new_n57), .B(\seed[3] ), .S0(rst), .Y(n53));
  AND2X1   g16(.A(\state[3] ), .B(\state[0] ), .Y(new_n59));
  XOR2X1   g17(.A(new_n59), .B(\state[2] ), .Y(new_n60));
  XOR2X1   g18(.A(\state[4] ), .B(\state[1] ), .Y(new_n61));
  INVX1    g19(.A(new_n61), .Y(new_n62));
  XOR2X1   g20(.A(new_n62), .B(new_n60), .Y(new_n63_1));
  INVX1    g21(.A(\state[1] ), .Y(new_n64));
  NAND3X1  g22(.A(new_n51), .B(\state[2] ), .C(\state[0] ), .Y(new_n65));
  OAI21X1  g23(.A0(new_n53_1), .A1(new_n64), .B0(new_n65), .Y(new_n66));
  XOR2X1   g24(.A(new_n66), .B(new_n63_1), .Y(new_n67));
  INVX1    g25(.A(new_n67), .Y(new_n68_1));
  AND2X1   g26(.A(new_n55), .B(new_n54), .Y(new_n69));
  XOR2X1   g27(.A(new_n69), .B(new_n68_1), .Y(new_n70));
  MX2X1    g28(.A(new_n70), .B(\seed[4] ), .S0(rst), .Y(n58));
  XOR2X1   g29(.A(\state[3] ), .B(\state[2] ), .Y(new_n72));
  XOR2X1   g30(.A(new_n72), .B(new_n43_1), .Y(new_n73_1));
  XOR2X1   g31(.A(new_n73_1), .B(\state[5] ), .Y(new_n74));
  AND2X1   g32(.A(new_n59), .B(\state[2] ), .Y(new_n75));
  AOI21X1  g33(.A0(new_n61), .A1(new_n60), .B0(new_n75), .Y(new_n76));
  XOR2X1   g34(.A(new_n76), .B(new_n74), .Y(new_n77));
  AND2X1   g35(.A(\state[4] ), .B(\state[1] ), .Y(new_n78));
  XOR2X1   g36(.A(new_n78), .B(new_n77), .Y(new_n79));
  OR2X1    g37(.A(new_n53_1), .B(new_n64), .Y(new_n80));
  AOI21X1  g38(.A0(new_n80), .A1(new_n65), .B0(new_n63_1), .Y(new_n81));
  XOR2X1   g39(.A(new_n81), .B(new_n79), .Y(new_n82));
  AND2X1   g40(.A(new_n69), .B(new_n67), .Y(new_n83));
  XOR2X1   g41(.A(new_n83), .B(new_n82), .Y(new_n84));
  MX2X1    g42(.A(new_n84), .B(\seed[5] ), .S0(rst), .Y(n63));
  AND2X1   g43(.A(\state[3] ), .B(\state[2] ), .Y(new_n86));
  AOI21X1  g44(.A0(new_n72), .A1(\state[0] ), .B0(new_n86), .Y(new_n87));
  XOR2X1   g45(.A(new_n87), .B(new_n51), .Y(new_n88));
  XOR2X1   g46(.A(new_n88), .B(new_n62), .Y(new_n89));
  INVX1    g47(.A(\state[5] ), .Y(new_n90));
  NOR2X1   g48(.A(new_n73_1), .B(new_n90), .Y(new_n91));
  XOR2X1   g49(.A(new_n91), .B(new_n89), .Y(new_n92));
  XOR2X1   g50(.A(new_n92), .B(\state[6] ), .Y(new_n93));
  NAND2X1  g51(.A(new_n78), .B(new_n77), .Y(new_n94));
  OAI21X1  g52(.A0(new_n76), .A1(new_n74), .B0(new_n94), .Y(new_n95));
  XOR2X1   g53(.A(new_n95), .B(new_n93), .Y(new_n96));
  AND2X1   g54(.A(new_n81), .B(new_n79), .Y(new_n97));
  XOR2X1   g55(.A(new_n97), .B(new_n96), .Y(new_n98));
  INVX1    g56(.A(new_n54), .Y(new_n99));
  OR4X1    g57(.A(new_n82), .B(new_n68_1), .C(new_n56), .D(new_n99), .Y(new_n100));
  XOR2X1   g58(.A(new_n100), .B(new_n98), .Y(new_n101));
  MX2X1    g59(.A(new_n101), .B(\seed[6] ), .S0(rst), .Y(n68));
  XOR2X1   g60(.A(new_n61), .B(new_n90), .Y(new_n103));
  XOR2X1   g61(.A(new_n103), .B(new_n60), .Y(new_n104));
  XOR2X1   g62(.A(\state[3] ), .B(new_n43_1), .Y(new_n105));
  OR2X1    g63(.A(new_n87), .B(new_n105), .Y(new_n106));
  OAI21X1  g64(.A0(new_n88), .A1(new_n62), .B0(new_n106), .Y(new_n107));
  XOR2X1   g65(.A(new_n107), .B(new_n104), .Y(new_n108));
  XOR2X1   g66(.A(new_n78), .B(\state[7] ), .Y(new_n109));
  XOR2X1   g67(.A(new_n109), .B(new_n108), .Y(new_n110));
  AND2X1   g68(.A(new_n91), .B(new_n89), .Y(new_n111));
  AOI21X1  g69(.A0(new_n92), .A1(\state[6] ), .B0(new_n111), .Y(new_n112));
  XOR2X1   g70(.A(new_n112), .B(new_n110), .Y(new_n113));
  AND2X1   g71(.A(new_n95), .B(new_n93), .Y(new_n114));
  XOR2X1   g72(.A(new_n114), .B(new_n113), .Y(new_n115));
  AND2X1   g73(.A(new_n97), .B(new_n96), .Y(new_n116));
  XOR2X1   g74(.A(new_n116), .B(new_n115), .Y(new_n117));
  AND2X1   g75(.A(new_n100), .B(new_n98), .Y(new_n118));
  XOR2X1   g76(.A(new_n118), .B(new_n117), .Y(new_n119));
  MX2X1    g77(.A(new_n119), .B(\seed[7] ), .S0(rst), .Y(n73));
  BUFX1    g78(.A(\state[0] ), .Y(\rand[0] ));
  BUFX1    g79(.A(\state[1] ), .Y(\rand[1] ));
  BUFX1    g80(.A(\state[2] ), .Y(\rand[2] ));
  BUFX1    g81(.A(\state[3] ), .Y(\rand[3] ));
  BUFX1    g82(.A(\state[4] ), .Y(\rand[4] ));
  BUFX1    g83(.A(\state[5] ), .Y(\rand[5] ));
  BUFX1    g84(.A(\state[6] ), .Y(\rand[6] ));
  BUFX1    g85(.A(\state[7] ), .Y(\rand[7] ));
  always @ (posedge clock) begin
    \state[0]  <= n38;
    \state[1]  <= n43;
    \state[2]  <= n48;
    \state[3]  <= n53;
    \state[4]  <= n58;
    \state[5]  <= n63;
    \state[6]  <= n68;
    \state[7]  <= n73;
  end
endmodule


