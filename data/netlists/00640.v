// Benchmark "shift_register_4bit" written by ABC on Wed Jun 26 15:22:16 2024

module shift_register_4bit ( clock, 
    \data_in[0] , \data_in[1] , \data_in[2] , \data_in[3] , load, clk,
    \data_out[0] , \data_out[1] , \data_out[2] , \data_out[3]   );
  input  clock;
  input  \data_in[0] , \data_in[1] , \data_in[2] , \data_in[3] , load,
    clk;
  output \data_out[0] , \data_out[1] , \data_out[2] , \data_out[3] ;
  reg \stage3_data[0] , \stage3_data[1] , \stage3_data[2] ,
    \stage3_data[3] , \stage4_data[0] , \stage4_data[1] , \stage4_data[2] ,
    \stage4_data[3] , \stage1_data[0] , \stage1_data[1] , \stage1_data[2] ,
    \stage1_data[3] , \stage2_data[0] , \stage2_data[1] , \stage2_data[2] ,
    \stage2_data[3] ;
  wire n22, n27, n32, n37, n42, n47, n52, n57, n62, n67, n72, n77, n82, n87,
    n92, n97;
  MX2X1    g00(.A(\stage4_data[0] ), .B(\stage2_data[0] ), .S0(load), .Y(n22));
  MX2X1    g01(.A(\stage4_data[1] ), .B(\stage2_data[1] ), .S0(load), .Y(n27));
  MX2X1    g02(.A(\stage4_data[2] ), .B(\stage2_data[2] ), .S0(load), .Y(n32));
  MX2X1    g03(.A(\stage4_data[3] ), .B(\stage2_data[3] ), .S0(load), .Y(n37));
  MX2X1    g04(.A(\data_in[0] ), .B(\stage3_data[0] ), .S0(load), .Y(n42));
  MX2X1    g05(.A(\data_in[1] ), .B(\stage3_data[1] ), .S0(load), .Y(n47));
  MX2X1    g06(.A(\data_in[2] ), .B(\stage3_data[2] ), .S0(load), .Y(n52));
  MX2X1    g07(.A(\data_in[3] ), .B(\stage3_data[3] ), .S0(load), .Y(n57));
  MX2X1    g08(.A(\stage2_data[0] ), .B(\data_in[0] ), .S0(load), .Y(n62));
  MX2X1    g09(.A(\stage2_data[1] ), .B(\data_in[1] ), .S0(load), .Y(n67));
  MX2X1    g10(.A(\stage2_data[2] ), .B(\data_in[2] ), .S0(load), .Y(n72));
  MX2X1    g11(.A(\stage2_data[3] ), .B(\data_in[3] ), .S0(load), .Y(n77));
  MX2X1    g12(.A(\stage3_data[0] ), .B(\stage1_data[0] ), .S0(load), .Y(n82));
  MX2X1    g13(.A(\stage3_data[1] ), .B(\stage1_data[1] ), .S0(load), .Y(n87));
  MX2X1    g14(.A(\stage3_data[2] ), .B(\stage1_data[2] ), .S0(load), .Y(n92));
  MX2X1    g15(.A(\stage3_data[3] ), .B(\stage1_data[3] ), .S0(load), .Y(n97));
  BUFX1    g16(.A(\stage1_data[0] ), .Y(\data_out[0] ));
  BUFX1    g17(.A(\stage1_data[1] ), .Y(\data_out[1] ));
  BUFX1    g18(.A(\stage1_data[2] ), .Y(\data_out[2] ));
  BUFX1    g19(.A(\stage1_data[3] ), .Y(\data_out[3] ));
  always @ (posedge clock) begin
    \stage3_data[0]  <= n22;
    \stage3_data[1]  <= n27;
    \stage3_data[2]  <= n32;
    \stage3_data[3]  <= n37;
    \stage4_data[0]  <= n42;
    \stage4_data[1]  <= n47;
    \stage4_data[2]  <= n52;
    \stage4_data[3]  <= n57;
    \stage1_data[0]  <= n62;
    \stage1_data[1]  <= n67;
    \stage1_data[2]  <= n72;
    \stage1_data[3]  <= n77;
    \stage2_data[0]  <= n82;
    \stage2_data[1]  <= n87;
    \stage2_data[2]  <= n92;
    \stage2_data[3]  <= n97;
  end
endmodule


