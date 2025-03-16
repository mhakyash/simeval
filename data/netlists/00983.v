// Benchmark "dff_reset" written by ABC on Wed Jun 26 15:22:26 2024

module dff_reset ( clock, 
    clk, reset, \d[0] , \d[1] , \d[2] , \d[3] , \d[4] , \d[5] , \d[6] ,
    \d[7] ,
    \q[0] , \q[1] , \q[2] , \q[3] , \q[4] , \q[5] , \q[6] , \q[7]   );
  input  clock;
  input  clk, reset, \d[0] , \d[1] , \d[2] , \d[3] , \d[4] , \d[5] ,
    \d[6] , \d[7] ;
  output \q[0] , \q[1] , \q[2] , \q[3] , \q[4] , \q[5] , \q[6] , \q[7] ;
  reg \q[0] , \q[1] , \q[2] , \q[3] , \q[4] , \q[5] , \q[6] , \q[7] ;
  wire new_n43, n38, n42, n46, n50, n54, n58, n62, n66;
  INVX1    g0(.A(reset), .Y(new_n43));
  AND2X1   g1(.A(\d[0] ), .B(new_n43), .Y(n38));
  OR2X1    g2(.A(\d[1] ), .B(reset), .Y(n42));
  AND2X1   g3(.A(\d[2] ), .B(new_n43), .Y(n46));
  OR2X1    g4(.A(\d[3] ), .B(reset), .Y(n50));
  OR2X1    g5(.A(\d[4] ), .B(reset), .Y(n54));
  AND2X1   g6(.A(\d[5] ), .B(new_n43), .Y(n58));
  OR2X1    g7(.A(\d[6] ), .B(reset), .Y(n62));
  AND2X1   g8(.A(\d[7] ), .B(new_n43), .Y(n66));
  always @ (posedge clock) begin
    \q[0]  <= n38;
    \q[1]  <= n42;
    \q[2]  <= n46;
    \q[3]  <= n50;
    \q[4]  <= n54;
    \q[5]  <= n58;
    \q[6]  <= n62;
    \q[7]  <= n66;
  end
endmodule


