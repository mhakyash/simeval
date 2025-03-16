// Benchmark "vending_machine" written by ABC on Wed Jun 26 15:22:17 2024

module vending_machine ( clock, 
    clk, reset, \coin[0] , \coin[1] , \coin[2] , \product[0] ,
    \product[1] ,
    dispense, \change[0] , \change[1] , \change[2] , \display[0] ,
    \display[1] , \display[2] , \display[3]   );
  input  clock;
  input  clk, reset, \coin[0] , \coin[1] , \coin[2] , \product[0] ,
    \product[1] ;
  output dispense, \change[0] , \change[1] , \change[2] , \display[0] ,
    \display[1] , \display[2] , \display[3] ;
  reg \display[0] , \display[1] , \display[2] , \display[3] ,
    \amount_inserted[0] , \amount_inserted[1] , \amount_inserted[2] ,
    \product_cost[0] , \product_cost[1] , \product_cost[2] , dispense,
    \change[0] , \change[1] , \change[2] , \excess_change[0] ,
    \excess_change[1] , \excess_change[2] ;
  wire new_n67, new_n72, new_n73_1, new_n74, new_n75, new_n76, new_n77,
    new_n78_1, new_n79, new_n80, new_n81, new_n82_1, new_n83, new_n84,
    new_n85, new_n86_1, new_n87, new_n88, new_n89, new_n90_1, new_n91,
    new_n92, new_n93, new_n94_1, new_n95, new_n96, new_n97, new_n98,
    new_n99_1, new_n101, new_n102, new_n103, new_n104_1, new_n105,
    new_n106, new_n107, new_n108, new_n109, new_n110, new_n111, new_n113,
    new_n114, new_n115, new_n116, new_n117, new_n118, new_n119, new_n120,
    new_n121, new_n122, new_n123, new_n125, new_n126, new_n128, new_n129,
    new_n130, new_n132, new_n133, n32, n36, n40, n44, n48, n53, n58, n63,
    n68, n73, n78, n82, n86, n90, n94, n99, n104;
  INVX1    g00(.A(reset), .Y(new_n67));
  AND2X1   g01(.A(\product_cost[0] ), .B(new_n67), .Y(n32));
  AND2X1   g02(.A(\product_cost[1] ), .B(new_n67), .Y(n36));
  AND2X1   g03(.A(\product_cost[2] ), .B(new_n67), .Y(n40));
  AND2X1   g04(.A(\amount_inserted[0] ), .B(new_n67), .Y(n44));
  INVX1    g05(.A(\coin[1] ), .Y(new_n72));
  AND2X1   g06(.A(new_n72), .B(\coin[0] ), .Y(new_n73_1));
  NOR3X1   g07(.A(\coin[2] ), .B(new_n72), .C(\coin[0] ), .Y(new_n74));
  INVX1    g08(.A(\coin[2] ), .Y(new_n75));
  NOR3X1   g09(.A(new_n75), .B(\coin[1] ), .C(\coin[0] ), .Y(new_n76));
  INVX1    g10(.A(\coin[0] ), .Y(new_n77));
  NOR3X1   g11(.A(\coin[2] ), .B(new_n72), .C(new_n77), .Y(new_n78_1));
  NOR4X1   g12(.A(new_n78_1), .B(new_n76), .C(new_n74), .D(new_n73_1), .Y(new_n79));
  NOR3X1   g13(.A(new_n75), .B(\coin[1] ), .C(new_n77), .Y(new_n80));
  OAI21X1  g14(.A0(new_n76), .A1(new_n80), .B0(\amount_inserted[0] ), .Y(new_n81));
  OR4X1    g15(.A(\amount_inserted[0] ), .B(\coin[2] ), .C(\coin[1] ), .D(new_n77), .Y(new_n82_1));
  NOR4X1   g16(.A(\amount_inserted[0] ), .B(\coin[2] ), .C(new_n72), .D(new_n77), .Y(new_n83));
  AOI21X1  g17(.A0(new_n74), .A1(\amount_inserted[0] ), .B0(new_n83), .Y(new_n84));
  NAND3X1  g18(.A(new_n84), .B(new_n82_1), .C(new_n81), .Y(new_n85));
  MX2X1    g19(.A(new_n85), .B(\amount_inserted[0] ), .S0(new_n79), .Y(new_n86_1));
  XOR2X1   g20(.A(\product_cost[0] ), .B(\amount_inserted[0] ), .Y(new_n87));
  XOR2X1   g21(.A(\product_cost[1] ), .B(\amount_inserted[1] ), .Y(new_n88));
  XOR2X1   g22(.A(\product_cost[2] ), .B(\amount_inserted[2] ), .Y(new_n89));
  NOR3X1   g23(.A(new_n87), .B(new_n89), .C(new_n88), .Y(new_n90_1));
  INVX1    g24(.A(\amount_inserted[2] ), .Y(new_n91));
  OR2X1    g25(.A(\product_cost[2] ), .B(new_n91), .Y(new_n92));
  INVX1    g26(.A(\product_cost[1] ), .Y(new_n93));
  INVX1    g27(.A(\amount_inserted[0] ), .Y(new_n94_1));
  AOI21X1  g28(.A0(\product_cost[0] ), .A1(new_n94_1), .B0(new_n88), .Y(new_n95));
  AOI21X1  g29(.A0(new_n93), .A1(\amount_inserted[1] ), .B0(new_n95), .Y(new_n96));
  OAI21X1  g30(.A0(new_n96), .A1(new_n89), .B0(new_n92), .Y(new_n97));
  OR2X1    g31(.A(new_n97), .B(new_n90_1), .Y(new_n98));
  MX2X1    g32(.A(new_n86_1), .B(new_n87), .S0(new_n98), .Y(new_n99_1));
  AND2X1   g33(.A(new_n99_1), .B(new_n67), .Y(n48));
  MX2X1    g34(.A(new_n76), .B(new_n80), .S0(\amount_inserted[1] ), .Y(new_n101));
  NOR3X1   g35(.A(\coin[2] ), .B(\coin[1] ), .C(new_n77), .Y(new_n102));
  XOR2X1   g36(.A(\amount_inserted[1] ), .B(\amount_inserted[0] ), .Y(new_n103));
  AND2X1   g37(.A(new_n103), .B(new_n102), .Y(new_n104_1));
  AND2X1   g38(.A(new_n103), .B(new_n78_1), .Y(new_n105));
  NOR4X1   g39(.A(\amount_inserted[1] ), .B(\coin[2] ), .C(new_n72), .D(\coin[0] ), .Y(new_n106));
  OR4X1    g40(.A(new_n106), .B(new_n105), .C(new_n104_1), .D(new_n101), .Y(new_n107));
  MX2X1    g41(.A(new_n107), .B(\amount_inserted[1] ), .S0(new_n79), .Y(new_n108));
  AND2X1   g42(.A(\product_cost[0] ), .B(new_n94_1), .Y(new_n109));
  XOR2X1   g43(.A(new_n109), .B(new_n88), .Y(new_n110));
  MX2X1    g44(.A(new_n108), .B(new_n110), .S0(new_n98), .Y(new_n111));
  AND2X1   g45(.A(new_n111), .B(new_n67), .Y(n53));
  XOR2X1   g46(.A(\amount_inserted[2] ), .B(\amount_inserted[1] ), .Y(new_n113));
  NAND4X1  g47(.A(new_n113), .B(new_n75), .C(\coin[1] ), .D(new_n77), .Y(new_n114));
  AOI22X1  g48(.A0(new_n113), .A1(new_n76), .B0(new_n80), .B1(new_n91), .Y(new_n115));
  AND2X1   g49(.A(\amount_inserted[1] ), .B(\amount_inserted[0] ), .Y(new_n116));
  XOR2X1   g50(.A(new_n116), .B(\amount_inserted[2] ), .Y(new_n117));
  XOR2X1   g51(.A(new_n116), .B(new_n91), .Y(new_n118));
  AOI22X1  g52(.A0(new_n118), .A1(new_n102), .B0(new_n117), .B1(new_n78_1), .Y(new_n119));
  NAND3X1  g53(.A(new_n119), .B(new_n115), .C(new_n114), .Y(new_n120));
  MX2X1    g54(.A(new_n120), .B(\amount_inserted[2] ), .S0(new_n79), .Y(new_n121));
  XOR2X1   g55(.A(new_n96), .B(new_n89), .Y(new_n122));
  MX2X1    g56(.A(new_n121), .B(new_n122), .S0(new_n98), .Y(new_n123));
  AND2X1   g57(.A(new_n123), .B(new_n67), .Y(n58));
  INVX1    g58(.A(\product[0] ), .Y(new_n125));
  OAI21X1  g59(.A0(\product_cost[0] ), .A1(\product[1] ), .B0(new_n125), .Y(new_n126));
  NOR2X1   g60(.A(new_n126), .B(reset), .Y(n63));
  NOR2X1   g61(.A(\product[1] ), .B(\product[0] ), .Y(new_n128));
  NAND2X1  g62(.A(new_n128), .B(\product_cost[1] ), .Y(new_n129));
  XOR2X1   g63(.A(\product[1] ), .B(new_n125), .Y(new_n130));
  AOI21X1  g64(.A0(new_n130), .A1(new_n129), .B0(reset), .Y(n68));
  AND2X1   g65(.A(\product[1] ), .B(\product[0] ), .Y(new_n132));
  MX2X1    g66(.A(new_n132), .B(\product_cost[2] ), .S0(new_n128), .Y(new_n133));
  AND2X1   g67(.A(new_n133), .B(new_n67), .Y(n73));
  AND2X1   g68(.A(new_n98), .B(new_n67), .Y(n78));
  AND2X1   g69(.A(\excess_change[0] ), .B(new_n67), .Y(n82));
  AND2X1   g70(.A(\excess_change[1] ), .B(new_n67), .Y(n86));
  AND2X1   g71(.A(\excess_change[2] ), .B(new_n67), .Y(n90));
  AND2X1   g72(.A(new_n87), .B(new_n67), .Y(n94));
  AND2X1   g73(.A(new_n110), .B(new_n67), .Y(n99));
  AND2X1   g74(.A(new_n122), .B(new_n67), .Y(n104));
  always @ (posedge clock) begin
    \display[0]  <= n32;
    \display[1]  <= n36;
    \display[2]  <= n40;
    \display[3]  <= n44;
    \amount_inserted[0]  <= n48;
    \amount_inserted[1]  <= n53;
    \amount_inserted[2]  <= n58;
    \product_cost[0]  <= n63;
    \product_cost[1]  <= n68;
    \product_cost[2]  <= n73;
    dispense <= n78;
    \change[0]  <= n82;
    \change[1]  <= n86;
    \change[2]  <= n90;
    \excess_change[0]  <= n94;
    \excess_change[1]  <= n99;
    \excess_change[2]  <= n104;
  end
endmodule


