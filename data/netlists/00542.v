// Benchmark "adder" written by ABC on Wed Jun 26 15:22:13 2024

module adder ( clock, 
    clk, rst, load, \A[0] , \A[1] , \A[2] , \A[3] , \A[4] , \A[5] , \A[6] ,
    \A[7] , \B[0] , \B[1] , \B[2] , \B[3] , \B[4] , \B[5] , \B[6] , \B[7] ,
    \Q[0] , \Q[1] , \Q[2] , \Q[3] , \Q[4] , \Q[5] , \Q[6] , \Q[7]   );
  input  clock;
  input  clk, rst, load, \A[0] , \A[1] , \A[2] , \A[3] , \A[4] , \A[5] ,
    \A[6] , \A[7] , \B[0] , \B[1] , \B[2] , \B[3] , \B[4] , \B[5] , \B[6] ,
    \B[7] ;
  output \Q[0] , \Q[1] , \Q[2] , \Q[3] , \Q[4] , \Q[5] , \Q[6] , \Q[7] ;
  reg \adder|Q_reg[0] , \adder|Q_reg[1] , \adder|Q_reg[2] ,
    \adder|Q_reg[3] , \adder|Q_reg[4] , \adder|Q_reg[5] , \adder|Q_reg[6] ,
    \adder|Q_reg[7] ;
  wire new_n52, new_n53, new_n54, new_n55, new_n57, new_n58, new_n59,
    new_n60, new_n62, new_n63, new_n64, new_n65, new_n66, new_n67, new_n68,
    new_n70, new_n71, new_n72, new_n73, new_n74, new_n75, new_n77, new_n78,
    new_n79, new_n80, new_n81, new_n82, new_n83, new_n84, new_n85, new_n86,
    new_n88_1, new_n89_1, new_n90, new_n91_1, new_n92_1, new_n93,
    new_n94_1, new_n96, new_n97_1, new_n98_1, new_n99, new_n100_1,
    new_n101_1, new_n102, new_n104_1, new_n105, new_n106_1, new_n107_1,
    new_n108, new_n109_1, new_n110_1, new_n111, new_n112, new_n113,
    new_n114, n88, n91, n94, n97, n100, n103, n106, n109;
  INVX1    g00(.A(rst), .Y(new_n52));
  INVX1    g01(.A(load), .Y(new_n53));
  XOR2X1   g02(.A(\B[0] ), .B(\A[0] ), .Y(new_n54));
  MX2X1    g03(.A(new_n54), .B(\adder|Q_reg[0] ), .S0(new_n53), .Y(new_n55));
  AND2X1   g04(.A(new_n55), .B(new_n52), .Y(n88));
  XOR2X1   g05(.A(\B[1] ), .B(\A[1] ), .Y(new_n57));
  AND2X1   g06(.A(\B[0] ), .B(\A[0] ), .Y(new_n58));
  XOR2X1   g07(.A(new_n58), .B(new_n57), .Y(new_n59));
  MX2X1    g08(.A(new_n59), .B(\adder|Q_reg[1] ), .S0(new_n53), .Y(new_n60));
  AND2X1   g09(.A(new_n60), .B(new_n52), .Y(n91));
  XOR2X1   g10(.A(\B[2] ), .B(\A[2] ), .Y(new_n62));
  NAND3X1  g11(.A(\B[1] ), .B(\B[0] ), .C(\A[0] ), .Y(new_n63));
  NAND2X1  g12(.A(\B[1] ), .B(\A[1] ), .Y(new_n64));
  NAND3X1  g13(.A(\B[0] ), .B(\A[1] ), .C(\A[0] ), .Y(new_n65));
  NAND3X1  g14(.A(new_n65), .B(new_n64), .C(new_n63), .Y(new_n66));
  XOR2X1   g15(.A(new_n66), .B(new_n62), .Y(new_n67));
  MX2X1    g16(.A(new_n67), .B(\adder|Q_reg[2] ), .S0(new_n53), .Y(new_n68));
  AND2X1   g17(.A(new_n68), .B(new_n52), .Y(n94));
  XOR2X1   g18(.A(\B[3] ), .B(\A[3] ), .Y(new_n70));
  NAND2X1  g19(.A(new_n66), .B(\B[2] ), .Y(new_n71));
  OAI21X1  g20(.A0(new_n66), .A1(\B[2] ), .B0(\A[2] ), .Y(new_n72));
  NAND2X1  g21(.A(new_n72), .B(new_n71), .Y(new_n73));
  XOR2X1   g22(.A(new_n73), .B(new_n70), .Y(new_n74));
  MX2X1    g23(.A(new_n74), .B(\adder|Q_reg[3] ), .S0(new_n53), .Y(new_n75));
  AND2X1   g24(.A(new_n75), .B(new_n52), .Y(n97));
  INVX1    g25(.A(\A[4] ), .Y(new_n77));
  XOR2X1   g26(.A(\B[4] ), .B(new_n77), .Y(new_n78));
  INVX1    g27(.A(\B[3] ), .Y(new_n79));
  AOI21X1  g28(.A0(new_n72), .A1(new_n71), .B0(new_n79), .Y(new_n80));
  AND2X1   g29(.A(\B[3] ), .B(\A[3] ), .Y(new_n81));
  INVX1    g30(.A(\A[3] ), .Y(new_n82));
  AOI21X1  g31(.A0(new_n72), .A1(new_n71), .B0(new_n82), .Y(new_n83));
  NOR3X1   g32(.A(new_n83), .B(new_n81), .C(new_n80), .Y(new_n84));
  XOR2X1   g33(.A(new_n84), .B(new_n78), .Y(new_n85));
  MX2X1    g34(.A(new_n85), .B(\adder|Q_reg[4] ), .S0(new_n53), .Y(new_n86));
  AND2X1   g35(.A(new_n86), .B(new_n52), .Y(n100));
  XOR2X1   g36(.A(\B[5] ), .B(\A[5] ), .Y(new_n88_1));
  INVX1    g37(.A(\B[4] ), .Y(new_n89_1));
  NOR2X1   g38(.A(new_n84), .B(new_n89_1), .Y(new_n90));
  AOI21X1  g39(.A0(new_n84), .A1(new_n89_1), .B0(new_n77), .Y(new_n91_1));
  OR2X1    g40(.A(new_n91_1), .B(new_n90), .Y(new_n92_1));
  XOR2X1   g41(.A(new_n92_1), .B(new_n88_1), .Y(new_n93));
  MX2X1    g42(.A(new_n93), .B(\adder|Q_reg[5] ), .S0(new_n53), .Y(new_n94_1));
  AND2X1   g43(.A(new_n94_1), .B(new_n52), .Y(n103));
  XOR2X1   g44(.A(\B[6] ), .B(\A[6] ), .Y(new_n96));
  OAI21X1  g45(.A0(new_n91_1), .A1(new_n90), .B0(\B[5] ), .Y(new_n97_1));
  NAND2X1  g46(.A(\B[5] ), .B(\A[5] ), .Y(new_n98_1));
  OAI21X1  g47(.A0(new_n91_1), .A1(new_n90), .B0(\A[5] ), .Y(new_n99));
  NAND3X1  g48(.A(new_n99), .B(new_n98_1), .C(new_n97_1), .Y(new_n100_1));
  XOR2X1   g49(.A(new_n100_1), .B(new_n96), .Y(new_n101_1));
  MX2X1    g50(.A(new_n101_1), .B(\adder|Q_reg[6] ), .S0(new_n53), .Y(new_n102));
  AND2X1   g51(.A(new_n102), .B(new_n52), .Y(n106));
  NAND2X1  g52(.A(\adder|Q_reg[7] ), .B(new_n53), .Y(new_n104_1));
  XOR2X1   g53(.A(\B[7] ), .B(\A[7] ), .Y(new_n105));
  INVX1    g54(.A(new_n105), .Y(new_n106_1));
  AND2X1   g55(.A(new_n100_1), .B(\B[6] ), .Y(new_n107_1));
  AND2X1   g56(.A(\B[6] ), .B(\A[6] ), .Y(new_n108));
  AND2X1   g57(.A(new_n100_1), .B(\A[6] ), .Y(new_n109_1));
  NOR4X1   g58(.A(new_n109_1), .B(new_n108), .C(new_n107_1), .D(new_n106_1), .Y(new_n110_1));
  NAND2X1  g59(.A(new_n100_1), .B(\B[6] ), .Y(new_n111));
  OAI21X1  g60(.A0(new_n100_1), .A1(\B[6] ), .B0(\A[6] ), .Y(new_n112));
  AOI21X1  g61(.A0(new_n112), .A1(new_n111), .B0(new_n105), .Y(new_n113));
  OAI21X1  g62(.A0(new_n113), .A1(new_n110_1), .B0(load), .Y(new_n114));
  AOI21X1  g63(.A0(new_n114), .A1(new_n104_1), .B0(rst), .Y(n109));
  BUFX1    g64(.A(\adder|Q_reg[0] ), .Y(\Q[0] ));
  BUFX1    g65(.A(\adder|Q_reg[1] ), .Y(\Q[1] ));
  BUFX1    g66(.A(\adder|Q_reg[2] ), .Y(\Q[2] ));
  BUFX1    g67(.A(\adder|Q_reg[3] ), .Y(\Q[3] ));
  BUFX1    g68(.A(\adder|Q_reg[4] ), .Y(\Q[4] ));
  BUFX1    g69(.A(\adder|Q_reg[5] ), .Y(\Q[5] ));
  BUFX1    g70(.A(\adder|Q_reg[6] ), .Y(\Q[6] ));
  BUFX1    g71(.A(\adder|Q_reg[7] ), .Y(\Q[7] ));
  always @ (posedge clock) begin
    \adder|Q_reg[0]  <= n88;
    \adder|Q_reg[1]  <= n91;
    \adder|Q_reg[2]  <= n94;
    \adder|Q_reg[3]  <= n97;
    \adder|Q_reg[4]  <= n100;
    \adder|Q_reg[5]  <= n103;
    \adder|Q_reg[6]  <= n106;
    \adder|Q_reg[7]  <= n109;
  end
endmodule


