// Benchmark "barrel_shifter" written by ABC on Wed Jun 26 15:21:58 2024

module barrel_shifter ( clock, 
    \A[0] , \A[1] , \A[2] , \A[3] , \Shift[0] , \Shift[1] , Direction,
    \Y[0] , \Y[1] , \Y[2] , \Y[3]   );
  input  clock;
  input  \A[0] , \A[1] , \A[2] , \A[3] , \Shift[0] , \Shift[1] ,
    Direction;
  output \Y[0] , \Y[1] , \Y[2] , \Y[3] ;
  reg \shifted_value[0] , \shifted_value[1] , \shifted_value[2] ,
    \shifted_value[3] ;
  wire new_n24_1, new_n25, new_n26, new_n27, new_n28, new_n29_1, new_n30,
    new_n31, new_n32, new_n33, new_n34_1, new_n35, new_n36, new_n37,
    new_n38, new_n39_1, new_n40, new_n43, new_n44, new_n45, new_n46,
    new_n47, new_n49, new_n50, new_n51, new_n52, new_n53, new_n54, new_n56,
    new_n57, new_n58, new_n60, new_n61, n24, n29, n34, n39;
  INVX1    g00(.A(Direction), .Y(new_n24_1));
  OAI21X1  g01(.A0(\Shift[1] ), .A1(\Shift[0] ), .B0(new_n24_1), .Y(new_n25));
  INVX1    g02(.A(\Shift[0] ), .Y(new_n26));
  NAND3X1  g03(.A(new_n24_1), .B(\Shift[1] ), .C(new_n26), .Y(new_n27));
  INVX1    g04(.A(\Shift[1] ), .Y(new_n28));
  INVX1    g05(.A(\A[0] ), .Y(new_n29_1));
  INVX1    g06(.A(\A[1] ), .Y(new_n30));
  MX2X1    g07(.A(new_n30), .B(new_n29_1), .S0(new_n26), .Y(new_n31));
  INVX1    g08(.A(\A[2] ), .Y(new_n32));
  INVX1    g09(.A(\A[3] ), .Y(new_n33));
  MX2X1    g10(.A(new_n33), .B(new_n32), .S0(new_n26), .Y(new_n34_1));
  MX2X1    g11(.A(new_n34_1), .B(new_n31), .S0(new_n28), .Y(new_n35));
  NOR3X1   g12(.A(Direction), .B(\Shift[1] ), .C(new_n26), .Y(new_n36));
  NOR4X1   g13(.A(Direction), .B(new_n28), .C(new_n26), .D(new_n30), .Y(new_n37));
  NOR3X1   g14(.A(\Shift[1] ), .B(\Shift[0] ), .C(new_n29_1), .Y(new_n38));
  AOI21X1  g15(.A0(new_n38), .A1(new_n36), .B0(new_n37), .Y(new_n39_1));
  OAI21X1  g16(.A0(new_n35), .A1(new_n27), .B0(new_n39_1), .Y(new_n40));
  MX2X1    g17(.A(new_n40), .B(\A[0] ), .S0(new_n25), .Y(n24));
  OR4X1    g18(.A(Direction), .B(new_n28), .C(\Shift[0] ), .D(new_n33), .Y(new_n43));
  OR4X1    g19(.A(Direction), .B(new_n28), .C(new_n26), .D(new_n32), .Y(new_n44));
  MX2X1    g20(.A(\A[1] ), .B(\A[0] ), .S0(\Shift[0] ), .Y(new_n45));
  NAND4X1  g21(.A(new_n45), .B(new_n24_1), .C(new_n28), .D(\Shift[0] ), .Y(new_n46));
  NAND3X1  g22(.A(new_n46), .B(new_n44), .C(new_n43), .Y(new_n47));
  MX2X1    g23(.A(new_n47), .B(\A[1] ), .S0(new_n25), .Y(n29));
  NAND3X1  g24(.A(new_n24_1), .B(new_n28), .C(\Shift[0] ), .Y(new_n49));
  OR2X1    g25(.A(\Shift[0] ), .B(new_n29_1), .Y(new_n50));
  MX2X1    g26(.A(new_n32), .B(new_n30), .S0(\Shift[0] ), .Y(new_n51));
  MX2X1    g27(.A(new_n51), .B(new_n50), .S0(\Shift[1] ), .Y(new_n52));
  OR4X1    g28(.A(Direction), .B(new_n28), .C(new_n26), .D(new_n33), .Y(new_n53));
  OAI21X1  g29(.A0(new_n52), .A1(new_n49), .B0(new_n53), .Y(new_n54));
  MX2X1    g30(.A(new_n54), .B(\A[2] ), .S0(new_n25), .Y(n34));
  NAND2X1  g31(.A(new_n25), .B(\A[3] ), .Y(new_n56));
  MX2X1    g32(.A(\A[3] ), .B(\A[2] ), .S0(\Shift[0] ), .Y(new_n57));
  MX2X1    g33(.A(new_n57), .B(new_n45), .S0(\Shift[1] ), .Y(new_n58));
  NOR4X1   g34(.A(Direction), .B(new_n28), .C(new_n26), .D(new_n29_1), .Y(new_n60));
  AOI21X1  g35(.A0(new_n58), .A1(new_n36), .B0(new_n60), .Y(new_n61));
  OAI21X1  g36(.A0(new_n61), .A1(new_n25), .B0(new_n56), .Y(n39));
  BUFX1    g37(.A(\shifted_value[0] ), .Y(\Y[0] ));
  BUFX1    g38(.A(\shifted_value[1] ), .Y(\Y[1] ));
  BUFX1    g39(.A(\shifted_value[2] ), .Y(\Y[2] ));
  BUFX1    g40(.A(\shifted_value[3] ), .Y(\Y[3] ));
  always @ (posedge clock) begin
    \shifted_value[0]  <= n24;
    \shifted_value[1]  <= n29;
    \shifted_value[2]  <= n34;
    \shifted_value[3]  <= n39;
  end
endmodule


