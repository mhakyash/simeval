// Benchmark "max_value" written by ABC on Wed Jun 26 15:22:13 2024

module max_value ( clock, 
    clk, reset, \a[0] , \a[1] , \a[2] , \a[3] , \a[4] , \a[5] , \a[6] ,
    \a[7] , \b[0] , \b[1] , \b[2] , \b[3] , \b[4] , \b[5] , \b[6] , \b[7] ,
    \max[0] , \max[1] , \max[2] , \max[3] , \max[4] , \max[5] , \max[6] ,
    \max[7]   );
  input  clock;
  input  clk, reset, \a[0] , \a[1] , \a[2] , \a[3] , \a[4] , \a[5] ,
    \a[6] , \a[7] , \b[0] , \b[1] , \b[2] , \b[3] , \b[4] , \b[5] , \b[6] ,
    \b[7] ;
  output \max[0] , \max[1] , \max[2] , \max[3] , \max[4] , \max[5] , \max[6] ,
    \max[7] ;
  reg \max[0] , \max[1] , \max[2] , \max[3] , \max[4] , \max[5] , \max[6] ,
    \max[7] ;
  wire new_n51, new_n52, new_n53, new_n54_1, new_n55, new_n56, new_n57,
    new_n58_1, new_n59, new_n60, new_n61, new_n62_1, new_n63, new_n64,
    new_n65, new_n66_1, new_n67, new_n68, new_n69, new_n70_1, new_n71,
    new_n72, new_n73, new_n74_1, new_n75, new_n76, new_n77, new_n78_1,
    new_n79, new_n80, new_n81, new_n82_1, new_n83, new_n84, new_n86,
    new_n88, new_n90, new_n92, new_n94, new_n96, new_n98, n54, n58, n62,
    n66, n70, n74, n78, n82;
  INVX1    g00(.A(reset), .Y(new_n51));
  XOR2X1   g01(.A(\b[7] ), .B(\a[7] ), .Y(new_n52));
  XOR2X1   g02(.A(\b[6] ), .B(\a[6] ), .Y(new_n53));
  XOR2X1   g03(.A(\b[5] ), .B(\a[5] ), .Y(new_n54_1));
  XOR2X1   g04(.A(\b[4] ), .B(\a[4] ), .Y(new_n55));
  OR4X1    g05(.A(new_n55), .B(new_n54_1), .C(new_n53), .D(new_n52), .Y(new_n56));
  XOR2X1   g06(.A(\b[3] ), .B(\a[3] ), .Y(new_n57));
  XOR2X1   g07(.A(\b[2] ), .B(\a[2] ), .Y(new_n58_1));
  NOR2X1   g08(.A(new_n58_1), .B(new_n57), .Y(new_n59));
  INVX1    g09(.A(\b[1] ), .Y(new_n60));
  AND2X1   g10(.A(new_n60), .B(\a[1] ), .Y(new_n61));
  INVX1    g11(.A(\a[0] ), .Y(new_n62_1));
  XOR2X1   g12(.A(\b[1] ), .B(\a[1] ), .Y(new_n63));
  AOI21X1  g13(.A0(\b[0] ), .A1(new_n62_1), .B0(new_n63), .Y(new_n64));
  OAI21X1  g14(.A0(new_n64), .A1(new_n61), .B0(new_n59), .Y(new_n65));
  INVX1    g15(.A(\b[3] ), .Y(new_n66_1));
  INVX1    g16(.A(\a[2] ), .Y(new_n67));
  NOR3X1   g17(.A(new_n57), .B(\b[2] ), .C(new_n67), .Y(new_n68));
  AOI21X1  g18(.A0(new_n66_1), .A1(\a[3] ), .B0(new_n68), .Y(new_n69));
  AOI21X1  g19(.A0(new_n69), .A1(new_n65), .B0(new_n56), .Y(new_n70_1));
  OR2X1    g20(.A(new_n53), .B(new_n52), .Y(new_n71));
  INVX1    g21(.A(\b[5] ), .Y(new_n72));
  INVX1    g22(.A(\a[4] ), .Y(new_n73));
  NOR3X1   g23(.A(new_n54_1), .B(\b[4] ), .C(new_n73), .Y(new_n74_1));
  AOI21X1  g24(.A0(new_n72), .A1(\a[5] ), .B0(new_n74_1), .Y(new_n75));
  INVX1    g25(.A(\b[7] ), .Y(new_n76));
  INVX1    g26(.A(\a[6] ), .Y(new_n77));
  NOR3X1   g27(.A(new_n52), .B(\b[6] ), .C(new_n77), .Y(new_n78_1));
  AOI21X1  g28(.A0(new_n76), .A1(\a[7] ), .B0(new_n78_1), .Y(new_n79));
  OAI21X1  g29(.A0(new_n75), .A1(new_n71), .B0(new_n79), .Y(new_n80));
  XOR2X1   g30(.A(\b[0] ), .B(\a[0] ), .Y(new_n81));
  OR4X1    g31(.A(new_n81), .B(new_n63), .C(new_n58_1), .D(new_n57), .Y(new_n82_1));
  OAI22X1  g32(.A0(new_n82_1), .A1(new_n56), .B0(new_n80), .B1(new_n70_1), .Y(new_n83));
  MX2X1    g33(.A(\a[0] ), .B(\b[0] ), .S0(new_n83), .Y(new_n84));
  AND2X1   g34(.A(new_n84), .B(new_n51), .Y(n54));
  MX2X1    g35(.A(\a[1] ), .B(\b[1] ), .S0(new_n83), .Y(new_n86));
  AND2X1   g36(.A(new_n86), .B(new_n51), .Y(n58));
  MX2X1    g37(.A(\a[2] ), .B(\b[2] ), .S0(new_n83), .Y(new_n88));
  AND2X1   g38(.A(new_n88), .B(new_n51), .Y(n62));
  MX2X1    g39(.A(\a[3] ), .B(\b[3] ), .S0(new_n83), .Y(new_n90));
  AND2X1   g40(.A(new_n90), .B(new_n51), .Y(n66));
  MX2X1    g41(.A(\a[4] ), .B(\b[4] ), .S0(new_n83), .Y(new_n92));
  AND2X1   g42(.A(new_n92), .B(new_n51), .Y(n70));
  MX2X1    g43(.A(\a[5] ), .B(\b[5] ), .S0(new_n83), .Y(new_n94));
  AND2X1   g44(.A(new_n94), .B(new_n51), .Y(n74));
  MX2X1    g45(.A(\a[6] ), .B(\b[6] ), .S0(new_n83), .Y(new_n96));
  AND2X1   g46(.A(new_n96), .B(new_n51), .Y(n78));
  MX2X1    g47(.A(\a[7] ), .B(\b[7] ), .S0(new_n83), .Y(new_n98));
  AND2X1   g48(.A(new_n98), .B(new_n51), .Y(n82));
  always @ (posedge clock) begin
    \max[0]  <= n54;
    \max[1]  <= n58;
    \max[2]  <= n62;
    \max[3]  <= n66;
    \max[4]  <= n70;
    \max[5]  <= n74;
    \max[6]  <= n78;
    \max[7]  <= n82;
  end
endmodule


