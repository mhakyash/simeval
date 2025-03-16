// Benchmark "eight_bit_adder" written by ABC on Wed Jun 26 15:22:15 2024

module eight_bit_adder ( 
    \in1[0] , \in1[1] , \in1[2] , \in1[3] , \in1[4] , \in1[5] , \in1[6] ,
    \in1[7] , \in2[0] , \in2[1] , \in2[2] , \in2[3] , \in2[4] , \in2[5] ,
    \in2[6] , \in2[7] , cin,
    \sum[0] , \sum[1] , \sum[2] , \sum[3] , \sum[4] , \sum[5] , \sum[6] ,
    \sum[7] , cout  );
  input  \in1[0] , \in1[1] , \in1[2] , \in1[3] , \in1[4] , \in1[5] ,
    \in1[6] , \in1[7] , \in2[0] , \in2[1] , \in2[2] , \in2[3] , \in2[4] ,
    \in2[5] , \in2[6] , \in2[7] , cin;
  output \sum[0] , \sum[1] , \sum[2] , \sum[3] , \sum[4] , \sum[5] , \sum[6] ,
    \sum[7] , cout;
  wire new_n27, new_n29, new_n30, new_n31, new_n32, new_n34, new_n35,
    new_n36, new_n37, new_n38, new_n39, new_n40, new_n42, new_n43, new_n44,
    new_n45, new_n46, new_n48, new_n49, new_n50, new_n51, new_n53, new_n54,
    new_n55, new_n56, new_n58, new_n59, new_n60, new_n61, new_n62, new_n64,
    new_n65, new_n66, new_n67, new_n68, new_n69, new_n70, new_n72, new_n73;
  XOR2X1   g00(.A(\in2[0] ), .B(\in1[0] ), .Y(new_n27));
  XOR2X1   g01(.A(new_n27), .B(cin), .Y(\sum[0] ));
  XOR2X1   g02(.A(\in2[1] ), .B(\in1[1] ), .Y(new_n29));
  NAND2X1  g03(.A(\in2[0] ), .B(\in1[0] ), .Y(new_n30));
  XOR2X1   g04(.A(new_n30), .B(new_n29), .Y(new_n31));
  NAND2X1  g05(.A(new_n27), .B(cin), .Y(new_n32));
  XOR2X1   g06(.A(new_n32), .B(new_n31), .Y(\sum[1] ));
  INVX1    g07(.A(\in1[2] ), .Y(new_n34));
  XOR2X1   g08(.A(\in2[2] ), .B(new_n34), .Y(new_n35));
  AND2X1   g09(.A(\in2[0] ), .B(\in1[0] ), .Y(new_n36));
  AND2X1   g10(.A(\in2[1] ), .B(\in1[1] ), .Y(new_n37));
  AOI21X1  g11(.A0(new_n36), .A1(new_n29), .B0(new_n37), .Y(new_n38));
  XOR2X1   g12(.A(new_n38), .B(new_n35), .Y(new_n39));
  NOR2X1   g13(.A(new_n32), .B(new_n31), .Y(new_n40));
  XOR2X1   g14(.A(new_n40), .B(new_n39), .Y(\sum[2] ));
  XOR2X1   g15(.A(\in2[3] ), .B(\in1[3] ), .Y(new_n42));
  NAND2X1  g16(.A(\in2[2] ), .B(\in1[2] ), .Y(new_n43));
  OAI21X1  g17(.A0(new_n38), .A1(new_n35), .B0(new_n43), .Y(new_n44));
  XOR2X1   g18(.A(new_n44), .B(new_n42), .Y(new_n45));
  AND2X1   g19(.A(new_n40), .B(new_n39), .Y(new_n46));
  XOR2X1   g20(.A(new_n46), .B(new_n45), .Y(\sum[3] ));
  NAND2X1  g21(.A(cin), .B(\in2[3] ), .Y(new_n48));
  OAI21X1  g22(.A0(cin), .A1(\in2[3] ), .B0(\in1[3] ), .Y(new_n49));
  NAND2X1  g23(.A(new_n49), .B(new_n48), .Y(new_n50));
  XOR2X1   g24(.A(\in2[4] ), .B(\in1[4] ), .Y(new_n51));
  XOR2X1   g25(.A(new_n51), .B(new_n50), .Y(\sum[4] ));
  XOR2X1   g26(.A(\in2[5] ), .B(\in1[5] ), .Y(new_n53));
  AND2X1   g27(.A(\in2[4] ), .B(\in1[4] ), .Y(new_n54));
  XOR2X1   g28(.A(new_n54), .B(new_n53), .Y(new_n55));
  AND2X1   g29(.A(new_n51), .B(new_n50), .Y(new_n56));
  XOR2X1   g30(.A(new_n56), .B(new_n55), .Y(\sum[5] ));
  XOR2X1   g31(.A(\in2[6] ), .B(\in1[6] ), .Y(new_n58));
  AND2X1   g32(.A(\in2[5] ), .B(\in1[5] ), .Y(new_n59));
  AOI21X1  g33(.A0(new_n54), .A1(new_n53), .B0(new_n59), .Y(new_n60));
  XOR2X1   g34(.A(new_n60), .B(new_n58), .Y(new_n61));
  NAND3X1  g35(.A(new_n55), .B(new_n51), .C(new_n50), .Y(new_n62));
  XOR2X1   g36(.A(new_n62), .B(new_n61), .Y(\sum[6] ));
  XOR2X1   g37(.A(\in2[7] ), .B(\in1[7] ), .Y(new_n64));
  INVX1    g38(.A(\in1[6] ), .Y(new_n65));
  XOR2X1   g39(.A(\in2[6] ), .B(new_n65), .Y(new_n66));
  NAND2X1  g40(.A(\in2[6] ), .B(\in1[6] ), .Y(new_n67));
  OAI21X1  g41(.A0(new_n60), .A1(new_n66), .B0(new_n67), .Y(new_n68));
  XOR2X1   g42(.A(new_n68), .B(new_n64), .Y(new_n69));
  NOR2X1   g43(.A(new_n62), .B(new_n61), .Y(new_n70));
  XOR2X1   g44(.A(new_n70), .B(new_n69), .Y(\sum[7] ));
  NAND2X1  g45(.A(new_n50), .B(\in2[7] ), .Y(new_n72));
  OAI21X1  g46(.A0(new_n50), .A1(\in2[7] ), .B0(\in1[7] ), .Y(new_n73));
  NAND2X1  g47(.A(new_n73), .B(new_n72), .Y(cout));
endmodule


