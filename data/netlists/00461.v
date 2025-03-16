// Benchmark "mealy_fsm_4bit_sequence_detection" written by ABC on Wed Jun 26 15:22:11 2024

module mealy_fsm_4bit_sequence_detection ( clock, 
    clk, reset, data,
    match  );
  input  clock;
  input  clk, reset, data;
  output match;
  reg \state[0] , \state[1] , \next_state[0] , \next_state[1] , match;
  wire new_n20_1, new_n23, new_n24, new_n25_1, new_n26, new_n28, new_n29,
    new_n30_1, new_n31, n10, n15, n20, n25, n30;
  INVX1    g00(.A(reset), .Y(new_n20_1));
  AND2X1   g01(.A(\next_state[0] ), .B(new_n20_1), .Y(n10));
  AND2X1   g02(.A(\next_state[1] ), .B(new_n20_1), .Y(n15));
  AND2X1   g03(.A(\state[1] ), .B(\state[0] ), .Y(new_n23));
  INVX1    g04(.A(data), .Y(new_n24));
  NOR3X1   g05(.A(\state[1] ), .B(\state[0] ), .C(new_n24), .Y(new_n25_1));
  MX2X1    g06(.A(new_n25_1), .B(\next_state[0] ), .S0(new_n23), .Y(new_n26));
  MX2X1    g07(.A(new_n26), .B(\next_state[0] ), .S0(reset), .Y(n20));
  NAND3X1  g08(.A(\next_state[1] ), .B(\state[1] ), .C(\state[0] ), .Y(new_n28));
  INVX1    g09(.A(\state[1] ), .Y(new_n29));
  NAND3X1  g10(.A(new_n29), .B(\state[0] ), .C(new_n24), .Y(new_n30_1));
  NAND2X1  g11(.A(new_n30_1), .B(new_n28), .Y(new_n31));
  MX2X1    g12(.A(new_n31), .B(\next_state[1] ), .S0(reset), .Y(n25));
  NOR4X1   g13(.A(new_n29), .B(\state[0] ), .C(new_n24), .D(reset), .Y(n30));
  always @ (posedge clock) begin
    \state[0]  <= n10;
    \state[1]  <= n15;
    \next_state[0]  <= n20;
    \next_state[1]  <= n25;
    match <= n30;
  end
endmodule


