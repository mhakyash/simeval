// Benchmark "stdreg_en" written by ABC on Wed Jun 26 15:22:13 2024

module stdreg_en ( clock, 
    clk, ld, \d[0] , \d[1] , \d[2] , \d[3] , \d[4] , \d[5] , \d[6] ,
    \d[7] ,
    lz, \z[0] , \z[1] , \z[2] , \z[3] , \z[4] , \z[5] , \z[6] , \z[7]   );
  input  clock;
  input  clk, ld, \d[0] , \d[1] , \d[2] , \d[3] , \d[4] , \d[5] , \d[6] ,
    \d[7] ;
  output lz, \z[0] , \z[1] , \z[2] , \z[3] , \z[4] , \z[5] , \z[6] , \z[7] ;
  reg \reg_data[0] , \reg_data[1] , \reg_data[2] , \reg_data[3] ,
    \reg_data[4] , \reg_data[5] , \reg_data[6] , \reg_data[7] ;
  wire n40, n45, n50, n55, n60, n65, n70, n75;
  MX2X1    g00(.A(\reg_data[0] ), .B(\d[0] ), .S0(ld), .Y(n40));
  MX2X1    g01(.A(\reg_data[1] ), .B(\d[1] ), .S0(ld), .Y(n45));
  MX2X1    g02(.A(\reg_data[2] ), .B(\d[2] ), .S0(ld), .Y(n50));
  MX2X1    g03(.A(\reg_data[3] ), .B(\d[3] ), .S0(ld), .Y(n55));
  MX2X1    g04(.A(\reg_data[4] ), .B(\d[4] ), .S0(ld), .Y(n60));
  MX2X1    g05(.A(\reg_data[5] ), .B(\d[5] ), .S0(ld), .Y(n65));
  MX2X1    g06(.A(\reg_data[6] ), .B(\d[6] ), .S0(ld), .Y(n70));
  MX2X1    g07(.A(\reg_data[7] ), .B(\d[7] ), .S0(ld), .Y(n75));
  ZERO     g08(.Y(lz));
  BUFX1    g09(.A(\reg_data[0] ), .Y(\z[0] ));
  BUFX1    g10(.A(\reg_data[1] ), .Y(\z[1] ));
  BUFX1    g11(.A(\reg_data[2] ), .Y(\z[2] ));
  BUFX1    g12(.A(\reg_data[3] ), .Y(\z[3] ));
  BUFX1    g13(.A(\reg_data[4] ), .Y(\z[4] ));
  BUFX1    g14(.A(\reg_data[5] ), .Y(\z[5] ));
  BUFX1    g15(.A(\reg_data[6] ), .Y(\z[6] ));
  BUFX1    g16(.A(\reg_data[7] ), .Y(\z[7] ));
  always @ (posedge clock) begin
    \reg_data[0]  <= n40;
    \reg_data[1]  <= n45;
    \reg_data[2]  <= n50;
    \reg_data[3]  <= n55;
    \reg_data[4]  <= n60;
    \reg_data[5]  <= n65;
    \reg_data[6]  <= n70;
    \reg_data[7]  <= n75;
  end
endmodule


