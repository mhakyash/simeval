// Benchmark "counter" written by ABC on Wed Jun 26 15:22:13 2024

module counter ( clock, 
    clk, LOAD, RESET, \DATA[0] , \DATA[1] ,
    \Q[0] , \Q[1]   );
  input  clock;
  input  clk, LOAD, RESET, \DATA[0] , \DATA[1] ;
  output \Q[0] , \Q[1] ;
  reg \Q[0] , \Q[1] , \Q_reg2[0] , \Q_reg2[1] , \Q_reg1[0] , \Q_reg1[1] ;
  wire new_n26, new_n27, new_n29_1, new_n30, new_n31, n16, n20, n24, n29,
    n33, n36;
  OR2X1    g00(.A(\Q_reg2[0] ), .B(LOAD), .Y(new_n26));
  NAND2X1  g01(.A(\DATA[0] ), .B(LOAD), .Y(new_n27));
  AOI21X1  g02(.A0(new_n27), .A1(new_n26), .B0(RESET), .Y(n16));
  INVX1    g03(.A(RESET), .Y(new_n29_1));
  XOR2X1   g04(.A(\Q_reg2[1] ), .B(\Q_reg2[0] ), .Y(new_n30));
  MX2X1    g05(.A(new_n30), .B(\DATA[1] ), .S0(LOAD), .Y(new_n31));
  AND2X1   g06(.A(new_n31), .B(new_n29_1), .Y(n20));
  BUFX1    g07(.A(\Q_reg1[0] ), .Y(n24));
  BUFX1    g08(.A(\Q_reg1[1] ), .Y(n29));
  BUFX1    g09(.A(\Q[0] ), .Y(n33));
  BUFX1    g10(.A(\Q[1] ), .Y(n36));
  always @ (posedge clock) begin
    \Q[0]  <= n16;
    \Q[1]  <= n20;
    \Q_reg2[0]  <= n24;
    \Q_reg2[1]  <= n29;
    \Q_reg1[0]  <= n33;
    \Q_reg1[1]  <= n36;
  end
endmodule


