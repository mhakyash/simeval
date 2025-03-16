// Benchmark "binary_counter" written by ABC on Wed Jun 26 15:22:11 2024

module binary_counter ( clock, 
    clk, reset, enable,
    \count[0] , \count[1] , \count[2] , \count[3]   );
  input  clock;
  input  clk, reset, enable;
  output \count[0] , \count[1] , \count[2] , \count[3] ;
  reg \count[0] , \count[1] , \count[2] , \count[3] ;
  wire new_n20_1, new_n21, new_n23, new_n24_1, new_n25, new_n26, new_n27,
    new_n29, new_n30, new_n31, new_n32, new_n34, new_n35, new_n36, new_n37,
    n16, n20, n24, n28;
  INVX1    g00(.A(reset), .Y(new_n20_1));
  XOR2X1   g01(.A(\count[0] ), .B(enable), .Y(new_n21));
  AND2X1   g02(.A(new_n21), .B(new_n20_1), .Y(n16));
  INVX1    g03(.A(\count[1] ), .Y(new_n23));
  XOR2X1   g04(.A(new_n23), .B(\count[0] ), .Y(new_n24_1));
  NAND4X1  g05(.A(\count[3] ), .B(\count[2] ), .C(\count[1] ), .D(\count[0] ), .Y(new_n25));
  NAND2X1  g06(.A(new_n25), .B(enable), .Y(new_n26));
  OAI22X1  g07(.A0(new_n26), .A1(new_n24_1), .B0(new_n23), .B1(enable), .Y(new_n27));
  AND2X1   g08(.A(new_n27), .B(new_n20_1), .Y(n20));
  INVX1    g09(.A(\count[2] ), .Y(new_n29));
  AND2X1   g10(.A(\count[1] ), .B(\count[0] ), .Y(new_n30));
  XOR2X1   g11(.A(new_n30), .B(new_n29), .Y(new_n31));
  OAI22X1  g12(.A0(new_n31), .A1(new_n26), .B0(new_n29), .B1(enable), .Y(new_n32));
  AND2X1   g13(.A(new_n32), .B(new_n20_1), .Y(n24));
  INVX1    g14(.A(\count[3] ), .Y(new_n34));
  NAND3X1  g15(.A(\count[2] ), .B(\count[1] ), .C(\count[0] ), .Y(new_n35));
  XOR2X1   g16(.A(new_n35), .B(\count[3] ), .Y(new_n36));
  OAI22X1  g17(.A0(new_n36), .A1(new_n26), .B0(new_n34), .B1(enable), .Y(new_n37));
  AND2X1   g18(.A(new_n37), .B(new_n20_1), .Y(n28));
  always @ (posedge clock) begin
    \count[0]  <= n16;
    \count[1]  <= n20;
    \count[2]  <= n24;
    \count[3]  <= n28;
  end
endmodule


