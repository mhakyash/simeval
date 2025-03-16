// Benchmark "up_down_counter" written by ABC on Wed Jun 26 15:22:19 2024

module up_down_counter ( clock, 
    CLK, UP, DOWN, LOAD, \in[0] , \in[1] , \in[2] , \in[3] ,
    \OUT[0] , \OUT[1] , \OUT[2] , \OUT[3]   );
  input  clock;
  input  CLK, UP, DOWN, LOAD, \in[0] , \in[1] , \in[2] , \in[3] ;
  output \OUT[0] , \OUT[1] , \OUT[2] , \OUT[3] ;
  reg \OUT[0] , \OUT[1] , \OUT[2] , \OUT[3] ;
  wire new_n25, new_n26_1, new_n27, new_n28, new_n29, new_n31, new_n32,
    new_n33, new_n34_1, new_n35, new_n36, new_n37, new_n39, new_n40,
    new_n41, new_n42, new_n43, new_n44, new_n45, new_n46, new_n47, new_n49,
    new_n50, new_n51, new_n52, new_n53, new_n54, new_n55, new_n56, n26,
    n30, n34, n38;
  INVX1    g00(.A(DOWN), .Y(new_n25));
  XOR2X1   g01(.A(\OUT[0] ), .B(new_n25), .Y(new_n26_1));
  INVX1    g02(.A(\OUT[0] ), .Y(new_n27));
  NAND2X1  g03(.A(new_n27), .B(UP), .Y(new_n28));
  OAI21X1  g04(.A0(new_n26_1), .A1(UP), .B0(new_n28), .Y(new_n29));
  MX2X1    g05(.A(new_n29), .B(\in[0] ), .S0(LOAD), .Y(n26));
  INVX1    g06(.A(\OUT[1] ), .Y(new_n31));
  XOR2X1   g07(.A(\OUT[1] ), .B(\OUT[0] ), .Y(new_n32));
  MX2X1    g08(.A(new_n32), .B(new_n31), .S0(new_n25), .Y(new_n33));
  XOR2X1   g09(.A(\OUT[1] ), .B(new_n27), .Y(new_n34_1));
  NAND4X1  g10(.A(\OUT[3] ), .B(\OUT[2] ), .C(\OUT[1] ), .D(\OUT[0] ), .Y(new_n35));
  NAND2X1  g11(.A(new_n35), .B(UP), .Y(new_n36));
  OAI22X1  g12(.A0(new_n36), .A1(new_n34_1), .B0(new_n33), .B1(UP), .Y(new_n37));
  MX2X1    g13(.A(new_n37), .B(\in[1] ), .S0(LOAD), .Y(n30));
  INVX1    g14(.A(\OUT[2] ), .Y(new_n39));
  OR4X1    g15(.A(\OUT[3] ), .B(\OUT[2] ), .C(\OUT[1] ), .D(\OUT[0] ), .Y(new_n40));
  NOR2X1   g16(.A(\OUT[1] ), .B(\OUT[0] ), .Y(new_n41));
  XOR2X1   g17(.A(new_n41), .B(new_n39), .Y(new_n42));
  AND2X1   g18(.A(new_n42), .B(new_n40), .Y(new_n43));
  MX2X1    g19(.A(new_n43), .B(new_n39), .S0(new_n25), .Y(new_n44));
  AND2X1   g20(.A(\OUT[1] ), .B(\OUT[0] ), .Y(new_n45));
  XOR2X1   g21(.A(new_n45), .B(new_n39), .Y(new_n46));
  OAI22X1  g22(.A0(new_n46), .A1(new_n36), .B0(new_n44), .B1(UP), .Y(new_n47));
  MX2X1    g23(.A(new_n47), .B(\in[2] ), .S0(LOAD), .Y(n34));
  INVX1    g24(.A(\OUT[3] ), .Y(new_n49));
  NOR3X1   g25(.A(\OUT[2] ), .B(\OUT[1] ), .C(\OUT[0] ), .Y(new_n50));
  XOR2X1   g26(.A(new_n50), .B(new_n49), .Y(new_n51));
  AND2X1   g27(.A(new_n51), .B(new_n40), .Y(new_n52));
  MX2X1    g28(.A(new_n52), .B(new_n49), .S0(new_n25), .Y(new_n53));
  NAND3X1  g29(.A(\OUT[2] ), .B(\OUT[1] ), .C(\OUT[0] ), .Y(new_n54));
  XOR2X1   g30(.A(new_n54), .B(\OUT[3] ), .Y(new_n55));
  OAI22X1  g31(.A0(new_n55), .A1(new_n36), .B0(new_n53), .B1(UP), .Y(new_n56));
  MX2X1    g32(.A(new_n56), .B(\in[3] ), .S0(LOAD), .Y(n38));
  always @ (posedge clock) begin
    \OUT[0]  <= n26;
    \OUT[1]  <= n30;
    \OUT[2]  <= n34;
    \OUT[3]  <= n38;
  end
endmodule


