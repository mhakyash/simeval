// Benchmark "PWM" written by ABC on Wed Jun 26 15:22:13 2024

module PWM ( clock, 
    clk, \ctrl[0] , \ctrl[1] , \ctrl[2] , \ctrl[3] , \ctrl[4] , \ctrl[5] ,
    \ctrl[6] , \ctrl[7] ,
    pwm  );
  input  clock;
  input  clk, \ctrl[0] , \ctrl[1] , \ctrl[2] , \ctrl[3] , \ctrl[4] ,
    \ctrl[5] , \ctrl[6] , \ctrl[7] ;
  output pwm;
  reg \count[0] , \count[1] , \count[2] , \count[3] , \count[4] ,
    \count[5] , \count[6] , \count[7] , pwm_out;
  wire new_n38, new_n39, new_n40, new_n41, new_n42_1, new_n43, new_n47_1,
    new_n48, new_n50, new_n51, new_n53, new_n54, new_n56, new_n57_1,
    new_n59, new_n60, new_n62_1, new_n63, new_n65, new_n66, new_n67,
    new_n68, new_n69, new_n70, new_n71, new_n72, new_n73, new_n74, new_n75,
    new_n76, new_n77, new_n78, new_n79, new_n80, new_n81, new_n82, new_n83,
    new_n84, new_n85, new_n86, new_n87, new_n88, new_n89, n22, n27, n32,
    n37, n42, n47, n52, n57, n62;
  INVX1    g00(.A(\count[0] ), .Y(new_n38));
  INVX1    g01(.A(\count[6] ), .Y(new_n39));
  INVX1    g02(.A(\count[7] ), .Y(new_n40));
  NAND4X1  g03(.A(\count[3] ), .B(\count[2] ), .C(\count[1] ), .D(\count[0] ), .Y(new_n41));
  NAND2X1  g04(.A(\count[5] ), .B(\count[4] ), .Y(new_n42_1));
  OR4X1    g05(.A(new_n42_1), .B(new_n41), .C(new_n40), .D(new_n39), .Y(new_n43));
  AND2X1   g06(.A(new_n43), .B(new_n38), .Y(n22));
  XOR2X1   g07(.A(\count[1] ), .B(\count[0] ), .Y(n27));
  AND2X1   g08(.A(\count[1] ), .B(\count[0] ), .Y(new_n47_1));
  XOR2X1   g09(.A(new_n47_1), .B(\count[2] ), .Y(new_n48));
  AND2X1   g10(.A(new_n48), .B(new_n43), .Y(n32));
  AND2X1   g11(.A(new_n47_1), .B(\count[2] ), .Y(new_n50));
  XOR2X1   g12(.A(new_n50), .B(\count[3] ), .Y(new_n51));
  AND2X1   g13(.A(new_n51), .B(new_n43), .Y(n37));
  INVX1    g14(.A(\count[4] ), .Y(new_n53));
  XOR2X1   g15(.A(new_n41), .B(new_n53), .Y(new_n54));
  AND2X1   g16(.A(new_n54), .B(new_n43), .Y(n42));
  NOR2X1   g17(.A(new_n41), .B(new_n53), .Y(new_n56));
  XOR2X1   g18(.A(new_n56), .B(\count[5] ), .Y(new_n57_1));
  AND2X1   g19(.A(new_n57_1), .B(new_n43), .Y(n47));
  NOR2X1   g20(.A(new_n42_1), .B(new_n41), .Y(new_n59));
  XOR2X1   g21(.A(new_n59), .B(\count[6] ), .Y(new_n60));
  AND2X1   g22(.A(new_n60), .B(new_n43), .Y(n52));
  NOR3X1   g23(.A(new_n42_1), .B(new_n41), .C(new_n39), .Y(new_n62_1));
  XOR2X1   g24(.A(new_n62_1), .B(\count[7] ), .Y(new_n63));
  AND2X1   g25(.A(new_n63), .B(new_n43), .Y(n57));
  INVX1    g26(.A(\ctrl[1] ), .Y(new_n65));
  XOR2X1   g27(.A(\count[1] ), .B(\ctrl[1] ), .Y(new_n66));
  AOI21X1  g28(.A0(new_n38), .A1(\ctrl[0] ), .B0(new_n66), .Y(new_n67));
  AOI21X1  g29(.A0(\count[1] ), .A1(new_n65), .B0(new_n67), .Y(new_n68));
  XOR2X1   g30(.A(\count[3] ), .B(\ctrl[3] ), .Y(new_n69));
  XOR2X1   g31(.A(\count[2] ), .B(\ctrl[2] ), .Y(new_n70));
  OR2X1    g32(.A(new_n70), .B(new_n69), .Y(new_n71));
  INVX1    g33(.A(\ctrl[3] ), .Y(new_n72));
  INVX1    g34(.A(\count[2] ), .Y(new_n73));
  NOR3X1   g35(.A(new_n69), .B(new_n73), .C(\ctrl[2] ), .Y(new_n74));
  AOI21X1  g36(.A0(\count[3] ), .A1(new_n72), .B0(new_n74), .Y(new_n75));
  OAI21X1  g37(.A0(new_n71), .A1(new_n68), .B0(new_n75), .Y(new_n76));
  XOR2X1   g38(.A(\count[7] ), .B(\ctrl[7] ), .Y(new_n77));
  XOR2X1   g39(.A(\count[6] ), .B(\ctrl[6] ), .Y(new_n78));
  XOR2X1   g40(.A(\count[5] ), .B(\ctrl[5] ), .Y(new_n79));
  XOR2X1   g41(.A(\count[4] ), .B(\ctrl[4] ), .Y(new_n80));
  NOR4X1   g42(.A(new_n80), .B(new_n79), .C(new_n78), .D(new_n77), .Y(new_n81));
  OR2X1    g43(.A(new_n78), .B(new_n77), .Y(new_n82));
  INVX1    g44(.A(\ctrl[5] ), .Y(new_n83));
  NOR3X1   g45(.A(new_n79), .B(new_n53), .C(\ctrl[4] ), .Y(new_n84));
  AOI21X1  g46(.A0(\count[5] ), .A1(new_n83), .B0(new_n84), .Y(new_n85));
  INVX1    g47(.A(\ctrl[7] ), .Y(new_n86));
  NOR3X1   g48(.A(new_n77), .B(new_n39), .C(\ctrl[6] ), .Y(new_n87));
  AOI21X1  g49(.A0(\count[7] ), .A1(new_n86), .B0(new_n87), .Y(new_n88));
  OAI21X1  g50(.A0(new_n85), .A1(new_n82), .B0(new_n88), .Y(new_n89));
  AOI21X1  g51(.A0(new_n81), .A1(new_n76), .B0(new_n89), .Y(n62));
  BUFX1    g52(.A(pwm_out), .Y(pwm));
  always @ (posedge clock) begin
    \count[0]  <= n22;
    \count[1]  <= n27;
    \count[2]  <= n32;
    \count[3]  <= n37;
    \count[4]  <= n42;
    \count[5]  <= n47;
    \count[6]  <= n52;
    \count[7]  <= n57;
    pwm_out <= n62;
  end
endmodule


