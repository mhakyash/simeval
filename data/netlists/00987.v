// Benchmark "shift_register_4bit" written by ABC on Wed Jun 26 15:22:26 2024

module shift_register_4bit ( clock, 
    \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] , \C[0] ,
    \C[1] , \C[2] , \C[3] , \D[0] , \D[1] , \D[2] , \D[3] , load, clk,
    \Q[0] , \Q[1] , \Q[2] , \Q[3]   );
  input  clock;
  input  \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ,
    \C[0] , \C[1] , \C[2] , \C[3] , \D[0] , \D[1] , \D[2] , \D[3] , load,
    clk;
  output \Q[0] , \Q[1] , \Q[2] , \Q[3] ;
  reg \Q3[0] , \Q3[1] , \Q3[2] , \Q3[3] , \Q4[0] , \Q4[1] , \Q4[2] ,
    \Q4[3] , \Q1[0] , \Q1[1] , \Q1[2] , \Q1[3] , \Q2[0] , \Q2[1] , \Q2[2] ,
    \Q2[3] ;
  wire n46, n51, n56, n61, n66, n71, n76, n81, n86, n91, n96, n101, n106,
    n111, n116, n121;
  MX2X1    g00(.A(\Q4[0] ), .B(\C[0] ), .S0(load), .Y(n46));
  MX2X1    g01(.A(\Q4[1] ), .B(\C[1] ), .S0(load), .Y(n51));
  MX2X1    g02(.A(\Q4[2] ), .B(\C[2] ), .S0(load), .Y(n56));
  MX2X1    g03(.A(\Q4[3] ), .B(\C[3] ), .S0(load), .Y(n61));
  MX2X1    g04(.A(\Q1[0] ), .B(\D[0] ), .S0(load), .Y(n66));
  MX2X1    g05(.A(\Q1[1] ), .B(\D[1] ), .S0(load), .Y(n71));
  MX2X1    g06(.A(\Q1[2] ), .B(\D[2] ), .S0(load), .Y(n76));
  MX2X1    g07(.A(\Q1[3] ), .B(\D[3] ), .S0(load), .Y(n81));
  MX2X1    g08(.A(\Q2[0] ), .B(\A[0] ), .S0(load), .Y(n86));
  MX2X1    g09(.A(\Q2[1] ), .B(\A[1] ), .S0(load), .Y(n91));
  MX2X1    g10(.A(\Q2[2] ), .B(\A[2] ), .S0(load), .Y(n96));
  MX2X1    g11(.A(\Q2[3] ), .B(\A[3] ), .S0(load), .Y(n101));
  MX2X1    g12(.A(\Q3[0] ), .B(\B[0] ), .S0(load), .Y(n106));
  MX2X1    g13(.A(\Q3[1] ), .B(\B[1] ), .S0(load), .Y(n111));
  MX2X1    g14(.A(\Q3[2] ), .B(\B[2] ), .S0(load), .Y(n116));
  MX2X1    g15(.A(\Q3[3] ), .B(\B[3] ), .S0(load), .Y(n121));
  BUFX1    g16(.A(\Q1[0] ), .Y(\Q[0] ));
  BUFX1    g17(.A(\Q1[1] ), .Y(\Q[1] ));
  BUFX1    g18(.A(\Q1[2] ), .Y(\Q[2] ));
  BUFX1    g19(.A(\Q1[3] ), .Y(\Q[3] ));
  always @ (posedge clock) begin
    \Q3[0]  <= n46;
    \Q3[1]  <= n51;
    \Q3[2]  <= n56;
    \Q3[3]  <= n61;
    \Q4[0]  <= n66;
    \Q4[1]  <= n71;
    \Q4[2]  <= n76;
    \Q4[3]  <= n81;
    \Q1[0]  <= n86;
    \Q1[1]  <= n91;
    \Q1[2]  <= n96;
    \Q1[3]  <= n101;
    \Q2[0]  <= n106;
    \Q2[1]  <= n111;
    \Q2[2]  <= n116;
    \Q2[3]  <= n121;
  end
endmodule


