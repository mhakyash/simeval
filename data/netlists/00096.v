// Benchmark "shift_register" written by ABC on Wed Jun 26 15:22:00 2024

module shift_register ( clock, 
    clk, \data_in[0] , \data_in[1] , \data_in[2] , \data_in[3] ,
    shift_right, load,
    \data_out[0] , \data_out[1] , \data_out[2] , \data_out[3]   );
  input  clock;
  input  clk, \data_in[0] , \data_in[1] , \data_in[2] , \data_in[3] ,
    shift_right, load;
  output \data_out[0] , \data_out[1] , \data_out[2] , \data_out[3] ;
  reg \register[0] , \register[1] , \register[2] , \register[3] ;
  wire new_n24_1, new_n26, new_n28, new_n30, n24, n29, n34, n39;
  MX2X1    g00(.A(\register[0] ), .B(\register[3] ), .S0(shift_right), .Y(new_n24_1));
  MX2X1    g01(.A(new_n24_1), .B(\data_in[0] ), .S0(load), .Y(n24));
  MX2X1    g02(.A(\register[1] ), .B(\register[0] ), .S0(shift_right), .Y(new_n26));
  MX2X1    g03(.A(new_n26), .B(\data_in[1] ), .S0(load), .Y(n29));
  MX2X1    g04(.A(\register[2] ), .B(\register[1] ), .S0(shift_right), .Y(new_n28));
  MX2X1    g05(.A(new_n28), .B(\data_in[2] ), .S0(load), .Y(n34));
  MX2X1    g06(.A(\register[3] ), .B(\register[2] ), .S0(shift_right), .Y(new_n30));
  MX2X1    g07(.A(new_n30), .B(\data_in[3] ), .S0(load), .Y(n39));
  BUFX1    g08(.A(\register[0] ), .Y(\data_out[0] ));
  BUFX1    g09(.A(\register[1] ), .Y(\data_out[1] ));
  BUFX1    g10(.A(\register[2] ), .Y(\data_out[2] ));
  BUFX1    g11(.A(\register[3] ), .Y(\data_out[3] ));
  always @ (posedge clock) begin
    \register[0]  <= n24;
    \register[1]  <= n29;
    \register[2]  <= n34;
    \register[3]  <= n39;
  end
endmodule


