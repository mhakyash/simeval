// Benchmark "priority_encoder" written by ABC on Wed Jun 26 15:22:20 2024

module priority_encoder ( 
    \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] , \in[6] , \in[7] ,
    \out[0] , \out[1] , \out[2]   );
  input  \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] , \in[6] ,
    \in[7] ;
  output \out[0] , \out[1] , \out[2] ;
  wire new_n12, new_n13, new_n14, new_n15, new_n16, new_n17, new_n18,
    new_n19, new_n20, new_n21, new_n22, new_n23, new_n24, new_n25, new_n26,
    new_n28, new_n30;
  INVX1    g00(.A(\in[3] ), .Y(new_n12));
  OR2X1    g01(.A(\in[1] ), .B(\in[0] ), .Y(new_n13));
  OR4X1    g02(.A(\in[7] ), .B(\in[6] ), .C(\in[5] ), .D(\in[4] ), .Y(new_n14));
  NOR4X1   g03(.A(new_n14), .B(new_n13), .C(new_n12), .D(\in[2] ), .Y(new_n15));
  INVX1    g04(.A(\in[5] ), .Y(new_n16));
  OR2X1    g05(.A(\in[7] ), .B(\in[6] ), .Y(new_n17));
  OR4X1    g06(.A(\in[3] ), .B(\in[2] ), .C(\in[1] ), .D(\in[0] ), .Y(new_n18));
  NOR4X1   g07(.A(new_n18), .B(new_n17), .C(new_n16), .D(\in[4] ), .Y(new_n19));
  INVX1    g08(.A(\in[6] ), .Y(new_n20));
  OR2X1    g09(.A(\in[5] ), .B(\in[4] ), .Y(new_n21));
  NOR4X1   g10(.A(new_n18), .B(new_n21), .C(\in[7] ), .D(new_n20), .Y(new_n22));
  NOR3X1   g11(.A(new_n22), .B(new_n19), .C(new_n15), .Y(new_n23));
  INVX1    g12(.A(\in[4] ), .Y(new_n24));
  NOR4X1   g13(.A(new_n18), .B(new_n17), .C(\in[5] ), .D(new_n24), .Y(new_n25));
  NOR4X1   g14(.A(new_n25), .B(new_n22), .C(new_n19), .D(new_n15), .Y(new_n26));
  NOR2X1   g15(.A(new_n26), .B(new_n23), .Y(\out[0] ));
  NOR2X1   g16(.A(new_n25), .B(new_n15), .Y(new_n28));
  NOR2X1   g17(.A(new_n26), .B(new_n28), .Y(\out[1] ));
  NOR3X1   g18(.A(new_n25), .B(new_n19), .C(new_n15), .Y(new_n30));
  NOR2X1   g19(.A(new_n30), .B(new_n26), .Y(\out[2] ));
endmodule


