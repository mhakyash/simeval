// Benchmark "ripple_carry_adder_4bit" written by ABC on Wed Jun 26 15:22:26 2024

module ripple_carry_adder_4bit ( 
    \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ,
    carry_in,
    \sum[0] , \sum[1] , \sum[2] , \sum[3] , carry_out  );
  input  \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ,
    carry_in;
  output \sum[0] , \sum[1] , \sum[2] , \sum[3] , carry_out;
  wire new_n15, new_n17, new_n18, new_n19, new_n20, new_n22, new_n23,
    new_n24, new_n25, new_n26, new_n27, new_n29, new_n30, new_n31, new_n32,
    new_n33, new_n34, new_n35, new_n36, new_n37, new_n38, new_n39, new_n40,
    new_n41, new_n43, new_n44, new_n45, new_n46, new_n47, new_n48, new_n49,
    new_n50, new_n51, new_n52, new_n53;
  XOR2X1   g00(.A(\B[0] ), .B(\A[0] ), .Y(new_n15));
  XOR2X1   g01(.A(new_n15), .B(carry_in), .Y(\sum[0] ));
  XOR2X1   g02(.A(\B[1] ), .B(\A[1] ), .Y(new_n17));
  NAND2X1  g03(.A(carry_in), .B(\B[0] ), .Y(new_n18));
  OAI21X1  g04(.A0(carry_in), .A1(\B[0] ), .B0(\A[0] ), .Y(new_n19));
  NAND2X1  g05(.A(new_n19), .B(new_n18), .Y(new_n20));
  XOR2X1   g06(.A(new_n20), .B(new_n17), .Y(\sum[1] ));
  XOR2X1   g07(.A(\B[2] ), .B(\A[2] ), .Y(new_n22));
  NAND2X1  g08(.A(\B[1] ), .B(\A[1] ), .Y(new_n23));
  NAND3X1  g09(.A(\B[0] ), .B(\A[1] ), .C(\A[0] ), .Y(new_n24));
  NAND3X1  g10(.A(carry_in), .B(\B[0] ), .C(\A[1] ), .Y(new_n25));
  NAND3X1  g11(.A(carry_in), .B(\B[1] ), .C(\A[0] ), .Y(new_n26));
  NAND4X1  g12(.A(new_n26), .B(new_n25), .C(new_n24), .D(new_n23), .Y(new_n27));
  XOR2X1   g13(.A(new_n27), .B(new_n22), .Y(\sum[2] ));
  INVX1    g14(.A(\A[3] ), .Y(new_n29));
  XOR2X1   g15(.A(\B[3] ), .B(new_n29), .Y(new_n30));
  INVX1    g16(.A(\A[2] ), .Y(new_n31));
  INVX1    g17(.A(\B[2] ), .Y(new_n32));
  AOI21X1  g18(.A0(new_n23), .A1(new_n32), .B0(new_n31), .Y(new_n33));
  NAND3X1  g19(.A(\B[1] ), .B(\A[2] ), .C(\A[0] ), .Y(new_n34));
  NAND3X1  g20(.A(carry_in), .B(\B[0] ), .C(\A[2] ), .Y(new_n35));
  NAND2X1  g21(.A(new_n35), .B(new_n34), .Y(new_n36));
  AND2X1   g22(.A(\A[1] ), .B(\A[0] ), .Y(new_n37));
  AND2X1   g23(.A(new_n37), .B(\B[2] ), .Y(new_n38));
  AND2X1   g24(.A(\B[2] ), .B(\B[1] ), .Y(new_n39));
  AND2X1   g25(.A(new_n39), .B(carry_in), .Y(new_n40));
  NOR4X1   g26(.A(new_n40), .B(new_n38), .C(new_n36), .D(new_n33), .Y(new_n41));
  XOR2X1   g27(.A(new_n41), .B(new_n30), .Y(\sum[3] ));
  INVX1    g28(.A(carry_in), .Y(new_n43));
  NOR3X1   g29(.A(\B[3] ), .B(\B[2] ), .C(\B[1] ), .Y(new_n44));
  NOR4X1   g30(.A(\A[3] ), .B(\A[2] ), .C(\A[1] ), .D(\A[0] ), .Y(new_n45));
  AOI21X1  g31(.A0(new_n45), .A1(new_n44), .B0(new_n43), .Y(new_n46));
  INVX1    g32(.A(\B[3] ), .Y(new_n47));
  NOR2X1   g33(.A(\A[1] ), .B(\A[0] ), .Y(new_n48));
  AOI21X1  g34(.A0(new_n48), .A1(new_n31), .B0(new_n47), .Y(new_n49));
  AOI22X1  g35(.A0(\B[2] ), .A1(\A[2] ), .B0(\B[1] ), .B1(\A[0] ), .Y(new_n50));
  OAI21X1  g36(.A0(new_n47), .A1(new_n29), .B0(new_n50), .Y(new_n51));
  AOI22X1  g37(.A0(\B[1] ), .A1(\A[1] ), .B0(\B[0] ), .B1(\A[0] ), .Y(new_n52));
  OAI21X1  g38(.A0(new_n48), .A1(new_n32), .B0(new_n52), .Y(new_n53));
  OR4X1    g39(.A(new_n53), .B(new_n51), .C(new_n49), .D(new_n46), .Y(carry_out));
endmodule


