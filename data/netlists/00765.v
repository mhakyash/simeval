// Benchmark "one_shot_pulse_generator" written by ABC on Wed Jun 26 15:22:19 2024

module one_shot_pulse_generator ( clock, 
    trig, clk,
    out  );
  input  clock;
  input  trig, clk;
  output out;
  reg out, \counter[0] , \counter[1] , \counter[2] , \counter[3] ;
  wire new_n19, new_n21, new_n22_1, new_n24, new_n25, new_n27_1, new_n28,
    new_n29, new_n30, new_n31, new_n32, new_n33, new_n35, new_n36, new_n37,
    n8, n12, n17, n22, n27;
  OAI21X1  g00(.A0(\counter[2] ), .A1(\counter[1] ), .B0(\counter[3] ), .Y(new_n19));
  OR2X1    g01(.A(new_n19), .B(trig), .Y(n8));
  INVX1    g02(.A(trig), .Y(new_n21));
  XOR2X1   g03(.A(new_n19), .B(\counter[0] ), .Y(new_n22_1));
  AND2X1   g04(.A(new_n22_1), .B(new_n21), .Y(n12));
  XOR2X1   g05(.A(\counter[1] ), .B(\counter[0] ), .Y(new_n24));
  MX2X1    g06(.A(\counter[1] ), .B(new_n24), .S0(new_n19), .Y(new_n25));
  AND2X1   g07(.A(new_n25), .B(new_n21), .Y(n17));
  INVX1    g08(.A(\counter[1] ), .Y(new_n27_1));
  INVX1    g09(.A(\counter[2] ), .Y(new_n28));
  INVX1    g10(.A(\counter[3] ), .Y(new_n29));
  AOI21X1  g11(.A0(new_n28), .A1(new_n27_1), .B0(new_n29), .Y(new_n30));
  AND2X1   g12(.A(\counter[1] ), .B(\counter[0] ), .Y(new_n31));
  XOR2X1   g13(.A(new_n31), .B(\counter[2] ), .Y(new_n32));
  MX2X1    g14(.A(new_n32), .B(\counter[2] ), .S0(new_n30), .Y(new_n33));
  AND2X1   g15(.A(new_n33), .B(new_n21), .Y(n22));
  NAND3X1  g16(.A(\counter[2] ), .B(\counter[1] ), .C(\counter[0] ), .Y(new_n35));
  XOR2X1   g17(.A(new_n35), .B(new_n29), .Y(new_n36));
  MX2X1    g18(.A(new_n36), .B(\counter[3] ), .S0(new_n30), .Y(new_n37));
  AND2X1   g19(.A(new_n37), .B(new_n21), .Y(n27));
  always @ (posedge clock) begin
    out <= n8;
    \counter[0]  <= n12;
    \counter[1]  <= n17;
    \counter[2]  <= n22;
    \counter[3]  <= n27;
  end
endmodule


