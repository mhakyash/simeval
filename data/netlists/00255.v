// Benchmark "top_module" written by ABC on Wed Jun 26 15:22:04 2024

module top_module ( clock, 
    CLK, SHIFT, \in_0[0] , \in_0[1] , \in_0[2] , \in_0[3] , \in_1[0] ,
    \in_1[1] , \in_1[2] , \in_1[3] , \in_2[0] , \in_2[1] , \in_2[2] ,
    \in_2[3] , \in_3[0] , \in_3[1] , \in_3[2] , \in_3[3] , \sel[0] ,
    \sel[1] ,
    \out[0] , \out[1] , \out[2] , \out[3]   );
  input  clock;
  input  CLK, SHIFT, \in_0[0] , \in_0[1] , \in_0[2] , \in_0[3] ,
    \in_1[0] , \in_1[1] , \in_1[2] , \in_1[3] , \in_2[0] , \in_2[1] ,
    \in_2[2] , \in_2[3] , \in_3[0] , \in_3[1] , \in_3[2] , \in_3[3] ,
    \sel[0] , \sel[1] ;
  output \out[0] , \out[1] , \out[2] , \out[3] ;
  reg \top_module|SHIFTED_DATA[0] , \top_module|SHIFTED_DATA[1] ,
    \top_module|SHIFTED_DATA[2] , \top_module|SHIFTED_DATA[3] ,
    \top_module|SHIFTED_DATA[4] , \top_module|SHIFTED_DATA[5] ,
    \top_module|SHIFTED_DATA[6] , \top_module|SHIFTED_DATA[7] ;
  wire new_n49, new_n50, new_n51, new_n52, new_n53, new_n54, new_n55,
    new_n56, new_n57, new_n58, new_n59, new_n60, new_n61, new_n62, new_n63,
    new_n65, new_n66, new_n67, new_n68, new_n69, new_n70, new_n71, new_n72,
    new_n74, new_n75, new_n76, new_n77, new_n78, new_n79, new_n80, new_n81,
    new_n83_1, new_n84_1, new_n85, new_n86_1, new_n87_1, new_n88,
    new_n89_1, new_n90_1, new_n92_1, n83, n86, n89, n92, n95, n98, n101,
    n104;
  INVX1    g00(.A(\top_module|SHIFTED_DATA[0] ), .Y(new_n49));
  AND2X1   g01(.A(\sel[1] ), .B(\sel[0] ), .Y(new_n50));
  AND2X1   g02(.A(new_n50), .B(\in_3[0] ), .Y(new_n51));
  INVX1    g03(.A(\in_2[0] ), .Y(new_n52));
  INVX1    g04(.A(\sel[1] ), .Y(new_n53));
  NOR3X1   g05(.A(new_n53), .B(\sel[0] ), .C(new_n52), .Y(new_n54));
  INVX1    g06(.A(\in_1[0] ), .Y(new_n55));
  INVX1    g07(.A(\sel[0] ), .Y(new_n56));
  NOR3X1   g08(.A(\sel[1] ), .B(new_n56), .C(new_n55), .Y(new_n57));
  NOR2X1   g09(.A(\sel[1] ), .B(\sel[0] ), .Y(new_n58));
  AND2X1   g10(.A(new_n58), .B(\in_0[0] ), .Y(new_n59));
  NOR4X1   g11(.A(new_n59), .B(new_n57), .C(new_n54), .D(new_n51), .Y(new_n60));
  AND2X1   g12(.A(\sel[1] ), .B(new_n56), .Y(new_n61));
  AND2X1   g13(.A(new_n53), .B(\sel[0] ), .Y(new_n62));
  NOR4X1   g14(.A(new_n58), .B(new_n62), .C(new_n61), .D(new_n50), .Y(new_n63));
  OAI21X1  g15(.A0(new_n63), .A1(new_n60), .B0(new_n49), .Y(\out[0] ));
  INVX1    g16(.A(\top_module|SHIFTED_DATA[1] ), .Y(new_n65));
  AND2X1   g17(.A(new_n50), .B(\in_3[1] ), .Y(new_n66));
  INVX1    g18(.A(\in_2[1] ), .Y(new_n67));
  NOR3X1   g19(.A(new_n53), .B(\sel[0] ), .C(new_n67), .Y(new_n68));
  INVX1    g20(.A(\in_1[1] ), .Y(new_n69));
  NOR3X1   g21(.A(\sel[1] ), .B(new_n56), .C(new_n69), .Y(new_n70));
  AND2X1   g22(.A(new_n58), .B(\in_0[1] ), .Y(new_n71));
  NOR4X1   g23(.A(new_n71), .B(new_n70), .C(new_n68), .D(new_n66), .Y(new_n72));
  OAI21X1  g24(.A0(new_n72), .A1(new_n63), .B0(new_n65), .Y(\out[1] ));
  INVX1    g25(.A(\top_module|SHIFTED_DATA[2] ), .Y(new_n74));
  AND2X1   g26(.A(new_n50), .B(\in_3[2] ), .Y(new_n75));
  INVX1    g27(.A(\in_2[2] ), .Y(new_n76));
  NOR3X1   g28(.A(new_n53), .B(\sel[0] ), .C(new_n76), .Y(new_n77));
  INVX1    g29(.A(\in_1[2] ), .Y(new_n78));
  NOR3X1   g30(.A(\sel[1] ), .B(new_n56), .C(new_n78), .Y(new_n79));
  AND2X1   g31(.A(new_n58), .B(\in_0[2] ), .Y(new_n80));
  NOR4X1   g32(.A(new_n80), .B(new_n79), .C(new_n77), .D(new_n75), .Y(new_n81));
  OAI21X1  g33(.A0(new_n81), .A1(new_n63), .B0(new_n74), .Y(\out[2] ));
  INVX1    g34(.A(\top_module|SHIFTED_DATA[3] ), .Y(new_n83_1));
  AND2X1   g35(.A(new_n50), .B(\in_3[3] ), .Y(new_n84_1));
  INVX1    g36(.A(\in_2[3] ), .Y(new_n85));
  NOR3X1   g37(.A(new_n53), .B(\sel[0] ), .C(new_n85), .Y(new_n86_1));
  INVX1    g38(.A(\in_1[3] ), .Y(new_n87_1));
  NOR3X1   g39(.A(\sel[1] ), .B(new_n56), .C(new_n87_1), .Y(new_n88));
  AND2X1   g40(.A(new_n58), .B(\in_0[3] ), .Y(new_n89_1));
  NOR4X1   g41(.A(new_n89_1), .B(new_n88), .C(new_n86_1), .D(new_n84_1), .Y(new_n90_1));
  OAI21X1  g42(.A0(new_n90_1), .A1(new_n63), .B0(new_n83_1), .Y(\out[3] ));
  INVX1    g43(.A(SHIFT), .Y(new_n92_1));
  AND2X1   g44(.A(\in_0[0] ), .B(new_n92_1), .Y(n83));
  AND2X1   g45(.A(\in_0[1] ), .B(new_n92_1), .Y(n86));
  AND2X1   g46(.A(\in_0[2] ), .B(new_n92_1), .Y(n89));
  AND2X1   g47(.A(\in_0[3] ), .B(new_n92_1), .Y(n92));
  AND2X1   g48(.A(\in_0[0] ), .B(SHIFT), .Y(n95));
  AND2X1   g49(.A(\in_0[1] ), .B(SHIFT), .Y(n98));
  AND2X1   g50(.A(\in_0[2] ), .B(SHIFT), .Y(n101));
  AND2X1   g51(.A(\in_0[3] ), .B(SHIFT), .Y(n104));
  always @ (posedge clock) begin
    \top_module|SHIFTED_DATA[0]  <= n83;
    \top_module|SHIFTED_DATA[1]  <= n86;
    \top_module|SHIFTED_DATA[2]  <= n89;
    \top_module|SHIFTED_DATA[3]  <= n92;
    \top_module|SHIFTED_DATA[4]  <= n95;
    \top_module|SHIFTED_DATA[5]  <= n98;
    \top_module|SHIFTED_DATA[6]  <= n101;
    \top_module|SHIFTED_DATA[7]  <= n104;
  end
endmodule


