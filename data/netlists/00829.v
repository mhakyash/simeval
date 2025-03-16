// Benchmark "edge_detector" written by ABC on Wed Jun 26 15:22:21 2024

module edge_detector ( clock, 
    clk, \d[0] , \d[1] , \d[2] , \d[3] , \d[4] , \d[5] , \d[6] , \d[7] ,
    \edge[0] , \edge[1] , \edge[2] , \edge[3] , \edge[4] , \edge[5] ,
    \edge[6] , \edge[7]   );
  input  clock;
  input  clk, \d[0] , \d[1] , \d[2] , \d[3] , \d[4] , \d[5] , \d[6] ,
    \d[7] ;
  output \edge[0] , \edge[1] , \edge[2] , \edge[3] , \edge[4] , \edge[5] ,
    \edge[6] , \edge[7] ;
  reg \edge[0] , \edge[1] , \edge[2] , \edge[3] , \edge[4] , \edge[5] ,
    \edge[6] , \edge[7] ;
  wire new_n42, new_n44_1, new_n46, new_n48_1, new_n50, new_n52_1, new_n54,
    new_n56_1, n36, n40, n44, n48, n52, n56, n60, n64;
  INVX1    g00(.A(\edge[0] ), .Y(new_n42));
  AND2X1   g01(.A(new_n42), .B(\d[0] ), .Y(n36));
  INVX1    g02(.A(\edge[1] ), .Y(new_n44_1));
  AND2X1   g03(.A(new_n44_1), .B(\d[1] ), .Y(n40));
  INVX1    g04(.A(\edge[2] ), .Y(new_n46));
  AND2X1   g05(.A(new_n46), .B(\d[2] ), .Y(n44));
  INVX1    g06(.A(\edge[3] ), .Y(new_n48_1));
  AND2X1   g07(.A(new_n48_1), .B(\d[3] ), .Y(n48));
  INVX1    g08(.A(\edge[4] ), .Y(new_n50));
  AND2X1   g09(.A(new_n50), .B(\d[4] ), .Y(n52));
  INVX1    g10(.A(\edge[5] ), .Y(new_n52_1));
  AND2X1   g11(.A(new_n52_1), .B(\d[5] ), .Y(n56));
  INVX1    g12(.A(\edge[6] ), .Y(new_n54));
  AND2X1   g13(.A(new_n54), .B(\d[6] ), .Y(n60));
  INVX1    g14(.A(\edge[7] ), .Y(new_n56_1));
  AND2X1   g15(.A(new_n56_1), .B(\d[7] ), .Y(n64));
  always @ (posedge clock) begin
    \edge[0]  <= n36;
    \edge[1]  <= n40;
    \edge[2]  <= n44;
    \edge[3]  <= n48;
    \edge[4]  <= n52;
    \edge[5]  <= n56;
    \edge[6]  <= n60;
    \edge[7]  <= n64;
  end
endmodule


