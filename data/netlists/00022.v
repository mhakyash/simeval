// Benchmark "shift_register" written by ABC on Wed Jun 26 15:21:58 2024

module shift_register ( clock, 
    CLK, LOAD, SHIFT, \DATA_IN[0] , \DATA_IN[1] , \DATA_IN[2] ,
    \DATA_IN[3] ,
    \DATA_OUT[0] , \DATA_OUT[1] , \DATA_OUT[2] , \DATA_OUT[3]   );
  input  clock;
  input  CLK, LOAD, SHIFT, \DATA_IN[0] , \DATA_IN[1] , \DATA_IN[2] ,
    \DATA_IN[3] ;
  output \DATA_OUT[0] , \DATA_OUT[1] , \DATA_OUT[2] , \DATA_OUT[3] ;
  reg \shift_reg[0] , \shift_reg[1] , \shift_reg[2] , \shift_reg[3] ;
  wire new_n24_1, new_n26, new_n28, new_n30, n24, n29, n34, n39;
  MX2X1    g00(.A(\shift_reg[0] ), .B(\shift_reg[3] ), .S0(SHIFT), .Y(new_n24_1));
  MX2X1    g01(.A(new_n24_1), .B(\DATA_IN[0] ), .S0(LOAD), .Y(n24));
  MX2X1    g02(.A(\shift_reg[1] ), .B(\shift_reg[0] ), .S0(SHIFT), .Y(new_n26));
  MX2X1    g03(.A(new_n26), .B(\DATA_IN[1] ), .S0(LOAD), .Y(n29));
  MX2X1    g04(.A(\shift_reg[2] ), .B(\shift_reg[1] ), .S0(SHIFT), .Y(new_n28));
  MX2X1    g05(.A(new_n28), .B(\DATA_IN[2] ), .S0(LOAD), .Y(n34));
  MX2X1    g06(.A(\shift_reg[3] ), .B(\shift_reg[2] ), .S0(SHIFT), .Y(new_n30));
  MX2X1    g07(.A(new_n30), .B(\DATA_IN[3] ), .S0(LOAD), .Y(n39));
  BUFX1    g08(.A(\shift_reg[0] ), .Y(\DATA_OUT[0] ));
  BUFX1    g09(.A(\shift_reg[1] ), .Y(\DATA_OUT[1] ));
  BUFX1    g10(.A(\shift_reg[2] ), .Y(\DATA_OUT[2] ));
  BUFX1    g11(.A(\shift_reg[3] ), .Y(\DATA_OUT[3] ));
  always @ (posedge clock) begin
    \shift_reg[0]  <= n24;
    \shift_reg[1]  <= n29;
    \shift_reg[2]  <= n34;
    \shift_reg[3]  <= n39;
  end
endmodule


