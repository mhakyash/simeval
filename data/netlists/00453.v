// Benchmark "priority_encoder_3bit" written by ABC on Wed Jun 26 15:22:11 2024

module priority_encoder_3bit ( clock, 
    A2, A1, A0,
    EN, \Y[0] , \Y[1] , \Y[2]   );
  input  clock;
  input  A2, A1, A0;
  output EN, \Y[0] , \Y[1] , \Y[2] ;
  reg \stage[0] , \stage[1] , \Y_reg[0] , \Y_reg[1] , \Y_reg[2] ;
  wire new_n23, new_n24, new_n25_1, new_n26, new_n27, new_n28, new_n29_1,
    new_n30, new_n31, new_n32, new_n33_1, new_n34, new_n35, new_n36,
    new_n37, n16, n21, n25, n29, n33;
  NAND2X1  g00(.A(\stage[1] ), .B(\stage[0] ), .Y(new_n23));
  NAND3X1  g01(.A(\Y_reg[2] ), .B(\Y_reg[1] ), .C(\Y_reg[0] ), .Y(new_n24));
  NOR2X1   g02(.A(new_n24), .B(new_n23), .Y(new_n25_1));
  INVX1    g03(.A(\stage[0] ), .Y(new_n26));
  AND2X1   g04(.A(\stage[1] ), .B(new_n26), .Y(new_n27));
  INVX1    g05(.A(\Y_reg[1] ), .Y(new_n28));
  INVX1    g06(.A(\Y_reg[2] ), .Y(new_n29_1));
  NOR3X1   g07(.A(new_n29_1), .B(new_n28), .C(\Y_reg[0] ), .Y(new_n30));
  AOI21X1  g08(.A0(new_n30), .A1(new_n27), .B0(new_n25_1), .Y(new_n31));
  OR2X1    g09(.A(\Y_reg[1] ), .B(\Y_reg[0] ), .Y(new_n32));
  OR4X1    g10(.A(new_n32), .B(new_n29_1), .C(\stage[1] ), .D(new_n26), .Y(new_n33_1));
  AND2X1   g11(.A(\stage[1] ), .B(\stage[0] ), .Y(new_n34));
  NOR2X1   g12(.A(\stage[1] ), .B(new_n26), .Y(new_n35));
  NOR2X1   g13(.A(\stage[1] ), .B(\stage[0] ), .Y(new_n36));
  NOR4X1   g14(.A(new_n36), .B(new_n35), .C(new_n27), .D(new_n34), .Y(new_n37));
  AOI21X1  g15(.A0(new_n33_1), .A1(new_n31), .B0(new_n37), .Y(EN));
  NOR2X1   g16(.A(new_n24), .B(new_n23), .Y(\Y[0] ));
  NOR2X1   g17(.A(new_n37), .B(new_n31), .Y(\Y[1] ));
  AND2X1   g18(.A(new_n23), .B(new_n26), .Y(n16));
  XOR2X1   g19(.A(\stage[1] ), .B(\stage[0] ), .Y(n21));
  AOI21X1  g20(.A0(new_n33_1), .A1(new_n31), .B0(new_n37), .Y(\Y[2] ));
  BUFX1    g21(.A(A0), .Y(n25));
  BUFX1    g22(.A(A1), .Y(n29));
  BUFX1    g23(.A(A2), .Y(n33));
  always @ (posedge clock) begin
    \stage[0]  <= n16;
    \stage[1]  <= n21;
    \Y_reg[0]  <= n25;
    \Y_reg[1]  <= n29;
    \Y_reg[2]  <= n33;
  end
endmodule


