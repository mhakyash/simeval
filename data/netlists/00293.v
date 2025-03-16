// Benchmark "top_module" written by ABC on Wed Jun 26 15:22:05 2024

module top_module ( 
    \A[0] , \A[1] , \A[2] , \A[3] , \shift_type[0] , \shift_type[1] ,
    select,
    \B[0] , \B[1] , \B[2] , \B[3]   );
  input  \A[0] , \A[1] , \A[2] , \A[3] , \shift_type[0] ,
    \shift_type[1] , select;
  output \B[0] , \B[1] , \B[2] , \B[3] ;
  wire new_n12, new_n13, new_n14, new_n15, new_n16, new_n17, new_n18,
    new_n19, new_n20, new_n21, new_n22, new_n23, new_n24, new_n25, new_n26,
    new_n28, new_n29, new_n30, new_n31, new_n32, new_n33, new_n35, new_n36,
    new_n37, new_n38, new_n39, new_n40, new_n42, new_n43, new_n44, new_n45,
    new_n46, new_n47, new_n48;
  INVX1    g00(.A(\A[0] ), .Y(new_n12));
  INVX1    g01(.A(\A[1] ), .Y(new_n13));
  INVX1    g02(.A(\shift_type[0] ), .Y(new_n14));
  NOR3X1   g03(.A(\shift_type[1] ), .B(new_n14), .C(new_n13), .Y(new_n15));
  AND2X1   g04(.A(\shift_type[1] ), .B(\shift_type[0] ), .Y(new_n16));
  AND2X1   g05(.A(new_n16), .B(\A[1] ), .Y(new_n17));
  INVX1    g06(.A(\A[3] ), .Y(new_n18));
  INVX1    g07(.A(\shift_type[1] ), .Y(new_n19));
  NOR3X1   g08(.A(new_n19), .B(\shift_type[0] ), .C(new_n18), .Y(new_n20));
  NOR3X1   g09(.A(new_n20), .B(new_n17), .C(new_n15), .Y(new_n21));
  AND2X1   g10(.A(new_n19), .B(\shift_type[0] ), .Y(new_n22));
  AND2X1   g11(.A(\shift_type[1] ), .B(new_n14), .Y(new_n23));
  NOR2X1   g12(.A(\shift_type[1] ), .B(\shift_type[0] ), .Y(new_n24));
  OR4X1    g13(.A(new_n24), .B(new_n23), .C(new_n16), .D(new_n22), .Y(new_n25));
  NAND2X1  g14(.A(new_n25), .B(select), .Y(new_n26));
  OAI22X1  g15(.A0(new_n26), .A1(new_n21), .B0(select), .B1(new_n12), .Y(\B[0] ));
  XOR2X1   g16(.A(\A[1] ), .B(new_n12), .Y(new_n28));
  AND2X1   g17(.A(new_n16), .B(\A[0] ), .Y(new_n29));
  INVX1    g18(.A(\A[2] ), .Y(new_n30));
  NOR3X1   g19(.A(\shift_type[1] ), .B(new_n14), .C(new_n30), .Y(new_n31));
  AND2X1   g20(.A(new_n24), .B(\A[0] ), .Y(new_n32));
  NOR4X1   g21(.A(new_n32), .B(new_n31), .C(new_n29), .D(new_n20), .Y(new_n33));
  OAI22X1  g22(.A0(new_n33), .A1(new_n26), .B0(new_n28), .B1(select), .Y(\B[1] ));
  XOR2X1   g23(.A(\A[2] ), .B(\A[1] ), .Y(new_n35));
  NAND2X1  g24(.A(\A[1] ), .B(\A[0] ), .Y(new_n36));
  XOR2X1   g25(.A(new_n36), .B(new_n35), .Y(new_n37));
  NOR3X1   g26(.A(\shift_type[1] ), .B(new_n14), .C(new_n18), .Y(new_n38));
  AND2X1   g27(.A(new_n24), .B(\A[1] ), .Y(new_n39));
  NOR4X1   g28(.A(new_n39), .B(new_n38), .C(new_n29), .D(new_n20), .Y(new_n40));
  OAI22X1  g29(.A0(new_n40), .A1(new_n26), .B0(new_n37), .B1(select), .Y(\B[2] ));
  OR2X1    g30(.A(new_n30), .B(\A[1] ), .Y(new_n42));
  XOR2X1   g31(.A(new_n42), .B(\A[3] ), .Y(new_n43));
  NOR3X1   g32(.A(\A[2] ), .B(new_n13), .C(new_n12), .Y(new_n44));
  XOR2X1   g33(.A(new_n44), .B(new_n43), .Y(new_n45));
  AND2X1   g34(.A(new_n24), .B(\A[2] ), .Y(new_n46));
  NOR3X1   g35(.A(new_n19), .B(\shift_type[0] ), .C(new_n30), .Y(new_n47));
  NOR3X1   g36(.A(new_n47), .B(new_n46), .C(new_n29), .Y(new_n48));
  OAI22X1  g37(.A0(new_n48), .A1(new_n26), .B0(new_n45), .B1(select), .Y(\B[3] ));
endmodule


