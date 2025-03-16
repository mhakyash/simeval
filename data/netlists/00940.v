// Benchmark "priority_encoder_twos_complement" written by ABC on Wed Jun 26 15:22:24 2024

module priority_encoder_twos_complement ( 
    \in[0] , \in[1] , \in[2] , \in[3] ,
    \X[0] , \X[1] , Y, \out[0] , \out[1] , \out[2] , \out[3]   );
  input  \in[0] , \in[1] , \in[2] , \in[3] ;
  output \X[0] , \X[1] , Y, \out[0] , \out[1] , \out[2] , \out[3] ;
  wire new_n12, new_n13, new_n14, new_n15, new_n16, new_n17, new_n18,
    new_n19, new_n20, new_n21, new_n22, new_n23, new_n24, new_n25, new_n26,
    new_n27, new_n28, new_n30, new_n31;
  INVX1    g00(.A(\in[3] ), .Y(new_n12));
  INVX1    g01(.A(\in[2] ), .Y(new_n13));
  NOR2X1   g02(.A(\in[1] ), .B(\in[0] ), .Y(new_n14));
  XOR2X1   g03(.A(new_n14), .B(new_n13), .Y(new_n15));
  MX2X1    g04(.A(new_n15), .B(\in[2] ), .S0(new_n12), .Y(new_n16));
  NOR4X1   g05(.A(new_n12), .B(\in[2] ), .C(\in[1] ), .D(\in[0] ), .Y(new_n17));
  OR2X1    g06(.A(new_n17), .B(new_n16), .Y(new_n18));
  INVX1    g07(.A(\in[0] ), .Y(new_n19));
  OR2X1    g08(.A(\in[3] ), .B(new_n19), .Y(new_n20));
  NAND2X1  g09(.A(\in[3] ), .B(\in[0] ), .Y(new_n21));
  AND2X1   g10(.A(new_n21), .B(new_n20), .Y(new_n22));
  XOR2X1   g11(.A(\in[1] ), .B(\in[0] ), .Y(new_n23));
  MX2X1    g12(.A(new_n23), .B(\in[1] ), .S0(new_n12), .Y(new_n24));
  NOR4X1   g13(.A(new_n24), .B(new_n22), .C(new_n17), .D(new_n16), .Y(new_n25));
  INVX1    g14(.A(\in[1] ), .Y(new_n26));
  OR2X1    g15(.A(new_n26), .B(\in[0] ), .Y(new_n27));
  NOR3X1   g16(.A(new_n13), .B(\in[1] ), .C(\in[0] ), .Y(new_n28));
  OAI22X1  g17(.A0(new_n28), .A1(new_n25), .B0(new_n27), .B1(new_n18), .Y(\X[0] ));
  NOR3X1   g18(.A(new_n27), .B(new_n17), .C(new_n16), .Y(new_n30));
  INVX1    g19(.A(new_n28), .Y(new_n31));
  OAI21X1  g20(.A0(new_n30), .A1(new_n25), .B0(new_n31), .Y(\X[1] ));
  MX2X1    g21(.A(\X[0] ), .B(\in[0] ), .S0(\in[3] ), .Y(\out[0] ));
  MX2X1    g22(.A(\X[1] ), .B(new_n24), .S0(\in[3] ), .Y(\out[1] ));
  AND2X1   g23(.A(new_n16), .B(\in[3] ), .Y(\out[2] ));
  NOR4X1   g24(.A(new_n12), .B(\in[2] ), .C(\in[1] ), .D(\in[0] ), .Y(\out[3] ));
  BUFX1    g25(.A(\in[3] ), .Y(Y));
endmodule


