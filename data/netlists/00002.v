// Benchmark "priority_encoder" written by ABC on Wed Jun 26 15:21:57 2024

module priority_encoder ( clock, 
    \I[0] , \I[1] , \I[2] , \I[3] ,
    \O[0] , \O[1]   );
  input  clock;
  input  \I[0] , \I[1] , \I[2] , \I[3] ;
  output \O[0] , \O[1] ;
  reg \stage2_out[0] , \stage2_out[1] ;
  wire new_n13, new_n14_1, new_n15, new_n16, new_n17, new_n20, new_n21,
    new_n22, n14, n19;
  INVX1    g00(.A(\I[3] ), .Y(new_n13));
  OR4X1    g01(.A(new_n13), .B(\I[2] ), .C(\I[1] ), .D(\I[0] ), .Y(new_n14_1));
  INVX1    g02(.A(\I[1] ), .Y(new_n15));
  OR4X1    g03(.A(\I[3] ), .B(\I[2] ), .C(new_n15), .D(\I[0] ), .Y(new_n16));
  INVX1    g04(.A(\I[2] ), .Y(new_n17));
  NAND2X1  g05(.A(new_n16), .B(new_n14_1), .Y(n14));
  OR4X1    g06(.A(\I[3] ), .B(new_n17), .C(\I[1] ), .D(\I[0] ), .Y(new_n20));
  NAND2X1  g07(.A(new_n20), .B(new_n14_1), .Y(new_n21));
  NAND3X1  g08(.A(new_n20), .B(new_n16), .C(new_n14_1), .Y(new_n22));
  AND2X1   g09(.A(new_n22), .B(new_n21), .Y(n19));
  BUFX1    g10(.A(\stage2_out[0] ), .Y(\O[0] ));
  BUFX1    g11(.A(\stage2_out[1] ), .Y(\O[1] ));
  always @ (posedge clock) begin
    \stage2_out[0]  <= n14;
    \stage2_out[1]  <= n19;
  end
endmodule


