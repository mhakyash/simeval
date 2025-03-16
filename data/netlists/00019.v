// Benchmark "bcd_counter" written by ABC on Wed Jun 26 15:21:58 2024

module bcd_counter ( clock, 
    clk, reset,
    \ena[1] , \ena[2] , \ena[3] , \q[0] , \q[1] , \q[2] , \q[3] , \q[4] ,
    \q[5] , \q[6] , \q[7] , \q[8] , \q[9] , \q[10] , \q[11] , \q[12] ,
    \q[13] , \q[14] , \q[15]   );
  input  clock;
  input  clk, reset;
  output \ena[1] , \ena[2] , \ena[3] , \q[0] , \q[1] , \q[2] , \q[3] , \q[4] ,
    \q[5] , \q[6] , \q[7] , \q[8] , \q[9] , \q[10] , \q[11] , \q[12] ,
    \q[13] , \q[14] , \q[15] ;
  reg \ena[1] , \ena[2] , \ena[3] , \count[0] , \count[1] , \count[2] ,
    \count[3] ;
  wire new_n43, new_n44_1, new_n45, new_n46, new_n47, new_n48_1, new_n49,
    new_n50, new_n51, new_n52_1, new_n54, new_n56_1, new_n76, new_n78,
    new_n79, new_n81, new_n82, n44, n48, n52, n56, n61, n66, n71;
  INVX1    g00(.A(\count[0] ), .Y(new_n43));
  INVX1    g01(.A(\count[1] ), .Y(new_n44_1));
  INVX1    g02(.A(\count[3] ), .Y(new_n45));
  NOR4X1   g03(.A(new_n45), .B(\count[2] ), .C(new_n44_1), .D(\count[0] ), .Y(new_n46));
  INVX1    g04(.A(\count[2] ), .Y(new_n47));
  AOI21X1  g05(.A0(new_n47), .A1(new_n44_1), .B0(new_n45), .Y(new_n48_1));
  NOR3X1   g06(.A(new_n48_1), .B(new_n46), .C(new_n43), .Y(new_n49));
  OR4X1    g07(.A(new_n45), .B(\count[2] ), .C(new_n44_1), .D(\count[0] ), .Y(new_n50));
  OAI21X1  g08(.A0(\count[2] ), .A1(\count[1] ), .B0(\count[3] ), .Y(new_n51));
  AOI21X1  g09(.A0(new_n51), .A1(new_n50), .B0(new_n43), .Y(new_n52_1));
  OR2X1    g10(.A(new_n52_1), .B(new_n49), .Y(\q[0] ));
  AND2X1   g11(.A(new_n51), .B(new_n50), .Y(new_n54));
  XOR2X1   g12(.A(new_n54), .B(new_n44_1), .Y(\q[1] ));
  XOR2X1   g13(.A(\count[2] ), .B(new_n44_1), .Y(new_n56_1));
  MX2X1    g14(.A(new_n56_1), .B(\count[2] ), .S0(new_n54), .Y(\q[2] ));
  NOR3X1   g15(.A(new_n45), .B(\count[2] ), .C(\count[1] ), .Y(\q[3] ));
  OR2X1    g16(.A(new_n48_1), .B(new_n46), .Y(\q[4] ));
  INVX1    g17(.A(reset), .Y(n44));
  AND2X1   g18(.A(\ena[1] ), .B(n44), .Y(n52));
  NOR2X1   g19(.A(\count[0] ), .B(reset), .Y(n56));
  XOR2X1   g20(.A(\count[1] ), .B(\count[0] ), .Y(new_n76));
  AND2X1   g21(.A(new_n76), .B(n44), .Y(n61));
  AND2X1   g22(.A(\count[1] ), .B(\count[0] ), .Y(new_n78));
  XOR2X1   g23(.A(new_n78), .B(\count[2] ), .Y(new_n79));
  AND2X1   g24(.A(new_n79), .B(n44), .Y(n66));
  NAND3X1  g25(.A(\count[2] ), .B(\count[1] ), .C(\count[0] ), .Y(new_n81));
  XOR2X1   g26(.A(new_n81), .B(new_n45), .Y(new_n82));
  AND2X1   g27(.A(new_n82), .B(n44), .Y(n71));
  ZERO     g28(.Y(\q[5] ));
  ZERO     g29(.Y(\q[6] ));
  ZERO     g30(.Y(\q[7] ));
  ZERO     g31(.Y(\q[8] ));
  ZERO     g32(.Y(\q[9] ));
  ZERO     g33(.Y(\q[10] ));
  ZERO     g34(.Y(\q[11] ));
  ZERO     g35(.Y(\q[12] ));
  ZERO     g36(.Y(\q[13] ));
  ZERO     g37(.Y(\q[14] ));
  ZERO     g38(.Y(\q[15] ));
  ZERO     g39(.Y(n48));
  always @ (posedge clock) begin
    \ena[1]  <= n44;
    \ena[2]  <= n48;
    \ena[3]  <= n52;
    \count[0]  <= n56;
    \count[1]  <= n61;
    \count[2]  <= n66;
    \count[3]  <= n71;
  end
endmodule


