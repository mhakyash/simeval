// Benchmark "priority_encoder" written by ABC on Wed Jun 26 15:22:01 2024

module priority_encoder ( 
    \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] , \in[6] , \in[7] ,
    \pos[0] , \pos[1] , \pos[2]   );
  input  \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] , \in[6] ,
    \in[7] ;
  output \pos[0] , \pos[1] , \pos[2] ;
  wire new_n12, new_n13, new_n14, new_n15, new_n16, new_n17, new_n18,
    new_n19, new_n20, new_n21, new_n22, new_n23, new_n24, new_n25, new_n26,
    new_n27, new_n28, new_n29, new_n30, new_n31, new_n32, new_n33, new_n35,
    new_n36, new_n38;
  INVX1    g00(.A(\in[6] ), .Y(new_n12));
  NAND2X1  g01(.A(\in[1] ), .B(\in[0] ), .Y(new_n13));
  NAND4X1  g02(.A(\in[5] ), .B(\in[4] ), .C(\in[3] ), .D(\in[2] ), .Y(new_n14));
  OR4X1    g03(.A(new_n14), .B(new_n13), .C(\in[7] ), .D(new_n12), .Y(new_n15));
  INVX1    g04(.A(\in[1] ), .Y(new_n16));
  NAND2X1  g05(.A(\in[3] ), .B(\in[2] ), .Y(new_n17));
  NAND4X1  g06(.A(\in[7] ), .B(\in[6] ), .C(\in[5] ), .D(\in[4] ), .Y(new_n18));
  OR4X1    g07(.A(new_n18), .B(new_n17), .C(new_n16), .D(\in[0] ), .Y(new_n19));
  OR4X1    g08(.A(new_n18), .B(new_n17), .C(\in[1] ), .D(\in[0] ), .Y(new_n20));
  NAND3X1  g09(.A(new_n20), .B(new_n19), .C(new_n15), .Y(new_n21));
  INVX1    g10(.A(\in[5] ), .Y(new_n22));
  NAND2X1  g11(.A(\in[7] ), .B(\in[6] ), .Y(new_n23));
  OR4X1    g12(.A(\in[3] ), .B(\in[2] ), .C(\in[1] ), .D(\in[0] ), .Y(new_n24));
  NOR4X1   g13(.A(new_n24), .B(new_n23), .C(new_n22), .D(\in[4] ), .Y(new_n25));
  NOR4X1   g14(.A(new_n24), .B(new_n23), .C(\in[5] ), .D(\in[4] ), .Y(new_n26));
  INVX1    g15(.A(\in[3] ), .Y(new_n27));
  OR2X1    g16(.A(\in[1] ), .B(\in[0] ), .Y(new_n28));
  NOR4X1   g17(.A(new_n28), .B(new_n18), .C(new_n27), .D(\in[2] ), .Y(new_n29));
  NOR2X1   g18(.A(new_n24), .B(new_n18), .Y(new_n30));
  OR4X1    g19(.A(new_n30), .B(new_n29), .C(new_n26), .D(new_n25), .Y(new_n31));
  NOR4X1   g20(.A(new_n18), .B(new_n17), .C(new_n16), .D(\in[0] ), .Y(new_n32));
  NOR3X1   g21(.A(new_n29), .B(new_n25), .C(new_n32), .Y(new_n33));
  OAI21X1  g22(.A0(new_n31), .A1(new_n21), .B0(new_n33), .Y(\pos[0] ));
  NOR3X1   g23(.A(new_n28), .B(new_n18), .C(new_n17), .Y(new_n35));
  NOR3X1   g24(.A(new_n29), .B(new_n26), .C(new_n35), .Y(new_n36));
  OAI21X1  g25(.A0(new_n31), .A1(new_n21), .B0(new_n36), .Y(\pos[1] ));
  NOR3X1   g26(.A(new_n30), .B(new_n26), .C(new_n25), .Y(new_n38));
  OAI21X1  g27(.A0(new_n31), .A1(new_n21), .B0(new_n38), .Y(\pos[2] ));
endmodule


