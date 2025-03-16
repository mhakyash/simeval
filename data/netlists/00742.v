// Benchmark "non_restoring_divider" written by ABC on Wed Jun 26 15:22:18 2024

module non_restoring_divider ( clock, 
    clk, start, \dividend[0] , \dividend[1] , \dividend[2] , \dividend[3] ,
    \dividend[4] , \dividend[5] , \dividend[6] , \dividend[7] ,
    \divisor[0] , \divisor[1] , \divisor[2] , \divisor[3] , \divisor[4] ,
    \divisor[5] , \divisor[6] , \divisor[7] ,
    done, \quotient[0] , \quotient[1] , \quotient[2] , \quotient[3] ,
    \quotient[4] , \quotient[5] , \quotient[6] , \quotient[7] ,
    \remainder[0] , \remainder[1] , \remainder[2] , \remainder[3] ,
    \remainder[4] , \remainder[5] , \remainder[6] , \remainder[7]   );
  input  clock;
  input  clk, start, \dividend[0] , \dividend[1] , \dividend[2] ,
    \dividend[3] , \dividend[4] , \dividend[5] , \dividend[6] ,
    \dividend[7] , \divisor[0] , \divisor[1] , \divisor[2] , \divisor[3] ,
    \divisor[4] , \divisor[5] , \divisor[6] , \divisor[7] ;
  output done, \quotient[0] , \quotient[1] , \quotient[2] , \quotient[3] ,
    \quotient[4] , \quotient[5] , \quotient[6] , \quotient[7] ,
    \remainder[0] , \remainder[1] , \remainder[2] , \remainder[3] ,
    \remainder[4] , \remainder[5] , \remainder[6] , \remainder[7] ;
  reg \state[0] , \state[1] , \quotient[0] , \quotient[1] , \quotient[2] ,
    \quotient[3] , \quotient[4] , \quotient[5] , \quotient[6] ,
    \quotient[7] , \remainder[0] , \remainder[1] , \remainder[2] ,
    \remainder[3] , \remainder[4] , \remainder[5] , \remainder[6] ,
    \remainder[7] , \quotient_reg[0] , \quotient_reg[1] ,
    \quotient_reg[2] , \quotient_reg[3] , \quotient_reg[4] ,
    \quotient_reg[5] , \quotient_reg[6] , \quotient_reg[7] ;
  wire new_n123, new_n139, new_n140_1, new_n141, n72, n76, n80, n84, n88,
    n92, n96, n100, n104, n108, n112, n116, n120, n124, n128, n132, n136,
    n140, n144, n149, n154, n159, n164, n169, n174, n179;
  MX2X1    g00(.A(\quotient[0] ), .B(\quotient_reg[0] ), .S0(\state[0] ), .Y(n80));
  MX2X1    g01(.A(\quotient[1] ), .B(\quotient_reg[1] ), .S0(\state[0] ), .Y(n84));
  MX2X1    g02(.A(\quotient[2] ), .B(\quotient_reg[2] ), .S0(\state[0] ), .Y(n88));
  MX2X1    g03(.A(\quotient[3] ), .B(\quotient_reg[3] ), .S0(\state[0] ), .Y(n92));
  MX2X1    g04(.A(\quotient[4] ), .B(\quotient_reg[4] ), .S0(\state[0] ), .Y(n96));
  MX2X1    g05(.A(\quotient[5] ), .B(\quotient_reg[5] ), .S0(\state[0] ), .Y(n100));
  MX2X1    g06(.A(\quotient[6] ), .B(\quotient_reg[6] ), .S0(\state[0] ), .Y(n104));
  MX2X1    g07(.A(\quotient[7] ), .B(\quotient_reg[7] ), .S0(\state[0] ), .Y(n108));
  INVX1    g08(.A(\state[0] ), .Y(new_n123));
  AND2X1   g09(.A(\remainder[0] ), .B(new_n123), .Y(n112));
  AND2X1   g10(.A(\remainder[1] ), .B(new_n123), .Y(n116));
  AND2X1   g11(.A(\remainder[2] ), .B(new_n123), .Y(n120));
  AND2X1   g12(.A(\remainder[3] ), .B(new_n123), .Y(n124));
  AND2X1   g13(.A(\remainder[4] ), .B(new_n123), .Y(n128));
  AND2X1   g14(.A(\remainder[5] ), .B(new_n123), .Y(n132));
  AND2X1   g15(.A(\remainder[6] ), .B(new_n123), .Y(n136));
  AND2X1   g16(.A(\remainder[7] ), .B(new_n123), .Y(n140));
  MX2X1    g17(.A(\quotient_reg[0] ), .B(\quotient_reg[7] ), .S0(\state[0] ), .Y(n144));
  MX2X1    g18(.A(\quotient_reg[1] ), .B(\quotient_reg[0] ), .S0(\state[0] ), .Y(n149));
  MX2X1    g19(.A(\quotient_reg[2] ), .B(\quotient_reg[1] ), .S0(\state[0] ), .Y(n154));
  MX2X1    g20(.A(\quotient_reg[3] ), .B(\quotient_reg[2] ), .S0(\state[0] ), .Y(n159));
  MX2X1    g21(.A(\quotient_reg[4] ), .B(\quotient_reg[3] ), .S0(\state[0] ), .Y(n164));
  MX2X1    g22(.A(\quotient_reg[5] ), .B(\quotient_reg[4] ), .S0(\state[0] ), .Y(n169));
  MX2X1    g23(.A(\quotient_reg[6] ), .B(\quotient_reg[5] ), .S0(\state[0] ), .Y(n174));
  INVX1    g24(.A(\quotient_reg[7] ), .Y(new_n139));
  OR2X1    g25(.A(\state[1] ), .B(\state[0] ), .Y(new_n140_1));
  AOI21X1  g26(.A0(\quotient_reg[6] ), .A1(\state[0] ), .B0(\state[1] ), .Y(new_n141));
  OAI21X1  g27(.A0(new_n140_1), .A1(new_n139), .B0(new_n141), .Y(n179));
  ONE      g28(.Y(done));
  BUFX1    g29(.A(\state[1] ), .Y(n72));
  BUFX1    g30(.A(\state[0] ), .Y(n76));
  always @ (posedge clock) begin
    \state[0]  <= n72;
    \state[1]  <= n76;
    \quotient[0]  <= n80;
    \quotient[1]  <= n84;
    \quotient[2]  <= n88;
    \quotient[3]  <= n92;
    \quotient[4]  <= n96;
    \quotient[5]  <= n100;
    \quotient[6]  <= n104;
    \quotient[7]  <= n108;
    \remainder[0]  <= n112;
    \remainder[1]  <= n116;
    \remainder[2]  <= n120;
    \remainder[3]  <= n124;
    \remainder[4]  <= n128;
    \remainder[5]  <= n132;
    \remainder[6]  <= n136;
    \remainder[7]  <= n140;
    \quotient_reg[0]  <= n144;
    \quotient_reg[1]  <= n149;
    \quotient_reg[2]  <= n154;
    \quotient_reg[3]  <= n159;
    \quotient_reg[4]  <= n164;
    \quotient_reg[5]  <= n169;
    \quotient_reg[6]  <= n174;
    \quotient_reg[7]  <= n179;
  end
endmodule


