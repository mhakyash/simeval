// Benchmark "priority_encoder" written by ABC on Wed Jun 26 15:22:14 2024

module priority_encoder ( clock, 
    \D[0] , \D[1] , \D[2] , \D[3] ,
    \Y[0] , \Y[1]   );
  input  clock;
  input  \D[0] , \D[1] , \D[2] , \D[3] ;
  output \Y[0] , \Y[1] ;
  reg \Y[0] , \Y[1] ;
  wire new_n13, new_n15, new_n16, new_n17, new_n18_1, new_n19, new_n20,
    new_n21, new_n22, new_n23, new_n24, new_n25, new_n26, new_n27, new_n28,
    new_n29, new_n30, new_n31, new_n32, new_n33, n14, n18;
  INVX1    g00(.A(\D[2] ), .Y(new_n13));
  NOR4X1   g01(.A(\D[3] ), .B(new_n13), .C(\D[1] ), .D(\D[0] ), .Y(n14));
  INVX1    g02(.A(\D[1] ), .Y(new_n15));
  OR4X1    g03(.A(\D[3] ), .B(\D[2] ), .C(new_n15), .D(\D[0] ), .Y(new_n16));
  OR4X1    g04(.A(\D[3] ), .B(new_n13), .C(new_n15), .D(\D[0] ), .Y(new_n17));
  INVX1    g05(.A(\D[0] ), .Y(new_n18_1));
  OR4X1    g06(.A(\D[3] ), .B(\D[2] ), .C(\D[1] ), .D(new_n18_1), .Y(new_n19));
  NAND3X1  g07(.A(new_n19), .B(new_n17), .C(new_n16), .Y(new_n20));
  INVX1    g08(.A(\D[3] ), .Y(new_n21));
  OR4X1    g09(.A(new_n21), .B(new_n13), .C(\D[1] ), .D(new_n18_1), .Y(new_n22));
  OR4X1    g10(.A(new_n21), .B(new_n13), .C(new_n15), .D(\D[0] ), .Y(new_n23));
  NAND2X1  g11(.A(new_n23), .B(new_n22), .Y(new_n24));
  OR2X1    g12(.A(\D[3] ), .B(\D[2] ), .Y(new_n25));
  NAND2X1  g13(.A(\D[1] ), .B(\D[0] ), .Y(new_n26));
  OR4X1    g14(.A(\D[3] ), .B(new_n13), .C(\D[1] ), .D(new_n18_1), .Y(new_n27));
  OAI21X1  g15(.A0(new_n26), .A1(new_n25), .B0(new_n27), .Y(new_n28));
  NOR4X1   g16(.A(\D[3] ), .B(new_n13), .C(\D[1] ), .D(\D[0] ), .Y(new_n29));
  NOR3X1   g17(.A(new_n26), .B(new_n21), .C(new_n13), .Y(new_n30));
  NOR3X1   g18(.A(new_n26), .B(\D[3] ), .C(new_n13), .Y(new_n31));
  NOR3X1   g19(.A(new_n26), .B(new_n21), .C(\D[2] ), .Y(new_n32));
  OR4X1    g20(.A(new_n32), .B(new_n31), .C(new_n30), .D(new_n29), .Y(new_n33));
  NOR4X1   g21(.A(new_n33), .B(new_n28), .C(new_n24), .D(new_n20), .Y(n18));
  always @ (posedge clock) begin
    \Y[0]  <= n14;
    \Y[1]  <= n18;
  end
endmodule


