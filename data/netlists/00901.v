// Benchmark "ones_complement" written by ABC on Wed Jun 26 15:22:23 2024

module ones_complement ( clock, 
    \binary[0] , \binary[1] , \binary[2] , \binary[3] ,
    \ones_comp[0] , \ones_comp[1] , \ones_comp[2] , \ones_comp[3]   );
  input  clock;
  input  \binary[0] , \binary[1] , \binary[2] , \binary[3] ;
  output \ones_comp[0] , \ones_comp[1] , \ones_comp[2] , \ones_comp[3] ;
  reg \stage1[0] , \stage1[1] , \stage1[2] , \stage1[3] , \stage2[0] ,
    \stage2[1] , \stage2[2] , \stage2[3] ;
  wire n18, n23, n28, n33, n37, n41, n45, n49;
  INVX1    g00(.A(\binary[0] ), .Y(n18));
  INVX1    g01(.A(\binary[1] ), .Y(n23));
  INVX1    g02(.A(\binary[2] ), .Y(n28));
  INVX1    g03(.A(\binary[3] ), .Y(n33));
  BUFX1    g04(.A(\stage2[0] ), .Y(\ones_comp[0] ));
  BUFX1    g05(.A(\stage2[1] ), .Y(\ones_comp[1] ));
  BUFX1    g06(.A(\stage2[2] ), .Y(\ones_comp[2] ));
  BUFX1    g07(.A(\stage2[3] ), .Y(\ones_comp[3] ));
  BUFX1    g08(.A(\stage1[0] ), .Y(n37));
  BUFX1    g09(.A(\stage1[1] ), .Y(n41));
  BUFX1    g10(.A(\stage1[2] ), .Y(n45));
  BUFX1    g11(.A(\stage1[3] ), .Y(n49));
  always @ (posedge clock) begin
    \stage1[0]  <= n18;
    \stage1[1]  <= n23;
    \stage1[2]  <= n28;
    \stage1[3]  <= n33;
    \stage2[0]  <= n37;
    \stage2[1]  <= n41;
    \stage2[2]  <= n45;
    \stage2[3]  <= n49;
  end
endmodule


