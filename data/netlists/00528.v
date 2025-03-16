// Benchmark "binary_to_bcd_converter" written by ABC on Wed Jun 26 15:22:13 2024

module binary_to_bcd_converter ( clock, 
    \BIN[0] , \BIN[1] , \BIN[2] , \BIN[3] , \BIN[4] , \BIN[5] , \BIN[6] ,
    \BIN[7] ,
    \BCD_HIGH1[0] , \BCD_HIGH1[1] , \BCD_HIGH1[2] , \BCD_HIGH1[3] ,
    \BCD_LOW1[0] , \BCD_LOW1[1] , \BCD_LOW1[2] , \BCD_LOW1[3] ,
    \BCD_HIGH2[0] , \BCD_HIGH2[1] , \BCD_HIGH2[2] , \BCD_HIGH2[3] ,
    \BCD_LOW2[0] , \BCD_LOW2[1] , \BCD_LOW2[2] , \BCD_LOW2[3]   );
  input  clock;
  input  \BIN[0] , \BIN[1] , \BIN[2] , \BIN[3] , \BIN[4] , \BIN[5] ,
    \BIN[6] , \BIN[7] ;
  output \BCD_HIGH1[0] , \BCD_HIGH1[1] , \BCD_HIGH1[2] , \BCD_HIGH1[3] ,
    \BCD_LOW1[0] , \BCD_LOW1[1] , \BCD_LOW1[2] , \BCD_LOW1[3] ,
    \BCD_HIGH2[0] , \BCD_HIGH2[1] , \BCD_HIGH2[2] , \BCD_HIGH2[3] ,
    \BCD_LOW2[0] , \BCD_LOW2[1] , \BCD_LOW2[2] , \BCD_LOW2[3] ;
  reg \bcd_low2_reg[1] , \bcd_low2_reg[2] , \bcd_high1_reg[0] ,
    \bcd_high1_reg[1] , \bcd_high1_reg[2] , \bcd_low1_reg[0] ,
    \bcd_low1_reg[1] , \bcd_low1_reg[2] ;
  wire n49, n53, n57, n61, n65, n69, n73, n77;
  ZERO     g00(.Y(\BCD_HIGH1[3] ));
  ZERO     g01(.Y(\BCD_LOW1[3] ));
  ZERO     g02(.Y(\BCD_HIGH2[0] ));
  ZERO     g03(.Y(\BCD_HIGH2[3] ));
  ZERO     g04(.Y(\BCD_LOW2[0] ));
  ZERO     g05(.Y(\BCD_LOW2[3] ));
  BUFX1    g06(.A(\bcd_high1_reg[0] ), .Y(\BCD_HIGH1[0] ));
  BUFX1    g07(.A(\bcd_high1_reg[1] ), .Y(\BCD_HIGH1[1] ));
  BUFX1    g08(.A(\bcd_high1_reg[2] ), .Y(\BCD_HIGH1[2] ));
  BUFX1    g09(.A(\bcd_low1_reg[0] ), .Y(\BCD_LOW1[0] ));
  BUFX1    g10(.A(\bcd_low1_reg[1] ), .Y(\BCD_LOW1[1] ));
  BUFX1    g11(.A(\bcd_low1_reg[2] ), .Y(\BCD_LOW1[2] ));
  BUFX1    g12(.A(\bcd_low2_reg[1] ), .Y(\BCD_HIGH2[1] ));
  BUFX1    g13(.A(\bcd_low2_reg[2] ), .Y(\BCD_HIGH2[2] ));
  BUFX1    g14(.A(\bcd_low2_reg[1] ), .Y(\BCD_LOW2[1] ));
  BUFX1    g15(.A(\bcd_low2_reg[2] ), .Y(\BCD_LOW2[2] ));
  BUFX1    g16(.A(\BIN[0] ), .Y(n49));
  BUFX1    g17(.A(\BIN[1] ), .Y(n53));
  BUFX1    g18(.A(\BIN[5] ), .Y(n57));
  BUFX1    g19(.A(\BIN[6] ), .Y(n61));
  BUFX1    g20(.A(\BIN[7] ), .Y(n65));
  BUFX1    g21(.A(\BIN[2] ), .Y(n69));
  BUFX1    g22(.A(\BIN[3] ), .Y(n73));
  BUFX1    g23(.A(\BIN[4] ), .Y(n77));
  always @ (posedge clock) begin
    \bcd_low2_reg[1]  <= n49;
    \bcd_low2_reg[2]  <= n53;
    \bcd_high1_reg[0]  <= n57;
    \bcd_high1_reg[1]  <= n61;
    \bcd_high1_reg[2]  <= n65;
    \bcd_low1_reg[0]  <= n69;
    \bcd_low1_reg[1]  <= n73;
    \bcd_low1_reg[2]  <= n77;
  end
endmodule


