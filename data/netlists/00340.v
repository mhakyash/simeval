// Benchmark "counter_modulo3" written by ABC on Wed Jun 26 15:22:06 2024

module counter_modulo3 ( clock, 
    clk, reset,
    \count[0] , \count[1] , \count[2] , \count[3] , mod3  );
  input  clock;
  input  clk, reset;
  output \count[0] , \count[1] , \count[2] , \count[3] , mod3;
  reg \mod_cnt[0] , \mod_cnt[1] , \count[0] , \count[1] , \count[2] ,
    \count[3] , mod3;
  wire new_n30_1, new_n33, new_n34_1, new_n36, new_n37, new_n39, new_n40,
    new_n42_1, new_n43, new_n44, new_n45, n16, n21, n26, n30, n34, n38,
    n42;
  NOR3X1   g00(.A(\mod_cnt[1] ), .B(\mod_cnt[0] ), .C(reset), .Y(n16));
  INVX1    g01(.A(\mod_cnt[0] ), .Y(new_n30_1));
  NOR3X1   g02(.A(\mod_cnt[1] ), .B(new_n30_1), .C(reset), .Y(n21));
  NOR2X1   g03(.A(\count[0] ), .B(reset), .Y(n26));
  INVX1    g04(.A(reset), .Y(new_n33));
  XOR2X1   g05(.A(\count[1] ), .B(\count[0] ), .Y(new_n34_1));
  AND2X1   g06(.A(new_n34_1), .B(new_n33), .Y(n30));
  AND2X1   g07(.A(\count[1] ), .B(\count[0] ), .Y(new_n36));
  XOR2X1   g08(.A(new_n36), .B(\count[2] ), .Y(new_n37));
  AND2X1   g09(.A(new_n37), .B(new_n33), .Y(n34));
  NAND3X1  g10(.A(\count[2] ), .B(\count[1] ), .C(\count[0] ), .Y(new_n39));
  XOR2X1   g11(.A(new_n39), .B(\count[3] ), .Y(new_n40));
  NOR2X1   g12(.A(new_n40), .B(reset), .Y(n38));
  INVX1    g13(.A(mod3), .Y(new_n42_1));
  NAND3X1  g14(.A(new_n42_1), .B(\mod_cnt[1] ), .C(new_n30_1), .Y(new_n43));
  INVX1    g15(.A(\mod_cnt[1] ), .Y(new_n44));
  OAI21X1  g16(.A0(new_n44), .A1(\mod_cnt[0] ), .B0(mod3), .Y(new_n45));
  AOI21X1  g17(.A0(new_n45), .A1(new_n43), .B0(reset), .Y(n42));
  always @ (posedge clock) begin
    \mod_cnt[0]  <= n16;
    \mod_cnt[1]  <= n21;
    \count[0]  <= n26;
    \count[1]  <= n30;
    \count[2]  <= n34;
    \count[3]  <= n38;
    mod3 <= n42;
  end
endmodule


