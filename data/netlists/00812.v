// Benchmark "shift_register_4bit" written by ABC on Wed Jun 26 15:22:20 2024

module shift_register_4bit ( clock, 
    CLK, LOAD, CLR, \D[0] , \D[1] , \D[2] , \D[3] ,
    \Q[0] , \Q[1] , \Q[2] , \Q[3] , \Q_next[0] , \Q_next[1] , \Q_next[2] ,
    \Q_next[3]   );
  input  clock;
  input  CLK, LOAD, CLR, \D[0] , \D[1] , \D[2] , \D[3] ;
  output \Q[0] , \Q[1] , \Q[2] , \Q[3] , \Q_next[0] , \Q_next[1] ,
    \Q_next[2] , \Q_next[3] ;
  reg \Q[0] , \Q[1] , \Q[2] , \Q[3] ;
  wire new_n28, new_n29, new_n31, new_n33, new_n35, n32, n36, n40, n44;
  INVX1    g00(.A(CLR), .Y(new_n28));
  MX2X1    g01(.A(\D[3] ), .B(\D[0] ), .S0(LOAD), .Y(new_n29));
  AND2X1   g02(.A(new_n29), .B(new_n28), .Y(n32));
  MX2X1    g03(.A(\Q[0] ), .B(\D[1] ), .S0(LOAD), .Y(new_n31));
  AND2X1   g04(.A(new_n31), .B(new_n28), .Y(n36));
  MX2X1    g05(.A(\Q[1] ), .B(\D[2] ), .S0(LOAD), .Y(new_n33));
  AND2X1   g06(.A(new_n33), .B(new_n28), .Y(n40));
  MX2X1    g07(.A(\Q[2] ), .B(\D[3] ), .S0(LOAD), .Y(new_n35));
  AND2X1   g08(.A(new_n35), .B(new_n28), .Y(n44));
  BUFX1    g09(.A(\Q[0] ), .Y(\Q_next[0] ));
  BUFX1    g10(.A(\Q[1] ), .Y(\Q_next[1] ));
  BUFX1    g11(.A(\Q[2] ), .Y(\Q_next[2] ));
  BUFX1    g12(.A(\Q[3] ), .Y(\Q_next[3] ));
  always @ (posedge clock) begin
    \Q[0]  <= n32;
    \Q[1]  <= n36;
    \Q[2]  <= n40;
    \Q[3]  <= n44;
  end
endmodule


