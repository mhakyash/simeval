// Benchmark "shift_register" written by ABC on Wed Jun 26 15:22:12 2024

module shift_register ( clock, 
    clk, load, \data_in[0] , \data_in[1] , \data_in[2] , \data_in[3] ,
    \data_out[0] , \data_out[1] , \data_out[2] , \data_out[3]   );
  input  clock;
  input  clk, load, \data_in[0] , \data_in[1] , \data_in[2] ,
    \data_in[3] ;
  output \data_out[0] , \data_out[1] , \data_out[2] , \data_out[3] ;
  reg \stage3[0] , \stage3[1] , \stage3[2] , \stage3[3] , \stage4[0] ,
    \stage4[1] , \stage4[2] , \stage4[3] , \stage1[0] , \stage1[1] ,
    \stage1[2] , \stage1[3] , \stage2[0] , \stage2[1] , \stage2[2] ,
    \stage2[3] ;
  wire n22, n27, n32, n37, n41, n45, n49, n53, n58, n63, n68, n73, n77, n80,
    n83, n86;
  MX2X1    g00(.A(\stage4[0] ), .B(\data_in[0] ), .S0(load), .Y(n58));
  MX2X1    g01(.A(\stage4[1] ), .B(\data_in[1] ), .S0(load), .Y(n63));
  MX2X1    g02(.A(\stage4[2] ), .B(\data_in[2] ), .S0(load), .Y(n68));
  MX2X1    g03(.A(\stage4[3] ), .B(\data_in[3] ), .S0(load), .Y(n73));
  BUFX1    g04(.A(\stage4[0] ), .Y(\data_out[0] ));
  BUFX1    g05(.A(\stage4[1] ), .Y(\data_out[1] ));
  BUFX1    g06(.A(\stage4[2] ), .Y(\data_out[2] ));
  BUFX1    g07(.A(\stage4[3] ), .Y(\data_out[3] ));
  BUFX1    g08(.A(\stage2[0] ), .Y(n22));
  BUFX1    g09(.A(\stage2[1] ), .Y(n27));
  BUFX1    g10(.A(\stage2[2] ), .Y(n32));
  BUFX1    g11(.A(\stage2[3] ), .Y(n37));
  BUFX1    g12(.A(\stage3[0] ), .Y(n41));
  BUFX1    g13(.A(\stage3[1] ), .Y(n45));
  BUFX1    g14(.A(\stage3[2] ), .Y(n49));
  BUFX1    g15(.A(\stage3[3] ), .Y(n53));
  BUFX1    g16(.A(\stage1[0] ), .Y(n77));
  BUFX1    g17(.A(\stage1[1] ), .Y(n80));
  BUFX1    g18(.A(\stage1[2] ), .Y(n83));
  BUFX1    g19(.A(\stage1[3] ), .Y(n86));
  always @ (posedge clock) begin
    \stage3[0]  <= n22;
    \stage3[1]  <= n27;
    \stage3[2]  <= n32;
    \stage3[3]  <= n37;
    \stage4[0]  <= n41;
    \stage4[1]  <= n45;
    \stage4[2]  <= n49;
    \stage4[3]  <= n53;
    \stage1[0]  <= n58;
    \stage1[1]  <= n63;
    \stage1[2]  <= n68;
    \stage1[3]  <= n73;
    \stage2[0]  <= n77;
    \stage2[1]  <= n80;
    \stage2[2]  <= n83;
    \stage2[3]  <= n86;
  end
endmodule


