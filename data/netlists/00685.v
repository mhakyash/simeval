// Benchmark "shift_register" written by ABC on Wed Jun 26 15:22:17 2024

module shift_register ( clock, 
    clk, \in[0] , \in[1] , \in[2] , \in[3] , load,
    \out[0] , \out[1] , \out[2] , \out[3] , valid  );
  input  clock;
  input  clk, \in[0] , \in[1] , \in[2] , \in[3] , load;
  output \out[0] , \out[1] , \out[2] , \out[3] , valid;
  reg \reg2[0] , \reg2[1] , \reg2[2] , \reg2[3] , \reg3[0] , \reg3[1] ,
    \reg3[2] , \reg3[3] , \reg4[0] , \reg4[1] , \reg4[2] , \reg4[3] ,
    valid, \reg1[0] , \reg1[1] , \reg1[2] , \reg1[3] ;
  wire n24, n29, n34, n39, n44, n49, n54, n59, n64, n69, n74, n79, n83, n87,
    n92, n97, n102;
  MX2X1    g00(.A(\reg3[0] ), .B(\reg1[0] ), .S0(load), .Y(n24));
  MX2X1    g01(.A(\reg3[1] ), .B(\reg1[1] ), .S0(load), .Y(n29));
  MX2X1    g02(.A(\reg3[2] ), .B(\reg1[2] ), .S0(load), .Y(n34));
  MX2X1    g03(.A(\reg3[3] ), .B(\reg1[3] ), .S0(load), .Y(n39));
  MX2X1    g04(.A(\reg4[0] ), .B(\reg2[0] ), .S0(load), .Y(n44));
  MX2X1    g05(.A(\reg4[1] ), .B(\reg2[1] ), .S0(load), .Y(n49));
  MX2X1    g06(.A(\reg4[2] ), .B(\reg2[2] ), .S0(load), .Y(n54));
  MX2X1    g07(.A(\reg4[3] ), .B(\reg2[3] ), .S0(load), .Y(n59));
  AND2X1   g08(.A(\reg3[0] ), .B(load), .Y(n64));
  AND2X1   g09(.A(\reg3[1] ), .B(load), .Y(n69));
  AND2X1   g10(.A(\reg3[2] ), .B(load), .Y(n74));
  AND2X1   g11(.A(\reg3[3] ), .B(load), .Y(n79));
  MX2X1    g12(.A(\reg2[0] ), .B(\in[0] ), .S0(load), .Y(n87));
  MX2X1    g13(.A(\reg2[1] ), .B(\in[1] ), .S0(load), .Y(n92));
  MX2X1    g14(.A(\reg2[2] ), .B(\in[2] ), .S0(load), .Y(n97));
  MX2X1    g15(.A(\reg2[3] ), .B(\in[3] ), .S0(load), .Y(n102));
  BUFX1    g16(.A(\reg4[0] ), .Y(\out[0] ));
  BUFX1    g17(.A(\reg4[1] ), .Y(\out[1] ));
  BUFX1    g18(.A(\reg4[2] ), .Y(\out[2] ));
  BUFX1    g19(.A(\reg4[3] ), .Y(\out[3] ));
  BUFX1    g20(.A(load), .Y(n83));
  always @ (posedge clock) begin
    \reg2[0]  <= n24;
    \reg2[1]  <= n29;
    \reg2[2]  <= n34;
    \reg2[3]  <= n39;
    \reg3[0]  <= n44;
    \reg3[1]  <= n49;
    \reg3[2]  <= n54;
    \reg3[3]  <= n59;
    \reg4[0]  <= n64;
    \reg4[1]  <= n69;
    \reg4[2]  <= n74;
    \reg4[3]  <= n79;
    valid <= n83;
    \reg1[0]  <= n87;
    \reg1[1]  <= n92;
    \reg1[2]  <= n97;
    \reg1[3]  <= n102;
  end
endmodule


