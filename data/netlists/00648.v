// Benchmark "counter" written by ABC on Wed Jun 26 15:22:16 2024

module counter ( clock, 
    clk, rst,
    \count[0] , \count[1] , \count[2] , \count[3]   );
  input  clock;
  input  clk, rst;
  output \count[0] , \count[1] , \count[2] , \count[3] ;
  reg \count[0] , \count[1] , \count[2] , \count[3] ;
  wire new_n20, new_n21, new_n23, new_n24, new_n26_1, new_n27, n14, n18, n22,
    n26;
  NOR2X1   g0(.A(\count[0] ), .B(rst), .Y(n14));
  INVX1    g1(.A(rst), .Y(new_n20));
  XOR2X1   g2(.A(\count[1] ), .B(\count[0] ), .Y(new_n21));
  AND2X1   g3(.A(new_n21), .B(new_n20), .Y(n18));
  AND2X1   g4(.A(\count[1] ), .B(\count[0] ), .Y(new_n23));
  XOR2X1   g5(.A(new_n23), .B(\count[2] ), .Y(new_n24));
  AND2X1   g6(.A(new_n24), .B(new_n20), .Y(n22));
  NAND3X1  g7(.A(\count[2] ), .B(\count[1] ), .C(\count[0] ), .Y(new_n26_1));
  XOR2X1   g8(.A(new_n26_1), .B(\count[3] ), .Y(new_n27));
  NOR2X1   g9(.A(new_n27), .B(rst), .Y(n26));
  always @ (posedge clock) begin
    \count[0]  <= n14;
    \count[1]  <= n18;
    \count[2]  <= n22;
    \count[3]  <= n26;
  end
endmodule


