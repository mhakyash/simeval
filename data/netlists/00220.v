// Benchmark "ripple_carry_adder_subtractor" written by ABC on Wed Jun 26 15:22:03 2024

module ripple_carry_adder_subtractor ( clock, 
    \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] , sub,
    \sum[0] , \sum[1] , \sum[2] , \sum[3] , carry_out  );
  input  clock;
  input  \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ,
    sub;
  output \sum[0] , \sum[1] , \sum[2] , \sum[3] , carry_out;
  reg \sum_reg[0] , \sum_reg[1] , \sum_reg[2] , \sum_reg[3] , \B_reg[0] ,
    \B_reg[1] , \B_reg[2] , \B_reg[3] , carry_out_reg, carry_in_reg,
    \A_reg[0] , \A_reg[1] , \A_reg[2] , \A_reg[3] ;
  wire new_n57_1, new_n58, new_n59, new_n60, new_n61_1, new_n62, new_n63,
    new_n64, new_n65, new_n67, new_n68, new_n69, new_n70, new_n71_1,
    new_n72, new_n73, new_n74, new_n75_1, new_n76, new_n77, new_n78,
    new_n79_1, new_n80, new_n82, new_n83_1, new_n84, new_n85, new_n86,
    new_n87_1, new_n88, new_n89, new_n90, new_n91, new_n92, new_n93,
    new_n94, new_n95, new_n96, new_n98, new_n99, new_n100, new_n101,
    new_n102, new_n103, new_n104, new_n105, new_n106, new_n107, new_n108,
    new_n109, new_n110, new_n111, new_n112, n30, n35, n40, n45, n49, n53,
    n57, n61, n66, n71, n75, n79, n83, n87;
  INVX1    g00(.A(\B_reg[0] ), .Y(new_n57_1));
  OR2X1    g01(.A(new_n57_1), .B(sub), .Y(new_n58));
  NAND2X1  g02(.A(\B_reg[0] ), .B(sub), .Y(new_n59));
  AND2X1   g03(.A(new_n59), .B(new_n58), .Y(new_n60));
  XOR2X1   g04(.A(new_n60), .B(\sum_reg[0] ), .Y(new_n61_1));
  INVX1    g05(.A(\A_reg[0] ), .Y(new_n62));
  OR2X1    g06(.A(new_n62), .B(sub), .Y(new_n63));
  NAND2X1  g07(.A(\A_reg[0] ), .B(sub), .Y(new_n64));
  AND2X1   g08(.A(new_n64), .B(new_n63), .Y(new_n65));
  XOR2X1   g09(.A(new_n65), .B(new_n61_1), .Y(n30));
  INVX1    g10(.A(\sum_reg[1] ), .Y(new_n67));
  INVX1    g11(.A(sub), .Y(new_n68));
  XOR2X1   g12(.A(\B_reg[1] ), .B(\B_reg[0] ), .Y(new_n69));
  MX2X1    g13(.A(new_n69), .B(\B_reg[1] ), .S0(new_n68), .Y(new_n70));
  XOR2X1   g14(.A(new_n70), .B(new_n67), .Y(new_n71_1));
  AND2X1   g15(.A(\B_reg[0] ), .B(new_n68), .Y(new_n72));
  AND2X1   g16(.A(\B_reg[0] ), .B(sub), .Y(new_n73));
  OAI21X1  g17(.A0(new_n73), .A1(new_n72), .B0(\sum_reg[0] ), .Y(new_n74));
  XOR2X1   g18(.A(new_n74), .B(new_n71_1), .Y(new_n75_1));
  INVX1    g19(.A(\A_reg[1] ), .Y(new_n76));
  XOR2X1   g20(.A(\A_reg[1] ), .B(new_n62), .Y(new_n77));
  MX2X1    g21(.A(new_n77), .B(new_n76), .S0(new_n68), .Y(new_n78));
  XOR2X1   g22(.A(new_n78), .B(new_n75_1), .Y(new_n79_1));
  OR2X1    g23(.A(new_n65), .B(new_n61_1), .Y(new_n80));
  XOR2X1   g24(.A(new_n80), .B(new_n79_1), .Y(n35));
  OR2X1    g25(.A(\B_reg[1] ), .B(\B_reg[0] ), .Y(new_n82));
  XOR2X1   g26(.A(new_n82), .B(\B_reg[2] ), .Y(new_n83_1));
  MX2X1    g27(.A(new_n83_1), .B(\B_reg[2] ), .S0(new_n68), .Y(new_n84));
  XOR2X1   g28(.A(new_n84), .B(\sum_reg[2] ), .Y(new_n85));
  NAND2X1  g29(.A(new_n70), .B(\sum_reg[1] ), .Y(new_n86));
  OAI21X1  g30(.A0(new_n74), .A1(new_n71_1), .B0(new_n86), .Y(new_n87_1));
  XOR2X1   g31(.A(new_n87_1), .B(new_n85), .Y(new_n88));
  OR2X1    g32(.A(\A_reg[1] ), .B(\A_reg[0] ), .Y(new_n89));
  XOR2X1   g33(.A(new_n89), .B(\A_reg[2] ), .Y(new_n90));
  MX2X1    g34(.A(new_n90), .B(\A_reg[2] ), .S0(new_n68), .Y(new_n91));
  XOR2X1   g35(.A(new_n91), .B(new_n88), .Y(new_n92));
  XOR2X1   g36(.A(new_n70), .B(\sum_reg[1] ), .Y(new_n93));
  XOR2X1   g37(.A(new_n74), .B(new_n93), .Y(new_n94));
  OR2X1    g38(.A(new_n78), .B(new_n94), .Y(new_n95));
  OAI21X1  g39(.A0(new_n80), .A1(new_n79_1), .B0(new_n95), .Y(new_n96));
  XOR2X1   g40(.A(new_n96), .B(new_n92), .Y(n40));
  INVX1    g41(.A(\B_reg[3] ), .Y(new_n98));
  NOR3X1   g42(.A(\B_reg[2] ), .B(\B_reg[1] ), .C(\B_reg[0] ), .Y(new_n99));
  XOR2X1   g43(.A(new_n99), .B(\B_reg[3] ), .Y(new_n100));
  MX2X1    g44(.A(new_n100), .B(new_n98), .S0(new_n68), .Y(new_n101));
  XOR2X1   g45(.A(new_n101), .B(\sum_reg[3] ), .Y(new_n102));
  AND2X1   g46(.A(new_n84), .B(\sum_reg[2] ), .Y(new_n103));
  AOI21X1  g47(.A0(new_n87_1), .A1(new_n85), .B0(new_n103), .Y(new_n104));
  XOR2X1   g48(.A(new_n104), .B(new_n102), .Y(new_n105));
  INVX1    g49(.A(\A_reg[3] ), .Y(new_n106));
  NOR3X1   g50(.A(\A_reg[2] ), .B(\A_reg[1] ), .C(\A_reg[0] ), .Y(new_n107));
  XOR2X1   g51(.A(new_n107), .B(\A_reg[3] ), .Y(new_n108));
  MX2X1    g52(.A(new_n108), .B(new_n106), .S0(new_n68), .Y(new_n109));
  XOR2X1   g53(.A(new_n109), .B(new_n105), .Y(new_n110));
  AND2X1   g54(.A(new_n91), .B(new_n88), .Y(new_n111));
  AOI21X1  g55(.A0(new_n96), .A1(new_n92), .B0(new_n111), .Y(new_n112));
  XOR2X1   g56(.A(new_n112), .B(new_n110), .Y(n45));
  XOR2X1   g57(.A(carry_in_reg), .B(\sum_reg[3] ), .Y(n66));
  AND2X1   g58(.A(new_n57_1), .B(sub), .Y(n71));
  BUFX1    g59(.A(\sum_reg[0] ), .Y(\sum[0] ));
  BUFX1    g60(.A(\sum_reg[1] ), .Y(\sum[1] ));
  BUFX1    g61(.A(\sum_reg[2] ), .Y(\sum[2] ));
  BUFX1    g62(.A(\sum_reg[3] ), .Y(\sum[3] ));
  BUFX1    g63(.A(carry_out_reg), .Y(carry_out));
  BUFX1    g64(.A(\B[0] ), .Y(n49));
  BUFX1    g65(.A(\B[1] ), .Y(n53));
  BUFX1    g66(.A(\B[2] ), .Y(n57));
  BUFX1    g67(.A(\B[3] ), .Y(n61));
  BUFX1    g68(.A(\A[0] ), .Y(n75));
  BUFX1    g69(.A(\A[1] ), .Y(n79));
  BUFX1    g70(.A(\A[2] ), .Y(n83));
  BUFX1    g71(.A(\A[3] ), .Y(n87));
  always @ (posedge clock) begin
    \sum_reg[0]  <= n30;
    \sum_reg[1]  <= n35;
    \sum_reg[2]  <= n40;
    \sum_reg[3]  <= n45;
    \B_reg[0]  <= n49;
    \B_reg[1]  <= n53;
    \B_reg[2]  <= n57;
    \B_reg[3]  <= n61;
    carry_out_reg <= n66;
    carry_in_reg <= n71;
    \A_reg[0]  <= n75;
    \A_reg[1]  <= n79;
    \A_reg[2]  <= n83;
    \A_reg[3]  <= n87;
  end
endmodule


