// Benchmark "async_reset_release" written by ABC on Wed Jun 26 15:22:03 2024

module async_reset_release ( clock, 
    clk, reset,
    release  );
  input  clock;
  input  clk, reset;
  output release;
  reg release_ff, \counter[0] , \counter[1] , \counter[2] , \counter[3] ,
    \counter[4] , \counter[5] , \counter[6] , \counter[7] ;
  wire new_n31, new_n32, new_n33_1, new_n34, new_n35, new_n37, new_n39,
    new_n40, new_n42, new_n43_1, new_n44, new_n46, new_n47, new_n48_1,
    new_n50, new_n51, new_n52, new_n53, new_n55, new_n56, new_n57, new_n59,
    new_n60, new_n61, new_n62, new_n64, new_n65, new_n66, new_n67, n8, n13,
    n18, n23, n28, n33, n38, n43, n48;
  INVX1    g00(.A(reset), .Y(new_n31));
  OAI21X1  g01(.A0(\counter[2] ), .A1(\counter[1] ), .B0(\counter[3] ), .Y(new_n32));
  OR4X1    g02(.A(\counter[7] ), .B(\counter[6] ), .C(\counter[5] ), .D(\counter[4] ), .Y(new_n33_1));
  NOR4X1   g03(.A(\counter[7] ), .B(\counter[6] ), .C(\counter[5] ), .D(\counter[4] ), .Y(new_n34));
  OAI21X1  g04(.A0(new_n33_1), .A1(new_n32), .B0(new_n34), .Y(new_n35));
  AND2X1   g05(.A(new_n35), .B(new_n31), .Y(n8));
  XOR2X1   g06(.A(new_n35), .B(\counter[0] ), .Y(new_n37));
  NOR2X1   g07(.A(new_n37), .B(reset), .Y(n13));
  XOR2X1   g08(.A(\counter[1] ), .B(\counter[0] ), .Y(new_n39));
  MX2X1    g09(.A(new_n39), .B(\counter[1] ), .S0(new_n35), .Y(new_n40));
  AND2X1   g10(.A(new_n40), .B(new_n31), .Y(n18));
  AND2X1   g11(.A(\counter[1] ), .B(\counter[0] ), .Y(new_n42));
  XOR2X1   g12(.A(new_n42), .B(\counter[2] ), .Y(new_n43_1));
  MX2X1    g13(.A(new_n43_1), .B(\counter[2] ), .S0(new_n35), .Y(new_n44));
  AND2X1   g14(.A(new_n44), .B(new_n31), .Y(n23));
  AND2X1   g15(.A(new_n42), .B(\counter[2] ), .Y(new_n46));
  XOR2X1   g16(.A(new_n46), .B(\counter[3] ), .Y(new_n47));
  MX2X1    g17(.A(new_n47), .B(\counter[3] ), .S0(new_n35), .Y(new_n48_1));
  AND2X1   g18(.A(new_n48_1), .B(new_n31), .Y(n28));
  INVX1    g19(.A(\counter[4] ), .Y(new_n50));
  NAND4X1  g20(.A(\counter[3] ), .B(\counter[2] ), .C(\counter[1] ), .D(\counter[0] ), .Y(new_n51));
  XOR2X1   g21(.A(new_n51), .B(new_n50), .Y(new_n52));
  MX2X1    g22(.A(new_n52), .B(\counter[4] ), .S0(new_n35), .Y(new_n53));
  AND2X1   g23(.A(new_n53), .B(new_n31), .Y(n33));
  NOR2X1   g24(.A(new_n51), .B(new_n50), .Y(new_n55));
  XOR2X1   g25(.A(new_n55), .B(\counter[5] ), .Y(new_n56));
  MX2X1    g26(.A(new_n56), .B(\counter[5] ), .S0(new_n35), .Y(new_n57));
  AND2X1   g27(.A(new_n57), .B(new_n31), .Y(n38));
  INVX1    g28(.A(\counter[5] ), .Y(new_n59));
  NOR3X1   g29(.A(new_n51), .B(new_n59), .C(new_n50), .Y(new_n60));
  XOR2X1   g30(.A(new_n60), .B(\counter[6] ), .Y(new_n61));
  MX2X1    g31(.A(new_n61), .B(\counter[6] ), .S0(new_n35), .Y(new_n62));
  AND2X1   g32(.A(new_n62), .B(new_n31), .Y(n43));
  INVX1    g33(.A(\counter[6] ), .Y(new_n64));
  NOR4X1   g34(.A(new_n51), .B(new_n64), .C(new_n59), .D(new_n50), .Y(new_n65));
  XOR2X1   g35(.A(new_n65), .B(\counter[7] ), .Y(new_n66));
  MX2X1    g36(.A(new_n66), .B(\counter[7] ), .S0(new_n35), .Y(new_n67));
  AND2X1   g37(.A(new_n67), .B(new_n31), .Y(n48));
  BUFX1    g38(.A(release_ff), .Y(release));
  always @ (posedge clock) begin
    release_ff <= n8;
    \counter[0]  <= n13;
    \counter[1]  <= n18;
    \counter[2]  <= n23;
    \counter[3]  <= n28;
    \counter[4]  <= n33;
    \counter[5]  <= n38;
    \counter[6]  <= n43;
    \counter[7]  <= n48;
  end
endmodule


