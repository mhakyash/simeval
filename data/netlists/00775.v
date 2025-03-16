// Benchmark "barrel_shifter_4bit" written by ABC on Wed Jun 26 15:22:19 2024

module barrel_shifter_4bit ( clock, 
    \A[0] , \A[1] , \A[2] , \A[3] , load, reset, \shift[0] , \shift[1] ,
    \Q[0] , \Q[1] , \Q[2] , \Q[3]   );
  input  clock;
  input  \A[0] , \A[1] , \A[2] , \A[3] , load, reset, \shift[0] ,
    \shift[1] ;
  output \Q[0] , \Q[1] , \Q[2] , \Q[3] ;
  reg \Q[0] , \Q[1] , \Q[2] , \Q[3] ;
  wire new_n25, new_n26_1, new_n27, new_n28, new_n29, new_n30_1, new_n31,
    new_n32, new_n33, new_n34_1, new_n35, new_n36, new_n37, new_n38_1,
    new_n40, new_n41, new_n42, new_n43, new_n44, new_n45, new_n46, new_n48,
    new_n49, new_n50, new_n51, new_n52, new_n53, new_n54, new_n56, new_n57,
    new_n58, new_n59, new_n60, new_n61, n26, n30, n34, n38;
  INVX1    g00(.A(load), .Y(new_n25));
  NOR2X1   g01(.A(\shift[1] ), .B(\shift[0] ), .Y(new_n26_1));
  NAND2X1  g02(.A(new_n26_1), .B(\Q[0] ), .Y(new_n27));
  NAND3X1  g03(.A(\Q[1] ), .B(\shift[1] ), .C(\shift[0] ), .Y(new_n28));
  INVX1    g04(.A(\shift[0] ), .Y(new_n29));
  NAND3X1  g05(.A(\Q[1] ), .B(\shift[1] ), .C(new_n29), .Y(new_n30_1));
  NAND3X1  g06(.A(new_n30_1), .B(new_n28), .C(new_n27), .Y(new_n31));
  AND2X1   g07(.A(\shift[1] ), .B(\shift[0] ), .Y(new_n32));
  AND2X1   g08(.A(\shift[1] ), .B(new_n29), .Y(new_n33));
  INVX1    g09(.A(\shift[1] ), .Y(new_n34_1));
  AND2X1   g10(.A(new_n34_1), .B(\shift[0] ), .Y(new_n35));
  OR4X1    g11(.A(new_n35), .B(new_n33), .C(new_n32), .D(new_n26_1), .Y(new_n36));
  NAND3X1  g12(.A(new_n36), .B(new_n31), .C(new_n25), .Y(new_n37));
  NAND2X1  g13(.A(load), .B(\A[0] ), .Y(new_n38_1));
  AOI21X1  g14(.A0(new_n38_1), .A1(new_n37), .B0(reset), .Y(n26));
  NAND3X1  g15(.A(\Q[2] ), .B(\shift[1] ), .C(\shift[0] ), .Y(new_n40));
  NAND3X1  g16(.A(\Q[2] ), .B(\shift[1] ), .C(new_n29), .Y(new_n41));
  NAND3X1  g17(.A(\Q[0] ), .B(new_n34_1), .C(\shift[0] ), .Y(new_n42));
  NAND2X1  g18(.A(new_n26_1), .B(\Q[1] ), .Y(new_n43));
  NAND4X1  g19(.A(new_n43), .B(new_n42), .C(new_n41), .D(new_n40), .Y(new_n44));
  NAND3X1  g20(.A(new_n44), .B(new_n36), .C(new_n25), .Y(new_n45));
  NAND2X1  g21(.A(load), .B(\A[1] ), .Y(new_n46));
  AOI21X1  g22(.A0(new_n46), .A1(new_n45), .B0(reset), .Y(n30));
  NAND3X1  g23(.A(\Q[3] ), .B(\shift[1] ), .C(\shift[0] ), .Y(new_n48));
  NAND3X1  g24(.A(\Q[3] ), .B(\shift[1] ), .C(new_n29), .Y(new_n49));
  NAND3X1  g25(.A(\Q[1] ), .B(new_n34_1), .C(\shift[0] ), .Y(new_n50));
  NAND2X1  g26(.A(new_n26_1), .B(\Q[2] ), .Y(new_n51));
  NAND4X1  g27(.A(new_n51), .B(new_n50), .C(new_n49), .D(new_n48), .Y(new_n52));
  NAND3X1  g28(.A(new_n52), .B(new_n36), .C(new_n25), .Y(new_n53));
  NAND2X1  g29(.A(load), .B(\A[2] ), .Y(new_n54));
  AOI21X1  g30(.A0(new_n54), .A1(new_n53), .B0(reset), .Y(n34));
  NAND2X1  g31(.A(new_n26_1), .B(\Q[3] ), .Y(new_n56));
  NAND3X1  g32(.A(\Q[0] ), .B(\shift[1] ), .C(\shift[0] ), .Y(new_n57));
  NAND3X1  g33(.A(\Q[2] ), .B(new_n34_1), .C(\shift[0] ), .Y(new_n58));
  NAND3X1  g34(.A(new_n58), .B(new_n57), .C(new_n56), .Y(new_n59));
  NAND3X1  g35(.A(new_n59), .B(new_n36), .C(new_n25), .Y(new_n60));
  NAND2X1  g36(.A(load), .B(\A[3] ), .Y(new_n61));
  AOI21X1  g37(.A0(new_n61), .A1(new_n60), .B0(reset), .Y(n38));
  always @ (posedge clock) begin
    \Q[0]  <= n26;
    \Q[1]  <= n30;
    \Q[2]  <= n34;
    \Q[3]  <= n38;
  end
endmodule


