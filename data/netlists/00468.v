// Benchmark "top_module" written by ABC on Wed Jun 26 15:22:11 2024

module top_module ( clock, 
    clk, \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] , \in[6] ,
    \in[7] ,
    \q[0] , \q[1] , \q[2] , \q[3]   );
  input  clock;
  input  clk, \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] ,
    \in[6] , \in[7] ;
  output \q[0] , \q[1] , \q[2] , \q[3] ;
  reg \count[0] , \count[1] , \count[2] , \count[3] ;
  wire new_n26, new_n27, new_n28_1, new_n29, new_n30, new_n31, new_n33_1,
    new_n34, new_n35, new_n36, new_n37, new_n38_1, new_n40, new_n41,
    new_n42, new_n43_1, new_n44, new_n45, new_n46, new_n47, new_n49,
    new_n50, new_n51, new_n52, new_n53, new_n54, new_n55, new_n56, new_n57,
    new_n58, new_n60, new_n63, new_n64, new_n66, new_n67, n28, n33, n38,
    n43;
  AND2X1   g00(.A(\in[6] ), .B(\in[5] ), .Y(new_n26));
  AND2X1   g01(.A(new_n26), .B(\in[7] ), .Y(new_n27));
  INVX1    g02(.A(\in[1] ), .Y(new_n28_1));
  AND2X1   g03(.A(\in[2] ), .B(new_n28_1), .Y(new_n29));
  NAND2X1  g04(.A(\in[4] ), .B(\in[3] ), .Y(new_n30));
  OAI21X1  g05(.A0(new_n30), .A1(new_n29), .B0(new_n27), .Y(new_n31));
  AND2X1   g06(.A(new_n31), .B(\count[0] ), .Y(\q[0] ));
  INVX1    g07(.A(\count[0] ), .Y(new_n33_1));
  NAND3X1  g08(.A(\in[7] ), .B(\in[6] ), .C(\in[5] ), .Y(new_n34));
  AND2X1   g09(.A(\in[2] ), .B(\in[1] ), .Y(new_n35));
  NOR3X1   g10(.A(new_n30), .B(new_n35), .C(new_n34), .Y(new_n36));
  OR2X1    g11(.A(new_n36), .B(new_n33_1), .Y(new_n37));
  NAND2X1  g12(.A(new_n31), .B(\count[1] ), .Y(new_n38_1));
  XOR2X1   g13(.A(new_n38_1), .B(new_n37), .Y(\q[1] ));
  INVX1    g14(.A(\count[1] ), .Y(new_n40));
  NOR2X1   g15(.A(new_n36), .B(new_n40), .Y(new_n41));
  AND2X1   g16(.A(new_n31), .B(\count[2] ), .Y(new_n42));
  XOR2X1   g17(.A(new_n42), .B(new_n41), .Y(new_n43_1));
  NAND4X1  g18(.A(\in[4] ), .B(\in[3] ), .C(\in[2] ), .D(\in[1] ), .Y(new_n44));
  NOR3X1   g19(.A(new_n44), .B(new_n34), .C(new_n33_1), .Y(new_n45));
  XOR2X1   g20(.A(new_n45), .B(new_n43_1), .Y(new_n46));
  NOR2X1   g21(.A(new_n38_1), .B(new_n37), .Y(new_n47));
  XOR2X1   g22(.A(new_n47), .B(new_n46), .Y(\q[2] ));
  INVX1    g23(.A(\count[2] ), .Y(new_n49));
  OR2X1    g24(.A(new_n36), .B(new_n49), .Y(new_n50));
  AND2X1   g25(.A(new_n31), .B(\count[3] ), .Y(new_n51));
  XOR2X1   g26(.A(new_n51), .B(new_n50), .Y(new_n52));
  NOR3X1   g27(.A(new_n44), .B(new_n34), .C(new_n40), .Y(new_n53));
  XOR2X1   g28(.A(new_n53), .B(new_n52), .Y(new_n54));
  AND2X1   g29(.A(new_n42), .B(new_n41), .Y(new_n55));
  AOI21X1  g30(.A0(new_n45), .A1(new_n43_1), .B0(new_n55), .Y(new_n56));
  XOR2X1   g31(.A(new_n56), .B(new_n54), .Y(new_n57));
  AND2X1   g32(.A(new_n47), .B(new_n46), .Y(new_n58));
  XOR2X1   g33(.A(new_n58), .B(new_n57), .Y(\q[3] ));
  NAND4X1  g34(.A(\count[3] ), .B(\count[2] ), .C(\count[1] ), .D(\count[0] ), .Y(new_n60));
  AND2X1   g35(.A(new_n60), .B(new_n33_1), .Y(n28));
  XOR2X1   g36(.A(\count[1] ), .B(\count[0] ), .Y(n33));
  AND2X1   g37(.A(\count[1] ), .B(\count[0] ), .Y(new_n63));
  XOR2X1   g38(.A(new_n63), .B(\count[2] ), .Y(new_n64));
  AND2X1   g39(.A(new_n64), .B(new_n60), .Y(n38));
  AND2X1   g40(.A(new_n63), .B(\count[2] ), .Y(new_n66));
  XOR2X1   g41(.A(new_n66), .B(\count[3] ), .Y(new_n67));
  AND2X1   g42(.A(new_n67), .B(new_n60), .Y(n43));
  always @ (posedge clock) begin
    \count[0]  <= n28;
    \count[1]  <= n33;
    \count[2]  <= n38;
    \count[3]  <= n43;
  end
  initial begin
    \count[0]  <= 1'b0;
    \count[1]  <= 1'b0;
    \count[2]  <= 1'b0;
    \count[3]  <= 1'b0;
  end
endmodule


