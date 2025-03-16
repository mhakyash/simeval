// Benchmark "barrel_shifter" written by ABC on Wed Jun 26 15:22:16 2024

module barrel_shifter ( clock, 
    \d_in[0] , \d_in[1] , \d_in[2] , \d_in[3] , \d_in[4] , \d_in[5] ,
    \d_in[6] , \d_in[7] , \shift_amount[0] , \shift_amount[1] ,
    \shift_amount[2] , clk,
    \d_out[0] , \d_out[1] , \d_out[2] , \d_out[3] , \d_out[4] , \d_out[5] ,
    \d_out[6] , \d_out[7]   );
  input  clock;
  input  \d_in[0] , \d_in[1] , \d_in[2] , \d_in[3] , \d_in[4] ,
    \d_in[5] , \d_in[6] , \d_in[7] , \shift_amount[0] , \shift_amount[1] ,
    \shift_amount[2] , clk;
  output \d_out[0] , \d_out[1] , \d_out[2] , \d_out[3] , \d_out[4] ,
    \d_out[5] , \d_out[6] , \d_out[7] ;
  reg \shifted_d_in[0] , \shifted_d_in[1] , \shifted_d_in[2] ,
    \shifted_d_in[3] , \shifted_d_in[4] , \shifted_d_in[5] ,
    \shifted_d_in[6] , \shifted_d_in[7] ;
  wire new_n45, new_n47_1, new_n48, new_n49, new_n50, new_n51, new_n52_1,
    new_n53, new_n54, new_n55, new_n56, new_n57_1, new_n58, new_n59,
    new_n60, new_n62_1, new_n63, new_n65, new_n66, new_n68, new_n69,
    new_n70, new_n71, new_n72_1, new_n73, new_n74, new_n76, new_n77_1,
    new_n78, new_n79, new_n80, new_n81, new_n82, new_n84, new_n85, new_n86,
    new_n87, new_n88, new_n89, new_n90, new_n91, new_n92, new_n93, new_n94,
    new_n96, new_n97, new_n98, new_n99, new_n100, new_n101, new_n102,
    new_n103, new_n104, new_n105, new_n106, n42, n47, n52, n57, n62, n67,
    n72, n77;
  INVX1    g00(.A(\d_in[0] ), .Y(new_n45));
  NOR4X1   g01(.A(\shift_amount[2] ), .B(\shift_amount[1] ), .C(\shift_amount[0] ), .D(new_n45), .Y(n42));
  INVX1    g02(.A(\shift_amount[2] ), .Y(new_n47_1));
  NOR3X1   g03(.A(new_n47_1), .B(\shift_amount[1] ), .C(\shift_amount[0] ), .Y(new_n48));
  INVX1    g04(.A(\shift_amount[0] ), .Y(new_n49));
  INVX1    g05(.A(\shift_amount[1] ), .Y(new_n50));
  NOR3X1   g06(.A(\shift_amount[2] ), .B(new_n50), .C(new_n49), .Y(new_n51));
  NOR3X1   g07(.A(\shift_amount[2] ), .B(new_n50), .C(\shift_amount[0] ), .Y(new_n52_1));
  NOR3X1   g08(.A(\shift_amount[2] ), .B(\shift_amount[1] ), .C(new_n49), .Y(new_n53));
  NOR4X1   g09(.A(new_n53), .B(new_n52_1), .C(new_n51), .D(new_n48), .Y(new_n54));
  NOR3X1   g10(.A(\shift_amount[2] ), .B(\shift_amount[1] ), .C(\shift_amount[0] ), .Y(new_n55));
  NOR3X1   g11(.A(new_n47_1), .B(new_n50), .C(new_n49), .Y(new_n56));
  NOR3X1   g12(.A(new_n47_1), .B(new_n50), .C(\shift_amount[0] ), .Y(new_n57_1));
  NOR3X1   g13(.A(new_n47_1), .B(\shift_amount[1] ), .C(new_n49), .Y(new_n58));
  NOR4X1   g14(.A(new_n58), .B(new_n57_1), .C(new_n56), .D(new_n55), .Y(new_n59));
  AOI22X1  g15(.A0(new_n55), .A1(\d_in[1] ), .B0(new_n53), .B1(\d_in[0] ), .Y(new_n60));
  AOI21X1  g16(.A0(new_n59), .A1(new_n54), .B0(new_n60), .Y(n47));
  NAND2X1  g17(.A(new_n55), .B(\d_in[2] ), .Y(new_n62_1));
  AOI22X1  g18(.A0(new_n53), .A1(\d_in[1] ), .B0(new_n52_1), .B1(\d_in[0] ), .Y(new_n63));
  AOI22X1  g19(.A0(new_n63), .A1(new_n62_1), .B0(new_n59), .B1(new_n54), .Y(n52));
  AOI22X1  g20(.A0(new_n52_1), .A1(\d_in[1] ), .B0(new_n51), .B1(\d_in[0] ), .Y(new_n65));
  AOI22X1  g21(.A0(new_n55), .A1(\d_in[3] ), .B0(new_n53), .B1(\d_in[2] ), .Y(new_n66));
  AOI22X1  g22(.A0(new_n66), .A1(new_n65), .B0(new_n59), .B1(new_n54), .Y(n57));
  AOI22X1  g23(.A0(new_n51), .A1(\d_in[1] ), .B0(new_n48), .B1(\d_in[0] ), .Y(new_n68));
  AND2X1   g24(.A(new_n55), .B(\d_in[4] ), .Y(new_n69));
  INVX1    g25(.A(\d_in[2] ), .Y(new_n70));
  NOR4X1   g26(.A(\shift_amount[2] ), .B(new_n50), .C(\shift_amount[0] ), .D(new_n70), .Y(new_n71));
  INVX1    g27(.A(\d_in[3] ), .Y(new_n72_1));
  NOR4X1   g28(.A(\shift_amount[2] ), .B(\shift_amount[1] ), .C(new_n49), .D(new_n72_1), .Y(new_n73));
  NOR3X1   g29(.A(new_n73), .B(new_n71), .C(new_n69), .Y(new_n74));
  AOI22X1  g30(.A0(new_n74), .A1(new_n68), .B0(new_n59), .B1(new_n54), .Y(n62));
  AOI22X1  g31(.A0(new_n58), .A1(\d_in[0] ), .B0(new_n48), .B1(\d_in[1] ), .Y(new_n76));
  NOR4X1   g32(.A(\shift_amount[2] ), .B(new_n50), .C(new_n49), .D(new_n70), .Y(new_n77_1));
  NOR4X1   g33(.A(\shift_amount[2] ), .B(new_n50), .C(\shift_amount[0] ), .D(new_n72_1), .Y(new_n78));
  INVX1    g34(.A(\d_in[4] ), .Y(new_n79));
  NOR4X1   g35(.A(\shift_amount[2] ), .B(\shift_amount[1] ), .C(new_n49), .D(new_n79), .Y(new_n80));
  AND2X1   g36(.A(new_n55), .B(\d_in[5] ), .Y(new_n81));
  NOR4X1   g37(.A(new_n81), .B(new_n80), .C(new_n78), .D(new_n77_1), .Y(new_n82));
  AOI22X1  g38(.A0(new_n82), .A1(new_n76), .B0(new_n59), .B1(new_n54), .Y(n67));
  AND2X1   g39(.A(new_n55), .B(\d_in[6] ), .Y(new_n84));
  NOR4X1   g40(.A(\shift_amount[2] ), .B(new_n50), .C(\shift_amount[0] ), .D(new_n79), .Y(new_n85));
  INVX1    g41(.A(\d_in[5] ), .Y(new_n86));
  NOR4X1   g42(.A(\shift_amount[2] ), .B(\shift_amount[1] ), .C(new_n49), .D(new_n86), .Y(new_n87));
  NOR3X1   g43(.A(new_n87), .B(new_n85), .C(new_n84), .Y(new_n88));
  NOR4X1   g44(.A(new_n47_1), .B(new_n50), .C(\shift_amount[0] ), .D(new_n45), .Y(new_n89));
  INVX1    g45(.A(\d_in[1] ), .Y(new_n90));
  NOR4X1   g46(.A(new_n47_1), .B(\shift_amount[1] ), .C(new_n49), .D(new_n90), .Y(new_n91));
  NOR4X1   g47(.A(new_n47_1), .B(\shift_amount[1] ), .C(\shift_amount[0] ), .D(new_n70), .Y(new_n92));
  NOR4X1   g48(.A(\shift_amount[2] ), .B(new_n50), .C(new_n49), .D(new_n72_1), .Y(new_n93));
  NOR4X1   g49(.A(new_n93), .B(new_n92), .C(new_n91), .D(new_n89), .Y(new_n94));
  AOI22X1  g50(.A0(new_n94), .A1(new_n88), .B0(new_n59), .B1(new_n54), .Y(n72));
  NOR4X1   g51(.A(\shift_amount[2] ), .B(new_n50), .C(new_n49), .D(new_n79), .Y(new_n96));
  NOR4X1   g52(.A(\shift_amount[2] ), .B(new_n50), .C(\shift_amount[0] ), .D(new_n86), .Y(new_n97));
  INVX1    g53(.A(\d_in[6] ), .Y(new_n98));
  NOR4X1   g54(.A(\shift_amount[2] ), .B(\shift_amount[1] ), .C(new_n49), .D(new_n98), .Y(new_n99));
  AND2X1   g55(.A(new_n55), .B(\d_in[7] ), .Y(new_n100));
  NOR4X1   g56(.A(new_n100), .B(new_n99), .C(new_n97), .D(new_n96), .Y(new_n101));
  NOR4X1   g57(.A(new_n47_1), .B(new_n50), .C(new_n49), .D(new_n45), .Y(new_n102));
  NOR4X1   g58(.A(new_n47_1), .B(new_n50), .C(\shift_amount[0] ), .D(new_n90), .Y(new_n103));
  NOR4X1   g59(.A(new_n47_1), .B(\shift_amount[1] ), .C(new_n49), .D(new_n70), .Y(new_n104));
  NOR4X1   g60(.A(new_n47_1), .B(\shift_amount[1] ), .C(\shift_amount[0] ), .D(new_n72_1), .Y(new_n105));
  NOR4X1   g61(.A(new_n105), .B(new_n104), .C(new_n103), .D(new_n102), .Y(new_n106));
  AOI22X1  g62(.A0(new_n106), .A1(new_n101), .B0(new_n59), .B1(new_n54), .Y(n77));
  BUFX1    g63(.A(\shifted_d_in[0] ), .Y(\d_out[0] ));
  BUFX1    g64(.A(\shifted_d_in[1] ), .Y(\d_out[1] ));
  BUFX1    g65(.A(\shifted_d_in[2] ), .Y(\d_out[2] ));
  BUFX1    g66(.A(\shifted_d_in[3] ), .Y(\d_out[3] ));
  BUFX1    g67(.A(\shifted_d_in[4] ), .Y(\d_out[4] ));
  BUFX1    g68(.A(\shifted_d_in[5] ), .Y(\d_out[5] ));
  BUFX1    g69(.A(\shifted_d_in[6] ), .Y(\d_out[6] ));
  BUFX1    g70(.A(\shifted_d_in[7] ), .Y(\d_out[7] ));
  always @ (posedge clock) begin
    \shifted_d_in[0]  <= n42;
    \shifted_d_in[1]  <= n47;
    \shifted_d_in[2]  <= n52;
    \shifted_d_in[3]  <= n57;
    \shifted_d_in[4]  <= n62;
    \shifted_d_in[5]  <= n67;
    \shifted_d_in[6]  <= n72;
    \shifted_d_in[7]  <= n77;
  end
endmodule


