// Benchmark "shift_register" written by ABC on Wed Jun 26 15:22:11 2024

module shift_register ( clock, 
    clk, load, \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] ,
    \in[6] , \in[7] , shift,
    \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7]   );
  input  clock;
  input  clk, load, \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] ,
    \in[6] , \in[7] , shift;
  output \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] ;
  reg \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] ;
  wire new_n44_1, new_n45, new_n46, new_n48_1, new_n50, new_n52_1, new_n54,
    new_n56_1, new_n58, new_n60_1, n40, n44, n48, n52, n56, n60, n64, n68;
  INVX1    g00(.A(\out[0] ), .Y(new_n44_1));
  OR2X1    g01(.A(shift), .B(load), .Y(new_n45));
  NAND2X1  g02(.A(\in[0] ), .B(load), .Y(new_n46));
  OAI21X1  g03(.A0(new_n45), .A1(new_n44_1), .B0(new_n46), .Y(n40));
  MX2X1    g04(.A(\out[1] ), .B(\out[0] ), .S0(shift), .Y(new_n48_1));
  MX2X1    g05(.A(new_n48_1), .B(\in[1] ), .S0(load), .Y(n44));
  MX2X1    g06(.A(\out[2] ), .B(\out[1] ), .S0(shift), .Y(new_n50));
  MX2X1    g07(.A(new_n50), .B(\in[2] ), .S0(load), .Y(n48));
  MX2X1    g08(.A(\out[3] ), .B(\out[2] ), .S0(shift), .Y(new_n52_1));
  MX2X1    g09(.A(new_n52_1), .B(\in[3] ), .S0(load), .Y(n52));
  MX2X1    g10(.A(\out[4] ), .B(\out[3] ), .S0(shift), .Y(new_n54));
  MX2X1    g11(.A(new_n54), .B(\in[4] ), .S0(load), .Y(n56));
  MX2X1    g12(.A(\out[5] ), .B(\out[4] ), .S0(shift), .Y(new_n56_1));
  MX2X1    g13(.A(new_n56_1), .B(\in[5] ), .S0(load), .Y(n60));
  MX2X1    g14(.A(\out[6] ), .B(\out[5] ), .S0(shift), .Y(new_n58));
  MX2X1    g15(.A(new_n58), .B(\in[6] ), .S0(load), .Y(n64));
  MX2X1    g16(.A(\out[7] ), .B(\out[6] ), .S0(shift), .Y(new_n60_1));
  MX2X1    g17(.A(new_n60_1), .B(\in[7] ), .S0(load), .Y(n68));
  always @ (posedge clock) begin
    \out[0]  <= n40;
    \out[1]  <= n44;
    \out[2]  <= n48;
    \out[3]  <= n52;
    \out[4]  <= n56;
    \out[5]  <= n60;
    \out[6]  <= n64;
    \out[7]  <= n68;
  end
endmodule


