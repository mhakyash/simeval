// Benchmark "decade_counter_pipeline" written by ABC on Wed Jun 26 15:22:02 2024

module decade_counter_pipeline ( clock, 
    clk, slowena, reset,
    \q[0] , \q[1] , \q[2] , \q[3]   );
  input  clock;
  input  clk, slowena, reset;
  output \q[0] , \q[1] , \q[2] , \q[3] ;
  reg \q_pipeline3[0] , \q_pipeline3[1] , \q_pipeline3[2] ,
    \q_pipeline3[3] , \q_pipeline1[0] , \q_pipeline1[1] , \q_pipeline1[2] ,
    \q_pipeline1[3] , \q_pipeline2[0] , \q_pipeline2[1] , \q_pipeline2[2] ,
    \q_pipeline2[3] , \q[0] , \q[1] , \q[2] , \q[3] ;
  wire new_n56_1, new_n57, new_n59, new_n61_1, new_n63, new_n65, new_n67,
    new_n69, new_n71_1, new_n73, new_n75, new_n77, new_n79, new_n81,
    new_n83, new_n84_1, new_n86, new_n87, new_n88_1, new_n90, new_n91,
    new_n92, new_n93, n16, n21, n26, n31, n36, n41, n46, n51, n56, n61,
    n66, n71, n76, n80, n84, n88;
  INVX1    g00(.A(reset), .Y(new_n56_1));
  MX2X1    g01(.A(\q_pipeline2[0] ), .B(\q_pipeline3[0] ), .S0(slowena), .Y(new_n57));
  AND2X1   g02(.A(new_n57), .B(new_n56_1), .Y(n16));
  MX2X1    g03(.A(\q_pipeline2[1] ), .B(\q_pipeline3[1] ), .S0(slowena), .Y(new_n59));
  AND2X1   g04(.A(new_n59), .B(new_n56_1), .Y(n21));
  MX2X1    g05(.A(\q_pipeline2[2] ), .B(\q_pipeline3[2] ), .S0(slowena), .Y(new_n61_1));
  AND2X1   g06(.A(new_n61_1), .B(new_n56_1), .Y(n26));
  MX2X1    g07(.A(\q_pipeline2[3] ), .B(\q_pipeline3[3] ), .S0(slowena), .Y(new_n63));
  AND2X1   g08(.A(new_n63), .B(new_n56_1), .Y(n31));
  MX2X1    g09(.A(\q[0] ), .B(\q_pipeline1[0] ), .S0(slowena), .Y(new_n65));
  AND2X1   g10(.A(new_n65), .B(new_n56_1), .Y(n36));
  MX2X1    g11(.A(\q[1] ), .B(\q_pipeline1[1] ), .S0(slowena), .Y(new_n67));
  AND2X1   g12(.A(new_n67), .B(new_n56_1), .Y(n41));
  MX2X1    g13(.A(\q[2] ), .B(\q_pipeline1[2] ), .S0(slowena), .Y(new_n69));
  AND2X1   g14(.A(new_n69), .B(new_n56_1), .Y(n46));
  MX2X1    g15(.A(\q[3] ), .B(\q_pipeline1[3] ), .S0(slowena), .Y(new_n71_1));
  AND2X1   g16(.A(new_n71_1), .B(new_n56_1), .Y(n51));
  MX2X1    g17(.A(\q_pipeline1[0] ), .B(\q_pipeline2[0] ), .S0(slowena), .Y(new_n73));
  AND2X1   g18(.A(new_n73), .B(new_n56_1), .Y(n56));
  MX2X1    g19(.A(\q_pipeline1[1] ), .B(\q_pipeline2[1] ), .S0(slowena), .Y(new_n75));
  AND2X1   g20(.A(new_n75), .B(new_n56_1), .Y(n61));
  MX2X1    g21(.A(\q_pipeline1[2] ), .B(\q_pipeline2[2] ), .S0(slowena), .Y(new_n77));
  AND2X1   g22(.A(new_n77), .B(new_n56_1), .Y(n66));
  MX2X1    g23(.A(\q_pipeline1[3] ), .B(\q_pipeline2[3] ), .S0(slowena), .Y(new_n79));
  AND2X1   g24(.A(new_n79), .B(new_n56_1), .Y(n71));
  XOR2X1   g25(.A(\q_pipeline3[0] ), .B(slowena), .Y(new_n81));
  NOR2X1   g26(.A(new_n81), .B(reset), .Y(n76));
  XOR2X1   g27(.A(\q_pipeline3[1] ), .B(\q_pipeline3[0] ), .Y(new_n83));
  MX2X1    g28(.A(new_n83), .B(\q_pipeline3[1] ), .S0(slowena), .Y(new_n84_1));
  AND2X1   g29(.A(new_n84_1), .B(new_n56_1), .Y(n80));
  AND2X1   g30(.A(\q_pipeline3[1] ), .B(\q_pipeline3[0] ), .Y(new_n86));
  XOR2X1   g31(.A(new_n86), .B(\q_pipeline3[2] ), .Y(new_n87));
  MX2X1    g32(.A(new_n87), .B(\q_pipeline3[2] ), .S0(slowena), .Y(new_n88_1));
  AND2X1   g33(.A(new_n88_1), .B(new_n56_1), .Y(n84));
  INVX1    g34(.A(\q_pipeline3[3] ), .Y(new_n90));
  NAND3X1  g35(.A(\q_pipeline3[2] ), .B(\q_pipeline3[1] ), .C(\q_pipeline3[0] ), .Y(new_n91));
  XOR2X1   g36(.A(new_n91), .B(new_n90), .Y(new_n92));
  MX2X1    g37(.A(new_n92), .B(\q_pipeline3[3] ), .S0(slowena), .Y(new_n93));
  AND2X1   g38(.A(new_n93), .B(new_n56_1), .Y(n88));
  always @ (posedge clock) begin
    \q_pipeline3[0]  <= n16;
    \q_pipeline3[1]  <= n21;
    \q_pipeline3[2]  <= n26;
    \q_pipeline3[3]  <= n31;
    \q_pipeline1[0]  <= n36;
    \q_pipeline1[1]  <= n41;
    \q_pipeline1[2]  <= n46;
    \q_pipeline1[3]  <= n51;
    \q_pipeline2[0]  <= n56;
    \q_pipeline2[1]  <= n61;
    \q_pipeline2[2]  <= n66;
    \q_pipeline2[3]  <= n71;
    \q[0]  <= n76;
    \q[1]  <= n80;
    \q[2]  <= n84;
    \q[3]  <= n88;
  end
endmodule


