// Benchmark "up_down_counter" written by ABC on Wed Jun 26 15:22:19 2024

module up_down_counter ( clock, 
    CLK, RESET, DIR,
    \Q[0] , \Q[1] , \Q[2]   );
  input  clock;
  input  CLK, RESET, DIR;
  output \Q[0] , \Q[1] , \Q[2] ;
  reg \Q[0] , \Q[1] , \Q[2] ;
  wire new_n17, new_n18_1, new_n19, new_n20, new_n21, new_n23, new_n24,
    new_n25, new_n26, new_n27, new_n28, n14, n18, n22;
  NOR2X1   g00(.A(\Q[0] ), .B(RESET), .Y(n14));
  INVX1    g01(.A(DIR), .Y(new_n17));
  XOR2X1   g02(.A(\Q[1] ), .B(\Q[0] ), .Y(new_n18_1));
  NAND2X1  g03(.A(new_n18_1), .B(new_n17), .Y(new_n19));
  XOR2X1   g04(.A(\Q[1] ), .B(\Q[0] ), .Y(new_n20));
  OR2X1    g05(.A(new_n20), .B(new_n17), .Y(new_n21));
  AOI21X1  g06(.A0(new_n21), .A1(new_n19), .B0(RESET), .Y(n18));
  INVX1    g07(.A(RESET), .Y(new_n23));
  AND2X1   g08(.A(\Q[1] ), .B(\Q[0] ), .Y(new_n24));
  XOR2X1   g09(.A(new_n24), .B(\Q[2] ), .Y(new_n25));
  NOR2X1   g10(.A(\Q[1] ), .B(\Q[0] ), .Y(new_n26));
  XOR2X1   g11(.A(new_n26), .B(\Q[2] ), .Y(new_n27));
  MX2X1    g12(.A(new_n27), .B(new_n25), .S0(new_n17), .Y(new_n28));
  AND2X1   g13(.A(new_n28), .B(new_n23), .Y(n22));
  always @ (posedge clock) begin
    \Q[0]  <= n14;
    \Q[1]  <= n18;
    \Q[2]  <= n22;
  end
endmodule


