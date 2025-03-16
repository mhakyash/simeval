// Benchmark "counter" written by ABC on Wed Jun 26 15:22:22 2024

module counter ( clock, 
    CLK, RST, enable,
    \count_out[0] , \count_out[1] , \count_out[2] , \count_out[3]   );
  input  clock;
  input  CLK, RST, enable;
  output \count_out[0] , \count_out[1] , \count_out[2] , \count_out[3] ;
  reg \count_out[0] , \count_out[1] , \count_out[2] , \count_out[3] ;
  wire new_n20_1, new_n21, new_n23, new_n24_1, new_n25, new_n27, new_n28_1,
    new_n29, new_n31, new_n32, new_n33, new_n34, n16, n20, n24, n28;
  INVX1    g00(.A(RST), .Y(new_n20_1));
  XOR2X1   g01(.A(\count_out[0] ), .B(enable), .Y(new_n21));
  AND2X1   g02(.A(new_n21), .B(new_n20_1), .Y(n16));
  INVX1    g03(.A(enable), .Y(new_n23));
  XOR2X1   g04(.A(\count_out[1] ), .B(\count_out[0] ), .Y(new_n24_1));
  MX2X1    g05(.A(new_n24_1), .B(\count_out[1] ), .S0(new_n23), .Y(new_n25));
  AND2X1   g06(.A(new_n25), .B(new_n20_1), .Y(n20));
  AND2X1   g07(.A(\count_out[1] ), .B(\count_out[0] ), .Y(new_n27));
  XOR2X1   g08(.A(new_n27), .B(\count_out[2] ), .Y(new_n28_1));
  MX2X1    g09(.A(new_n28_1), .B(\count_out[2] ), .S0(new_n23), .Y(new_n29));
  AND2X1   g10(.A(new_n29), .B(new_n20_1), .Y(n24));
  INVX1    g11(.A(\count_out[3] ), .Y(new_n31));
  NAND3X1  g12(.A(\count_out[2] ), .B(\count_out[1] ), .C(\count_out[0] ), .Y(new_n32));
  XOR2X1   g13(.A(new_n32), .B(new_n31), .Y(new_n33));
  MX2X1    g14(.A(new_n33), .B(\count_out[3] ), .S0(new_n23), .Y(new_n34));
  AND2X1   g15(.A(new_n34), .B(new_n20_1), .Y(n28));
  always @ (posedge clock) begin
    \count_out[0]  <= n16;
    \count_out[1]  <= n20;
    \count_out[2]  <= n24;
    \count_out[3]  <= n28;
  end
endmodule


