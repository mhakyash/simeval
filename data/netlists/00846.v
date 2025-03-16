// Benchmark "pipelined_addsub" written by ABC on Wed Jun 26 15:22:22 2024

module pipelined_addsub ( clock, 
    \a[0] , \a[1] , \a[2] , \a[3] , \b[0] , \b[1] , \b[2] , \b[3] , mode,
    \out[0] , \out[1] , \out[2] , \out[3] , overflow  );
  input  clock;
  input  \a[0] , \a[1] , \a[2] , \a[3] , \b[0] , \b[1] , \b[2] , \b[3] ,
    mode;
  output \out[0] , \out[1] , \out[2] , \out[3] , overflow;
  reg \out[0] , \out[1] , \out[2] , \out[3] , \sum2[0] , \sum2[1] ,
    \sum2[2] , \sum2[3] , \diff2[0] , \diff2[1] , \diff2[2] , \diff2[3] ;
  wire new_n51_1, new_n52, new_n53, new_n54, new_n55, new_n56_1, new_n57,
    new_n58, new_n59, new_n60, new_n61_1, new_n62, new_n63, new_n64,
    new_n65, new_n66_1, new_n67, new_n68, new_n69, new_n70, new_n71_1,
    new_n72, new_n73, new_n74, new_n75, new_n76_1, new_n77, new_n78,
    new_n79, new_n80, new_n81_1, new_n82, new_n83, new_n85, new_n86,
    new_n87, new_n88, new_n89, new_n90, new_n91, new_n92, new_n93, new_n94,
    new_n95, new_n97, new_n98, new_n99, new_n106, new_n107, new_n108,
    new_n110, new_n111, new_n112, n30, n34, n38, n42, n46, n51, n56, n61,
    n66, n71, n76, n81;
  INVX1    g00(.A(\b[3] ), .Y(new_n51_1));
  INVX1    g01(.A(mode), .Y(new_n52));
  XOR2X1   g02(.A(\b[3] ), .B(\a[3] ), .Y(new_n53));
  NAND2X1  g03(.A(\b[2] ), .B(\a[2] ), .Y(new_n54));
  INVX1    g04(.A(\a[2] ), .Y(new_n55));
  XOR2X1   g05(.A(\b[2] ), .B(new_n55), .Y(new_n56_1));
  AND2X1   g06(.A(\b[1] ), .B(\a[1] ), .Y(new_n57));
  XOR2X1   g07(.A(\b[1] ), .B(\a[1] ), .Y(new_n58));
  AND2X1   g08(.A(\b[0] ), .B(\a[0] ), .Y(new_n59));
  AOI21X1  g09(.A0(new_n59), .A1(new_n58), .B0(new_n57), .Y(new_n60));
  OAI21X1  g10(.A0(new_n60), .A1(new_n56_1), .B0(new_n54), .Y(new_n61_1));
  XOR2X1   g11(.A(new_n61_1), .B(new_n53), .Y(new_n62));
  AND2X1   g12(.A(new_n62), .B(new_n52), .Y(new_n63));
  OR2X1    g13(.A(\b[2] ), .B(new_n55), .Y(new_n64));
  XOR2X1   g14(.A(\b[3] ), .B(\a[3] ), .Y(new_n65));
  INVX1    g15(.A(new_n65), .Y(new_n66_1));
  INVX1    g16(.A(\a[1] ), .Y(new_n67));
  NOR2X1   g17(.A(\b[1] ), .B(new_n67), .Y(new_n68));
  XOR2X1   g18(.A(\b[2] ), .B(new_n55), .Y(new_n69));
  INVX1    g19(.A(\a[0] ), .Y(new_n70));
  XOR2X1   g20(.A(\b[1] ), .B(\a[1] ), .Y(new_n71_1));
  AOI21X1  g21(.A0(\b[0] ), .A1(new_n70), .B0(new_n71_1), .Y(new_n72));
  OAI21X1  g22(.A0(new_n72), .A1(new_n68), .B0(new_n69), .Y(new_n73));
  NAND3X1  g23(.A(new_n73), .B(new_n66_1), .C(new_n64), .Y(new_n74));
  NOR2X1   g24(.A(\b[2] ), .B(new_n55), .Y(new_n75));
  OR2X1    g25(.A(\b[1] ), .B(new_n67), .Y(new_n76_1));
  XOR2X1   g26(.A(\b[2] ), .B(\a[2] ), .Y(new_n77));
  INVX1    g27(.A(\b[0] ), .Y(new_n78));
  NOR2X1   g28(.A(\b[1] ), .B(\a[1] ), .Y(new_n79));
  OAI22X1  g29(.A0(new_n79), .A1(new_n57), .B0(new_n78), .B1(\a[0] ), .Y(new_n80));
  AOI21X1  g30(.A0(new_n80), .A1(new_n76_1), .B0(new_n77), .Y(new_n81_1));
  OAI21X1  g31(.A0(new_n81_1), .A1(new_n75), .B0(new_n65), .Y(new_n82));
  AOI21X1  g32(.A0(new_n82), .A1(new_n74), .B0(new_n52), .Y(new_n83));
  OR2X1    g33(.A(new_n83), .B(new_n63), .Y(n61));
  XOR2X1   g34(.A(n61), .B(new_n51_1), .Y(new_n85));
  NAND2X1  g35(.A(new_n62), .B(new_n52), .Y(new_n86));
  NOR3X1   g36(.A(new_n81_1), .B(new_n65), .C(new_n75), .Y(new_n87));
  AOI21X1  g37(.A0(new_n73), .A1(new_n64), .B0(new_n66_1), .Y(new_n88));
  OAI21X1  g38(.A0(new_n88), .A1(new_n87), .B0(mode), .Y(new_n89));
  AOI21X1  g39(.A0(new_n89), .A1(new_n86), .B0(\a[3] ), .Y(new_n90));
  INVX1    g40(.A(\a[3] ), .Y(new_n91));
  NOR3X1   g41(.A(new_n83), .B(new_n63), .C(new_n91), .Y(new_n92));
  OAI21X1  g42(.A0(new_n92), .A1(new_n90), .B0(new_n52), .Y(new_n93));
  AND2X1   g43(.A(new_n73), .B(new_n64), .Y(new_n94));
  XOR2X1   g44(.A(new_n94), .B(new_n65), .Y(new_n95));
  MX2X1    g45(.A(new_n95), .B(new_n62), .S0(mode), .Y(n81));
  XOR2X1   g46(.A(n81), .B(new_n91), .Y(new_n97));
  AOI21X1  g47(.A0(new_n62), .A1(new_n51_1), .B0(new_n52), .Y(new_n98));
  OAI21X1  g48(.A0(n81), .A1(new_n51_1), .B0(new_n98), .Y(new_n99));
  OAI22X1  g49(.A0(new_n99), .A1(new_n97), .B0(new_n93), .B1(new_n85), .Y(overflow));
  MX2X1    g50(.A(\sum2[0] ), .B(\diff2[0] ), .S0(mode), .Y(n30));
  MX2X1    g51(.A(\sum2[1] ), .B(\diff2[1] ), .S0(mode), .Y(n34));
  MX2X1    g52(.A(\sum2[2] ), .B(\diff2[2] ), .S0(mode), .Y(n38));
  MX2X1    g53(.A(\sum2[3] ), .B(\diff2[3] ), .S0(mode), .Y(n42));
  XOR2X1   g54(.A(\b[0] ), .B(\a[0] ), .Y(n46));
  XOR2X1   g55(.A(new_n59), .B(new_n58), .Y(new_n106));
  AND2X1   g56(.A(\b[0] ), .B(new_n70), .Y(new_n107));
  XOR2X1   g57(.A(new_n107), .B(new_n71_1), .Y(new_n108));
  MX2X1    g58(.A(new_n108), .B(new_n106), .S0(new_n52), .Y(n51));
  XOR2X1   g59(.A(new_n60), .B(new_n56_1), .Y(new_n110));
  AND2X1   g60(.A(new_n80), .B(new_n76_1), .Y(new_n111));
  XOR2X1   g61(.A(new_n111), .B(new_n77), .Y(new_n112));
  MX2X1    g62(.A(new_n112), .B(new_n110), .S0(new_n52), .Y(n56));
  XOR2X1   g63(.A(\b[0] ), .B(\a[0] ), .Y(n66));
  MX2X1    g64(.A(new_n108), .B(new_n106), .S0(mode), .Y(n71));
  MX2X1    g65(.A(new_n112), .B(new_n110), .S0(mode), .Y(n76));
  always @ (posedge clock) begin
    \out[0]  <= n30;
    \out[1]  <= n34;
    \out[2]  <= n38;
    \out[3]  <= n42;
    \sum2[0]  <= n46;
    \sum2[1]  <= n51;
    \sum2[2]  <= n56;
    \sum2[3]  <= n61;
    \diff2[0]  <= n66;
    \diff2[1]  <= n71;
    \diff2[2]  <= n76;
    \diff2[3]  <= n81;
  end
endmodule


