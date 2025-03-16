// Benchmark "motor_control" written by ABC on Wed Jun 26 15:22:25 2024

module motor_control ( clock, 
    clk, dir, \pwm[0] , \pwm[1] , \pwm[2] , \pwm[3] , \pwm[4] , \pwm[5] ,
    \pwm[6] , \pwm[7] , \duty_cycle[0] , \duty_cycle[1] , \duty_cycle[2] ,
    \duty_cycle[3] , \duty_cycle[4] , \duty_cycle[5] , \duty_cycle[6] ,
    \duty_cycle[7] ,
    h_bridge_out1, h_bridge_out2  );
  input  clock;
  input  clk, dir, \pwm[0] , \pwm[1] , \pwm[2] , \pwm[3] , \pwm[4] ,
    \pwm[5] , \pwm[6] , \pwm[7] , \duty_cycle[0] , \duty_cycle[1] ,
    \duty_cycle[2] , \duty_cycle[3] , \duty_cycle[4] , \duty_cycle[5] ,
    \duty_cycle[6] , \duty_cycle[7] ;
  output h_bridge_out1, h_bridge_out2;
  reg pwm_out, \counter[0] , \counter[1] , \counter[2] , \counter[3] ,
    \counter[4] , \counter[5] , \counter[6] , \counter[7] ;
  wire new_n49, new_n51, new_n52_1, new_n53, new_n54, new_n55, new_n56,
    new_n57_1, new_n58, new_n59, new_n60, new_n61, new_n62_1, new_n63,
    new_n64, new_n66, new_n67_1, new_n68, new_n69, new_n70, new_n71,
    new_n72_1, new_n73, new_n74, new_n75, new_n76, new_n77_1, new_n78,
    new_n79, new_n80, new_n81, new_n82_1, new_n85, new_n87, new_n89,
    new_n91, new_n93, new_n94, new_n96, n42, n47, n52, n57, n62, n67, n72,
    n77, n82;
  AND2X1   g00(.A(pwm_out), .B(dir), .Y(h_bridge_out1));
  INVX1    g01(.A(dir), .Y(new_n49));
  AND2X1   g02(.A(pwm_out), .B(new_n49), .Y(h_bridge_out2));
  XOR2X1   g03(.A(\counter[7] ), .B(\duty_cycle[7] ), .Y(new_n51));
  XOR2X1   g04(.A(\counter[6] ), .B(\duty_cycle[6] ), .Y(new_n52_1));
  XOR2X1   g05(.A(\counter[5] ), .B(\duty_cycle[5] ), .Y(new_n53));
  XOR2X1   g06(.A(\counter[4] ), .B(\duty_cycle[4] ), .Y(new_n54));
  OR4X1    g07(.A(new_n54), .B(new_n53), .C(new_n52_1), .D(new_n51), .Y(new_n55));
  XOR2X1   g08(.A(\counter[3] ), .B(\duty_cycle[3] ), .Y(new_n56));
  XOR2X1   g09(.A(\counter[2] ), .B(\duty_cycle[2] ), .Y(new_n57_1));
  XOR2X1   g10(.A(\counter[1] ), .B(\duty_cycle[1] ), .Y(new_n58));
  XOR2X1   g11(.A(\counter[0] ), .B(\duty_cycle[0] ), .Y(new_n59));
  OR4X1    g12(.A(new_n59), .B(new_n58), .C(new_n57_1), .D(new_n56), .Y(new_n60));
  NOR2X1   g13(.A(new_n60), .B(new_n55), .Y(new_n61));
  NOR2X1   g14(.A(new_n57_1), .B(new_n56), .Y(new_n62_1));
  INVX1    g15(.A(\duty_cycle[1] ), .Y(new_n63));
  AND2X1   g16(.A(\counter[1] ), .B(new_n63), .Y(new_n64));
  INVX1    g17(.A(\counter[0] ), .Y(n47));
  AOI21X1  g18(.A0(n47), .A1(\duty_cycle[0] ), .B0(new_n58), .Y(new_n66));
  OAI21X1  g19(.A0(new_n66), .A1(new_n64), .B0(new_n62_1), .Y(new_n67_1));
  INVX1    g20(.A(\duty_cycle[3] ), .Y(new_n68));
  INVX1    g21(.A(\counter[2] ), .Y(new_n69));
  NOR3X1   g22(.A(new_n56), .B(new_n69), .C(\duty_cycle[2] ), .Y(new_n70));
  AOI21X1  g23(.A0(\counter[3] ), .A1(new_n68), .B0(new_n70), .Y(new_n71));
  AOI21X1  g24(.A0(new_n71), .A1(new_n67_1), .B0(new_n55), .Y(new_n72_1));
  OR2X1    g25(.A(new_n52_1), .B(new_n51), .Y(new_n73));
  INVX1    g26(.A(\duty_cycle[5] ), .Y(new_n74));
  INVX1    g27(.A(\counter[4] ), .Y(new_n75));
  NOR3X1   g28(.A(new_n53), .B(new_n75), .C(\duty_cycle[4] ), .Y(new_n76));
  AOI21X1  g29(.A0(\counter[5] ), .A1(new_n74), .B0(new_n76), .Y(new_n77_1));
  INVX1    g30(.A(\duty_cycle[7] ), .Y(new_n78));
  INVX1    g31(.A(\counter[6] ), .Y(new_n79));
  NOR3X1   g32(.A(new_n51), .B(new_n79), .C(\duty_cycle[6] ), .Y(new_n80));
  AOI21X1  g33(.A0(\counter[7] ), .A1(new_n78), .B0(new_n80), .Y(new_n81));
  OAI21X1  g34(.A0(new_n77_1), .A1(new_n73), .B0(new_n81), .Y(new_n82_1));
  NOR3X1   g35(.A(new_n82_1), .B(new_n72_1), .C(new_n61), .Y(n42));
  XOR2X1   g36(.A(\counter[1] ), .B(\counter[0] ), .Y(n52));
  AND2X1   g37(.A(\counter[1] ), .B(\counter[0] ), .Y(new_n85));
  XOR2X1   g38(.A(new_n85), .B(\counter[2] ), .Y(n57));
  AND2X1   g39(.A(new_n85), .B(\counter[2] ), .Y(new_n87));
  XOR2X1   g40(.A(new_n87), .B(\counter[3] ), .Y(n62));
  NAND4X1  g41(.A(\counter[3] ), .B(\counter[2] ), .C(\counter[1] ), .D(\counter[0] ), .Y(new_n89));
  XOR2X1   g42(.A(new_n89), .B(new_n75), .Y(n67));
  NOR2X1   g43(.A(new_n89), .B(new_n75), .Y(new_n91));
  XOR2X1   g44(.A(new_n91), .B(\counter[5] ), .Y(n72));
  INVX1    g45(.A(\counter[5] ), .Y(new_n93));
  NOR3X1   g46(.A(new_n89), .B(new_n93), .C(new_n75), .Y(new_n94));
  XOR2X1   g47(.A(new_n94), .B(\counter[6] ), .Y(n77));
  NOR4X1   g48(.A(new_n89), .B(new_n79), .C(new_n93), .D(new_n75), .Y(new_n96));
  XOR2X1   g49(.A(new_n96), .B(\counter[7] ), .Y(n82));
  always @ (posedge clock) begin
    pwm_out <= n42;
    \counter[0]  <= n47;
    \counter[1]  <= n52;
    \counter[2]  <= n57;
    \counter[3]  <= n62;
    \counter[4]  <= n67;
    \counter[5]  <= n72;
    \counter[6]  <= n77;
    \counter[7]  <= n82;
  end
endmodule


