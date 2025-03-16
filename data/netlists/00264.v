// Benchmark "counter" written by ABC on Wed Jun 26 15:22:05 2024

module counter ( clock, 
    clk, reset, enable, \set_value[0] , \set_value[1] , \set_value[2] ,
    \set_value[3] ,
    \count[0] , \count[1] , \count[2] , \count[3] , max_value_reached  );
  input  clock;
  input  clk, reset, enable, \set_value[0] , \set_value[1] ,
    \set_value[2] , \set_value[3] ;
  output \count[0] , \count[1] , \count[2] , \count[3] , max_value_reached;
  reg \count[0] , \count[1] , \count[2] , \count[3] , max_value_reached;
  wire new_n28, new_n29, new_n30_1, new_n31, new_n32, new_n33, new_n34_1,
    new_n35, new_n36, new_n37, new_n38_1, new_n39, new_n41, new_n42_1,
    new_n43, new_n44, new_n45, new_n47, new_n48, new_n49, new_n50, new_n51,
    new_n52, new_n54, new_n55, new_n56, new_n57, new_n58, new_n59, new_n61,
    new_n62, n26, n30, n34, n38, n42;
  INVX1    g00(.A(reset), .Y(new_n28));
  INVX1    g01(.A(\count[0] ), .Y(new_n29));
  INVX1    g02(.A(\set_value[0] ), .Y(new_n30_1));
  XOR2X1   g03(.A(\count[2] ), .B(\set_value[2] ), .Y(new_n31));
  XOR2X1   g04(.A(\count[3] ), .B(\set_value[3] ), .Y(new_n32));
  XOR2X1   g05(.A(\count[0] ), .B(\set_value[0] ), .Y(new_n33));
  XOR2X1   g06(.A(\count[1] ), .B(\set_value[1] ), .Y(new_n34_1));
  OR4X1    g07(.A(new_n34_1), .B(new_n33), .C(new_n32), .D(new_n31), .Y(new_n35));
  MX2X1    g08(.A(\count[0] ), .B(new_n30_1), .S0(new_n35), .Y(new_n36));
  NAND4X1  g09(.A(\count[3] ), .B(\count[2] ), .C(\count[1] ), .D(\count[0] ), .Y(new_n37));
  NAND2X1  g10(.A(new_n37), .B(enable), .Y(new_n38_1));
  OAI22X1  g11(.A0(new_n38_1), .A1(new_n36), .B0(new_n29), .B1(enable), .Y(new_n39));
  AND2X1   g12(.A(new_n39), .B(new_n28), .Y(n26));
  INVX1    g13(.A(\count[1] ), .Y(new_n41));
  INVX1    g14(.A(\set_value[1] ), .Y(new_n42_1));
  XOR2X1   g15(.A(\count[1] ), .B(new_n29), .Y(new_n43));
  MX2X1    g16(.A(new_n43), .B(new_n42_1), .S0(new_n35), .Y(new_n44));
  OAI22X1  g17(.A0(new_n44), .A1(new_n38_1), .B0(new_n41), .B1(enable), .Y(new_n45));
  AND2X1   g18(.A(new_n45), .B(new_n28), .Y(n30));
  INVX1    g19(.A(\count[2] ), .Y(new_n47));
  INVX1    g20(.A(\set_value[2] ), .Y(new_n48));
  AND2X1   g21(.A(\count[1] ), .B(\count[0] ), .Y(new_n49));
  XOR2X1   g22(.A(new_n49), .B(new_n47), .Y(new_n50));
  MX2X1    g23(.A(new_n50), .B(new_n48), .S0(new_n35), .Y(new_n51));
  OAI22X1  g24(.A0(new_n51), .A1(new_n38_1), .B0(new_n47), .B1(enable), .Y(new_n52));
  AND2X1   g25(.A(new_n52), .B(new_n28), .Y(n34));
  INVX1    g26(.A(\count[3] ), .Y(new_n54));
  INVX1    g27(.A(\set_value[3] ), .Y(new_n55));
  NAND3X1  g28(.A(\count[2] ), .B(\count[1] ), .C(\count[0] ), .Y(new_n56));
  XOR2X1   g29(.A(new_n56), .B(\count[3] ), .Y(new_n57));
  MX2X1    g30(.A(new_n57), .B(new_n55), .S0(new_n35), .Y(new_n58));
  OAI22X1  g31(.A0(new_n58), .A1(new_n38_1), .B0(new_n54), .B1(enable), .Y(new_n59));
  AND2X1   g32(.A(new_n59), .B(new_n28), .Y(n38));
  INVX1    g33(.A(max_value_reached), .Y(new_n61));
  MX2X1    g34(.A(new_n61), .B(new_n37), .S0(enable), .Y(new_n62));
  NOR2X1   g35(.A(new_n62), .B(reset), .Y(n42));
  always @ (posedge clock) begin
    \count[0]  <= n26;
    \count[1]  <= n30;
    \count[2]  <= n34;
    \count[3]  <= n38;
    max_value_reached <= n42;
  end
endmodule


