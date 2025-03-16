// Benchmark "counter_8bit" written by ABC on Wed Jun 26 15:22:03 2024

module counter_8bit ( clock, 
    clk, reset, enable,
    \count[0] , \count[1] , \count[2] , \count[3] , \count[4] , \count[5] ,
    \count[6] , \count[7]   );
  input  clock;
  input  clk, reset, enable;
  output \count[0] , \count[1] , \count[2] , \count[3] , \count[4] ,
    \count[5] , \count[6] , \count[7] ;
  reg \count_reg1[6] , \count_reg1[7] , \count_reg2[0] , \count_reg2[1] ,
    \count_reg2[2] , \count_reg2[3] , \count_reg2[4] , \count_reg2[5] ,
    \count_reg2[6] , \count_reg2[7] , \count_reg1[0] , \count_reg1[1] ,
    \count_reg1[2] , \count_reg1[3] , \count_reg1[4] , \count_reg1[5] ;
  wire new_n60, new_n61, new_n62, new_n63, new_n64_1, new_n65, new_n66,
    new_n67, new_n69_1, new_n70, new_n71, new_n72, new_n74_1, new_n76,
    new_n78, new_n80, new_n82, new_n84_1, new_n86, new_n88, new_n90,
    new_n91, new_n93, new_n94_1, new_n96, new_n97, new_n98, new_n100,
    new_n101, new_n102, new_n104, new_n105, new_n107, new_n108, new_n109,
    n24, n29, n34, n39, n44, n49, n54, n59, n64, n69, n74, n79, n84, n89,
    n94, n99;
  INVX1    g00(.A(reset), .Y(new_n60));
  INVX1    g01(.A(enable), .Y(new_n61));
  INVX1    g02(.A(\count_reg2[4] ), .Y(new_n62));
  INVX1    g03(.A(\count_reg2[5] ), .Y(new_n63));
  NAND4X1  g04(.A(\count_reg2[3] ), .B(\count_reg2[2] ), .C(\count_reg2[1] ), .D(\count_reg2[0] ), .Y(new_n64_1));
  NOR3X1   g05(.A(new_n64_1), .B(new_n63), .C(new_n62), .Y(new_n65));
  XOR2X1   g06(.A(new_n65), .B(\count_reg2[6] ), .Y(new_n66));
  MX2X1    g07(.A(new_n66), .B(\count_reg1[6] ), .S0(new_n61), .Y(new_n67));
  AND2X1   g08(.A(new_n67), .B(new_n60), .Y(n24));
  INVX1    g09(.A(\count_reg2[6] ), .Y(new_n69_1));
  NOR4X1   g10(.A(new_n64_1), .B(new_n69_1), .C(new_n63), .D(new_n62), .Y(new_n70));
  XOR2X1   g11(.A(new_n70), .B(\count_reg2[7] ), .Y(new_n71));
  MX2X1    g12(.A(new_n71), .B(\count_reg1[7] ), .S0(new_n61), .Y(new_n72));
  AND2X1   g13(.A(new_n72), .B(new_n60), .Y(n29));
  MX2X1    g14(.A(\count_reg2[0] ), .B(\count_reg1[0] ), .S0(enable), .Y(new_n74_1));
  AND2X1   g15(.A(new_n74_1), .B(new_n60), .Y(n34));
  MX2X1    g16(.A(\count_reg2[1] ), .B(\count_reg1[1] ), .S0(enable), .Y(new_n76));
  AND2X1   g17(.A(new_n76), .B(new_n60), .Y(n39));
  MX2X1    g18(.A(\count_reg2[2] ), .B(\count_reg1[2] ), .S0(enable), .Y(new_n78));
  AND2X1   g19(.A(new_n78), .B(new_n60), .Y(n44));
  MX2X1    g20(.A(\count_reg2[3] ), .B(\count_reg1[3] ), .S0(enable), .Y(new_n80));
  AND2X1   g21(.A(new_n80), .B(new_n60), .Y(n49));
  MX2X1    g22(.A(\count_reg2[4] ), .B(\count_reg1[4] ), .S0(enable), .Y(new_n82));
  AND2X1   g23(.A(new_n82), .B(new_n60), .Y(n54));
  MX2X1    g24(.A(\count_reg2[5] ), .B(\count_reg1[5] ), .S0(enable), .Y(new_n84_1));
  AND2X1   g25(.A(new_n84_1), .B(new_n60), .Y(n59));
  MX2X1    g26(.A(\count_reg2[6] ), .B(\count_reg1[6] ), .S0(enable), .Y(new_n86));
  AND2X1   g27(.A(new_n86), .B(new_n60), .Y(n64));
  MX2X1    g28(.A(\count_reg2[7] ), .B(\count_reg1[7] ), .S0(enable), .Y(new_n88));
  AND2X1   g29(.A(new_n88), .B(new_n60), .Y(n69));
  INVX1    g30(.A(\count_reg2[0] ), .Y(new_n90));
  MX2X1    g31(.A(\count_reg1[0] ), .B(new_n90), .S0(enable), .Y(new_n91));
  AND2X1   g32(.A(new_n91), .B(new_n60), .Y(n74));
  XOR2X1   g33(.A(\count_reg2[1] ), .B(\count_reg2[0] ), .Y(new_n93));
  MX2X1    g34(.A(new_n93), .B(\count_reg1[1] ), .S0(new_n61), .Y(new_n94_1));
  AND2X1   g35(.A(new_n94_1), .B(new_n60), .Y(n79));
  AND2X1   g36(.A(\count_reg2[1] ), .B(\count_reg2[0] ), .Y(new_n96));
  XOR2X1   g37(.A(new_n96), .B(\count_reg2[2] ), .Y(new_n97));
  MX2X1    g38(.A(new_n97), .B(\count_reg1[2] ), .S0(new_n61), .Y(new_n98));
  AND2X1   g39(.A(new_n98), .B(new_n60), .Y(n84));
  AND2X1   g40(.A(new_n96), .B(\count_reg2[2] ), .Y(new_n100));
  XOR2X1   g41(.A(new_n100), .B(\count_reg2[3] ), .Y(new_n101));
  MX2X1    g42(.A(new_n101), .B(\count_reg1[3] ), .S0(new_n61), .Y(new_n102));
  AND2X1   g43(.A(new_n102), .B(new_n60), .Y(n89));
  XOR2X1   g44(.A(new_n64_1), .B(new_n62), .Y(new_n104));
  MX2X1    g45(.A(new_n104), .B(\count_reg1[4] ), .S0(new_n61), .Y(new_n105));
  AND2X1   g46(.A(new_n105), .B(new_n60), .Y(n94));
  NOR2X1   g47(.A(new_n64_1), .B(new_n62), .Y(new_n107));
  XOR2X1   g48(.A(new_n107), .B(\count_reg2[5] ), .Y(new_n108));
  MX2X1    g49(.A(new_n108), .B(\count_reg1[5] ), .S0(new_n61), .Y(new_n109));
  AND2X1   g50(.A(new_n109), .B(new_n60), .Y(n99));
  BUFX1    g51(.A(\count_reg2[0] ), .Y(\count[0] ));
  BUFX1    g52(.A(\count_reg2[1] ), .Y(\count[1] ));
  BUFX1    g53(.A(\count_reg2[2] ), .Y(\count[2] ));
  BUFX1    g54(.A(\count_reg2[3] ), .Y(\count[3] ));
  BUFX1    g55(.A(\count_reg2[4] ), .Y(\count[4] ));
  BUFX1    g56(.A(\count_reg2[5] ), .Y(\count[5] ));
  BUFX1    g57(.A(\count_reg2[6] ), .Y(\count[6] ));
  BUFX1    g58(.A(\count_reg2[7] ), .Y(\count[7] ));
  always @ (posedge clock) begin
    \count_reg1[6]  <= n24;
    \count_reg1[7]  <= n29;
    \count_reg2[0]  <= n34;
    \count_reg2[1]  <= n39;
    \count_reg2[2]  <= n44;
    \count_reg2[3]  <= n49;
    \count_reg2[4]  <= n54;
    \count_reg2[5]  <= n59;
    \count_reg2[6]  <= n64;
    \count_reg2[7]  <= n69;
    \count_reg1[0]  <= n74;
    \count_reg1[1]  <= n79;
    \count_reg1[2]  <= n84;
    \count_reg1[3]  <= n89;
    \count_reg1[4]  <= n94;
    \count_reg1[5]  <= n99;
  end
endmodule


