// Benchmark "up_down_counter_adder" written by ABC on Wed Jun 26 15:21:58 2024

module up_down_counter_adder ( clock, 
    clk, reset, up_down, \value[0] , \value[1] , \value[2] , slowena,
    select,
    \count[0] , \count[1] , \count[2] , \count[3] , \sum[0] , \sum[1] ,
    \sum[2] , \sum[3]   );
  input  clock;
  input  clk, reset, up_down, \value[0] , \value[1] , \value[2] ,
    slowena, select;
  output \count[0] , \count[1] , \count[2] , \count[3] , \sum[0] , \sum[1] ,
    \sum[2] , \sum[3] ;
  reg \count_reg[0] , \count_reg[1] , \count_reg[2] , \count_reg[3] ,
    \sum_reg[0] , \sum_reg[1] , \sum_reg[2] , \sum_reg[3] ;
  wire new_n45, new_n51, new_n52, new_n53, new_n54_1, new_n56, new_n57,
    new_n58, new_n59_1, new_n60, new_n61, new_n62, new_n64_1, new_n65,
    new_n66, new_n67, new_n68, new_n70, new_n71, new_n73, new_n74, new_n75,
    new_n76, new_n78, new_n79, new_n80, new_n81, new_n82, new_n83, new_n85,
    new_n86, new_n87, new_n88, n34, n39, n44, n49, n54, n59, n64, n69;
  AND2X1   g00(.A(\count_reg[0] ), .B(select), .Y(\count[0] ));
  AND2X1   g01(.A(\count_reg[1] ), .B(select), .Y(\count[1] ));
  AND2X1   g02(.A(\count_reg[2] ), .B(select), .Y(\count[2] ));
  AND2X1   g03(.A(\count_reg[3] ), .B(select), .Y(\count[3] ));
  INVX1    g04(.A(select), .Y(new_n45));
  AND2X1   g05(.A(\sum_reg[0] ), .B(new_n45), .Y(\sum[0] ));
  AND2X1   g06(.A(\sum_reg[1] ), .B(new_n45), .Y(\sum[1] ));
  AND2X1   g07(.A(\sum_reg[2] ), .B(new_n45), .Y(\sum[2] ));
  AND2X1   g08(.A(\sum_reg[3] ), .B(new_n45), .Y(\sum[3] ));
  NOR2X1   g09(.A(\count_reg[0] ), .B(reset), .Y(n34));
  XOR2X1   g10(.A(\count_reg[1] ), .B(\count_reg[0] ), .Y(new_n51));
  OR2X1    g11(.A(new_n51), .B(up_down), .Y(new_n52));
  XOR2X1   g12(.A(\count_reg[1] ), .B(\count_reg[0] ), .Y(new_n53));
  NAND2X1  g13(.A(new_n53), .B(up_down), .Y(new_n54_1));
  AOI21X1  g14(.A0(new_n54_1), .A1(new_n52), .B0(reset), .Y(n39));
  INVX1    g15(.A(reset), .Y(new_n56));
  INVX1    g16(.A(up_down), .Y(new_n57));
  NOR2X1   g17(.A(\count_reg[1] ), .B(\count_reg[0] ), .Y(new_n58));
  XOR2X1   g18(.A(new_n58), .B(\count_reg[2] ), .Y(new_n59_1));
  AND2X1   g19(.A(\count_reg[1] ), .B(\count_reg[0] ), .Y(new_n60));
  XOR2X1   g20(.A(new_n60), .B(\count_reg[2] ), .Y(new_n61));
  MX2X1    g21(.A(new_n61), .B(new_n59_1), .S0(new_n57), .Y(new_n62));
  AND2X1   g22(.A(new_n62), .B(new_n56), .Y(n44));
  NOR3X1   g23(.A(\count_reg[2] ), .B(\count_reg[1] ), .C(\count_reg[0] ), .Y(new_n64_1));
  XOR2X1   g24(.A(new_n64_1), .B(\count_reg[3] ), .Y(new_n65));
  AND2X1   g25(.A(new_n60), .B(\count_reg[2] ), .Y(new_n66));
  XOR2X1   g26(.A(new_n66), .B(\count_reg[3] ), .Y(new_n67));
  MX2X1    g27(.A(new_n67), .B(new_n65), .S0(new_n57), .Y(new_n68));
  AND2X1   g28(.A(new_n68), .B(new_n56), .Y(n49));
  XOR2X1   g29(.A(\count_reg[0] ), .B(\value[0] ), .Y(new_n70));
  MX2X1    g30(.A(new_n70), .B(\sum_reg[0] ), .S0(slowena), .Y(new_n71));
  AND2X1   g31(.A(new_n71), .B(new_n56), .Y(n54));
  XOR2X1   g32(.A(\count_reg[1] ), .B(\value[1] ), .Y(new_n73));
  AND2X1   g33(.A(\count_reg[0] ), .B(\value[0] ), .Y(new_n74));
  XOR2X1   g34(.A(new_n74), .B(new_n73), .Y(new_n75));
  MX2X1    g35(.A(new_n75), .B(\sum_reg[1] ), .S0(slowena), .Y(new_n76));
  AND2X1   g36(.A(new_n76), .B(new_n56), .Y(n59));
  INVX1    g37(.A(\value[2] ), .Y(new_n78));
  XOR2X1   g38(.A(\count_reg[2] ), .B(new_n78), .Y(new_n79));
  AND2X1   g39(.A(\count_reg[1] ), .B(\value[1] ), .Y(new_n80));
  AOI21X1  g40(.A0(new_n74), .A1(new_n73), .B0(new_n80), .Y(new_n81));
  XOR2X1   g41(.A(new_n81), .B(new_n79), .Y(new_n82));
  MX2X1    g42(.A(new_n82), .B(\sum_reg[2] ), .S0(slowena), .Y(new_n83));
  AND2X1   g43(.A(new_n83), .B(new_n56), .Y(n64));
  NAND2X1  g44(.A(\count_reg[2] ), .B(\value[2] ), .Y(new_n85));
  OAI21X1  g45(.A0(new_n81), .A1(new_n79), .B0(new_n85), .Y(new_n86));
  XOR2X1   g46(.A(new_n86), .B(\count_reg[3] ), .Y(new_n87));
  MX2X1    g47(.A(new_n87), .B(\sum_reg[3] ), .S0(slowena), .Y(new_n88));
  AND2X1   g48(.A(new_n88), .B(new_n56), .Y(n69));
  always @ (posedge clock) begin
    \count_reg[0]  <= n34;
    \count_reg[1]  <= n39;
    \count_reg[2]  <= n44;
    \count_reg[3]  <= n49;
    \sum_reg[0]  <= n54;
    \sum_reg[1]  <= n59;
    \sum_reg[2]  <= n64;
    \sum_reg[3]  <= n69;
  end
endmodule


