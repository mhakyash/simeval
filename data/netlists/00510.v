// Benchmark "shift_reg_comp" written by ABC on Wed Jun 26 15:22:12 2024

module shift_reg_comp ( clock, 
    clk, reset, \data[0] , \data[1] , \data[2] , \data[3] , \in_data[0] ,
    \in_data[1] , \in_data[2] , \in_data[3] , \in_data[4] , \in_data[5] ,
    \in_data[6] , \in_data[7] ,
    \out_data[0] , \out_data[1] , \out_data[2] , \out_data[3] ,
    \out_data[4] , \out_data[5] , \out_data[6] , \out_data[7]   );
  input  clock;
  input  clk, reset, \data[0] , \data[1] , \data[2] , \data[3] ,
    \in_data[0] , \in_data[1] , \in_data[2] , \in_data[3] , \in_data[4] ,
    \in_data[5] , \in_data[6] , \in_data[7] ;
  output \out_data[0] , \out_data[1] , \out_data[2] , \out_data[3] ,
    \out_data[4] , \out_data[5] , \out_data[6] , \out_data[7] ;
  reg \shift_reg_comp|shift_reg[0] , \shift_reg_comp|shift_reg[1] ,
    \shift_reg_comp|shift_reg[2] , \shift_reg_comp|shift_reg[3] ,
    \shift_reg_comp|shift_reg[4] , \shift_reg_comp|shift_reg[5] ,
    \shift_reg_comp|shift_reg[6] , \shift_reg_comp|shift_reg[7] ;
  wire new_n47, new_n48, new_n49, new_n51, new_n53, new_n55, new_n57,
    new_n59, new_n61, new_n63, n66, n69, n72, n75, n78, n81, n84, n87;
  OR4X1    g00(.A(\data[3] ), .B(\data[2] ), .C(\data[1] ), .D(\data[0] ), .Y(new_n47));
  INVX1    g01(.A(reset), .Y(new_n48));
  AND2X1   g02(.A(\in_data[0] ), .B(new_n48), .Y(new_n49));
  AND2X1   g03(.A(new_n49), .B(new_n47), .Y(n66));
  MX2X1    g04(.A(\shift_reg_comp|shift_reg[0] ), .B(\in_data[1] ), .S0(new_n47), .Y(new_n51));
  AND2X1   g05(.A(new_n51), .B(new_n48), .Y(n69));
  MX2X1    g06(.A(\shift_reg_comp|shift_reg[1] ), .B(\in_data[2] ), .S0(new_n47), .Y(new_n53));
  AND2X1   g07(.A(new_n53), .B(new_n48), .Y(n72));
  MX2X1    g08(.A(\shift_reg_comp|shift_reg[2] ), .B(\in_data[3] ), .S0(new_n47), .Y(new_n55));
  AND2X1   g09(.A(new_n55), .B(new_n48), .Y(n75));
  MX2X1    g10(.A(\shift_reg_comp|shift_reg[3] ), .B(\in_data[4] ), .S0(new_n47), .Y(new_n57));
  AND2X1   g11(.A(new_n57), .B(new_n48), .Y(n78));
  MX2X1    g12(.A(\shift_reg_comp|shift_reg[4] ), .B(\in_data[5] ), .S0(new_n47), .Y(new_n59));
  AND2X1   g13(.A(new_n59), .B(new_n48), .Y(n81));
  MX2X1    g14(.A(\shift_reg_comp|shift_reg[5] ), .B(\in_data[6] ), .S0(new_n47), .Y(new_n61));
  AND2X1   g15(.A(new_n61), .B(new_n48), .Y(n84));
  MX2X1    g16(.A(\shift_reg_comp|shift_reg[6] ), .B(\in_data[7] ), .S0(new_n47), .Y(new_n63));
  AND2X1   g17(.A(new_n63), .B(new_n48), .Y(n87));
  BUFX1    g18(.A(\shift_reg_comp|shift_reg[0] ), .Y(\out_data[0] ));
  BUFX1    g19(.A(\shift_reg_comp|shift_reg[1] ), .Y(\out_data[1] ));
  BUFX1    g20(.A(\shift_reg_comp|shift_reg[2] ), .Y(\out_data[2] ));
  BUFX1    g21(.A(\shift_reg_comp|shift_reg[3] ), .Y(\out_data[3] ));
  BUFX1    g22(.A(\shift_reg_comp|shift_reg[4] ), .Y(\out_data[4] ));
  BUFX1    g23(.A(\shift_reg_comp|shift_reg[5] ), .Y(\out_data[5] ));
  BUFX1    g24(.A(\shift_reg_comp|shift_reg[6] ), .Y(\out_data[6] ));
  BUFX1    g25(.A(\shift_reg_comp|shift_reg[7] ), .Y(\out_data[7] ));
  always @ (posedge clock) begin
    \shift_reg_comp|shift_reg[0]  <= n66;
    \shift_reg_comp|shift_reg[1]  <= n69;
    \shift_reg_comp|shift_reg[2]  <= n72;
    \shift_reg_comp|shift_reg[3]  <= n75;
    \shift_reg_comp|shift_reg[4]  <= n78;
    \shift_reg_comp|shift_reg[5]  <= n81;
    \shift_reg_comp|shift_reg[6]  <= n84;
    \shift_reg_comp|shift_reg[7]  <= n87;
  end
endmodule


