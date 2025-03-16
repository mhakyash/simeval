// Benchmark "counter_4bit_sync_reset" written by ABC on Wed Jun 26 15:22:14 2024

module counter_4bit_sync_reset ( clock, 
    clk, reset, enable,
    \count[0] , \count[1] , \count[2] , \count[3]   );
  input  clock;
  input  clk, reset, enable;
  output \count[0] , \count[1] , \count[2] , \count[3] ;
  reg \count_reg[0] , \count_reg[1] , \count_reg[2] , \count_reg[3] ;
  wire new_n20, new_n21_1, new_n23, new_n24, new_n25, new_n27, new_n28,
    new_n29, new_n31_1, new_n32, new_n33, new_n34, n16, n21, n26, n31;
  INVX1    g00(.A(reset), .Y(new_n20));
  XOR2X1   g01(.A(\count_reg[0] ), .B(enable), .Y(new_n21_1));
  AND2X1   g02(.A(new_n21_1), .B(new_n20), .Y(n16));
  INVX1    g03(.A(enable), .Y(new_n23));
  XOR2X1   g04(.A(\count_reg[1] ), .B(\count_reg[0] ), .Y(new_n24));
  MX2X1    g05(.A(new_n24), .B(\count_reg[1] ), .S0(new_n23), .Y(new_n25));
  AND2X1   g06(.A(new_n25), .B(new_n20), .Y(n21));
  AND2X1   g07(.A(\count_reg[1] ), .B(\count_reg[0] ), .Y(new_n27));
  XOR2X1   g08(.A(new_n27), .B(\count_reg[2] ), .Y(new_n28));
  MX2X1    g09(.A(new_n28), .B(\count_reg[2] ), .S0(new_n23), .Y(new_n29));
  AND2X1   g10(.A(new_n29), .B(new_n20), .Y(n26));
  INVX1    g11(.A(\count_reg[3] ), .Y(new_n31_1));
  NAND3X1  g12(.A(\count_reg[2] ), .B(\count_reg[1] ), .C(\count_reg[0] ), .Y(new_n32));
  XOR2X1   g13(.A(new_n32), .B(new_n31_1), .Y(new_n33));
  MX2X1    g14(.A(new_n33), .B(\count_reg[3] ), .S0(new_n23), .Y(new_n34));
  AND2X1   g15(.A(new_n34), .B(new_n20), .Y(n31));
  BUFX1    g16(.A(\count_reg[0] ), .Y(\count[0] ));
  BUFX1    g17(.A(\count_reg[1] ), .Y(\count[1] ));
  BUFX1    g18(.A(\count_reg[2] ), .Y(\count[2] ));
  BUFX1    g19(.A(\count_reg[3] ), .Y(\count[3] ));
  always @ (posedge clock) begin
    \count_reg[0]  <= n16;
    \count_reg[1]  <= n21;
    \count_reg[2]  <= n26;
    \count_reg[3]  <= n31;
  end
endmodule


