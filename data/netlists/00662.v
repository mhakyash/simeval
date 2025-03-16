// Benchmark "shift_register_incrementer_xor" written by ABC on Wed Jun 26 15:22:16 2024

module shift_register_incrementer_xor ( clock, 
    clk, reset, \d[0] , \d[1] , \d[2] , \d[3] , \d[4] , \d[5] , \d[6] ,
    \d[7] , select,
    \q[0] , \q[1] , \q[2] , \q[3] , \q[4] , \q[5] , \q[6] , \q[7] ,
    \ena[0] , \ena[1] , \ena[2] , \ena[3] , \c[0] , \c[1] , \c[2] , \c[3] ,
    \f[0] , \f[1] , \f[2] , \f[3] , \f[4] , \f[5] , \f[6] , \f[7]   );
  input  clock;
  input  clk, reset, \d[0] , \d[1] , \d[2] , \d[3] , \d[4] , \d[5] ,
    \d[6] , \d[7] , select;
  output \q[0] , \q[1] , \q[2] , \q[3] , \q[4] , \q[5] , \q[6] , \q[7] ,
    \ena[0] , \ena[1] , \ena[2] , \ena[3] , \c[0] , \c[1] , \c[2] , \c[3] ,
    \f[0] , \f[1] , \f[2] , \f[3] , \f[4] , \f[5] , \f[6] , \f[7] ;
  reg \c[0] , \c[1] , \c[2] , \c[3] , \shift_reg[0] , \shift_reg[1] ,
    \shift_reg[2] , \shift_reg[3] , \shift_reg[4] , \shift_reg[5] ,
    \shift_reg[6] , \shift_reg[7] , \counter[0] , \counter[1] ,
    \counter[2] , \counter[3] ;
  wire new_n100, new_n101, new_n103_1, new_n105, new_n107, new_n109,
    new_n111, new_n113_1, new_n115, new_n118_1, new_n119, new_n120,
    new_n122, new_n123_1, new_n125, new_n126, new_n127, n72, n76, n80, n84,
    n88, n93, n98, n103, n108, n113, n118, n123, n128, n133, n138, n143;
  XOR2X1   g00(.A(\counter[0] ), .B(\shift_reg[0] ), .Y(\f[0] ));
  XOR2X1   g01(.A(\counter[1] ), .B(\shift_reg[1] ), .Y(\f[1] ));
  XOR2X1   g02(.A(\counter[2] ), .B(\shift_reg[2] ), .Y(\f[2] ));
  XOR2X1   g03(.A(\counter[3] ), .B(\shift_reg[3] ), .Y(\f[3] ));
  XOR2X1   g04(.A(\counter[0] ), .B(\shift_reg[4] ), .Y(\f[4] ));
  XOR2X1   g05(.A(\counter[1] ), .B(\shift_reg[5] ), .Y(\f[5] ));
  XOR2X1   g06(.A(\counter[2] ), .B(\shift_reg[6] ), .Y(\f[6] ));
  XOR2X1   g07(.A(\counter[3] ), .B(\shift_reg[7] ), .Y(\f[7] ));
  MX2X1    g08(.A(\counter[0] ), .B(\c[0] ), .S0(reset), .Y(n72));
  MX2X1    g09(.A(\counter[1] ), .B(\c[1] ), .S0(reset), .Y(n76));
  MX2X1    g10(.A(\counter[2] ), .B(\c[2] ), .S0(reset), .Y(n80));
  MX2X1    g11(.A(\counter[3] ), .B(\c[3] ), .S0(reset), .Y(n84));
  INVX1    g12(.A(reset), .Y(new_n100));
  MX2X1    g13(.A(\shift_reg[1] ), .B(\d[0] ), .S0(select), .Y(new_n101));
  AND2X1   g14(.A(new_n101), .B(new_n100), .Y(n88));
  MX2X1    g15(.A(\shift_reg[2] ), .B(\d[1] ), .S0(select), .Y(new_n103_1));
  AND2X1   g16(.A(new_n103_1), .B(new_n100), .Y(n93));
  MX2X1    g17(.A(\shift_reg[3] ), .B(\d[2] ), .S0(select), .Y(new_n105));
  AND2X1   g18(.A(new_n105), .B(new_n100), .Y(n98));
  MX2X1    g19(.A(\shift_reg[4] ), .B(\d[3] ), .S0(select), .Y(new_n107));
  AND2X1   g20(.A(new_n107), .B(new_n100), .Y(n103));
  MX2X1    g21(.A(\shift_reg[5] ), .B(\d[4] ), .S0(select), .Y(new_n109));
  AND2X1   g22(.A(new_n109), .B(new_n100), .Y(n108));
  MX2X1    g23(.A(\shift_reg[6] ), .B(\d[5] ), .S0(select), .Y(new_n111));
  AND2X1   g24(.A(new_n111), .B(new_n100), .Y(n113));
  MX2X1    g25(.A(\shift_reg[7] ), .B(\d[6] ), .S0(select), .Y(new_n113_1));
  AND2X1   g26(.A(new_n113_1), .B(new_n100), .Y(n118));
  MX2X1    g27(.A(\d[0] ), .B(\d[7] ), .S0(select), .Y(new_n115));
  AND2X1   g28(.A(new_n115), .B(new_n100), .Y(n123));
  NOR2X1   g29(.A(\counter[0] ), .B(reset), .Y(n128));
  XOR2X1   g30(.A(\counter[1] ), .B(\counter[0] ), .Y(new_n118_1));
  NAND4X1  g31(.A(\counter[3] ), .B(\counter[2] ), .C(\counter[1] ), .D(\counter[0] ), .Y(new_n119));
  AND2X1   g32(.A(new_n119), .B(new_n100), .Y(new_n120));
  AND2X1   g33(.A(new_n120), .B(new_n118_1), .Y(n133));
  AND2X1   g34(.A(\counter[1] ), .B(\counter[0] ), .Y(new_n122));
  XOR2X1   g35(.A(new_n122), .B(\counter[2] ), .Y(new_n123_1));
  AND2X1   g36(.A(new_n123_1), .B(new_n120), .Y(n138));
  INVX1    g37(.A(\counter[3] ), .Y(new_n125));
  NAND3X1  g38(.A(\counter[2] ), .B(\counter[1] ), .C(\counter[0] ), .Y(new_n126));
  XOR2X1   g39(.A(new_n126), .B(new_n125), .Y(new_n127));
  AND2X1   g40(.A(new_n127), .B(new_n120), .Y(n143));
  ONE      g41(.Y(\ena[0] ));
  ONE      g42(.Y(\ena[1] ));
  ONE      g43(.Y(\ena[2] ));
  ONE      g44(.Y(\ena[3] ));
  BUFX1    g45(.A(\shift_reg[0] ), .Y(\q[0] ));
  BUFX1    g46(.A(\shift_reg[1] ), .Y(\q[1] ));
  BUFX1    g47(.A(\shift_reg[2] ), .Y(\q[2] ));
  BUFX1    g48(.A(\shift_reg[3] ), .Y(\q[3] ));
  BUFX1    g49(.A(\shift_reg[4] ), .Y(\q[4] ));
  BUFX1    g50(.A(\shift_reg[5] ), .Y(\q[5] ));
  BUFX1    g51(.A(\shift_reg[6] ), .Y(\q[6] ));
  BUFX1    g52(.A(\shift_reg[7] ), .Y(\q[7] ));
  always @ (posedge clock) begin
    \c[0]  <= n72;
    \c[1]  <= n76;
    \c[2]  <= n80;
    \c[3]  <= n84;
    \shift_reg[0]  <= n88;
    \shift_reg[1]  <= n93;
    \shift_reg[2]  <= n98;
    \shift_reg[3]  <= n103;
    \shift_reg[4]  <= n108;
    \shift_reg[5]  <= n113;
    \shift_reg[6]  <= n118;
    \shift_reg[7]  <= n123;
    \counter[0]  <= n128;
    \counter[1]  <= n133;
    \counter[2]  <= n138;
    \counter[3]  <= n143;
  end
endmodule


