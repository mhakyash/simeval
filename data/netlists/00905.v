// Benchmark "control_register_block" written by ABC on Wed Jun 26 15:22:23 2024

module control_register_block ( clock, 
    clk, reset, enable, \data_in[0] , \data_in[1] , \data_in[2] ,
    \data_in[3] , \data_in[4] , \data_in[5] , \data_in[6] , \data_in[7] ,
    \control[0] , \control[1] , \control[2] , \control[3] ,
    \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7]   );
  input  clock;
  input  clk, reset, enable, \data_in[0] , \data_in[1] , \data_in[2] ,
    \data_in[3] , \data_in[4] , \data_in[5] , \data_in[6] , \data_in[7] ,
    \control[0] , \control[1] , \control[2] , \control[3] ;
  output \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] ;
  reg \data_reg[0] , \data_reg[1] , \data_reg[2] , \data_reg[3] ,
    \data_reg[4] , \data_reg[5] , \data_reg[6] , \data_reg[7] ;
  wire new_n48_1, new_n49, new_n50, new_n51, new_n52, new_n53_1, new_n54,
    new_n55, new_n56, new_n65, new_n66, new_n68_1, new_n70, new_n72,
    new_n74, new_n76, new_n78_1, new_n80, n48, n53, n58, n63, n68, n73,
    n78, n83;
  INVX1    g00(.A(\control[0] ), .Y(new_n48_1));
  NOR4X1   g01(.A(\control[3] ), .B(\control[2] ), .C(\control[1] ), .D(new_n48_1), .Y(new_n49));
  INVX1    g02(.A(\control[1] ), .Y(new_n50));
  NOR4X1   g03(.A(\control[3] ), .B(\control[2] ), .C(new_n50), .D(\control[0] ), .Y(new_n51));
  INVX1    g04(.A(\control[2] ), .Y(new_n52));
  NOR4X1   g05(.A(\control[3] ), .B(new_n52), .C(\control[1] ), .D(\control[0] ), .Y(new_n53_1));
  INVX1    g06(.A(\control[3] ), .Y(new_n54));
  NOR4X1   g07(.A(new_n54), .B(\control[2] ), .C(\control[1] ), .D(\control[0] ), .Y(new_n55));
  OR4X1    g08(.A(new_n55), .B(new_n53_1), .C(new_n51), .D(new_n49), .Y(new_n56));
  AND2X1   g09(.A(new_n56), .B(\data_reg[0] ), .Y(\out[0] ));
  AND2X1   g10(.A(new_n56), .B(\data_reg[1] ), .Y(\out[1] ));
  AND2X1   g11(.A(new_n56), .B(\data_reg[2] ), .Y(\out[2] ));
  AND2X1   g12(.A(new_n56), .B(\data_reg[3] ), .Y(\out[3] ));
  AND2X1   g13(.A(new_n56), .B(\data_reg[4] ), .Y(\out[4] ));
  AND2X1   g14(.A(new_n56), .B(\data_reg[5] ), .Y(\out[5] ));
  AND2X1   g15(.A(new_n56), .B(\data_reg[6] ), .Y(\out[6] ));
  AND2X1   g16(.A(new_n56), .B(\data_reg[7] ), .Y(\out[7] ));
  INVX1    g17(.A(reset), .Y(new_n65));
  MX2X1    g18(.A(\data_reg[0] ), .B(\data_in[0] ), .S0(enable), .Y(new_n66));
  AND2X1   g19(.A(new_n66), .B(new_n65), .Y(n48));
  MX2X1    g20(.A(\data_reg[1] ), .B(\data_in[1] ), .S0(enable), .Y(new_n68_1));
  AND2X1   g21(.A(new_n68_1), .B(new_n65), .Y(n53));
  MX2X1    g22(.A(\data_reg[2] ), .B(\data_in[2] ), .S0(enable), .Y(new_n70));
  AND2X1   g23(.A(new_n70), .B(new_n65), .Y(n58));
  MX2X1    g24(.A(\data_reg[3] ), .B(\data_in[3] ), .S0(enable), .Y(new_n72));
  AND2X1   g25(.A(new_n72), .B(new_n65), .Y(n63));
  MX2X1    g26(.A(\data_reg[4] ), .B(\data_in[4] ), .S0(enable), .Y(new_n74));
  AND2X1   g27(.A(new_n74), .B(new_n65), .Y(n68));
  MX2X1    g28(.A(\data_reg[5] ), .B(\data_in[5] ), .S0(enable), .Y(new_n76));
  AND2X1   g29(.A(new_n76), .B(new_n65), .Y(n73));
  MX2X1    g30(.A(\data_reg[6] ), .B(\data_in[6] ), .S0(enable), .Y(new_n78_1));
  AND2X1   g31(.A(new_n78_1), .B(new_n65), .Y(n78));
  MX2X1    g32(.A(\data_reg[7] ), .B(\data_in[7] ), .S0(enable), .Y(new_n80));
  AND2X1   g33(.A(new_n80), .B(new_n65), .Y(n83));
  always @ (posedge clock) begin
    \data_reg[0]  <= n48;
    \data_reg[1]  <= n53;
    \data_reg[2]  <= n58;
    \data_reg[3]  <= n63;
    \data_reg[4]  <= n68;
    \data_reg[5]  <= n73;
    \data_reg[6]  <= n78;
    \data_reg[7]  <= n83;
  end
endmodule


