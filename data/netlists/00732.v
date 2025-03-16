// Benchmark "priority_encoder" written by ABC on Wed Jun 26 15:22:18 2024

module priority_encoder ( clock, 
    \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] , \in[6] , \in[7] ,
    \pos[0] , \pos[1] , \out_sel[0] , \out_sel[1] , \out_sel[2] ,
    \out_sel[3]   );
  input  clock;
  input  \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] , \in[6] ,
    \in[7] ;
  output \pos[0] , \pos[1] , \out_sel[0] , \out_sel[1] , \out_sel[2] ,
    \out_sel[3] ;
  reg \out_sel[0] , \out_sel[1] , \out_sel[2] , \out_sel[3] , \in_reg4[7] ,
    \in_reg2[7] , \in_reg3[7] , \pos[1] , \in_reg1[7] ;
  wire new_n42_1, new_n44, new_n46_1, n30, n34, n38, n42, n46, n50, n54, n58,
    n61;
  INVX1    g00(.A(\in_reg4[7] ), .Y(new_n42_1));
  AND2X1   g01(.A(\in_reg3[7] ), .B(new_n42_1), .Y(n34));
  INVX1    g02(.A(\in_reg2[7] ), .Y(new_n44));
  NOR3X1   g03(.A(\in_reg3[7] ), .B(new_n44), .C(\in_reg4[7] ), .Y(n38));
  INVX1    g04(.A(\in_reg1[7] ), .Y(new_n46_1));
  NOR4X1   g05(.A(new_n46_1), .B(\in_reg3[7] ), .C(\in_reg2[7] ), .D(\in_reg4[7] ), .Y(n42));
  OR2X1    g06(.A(\in_reg3[7] ), .B(\in_reg4[7] ), .Y(n58));
  BUFX1    g07(.A(\out_sel[0] ), .Y(\pos[0] ));
  BUFX1    g08(.A(\in_reg4[7] ), .Y(n30));
  BUFX1    g09(.A(\in_reg3[7] ), .Y(n46));
  BUFX1    g10(.A(\in_reg1[7] ), .Y(n50));
  BUFX1    g11(.A(\in_reg2[7] ), .Y(n54));
  BUFX1    g12(.A(\in[7] ), .Y(n61));
  always @ (posedge clock) begin
    \out_sel[0]  <= n30;
    \out_sel[1]  <= n34;
    \out_sel[2]  <= n38;
    \out_sel[3]  <= n42;
    \in_reg4[7]  <= n46;
    \in_reg2[7]  <= n50;
    \in_reg3[7]  <= n54;
    \pos[1]  <= n58;
    \in_reg1[7]  <= n61;
  end
endmodule


