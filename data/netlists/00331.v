// Benchmark "counter" written by ABC on Wed Jun 26 15:22:06 2024

module counter ( clock, 
    clk, rst,
    \count[0] , \count[1] , \count[2] , \count[3]   );
  input  clock;
  input  clk, rst;
  output \count[0] , \count[1] , \count[2] , \count[3] ;
  reg \count[0] , \count[1] , \count[2] , \count[3] ;
  wire new_n20, new_n21, new_n22_1, new_n23, new_n25, new_n27, new_n28,
    new_n29, n14, n18, n22, n26;
  NOR2X1   g00(.A(\count[0] ), .B(rst), .Y(n14));
  XOR2X1   g01(.A(\count[1] ), .B(\count[0] ), .Y(new_n20));
  AND2X1   g02(.A(\count[1] ), .B(\count[0] ), .Y(new_n21));
  AND2X1   g03(.A(\count[3] ), .B(\count[2] ), .Y(new_n22_1));
  AOI21X1  g04(.A0(new_n22_1), .A1(new_n21), .B0(rst), .Y(new_n23));
  AND2X1   g05(.A(new_n23), .B(new_n20), .Y(n18));
  XOR2X1   g06(.A(new_n21), .B(\count[2] ), .Y(new_n25));
  AND2X1   g07(.A(new_n25), .B(new_n23), .Y(n22));
  INVX1    g08(.A(\count[3] ), .Y(new_n27));
  NAND3X1  g09(.A(\count[2] ), .B(\count[1] ), .C(\count[0] ), .Y(new_n28));
  XOR2X1   g10(.A(new_n28), .B(new_n27), .Y(new_n29));
  AND2X1   g11(.A(new_n29), .B(new_n23), .Y(n26));
  always @ (posedge clock) begin
    \count[0]  <= n14;
    \count[1]  <= n18;
    \count[2]  <= n22;
    \count[3]  <= n26;
  end
endmodule


