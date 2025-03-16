// Benchmark "shift_register" written by ABC on Wed Jun 26 15:22:15 2024

module shift_register ( clock, 
    clk, rst, ena, \data_in[0] , \data_in[1] , \data_in[2] , \data_in[3] ,
    \data_in[4] , \data_in[5] , \data_in[6] , \data_in[7] , \data_in[8] ,
    \data_in[9] , \data_in[10] , \data_in[11] , \data_in[12] ,
    \data_in[13] , \data_in[14] , \data_in[15] ,
    \data_out[0] , \data_out[1] , \data_out[2] , \data_out[3] ,
    \data_out[4] , \data_out[5] , \data_out[6] , \data_out[7] ,
    \data_out[8] , \data_out[9] , \data_out[10] , \data_out[11] ,
    \data_out[12] , \data_out[13] , \data_out[14] , \data_out[15]   );
  input  clock;
  input  clk, rst, ena, \data_in[0] , \data_in[1] , \data_in[2] ,
    \data_in[3] , \data_in[4] , \data_in[5] , \data_in[6] , \data_in[7] ,
    \data_in[8] , \data_in[9] , \data_in[10] , \data_in[11] ,
    \data_in[12] , \data_in[13] , \data_in[14] , \data_in[15] ;
  output \data_out[0] , \data_out[1] , \data_out[2] , \data_out[3] ,
    \data_out[4] , \data_out[5] , \data_out[6] , \data_out[7] ,
    \data_out[8] , \data_out[9] , \data_out[10] , \data_out[11] ,
    \data_out[12] , \data_out[13] , \data_out[14] , \data_out[15] ;
  reg \shift_reg[0] , \shift_reg[1] , \shift_reg[2] , \shift_reg[3] ,
    \shift_reg[4] , \shift_reg[5] , \shift_reg[6] , \shift_reg[7] ,
    \shift_reg[8] , \shift_reg[9] , \shift_reg[10] , \shift_reg[11] ,
    \shift_reg[12] , \shift_reg[13] , \shift_reg[14] , \shift_reg[15] ;
  wire new_n84, new_n85, new_n87_1, new_n89, new_n91, new_n93, new_n95,
    new_n97_1, new_n99, new_n101, new_n103, new_n105, new_n107_1, new_n109,
    new_n111, new_n113, new_n115, n72, n77, n82, n87, n92, n97, n102, n107,
    n112, n117, n122, n127, n132, n137, n142, n147;
  INVX1    g00(.A(rst), .Y(new_n84));
  MX2X1    g01(.A(\shift_reg[0] ), .B(\data_in[0] ), .S0(ena), .Y(new_n85));
  AND2X1   g02(.A(new_n85), .B(new_n84), .Y(n72));
  MX2X1    g03(.A(\shift_reg[1] ), .B(\shift_reg[0] ), .S0(ena), .Y(new_n87_1));
  AND2X1   g04(.A(new_n87_1), .B(new_n84), .Y(n77));
  MX2X1    g05(.A(\shift_reg[2] ), .B(\shift_reg[1] ), .S0(ena), .Y(new_n89));
  AND2X1   g06(.A(new_n89), .B(new_n84), .Y(n82));
  MX2X1    g07(.A(\shift_reg[3] ), .B(\shift_reg[2] ), .S0(ena), .Y(new_n91));
  AND2X1   g08(.A(new_n91), .B(new_n84), .Y(n87));
  MX2X1    g09(.A(\shift_reg[4] ), .B(\shift_reg[3] ), .S0(ena), .Y(new_n93));
  AND2X1   g10(.A(new_n93), .B(new_n84), .Y(n92));
  MX2X1    g11(.A(\shift_reg[5] ), .B(\shift_reg[4] ), .S0(ena), .Y(new_n95));
  AND2X1   g12(.A(new_n95), .B(new_n84), .Y(n97));
  MX2X1    g13(.A(\shift_reg[6] ), .B(\shift_reg[5] ), .S0(ena), .Y(new_n97_1));
  AND2X1   g14(.A(new_n97_1), .B(new_n84), .Y(n102));
  MX2X1    g15(.A(\shift_reg[7] ), .B(\shift_reg[6] ), .S0(ena), .Y(new_n99));
  AND2X1   g16(.A(new_n99), .B(new_n84), .Y(n107));
  MX2X1    g17(.A(\shift_reg[8] ), .B(\shift_reg[7] ), .S0(ena), .Y(new_n101));
  AND2X1   g18(.A(new_n101), .B(new_n84), .Y(n112));
  MX2X1    g19(.A(\shift_reg[9] ), .B(\shift_reg[8] ), .S0(ena), .Y(new_n103));
  AND2X1   g20(.A(new_n103), .B(new_n84), .Y(n117));
  MX2X1    g21(.A(\shift_reg[10] ), .B(\shift_reg[9] ), .S0(ena), .Y(new_n105));
  AND2X1   g22(.A(new_n105), .B(new_n84), .Y(n122));
  MX2X1    g23(.A(\shift_reg[11] ), .B(\shift_reg[10] ), .S0(ena), .Y(new_n107_1));
  AND2X1   g24(.A(new_n107_1), .B(new_n84), .Y(n127));
  MX2X1    g25(.A(\shift_reg[12] ), .B(\shift_reg[11] ), .S0(ena), .Y(new_n109));
  AND2X1   g26(.A(new_n109), .B(new_n84), .Y(n132));
  MX2X1    g27(.A(\shift_reg[13] ), .B(\shift_reg[12] ), .S0(ena), .Y(new_n111));
  AND2X1   g28(.A(new_n111), .B(new_n84), .Y(n137));
  MX2X1    g29(.A(\shift_reg[14] ), .B(\shift_reg[13] ), .S0(ena), .Y(new_n113));
  AND2X1   g30(.A(new_n113), .B(new_n84), .Y(n142));
  MX2X1    g31(.A(\shift_reg[15] ), .B(\shift_reg[14] ), .S0(ena), .Y(new_n115));
  AND2X1   g32(.A(new_n115), .B(new_n84), .Y(n147));
  BUFX1    g33(.A(\shift_reg[0] ), .Y(\data_out[0] ));
  BUFX1    g34(.A(\shift_reg[1] ), .Y(\data_out[1] ));
  BUFX1    g35(.A(\shift_reg[2] ), .Y(\data_out[2] ));
  BUFX1    g36(.A(\shift_reg[3] ), .Y(\data_out[3] ));
  BUFX1    g37(.A(\shift_reg[4] ), .Y(\data_out[4] ));
  BUFX1    g38(.A(\shift_reg[5] ), .Y(\data_out[5] ));
  BUFX1    g39(.A(\shift_reg[6] ), .Y(\data_out[6] ));
  BUFX1    g40(.A(\shift_reg[7] ), .Y(\data_out[7] ));
  BUFX1    g41(.A(\shift_reg[8] ), .Y(\data_out[8] ));
  BUFX1    g42(.A(\shift_reg[9] ), .Y(\data_out[9] ));
  BUFX1    g43(.A(\shift_reg[10] ), .Y(\data_out[10] ));
  BUFX1    g44(.A(\shift_reg[11] ), .Y(\data_out[11] ));
  BUFX1    g45(.A(\shift_reg[12] ), .Y(\data_out[12] ));
  BUFX1    g46(.A(\shift_reg[13] ), .Y(\data_out[13] ));
  BUFX1    g47(.A(\shift_reg[14] ), .Y(\data_out[14] ));
  BUFX1    g48(.A(\shift_reg[15] ), .Y(\data_out[15] ));
  always @ (posedge clock) begin
    \shift_reg[0]  <= n72;
    \shift_reg[1]  <= n77;
    \shift_reg[2]  <= n82;
    \shift_reg[3]  <= n87;
    \shift_reg[4]  <= n92;
    \shift_reg[5]  <= n97;
    \shift_reg[6]  <= n102;
    \shift_reg[7]  <= n107;
    \shift_reg[8]  <= n112;
    \shift_reg[9]  <= n117;
    \shift_reg[10]  <= n122;
    \shift_reg[11]  <= n127;
    \shift_reg[12]  <= n132;
    \shift_reg[13]  <= n137;
    \shift_reg[14]  <= n142;
    \shift_reg[15]  <= n147;
  end
endmodule


