// Benchmark "barrier_module" written by ABC on Wed Jun 26 15:22:06 2024

module barrier_module ( clock, 
    clk_i, reset_i, \data_i[0] , \data_i[1] , \data_i[2] , \data_i[3] ,
    \src_r_i[0] , \src_r_i[1] , \src_r_i[2] , \src_r_i[3] , \dest_r_i[0] ,
    \dest_r_i[1] ,
    \data_o[0] , \data_o[1] , \data_o[2] , \data_o[3]   );
  input  clock;
  input  clk_i, reset_i, \data_i[0] , \data_i[1] , \data_i[2] ,
    \data_i[3] , \src_r_i[0] , \src_r_i[1] , \src_r_i[2] , \src_r_i[3] ,
    \dest_r_i[0] , \dest_r_i[1] ;
  output \data_o[0] , \data_o[1] , \data_o[2] , \data_o[3] ;
  reg \data_r[0] , \data_r[1] , \data_r[2] , \data_r[3] , activate_n;
  wire new_n32, new_n33, new_n34_1, new_n35, new_n36, new_n37, new_n38,
    new_n39_1, new_n40, new_n41, new_n42, new_n43, new_n44_1, new_n46,
    new_n47, new_n48, new_n51, new_n52, new_n54_1, n34, n39, n44, n49, n54;
  INVX1    g00(.A(\src_r_i[0] ), .Y(new_n32));
  INVX1    g01(.A(\dest_r_i[1] ), .Y(new_n33));
  AND2X1   g02(.A(\data_r[2] ), .B(\dest_r_i[1] ), .Y(new_n34_1));
  AOI21X1  g03(.A0(\data_r[0] ), .A1(new_n33), .B0(new_n34_1), .Y(new_n35));
  AND2X1   g04(.A(\data_r[3] ), .B(\dest_r_i[1] ), .Y(new_n36));
  AOI21X1  g05(.A0(\data_r[1] ), .A1(new_n33), .B0(new_n36), .Y(new_n37));
  MX2X1    g06(.A(new_n35), .B(new_n37), .S0(\dest_r_i[0] ), .Y(new_n38));
  INVX1    g07(.A(\src_r_i[2] ), .Y(new_n39_1));
  INVX1    g08(.A(\src_r_i[3] ), .Y(new_n40));
  OAI22X1  g09(.A0(\data_r[3] ), .A1(new_n40), .B0(\data_r[2] ), .B1(new_n39_1), .Y(new_n41));
  INVX1    g10(.A(\src_r_i[1] ), .Y(new_n42));
  OAI22X1  g11(.A0(\data_r[1] ), .A1(new_n42), .B0(\data_r[0] ), .B1(new_n32), .Y(new_n43));
  OR4X1    g12(.A(new_n43), .B(new_n41), .C(\dest_r_i[1] ), .D(\dest_r_i[0] ), .Y(new_n44_1));
  OAI21X1  g13(.A0(new_n38), .A1(new_n32), .B0(new_n44_1), .Y(\data_o[0] ));
  OR2X1    g14(.A(new_n43), .B(new_n41), .Y(new_n46));
  OR2X1    g15(.A(\dest_r_i[1] ), .B(\dest_r_i[0] ), .Y(new_n47));
  NAND2X1  g16(.A(new_n33), .B(\dest_r_i[0] ), .Y(new_n48));
  AOI21X1  g17(.A0(new_n48), .A1(new_n47), .B0(new_n46), .Y(\data_o[1] ));
  AOI21X1  g18(.A0(\dest_r_i[1] ), .A1(\dest_r_i[0] ), .B0(new_n46), .Y(\data_o[2] ));
  AND2X1   g19(.A(\dest_r_i[1] ), .B(\dest_r_i[0] ), .Y(new_n51));
  NAND2X1  g20(.A(\dest_r_i[1] ), .B(\dest_r_i[0] ), .Y(new_n52));
  AOI21X1  g21(.A0(new_n52), .A1(new_n51), .B0(new_n46), .Y(\data_o[3] ));
  INVX1    g22(.A(reset_i), .Y(new_n54_1));
  AND2X1   g23(.A(activate_n), .B(new_n54_1), .Y(n34));
  AND2X1   g24(.A(\data_i[0] ), .B(new_n54_1), .Y(n39));
  AND2X1   g25(.A(\data_i[1] ), .B(new_n54_1), .Y(n44));
  AND2X1   g26(.A(\data_i[2] ), .B(new_n54_1), .Y(n49));
  NOR3X1   g27(.A(new_n43), .B(new_n41), .C(reset_i), .Y(n54));
  always @ (posedge clock) begin
    \data_r[0]  <= n34;
    \data_r[1]  <= n39;
    \data_r[2]  <= n44;
    \data_r[3]  <= n49;
    activate_n <= n54;
  end
endmodule


