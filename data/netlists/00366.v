// Benchmark "gray_to_bcd" written by ABC on Wed Jun 26 15:22:07 2024

module gray_to_bcd ( clock, 
    clk, reset,
    \bcd_out[0] , \bcd_out[1] , \bcd_out[2] , \bcd_out[3]   );
  input  clock;
  input  clk, reset;
  output \bcd_out[0] , \bcd_out[1] , \bcd_out[2] , \bcd_out[3] ;
  reg \bcd_out[0] , \bcd_out[1] , \bcd_out[2] , \bcd_out[3] ,
    \gray_count[0] , \gray_count[1] , \gray_count[2] , \gray_count[3] ;
  wire new_n31, new_n32, new_n33, new_n34, new_n35_1, new_n36, new_n37,
    new_n38, new_n39, new_n40_1, new_n41, new_n42, new_n43, new_n44,
    new_n45_1, new_n46, new_n47, new_n48, new_n49, new_n50, new_n51,
    new_n52, new_n53, new_n54, new_n55, new_n56, new_n57, new_n58, new_n59,
    new_n60, new_n62, new_n63, new_n64, new_n65, new_n69, new_n73, new_n75,
    new_n76, n14, n18, n22, n26, n30, n35, n40, n45;
  INVX1    g00(.A(\gray_count[2] ), .Y(new_n31));
  OR2X1    g01(.A(\gray_count[1] ), .B(\gray_count[0] ), .Y(new_n32));
  NOR3X1   g02(.A(new_n32), .B(\gray_count[3] ), .C(new_n31), .Y(new_n33));
  INVX1    g03(.A(\gray_count[0] ), .Y(new_n34));
  NOR4X1   g04(.A(\gray_count[3] ), .B(new_n31), .C(\gray_count[1] ), .D(new_n34), .Y(new_n35_1));
  NAND2X1  g05(.A(\gray_count[1] ), .B(\gray_count[0] ), .Y(new_n36));
  NOR3X1   g06(.A(new_n36), .B(\gray_count[3] ), .C(new_n31), .Y(new_n37));
  INVX1    g07(.A(\gray_count[1] ), .Y(new_n38));
  NOR4X1   g08(.A(\gray_count[3] ), .B(new_n31), .C(new_n38), .D(\gray_count[0] ), .Y(new_n39));
  OR4X1    g09(.A(new_n39), .B(new_n37), .C(new_n35_1), .D(new_n33), .Y(new_n40_1));
  NOR2X1   g10(.A(\gray_count[3] ), .B(\gray_count[2] ), .Y(new_n41));
  NAND3X1  g11(.A(new_n41), .B(new_n38), .C(\gray_count[0] ), .Y(new_n42));
  AND2X1   g12(.A(\gray_count[3] ), .B(\gray_count[2] ), .Y(new_n43));
  NAND3X1  g13(.A(new_n43), .B(\gray_count[1] ), .C(new_n34), .Y(new_n44));
  AND2X1   g14(.A(\gray_count[1] ), .B(\gray_count[0] ), .Y(new_n45_1));
  NOR4X1   g15(.A(\gray_count[3] ), .B(\gray_count[2] ), .C(\gray_count[1] ), .D(\gray_count[0] ), .Y(new_n46));
  AOI21X1  g16(.A0(new_n43), .A1(new_n45_1), .B0(new_n46), .Y(new_n47));
  NAND3X1  g17(.A(new_n47), .B(new_n44), .C(new_n42), .Y(new_n48));
  OR2X1    g18(.A(\gray_count[1] ), .B(new_n34), .Y(new_n49));
  NAND2X1  g19(.A(\gray_count[3] ), .B(\gray_count[2] ), .Y(new_n50));
  AOI21X1  g20(.A0(new_n49), .A1(new_n32), .B0(new_n50), .Y(new_n51));
  OR2X1    g21(.A(new_n38), .B(\gray_count[0] ), .Y(new_n52));
  OR2X1    g22(.A(\gray_count[3] ), .B(\gray_count[2] ), .Y(new_n53));
  AOI21X1  g23(.A0(new_n52), .A1(new_n36), .B0(new_n53), .Y(new_n54));
  OR4X1    g24(.A(new_n54), .B(new_n51), .C(new_n48), .D(new_n40_1), .Y(new_n55));
  AND2X1   g25(.A(new_n44), .B(new_n42), .Y(new_n56));
  NOR3X1   g26(.A(new_n50), .B(\gray_count[1] ), .C(new_n34), .Y(new_n57));
  NOR3X1   g27(.A(new_n53), .B(new_n38), .C(\gray_count[0] ), .Y(new_n58));
  NOR4X1   g28(.A(new_n58), .B(new_n57), .C(new_n37), .D(new_n33), .Y(new_n59));
  AOI21X1  g29(.A0(new_n59), .A1(new_n56), .B0(reset), .Y(new_n60));
  AND2X1   g30(.A(new_n60), .B(new_n55), .Y(n14));
  NOR4X1   g31(.A(new_n54), .B(new_n51), .C(new_n48), .D(new_n40_1), .Y(new_n62));
  INVX1    g32(.A(reset), .Y(new_n63));
  OR2X1    g33(.A(new_n35_1), .B(new_n33), .Y(new_n64));
  OAI21X1  g34(.A0(new_n54), .A1(new_n64), .B0(new_n63), .Y(new_n65));
  NOR2X1   g35(.A(new_n65), .B(new_n62), .Y(n18));
  AND2X1   g36(.A(new_n40_1), .B(new_n63), .Y(n22));
  AND2X1   g37(.A(new_n51), .B(new_n63), .Y(new_n69));
  AND2X1   g38(.A(new_n69), .B(new_n55), .Y(n26));
  NOR2X1   g39(.A(\gray_count[0] ), .B(reset), .Y(n30));
  AOI21X1  g40(.A0(new_n52), .A1(new_n49), .B0(reset), .Y(n35));
  XOR2X1   g41(.A(new_n45_1), .B(\gray_count[2] ), .Y(new_n73));
  AND2X1   g42(.A(new_n73), .B(new_n63), .Y(n40));
  NAND3X1  g43(.A(\gray_count[2] ), .B(\gray_count[1] ), .C(\gray_count[0] ), .Y(new_n75));
  XOR2X1   g44(.A(new_n75), .B(\gray_count[3] ), .Y(new_n76));
  NOR2X1   g45(.A(new_n76), .B(reset), .Y(n45));
  always @ (posedge clock) begin
    \bcd_out[0]  <= n14;
    \bcd_out[1]  <= n18;
    \bcd_out[2]  <= n22;
    \bcd_out[3]  <= n26;
    \gray_count[0]  <= n30;
    \gray_count[1]  <= n35;
    \gray_count[2]  <= n40;
    \gray_count[3]  <= n45;
  end
endmodule


