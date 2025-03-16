// Benchmark "up_down_counter" written by ABC on Wed Jun 26 15:22:09 2024

module up_down_counter ( clock, 
    clk, up_down, load, reset,
    \count[0] , \count[1] , \count[2]   );
  input  clock;
  input  clk, up_down, load, reset;
  output \count[0] , \count[1] , \count[2] ;
  reg \count[0] , \count[1] , \count[2] ;
  wire new_n17, new_n18, new_n19, new_n20_1, new_n22, new_n23, new_n24_1,
    new_n25, new_n26, new_n28, new_n29, new_n30, new_n31, new_n32, new_n33,
    new_n34, n16, n20, n24;
  OR2X1    g00(.A(\count[0] ), .B(up_down), .Y(new_n17));
  INVX1    g01(.A(up_down), .Y(new_n18));
  OR2X1    g02(.A(\count[0] ), .B(new_n18), .Y(new_n19));
  OR2X1    g03(.A(reset), .B(load), .Y(new_n20_1));
  AOI21X1  g04(.A0(new_n19), .A1(new_n17), .B0(new_n20_1), .Y(n16));
  XOR2X1   g05(.A(\count[1] ), .B(\count[0] ), .Y(new_n22));
  OR2X1    g06(.A(new_n22), .B(up_down), .Y(new_n23));
  NAND3X1  g07(.A(\count[2] ), .B(\count[1] ), .C(\count[0] ), .Y(new_n24_1));
  XOR2X1   g08(.A(\count[1] ), .B(\count[0] ), .Y(new_n25));
  NAND3X1  g09(.A(new_n25), .B(new_n24_1), .C(up_down), .Y(new_n26));
  AOI21X1  g10(.A0(new_n26), .A1(new_n23), .B0(new_n20_1), .Y(n20));
  NOR3X1   g11(.A(\count[2] ), .B(\count[1] ), .C(\count[0] ), .Y(new_n28));
  NOR2X1   g12(.A(\count[1] ), .B(\count[0] ), .Y(new_n29));
  XOR2X1   g13(.A(new_n29), .B(\count[2] ), .Y(new_n30));
  OAI21X1  g14(.A0(new_n30), .A1(new_n28), .B0(new_n18), .Y(new_n31));
  AND2X1   g15(.A(\count[1] ), .B(\count[0] ), .Y(new_n32));
  XOR2X1   g16(.A(new_n32), .B(\count[2] ), .Y(new_n33));
  NAND3X1  g17(.A(new_n33), .B(new_n24_1), .C(up_down), .Y(new_n34));
  AOI21X1  g18(.A0(new_n34), .A1(new_n31), .B0(new_n20_1), .Y(n24));
  always @ (posedge clock) begin
    \count[0]  <= n16;
    \count[1]  <= n20;
    \count[2]  <= n24;
  end
endmodule


