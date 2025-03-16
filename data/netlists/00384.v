// Benchmark "LCB" written by ABC on Wed Jun 26 15:22:08 2024

module LCB ( clock, 
    analog_signal, enable, reset,
    pwm_out  );
  input  clock;
  input  analog_signal, enable, reset;
  output pwm_out;
  reg \pwm_counter[0] , \pwm_counter[1] , \pwm_counter[2] ,
    \pwm_counter[3] , \pwm_counter[4] , \pwm_counter[5] , \pwm_counter[6] ,
    \pwm_counter[7] , pwm_out;
  wire new_n32, new_n33, new_n35_1, new_n36, new_n37, new_n39, new_n40_1,
    new_n41, new_n43, new_n44, new_n45_1, new_n46, new_n48, new_n49,
    new_n50_1, new_n51, new_n53, new_n54, new_n55, new_n57, new_n58,
    new_n59, new_n60, new_n62, new_n63, new_n64, new_n66, new_n67, new_n68,
    new_n69, new_n70, new_n71, new_n72, new_n73, new_n74, n10, n15, n20,
    n25, n30, n35, n40, n45, n50;
  INVX1    g00(.A(reset), .Y(new_n32));
  XOR2X1   g01(.A(\pwm_counter[0] ), .B(enable), .Y(new_n33));
  AND2X1   g02(.A(new_n33), .B(new_n32), .Y(n10));
  INVX1    g03(.A(enable), .Y(new_n35_1));
  XOR2X1   g04(.A(\pwm_counter[1] ), .B(\pwm_counter[0] ), .Y(new_n36));
  MX2X1    g05(.A(new_n36), .B(\pwm_counter[1] ), .S0(new_n35_1), .Y(new_n37));
  AND2X1   g06(.A(new_n37), .B(new_n32), .Y(n15));
  AND2X1   g07(.A(\pwm_counter[1] ), .B(\pwm_counter[0] ), .Y(new_n39));
  XOR2X1   g08(.A(new_n39), .B(\pwm_counter[2] ), .Y(new_n40_1));
  MX2X1    g09(.A(new_n40_1), .B(\pwm_counter[2] ), .S0(new_n35_1), .Y(new_n41));
  AND2X1   g10(.A(new_n41), .B(new_n32), .Y(n20));
  INVX1    g11(.A(\pwm_counter[3] ), .Y(new_n43));
  NAND3X1  g12(.A(\pwm_counter[2] ), .B(\pwm_counter[1] ), .C(\pwm_counter[0] ), .Y(new_n44));
  XOR2X1   g13(.A(new_n44), .B(new_n43), .Y(new_n45_1));
  MX2X1    g14(.A(new_n45_1), .B(\pwm_counter[3] ), .S0(new_n35_1), .Y(new_n46));
  AND2X1   g15(.A(new_n46), .B(new_n32), .Y(n25));
  INVX1    g16(.A(\pwm_counter[4] ), .Y(new_n48));
  NAND4X1  g17(.A(\pwm_counter[3] ), .B(\pwm_counter[2] ), .C(\pwm_counter[1] ), .D(\pwm_counter[0] ), .Y(new_n49));
  XOR2X1   g18(.A(new_n49), .B(new_n48), .Y(new_n50_1));
  MX2X1    g19(.A(new_n50_1), .B(\pwm_counter[4] ), .S0(new_n35_1), .Y(new_n51));
  AND2X1   g20(.A(new_n51), .B(new_n32), .Y(n30));
  NOR2X1   g21(.A(new_n49), .B(new_n48), .Y(new_n53));
  XOR2X1   g22(.A(new_n53), .B(\pwm_counter[5] ), .Y(new_n54));
  MX2X1    g23(.A(new_n54), .B(\pwm_counter[5] ), .S0(new_n35_1), .Y(new_n55));
  AND2X1   g24(.A(new_n55), .B(new_n32), .Y(n35));
  NAND2X1  g25(.A(\pwm_counter[5] ), .B(\pwm_counter[4] ), .Y(new_n57));
  NOR2X1   g26(.A(new_n57), .B(new_n49), .Y(new_n58));
  XOR2X1   g27(.A(new_n58), .B(\pwm_counter[6] ), .Y(new_n59));
  MX2X1    g28(.A(new_n59), .B(\pwm_counter[6] ), .S0(new_n35_1), .Y(new_n60));
  AND2X1   g29(.A(new_n60), .B(new_n32), .Y(n40));
  AND2X1   g30(.A(new_n58), .B(\pwm_counter[6] ), .Y(new_n62));
  XOR2X1   g31(.A(new_n62), .B(\pwm_counter[7] ), .Y(new_n63));
  MX2X1    g32(.A(new_n63), .B(\pwm_counter[7] ), .S0(new_n35_1), .Y(new_n64));
  AND2X1   g33(.A(new_n64), .B(new_n32), .Y(n45));
  NOR4X1   g34(.A(\pwm_counter[7] ), .B(\pwm_counter[6] ), .C(\pwm_counter[5] ), .D(\pwm_counter[4] ), .Y(new_n66));
  NOR4X1   g35(.A(\pwm_counter[3] ), .B(\pwm_counter[2] ), .C(\pwm_counter[1] ), .D(\pwm_counter[0] ), .Y(new_n67));
  NAND2X1  g36(.A(new_n67), .B(new_n66), .Y(new_n68));
  AND2X1   g37(.A(new_n43), .B(\pwm_counter[2] ), .Y(new_n69));
  NAND2X1  g38(.A(new_n43), .B(\pwm_counter[2] ), .Y(new_n70));
  OAI21X1  g39(.A0(new_n70), .A1(new_n69), .B0(new_n66), .Y(new_n71));
  NOR4X1   g40(.A(\pwm_counter[7] ), .B(\pwm_counter[6] ), .C(\pwm_counter[5] ), .D(\pwm_counter[4] ), .Y(new_n72));
  NAND3X1  g41(.A(new_n72), .B(new_n71), .C(new_n68), .Y(new_n73));
  MX2X1    g42(.A(new_n73), .B(pwm_out), .S0(new_n35_1), .Y(new_n74));
  AND2X1   g43(.A(new_n74), .B(new_n32), .Y(n50));
  always @ (posedge clock) begin
    \pwm_counter[0]  <= n10;
    \pwm_counter[1]  <= n15;
    \pwm_counter[2]  <= n20;
    \pwm_counter[3]  <= n25;
    \pwm_counter[4]  <= n30;
    \pwm_counter[5]  <= n35;
    \pwm_counter[6]  <= n40;
    \pwm_counter[7]  <= n45;
    pwm_out <= n50;
  end
endmodule


