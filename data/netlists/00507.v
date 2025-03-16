// Benchmark "binary_adder" written by ABC on Wed Jun 26 15:22:12 2024

module binary_adder ( 
    \addend1[0] , \addend1[1] , \addend1[2] , \addend1[3] , \addend2[0] ,
    \addend2[1] , \addend2[2] , \addend2[3] , carry_in,
    \sum[0] , \sum[1] , \sum[2] , \sum[3] , carry_out  );
  input  \addend1[0] , \addend1[1] , \addend1[2] , \addend1[3] ,
    \addend2[0] , \addend2[1] , \addend2[2] , \addend2[3] , carry_in;
  output \sum[0] , \sum[1] , \sum[2] , \sum[3] , carry_out;
  wire new_n15, new_n17, new_n18, new_n19, new_n20, new_n22, new_n23,
    new_n24, new_n25, new_n26, new_n27, new_n29, new_n30, new_n31, new_n32,
    new_n33, new_n34, new_n36, new_n37, new_n38, new_n39, new_n40;
  XOR2X1   g00(.A(\addend2[0] ), .B(\addend1[0] ), .Y(new_n15));
  XOR2X1   g01(.A(new_n15), .B(carry_in), .Y(\sum[0] ));
  XOR2X1   g02(.A(\addend2[1] ), .B(\addend1[1] ), .Y(new_n17));
  AND2X1   g03(.A(\addend2[0] ), .B(\addend1[0] ), .Y(new_n18));
  XOR2X1   g04(.A(new_n18), .B(new_n17), .Y(new_n19));
  AND2X1   g05(.A(new_n15), .B(carry_in), .Y(new_n20));
  XOR2X1   g06(.A(new_n20), .B(new_n19), .Y(\sum[1] ));
  INVX1    g07(.A(\addend1[2] ), .Y(new_n22));
  XOR2X1   g08(.A(\addend2[2] ), .B(new_n22), .Y(new_n23));
  AND2X1   g09(.A(\addend2[1] ), .B(\addend1[1] ), .Y(new_n24));
  AOI21X1  g10(.A0(new_n18), .A1(new_n17), .B0(new_n24), .Y(new_n25));
  XOR2X1   g11(.A(new_n25), .B(new_n23), .Y(new_n26));
  AND2X1   g12(.A(new_n20), .B(new_n19), .Y(new_n27));
  XOR2X1   g13(.A(new_n27), .B(new_n26), .Y(\sum[2] ));
  INVX1    g14(.A(\addend1[3] ), .Y(new_n29));
  XOR2X1   g15(.A(\addend2[3] ), .B(new_n29), .Y(new_n30));
  NAND2X1  g16(.A(\addend2[2] ), .B(\addend1[2] ), .Y(new_n31));
  OAI21X1  g17(.A0(new_n25), .A1(new_n23), .B0(new_n31), .Y(new_n32));
  XOR2X1   g18(.A(new_n32), .B(new_n30), .Y(new_n33));
  NAND2X1  g19(.A(new_n27), .B(new_n26), .Y(new_n34));
  XOR2X1   g20(.A(new_n34), .B(new_n33), .Y(\sum[3] ));
  NOR3X1   g21(.A(new_n30), .B(new_n25), .C(new_n23), .Y(new_n36));
  NAND2X1  g22(.A(\addend2[3] ), .B(\addend1[3] ), .Y(new_n37));
  OAI21X1  g23(.A0(new_n31), .A1(new_n30), .B0(new_n37), .Y(new_n38));
  NOR2X1   g24(.A(new_n38), .B(new_n36), .Y(new_n39));
  OR2X1    g25(.A(new_n34), .B(new_n33), .Y(new_n40));
  XOR2X1   g26(.A(new_n40), .B(new_n39), .Y(carry_out));
endmodule


