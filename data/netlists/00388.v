// Benchmark "OneHotStateMachine" written by ABC on Wed Jun 26 15:22:08 2024

module OneHotStateMachine ( clock, 
    clk,
    \out[0] , \out[1] , \out[2] , \out[3]   );
  input  clock;
  input  clk;
  output \out[0] , \out[1] , \out[2] , \out[3] ;
  reg \state[0] , \state[1] , \state[2] , \state[3] , \out[0] , \out[1] ,
    \out[2] , \out[3] ;
  wire new_n31, new_n33, new_n35, n12, n17, n21, n24, n28, n32, n36, n40;
  NOR3X1   g00(.A(\state[3] ), .B(\state[2] ), .C(\state[1] ), .Y(n28));
  INVX1    g01(.A(\state[2] ), .Y(new_n31));
  NOR2X1   g02(.A(n28), .B(new_n31), .Y(n32));
  INVX1    g03(.A(\state[1] ), .Y(new_n33));
  NOR2X1   g04(.A(n28), .B(new_n33), .Y(n36));
  INVX1    g05(.A(\state[3] ), .Y(new_n35));
  NOR2X1   g06(.A(n28), .B(new_n35), .Y(n40));
  BUFX1    g07(.A(\state[3] ), .Y(n12));
  BUFX1    g08(.A(\state[2] ), .Y(n17));
  BUFX1    g09(.A(\state[0] ), .Y(n21));
  BUFX1    g10(.A(\state[1] ), .Y(n24));
  always @ (posedge clock) begin
    \state[0]  <= n12;
    \state[1]  <= n17;
    \state[2]  <= n21;
    \state[3]  <= n24;
    \out[0]  <= n28;
    \out[1]  <= n32;
    \out[2]  <= n36;
    \out[3]  <= n40;
  end
endmodule


