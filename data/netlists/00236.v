// Benchmark "counter" written by ABC on Wed Jun 26 15:22:04 2024

module counter ( clock, 
    clk, reset, enable,
    \count[0] , \count[1] , \count[2] , \count[3] , \count[4] , \count[5] ,
    \count[6] , \count[7]   );
  input  clock;
  input  clk, reset, enable;
  output \count[0] , \count[1] , \count[2] , \count[3] , \count[4] ,
    \count[5] , \count[6] , \count[7] ;
  reg \count[0] , \count[1] , \count[2] , \count[3] , \count[4] ,
    \count[5] , \count[6] , \count[7] ;
  wire new_n36_1, new_n37, new_n39, new_n40_1, new_n41, new_n43, new_n44_1,
    new_n45, new_n47, new_n48_1, new_n49, new_n51, new_n52_1, new_n53,
    new_n54, new_n56, new_n57, new_n58, new_n60, new_n61, new_n62, new_n63,
    new_n65, new_n66, new_n67, new_n68, n24, n28, n32, n36, n40, n44, n48,
    n52;
  INVX1    g00(.A(reset), .Y(new_n36_1));
  XOR2X1   g01(.A(\count[0] ), .B(enable), .Y(new_n37));
  AND2X1   g02(.A(new_n37), .B(new_n36_1), .Y(n24));
  INVX1    g03(.A(enable), .Y(new_n39));
  XOR2X1   g04(.A(\count[1] ), .B(\count[0] ), .Y(new_n40_1));
  MX2X1    g05(.A(new_n40_1), .B(\count[1] ), .S0(new_n39), .Y(new_n41));
  AND2X1   g06(.A(new_n41), .B(new_n36_1), .Y(n28));
  AND2X1   g07(.A(\count[1] ), .B(\count[0] ), .Y(new_n43));
  XOR2X1   g08(.A(new_n43), .B(\count[2] ), .Y(new_n44_1));
  MX2X1    g09(.A(new_n44_1), .B(\count[2] ), .S0(new_n39), .Y(new_n45));
  AND2X1   g10(.A(new_n45), .B(new_n36_1), .Y(n32));
  AND2X1   g11(.A(new_n43), .B(\count[2] ), .Y(new_n47));
  XOR2X1   g12(.A(new_n47), .B(\count[3] ), .Y(new_n48_1));
  MX2X1    g13(.A(new_n48_1), .B(\count[3] ), .S0(new_n39), .Y(new_n49));
  AND2X1   g14(.A(new_n49), .B(new_n36_1), .Y(n36));
  INVX1    g15(.A(\count[4] ), .Y(new_n51));
  NAND4X1  g16(.A(\count[3] ), .B(\count[2] ), .C(\count[1] ), .D(\count[0] ), .Y(new_n52_1));
  XOR2X1   g17(.A(new_n52_1), .B(new_n51), .Y(new_n53));
  MX2X1    g18(.A(new_n53), .B(\count[4] ), .S0(new_n39), .Y(new_n54));
  AND2X1   g19(.A(new_n54), .B(new_n36_1), .Y(n40));
  NOR2X1   g20(.A(new_n52_1), .B(new_n51), .Y(new_n56));
  XOR2X1   g21(.A(new_n56), .B(\count[5] ), .Y(new_n57));
  MX2X1    g22(.A(new_n57), .B(\count[5] ), .S0(new_n39), .Y(new_n58));
  AND2X1   g23(.A(new_n58), .B(new_n36_1), .Y(n44));
  INVX1    g24(.A(\count[5] ), .Y(new_n60));
  NOR3X1   g25(.A(new_n52_1), .B(new_n60), .C(new_n51), .Y(new_n61));
  XOR2X1   g26(.A(new_n61), .B(\count[6] ), .Y(new_n62));
  MX2X1    g27(.A(new_n62), .B(\count[6] ), .S0(new_n39), .Y(new_n63));
  AND2X1   g28(.A(new_n63), .B(new_n36_1), .Y(n48));
  INVX1    g29(.A(\count[6] ), .Y(new_n65));
  NOR4X1   g30(.A(new_n52_1), .B(new_n65), .C(new_n60), .D(new_n51), .Y(new_n66));
  XOR2X1   g31(.A(new_n66), .B(\count[7] ), .Y(new_n67));
  MX2X1    g32(.A(new_n67), .B(\count[7] ), .S0(new_n39), .Y(new_n68));
  AND2X1   g33(.A(new_n68), .B(new_n36_1), .Y(n52));
  always @ (posedge clock) begin
    \count[0]  <= n24;
    \count[1]  <= n28;
    \count[2]  <= n32;
    \count[3]  <= n36;
    \count[4]  <= n40;
    \count[5]  <= n44;
    \count[6]  <= n48;
    \count[7]  <= n52;
  end
endmodule


