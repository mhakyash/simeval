// Benchmark "up_down_counter" written by ABC on Wed Jun 26 15:22:24 2024

module up_down_counter ( clock, 
    CLK, LOAD, \LOAD_VAL[0] , \LOAD_VAL[1] , \LOAD_VAL[2] , UP_DOWN,
    CARRY_IN,
    \Q[0] , \Q[1] , \Q[2]   );
  input  clock;
  input  CLK, LOAD, \LOAD_VAL[0] , \LOAD_VAL[1] , \LOAD_VAL[2] , UP_DOWN,
    CARRY_IN;
  output \Q[0] , \Q[1] , \Q[2] ;
  reg \Q[0] , \Q[1] , \Q[2] , \Q_reg1[0] , \Q_reg1[1] , \Q_reg1[2] ;
  wire new_n29, new_n30_1, new_n31, new_n32, new_n34, new_n35, new_n36,
    new_n37_1, new_n38, new_n39, new_n41_1, new_n42, new_n43, new_n44,
    new_n45, n22, n26, n30, n33, n37, n41;
  INVX1    g00(.A(UP_DOWN), .Y(new_n29));
  XOR2X1   g01(.A(\Q_reg1[0] ), .B(CARRY_IN), .Y(new_n30_1));
  XOR2X1   g02(.A(\Q_reg1[0] ), .B(CARRY_IN), .Y(new_n31));
  MX2X1    g03(.A(new_n31), .B(new_n30_1), .S0(new_n29), .Y(new_n32));
  MX2X1    g04(.A(new_n32), .B(\LOAD_VAL[0] ), .S0(LOAD), .Y(n22));
  INVX1    g05(.A(CARRY_IN), .Y(new_n34));
  NOR2X1   g06(.A(\Q_reg1[0] ), .B(new_n34), .Y(new_n35));
  XOR2X1   g07(.A(new_n35), .B(\Q_reg1[1] ), .Y(new_n36));
  AND2X1   g08(.A(\Q_reg1[0] ), .B(CARRY_IN), .Y(new_n37_1));
  XOR2X1   g09(.A(new_n37_1), .B(\Q_reg1[1] ), .Y(new_n38));
  MX2X1    g10(.A(new_n38), .B(new_n36), .S0(new_n29), .Y(new_n39));
  MX2X1    g11(.A(new_n39), .B(\LOAD_VAL[1] ), .S0(LOAD), .Y(n26));
  NOR3X1   g12(.A(\Q_reg1[1] ), .B(\Q_reg1[0] ), .C(new_n34), .Y(new_n41_1));
  XOR2X1   g13(.A(new_n41_1), .B(\Q_reg1[2] ), .Y(new_n42));
  AND2X1   g14(.A(new_n37_1), .B(\Q_reg1[1] ), .Y(new_n43));
  XOR2X1   g15(.A(new_n43), .B(\Q_reg1[2] ), .Y(new_n44));
  MX2X1    g16(.A(new_n44), .B(new_n42), .S0(new_n29), .Y(new_n45));
  MX2X1    g17(.A(new_n45), .B(\LOAD_VAL[2] ), .S0(LOAD), .Y(n30));
  BUFX1    g18(.A(\Q[0] ), .Y(n33));
  BUFX1    g19(.A(\Q[1] ), .Y(n37));
  BUFX1    g20(.A(\Q[2] ), .Y(n41));
  always @ (posedge clock) begin
    \Q[0]  <= n22;
    \Q[1]  <= n26;
    \Q[2]  <= n30;
    \Q_reg1[0]  <= n33;
    \Q_reg1[1]  <= n37;
    \Q_reg1[2]  <= n41;
  end
endmodule


