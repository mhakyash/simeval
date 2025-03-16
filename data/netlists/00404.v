// Benchmark "top_module" written by ABC on Wed Jun 26 15:22:10 2024

module top_module ( clock, 
    clk, \in[0] , \in[1] , \in[2] , \in[3] ,
    \Q[0] , \Q[1] , \Q[2] , \Q[3] , \out[0] , \out[1] , \out[2] , \out[3] ,
    \out[4] , \out[5] , \out[6] , \out[7]   );
  input  clock;
  input  clk, \in[0] , \in[1] , \in[2] , \in[3] ;
  output \Q[0] , \Q[1] , \Q[2] , \Q[3] , \out[0] , \out[1] , \out[2] ,
    \out[3] , \out[4] , \out[5] , \out[6] , \out[7] ;
  reg \top_module|johnson[0] , \top_module|johnson[1] ,
    \top_module|johnson[2] , \top_module|johnson[3] ;
  wire new_n30, new_n31, new_n32, new_n33, new_n34, new_n35, new_n36,
    new_n37, new_n38, new_n39, new_n40, new_n42, new_n46_1, new_n47,
    new_n48_1, new_n49_1, new_n50, new_n51_1, new_n52_1, new_n53,
    new_n54_1, new_n55_1, new_n56, new_n57, new_n58, new_n59, new_n61,
    new_n63, new_n65, n45, n48, n51, n54;
  INVX1    g00(.A(\in[1] ), .Y(new_n30));
  AND2X1   g01(.A(\in[3] ), .B(new_n30), .Y(new_n31));
  XOR2X1   g02(.A(\in[3] ), .B(\in[1] ), .Y(new_n32));
  XOR2X1   g03(.A(\in[2] ), .B(\in[0] ), .Y(new_n33));
  INVX1    g04(.A(\in[2] ), .Y(new_n34));
  AOI21X1  g05(.A0(new_n34), .A1(\in[0] ), .B0(new_n32), .Y(new_n35));
  OAI22X1  g06(.A0(new_n35), .A1(new_n31), .B0(new_n33), .B1(new_n32), .Y(new_n36));
  INVX1    g07(.A(\in[0] ), .Y(new_n37));
  AOI22X1  g08(.A0(\in[3] ), .A1(new_n30), .B0(\in[2] ), .B1(new_n37), .Y(new_n38));
  INVX1    g09(.A(\in[3] ), .Y(new_n39));
  AOI22X1  g10(.A0(new_n39), .A1(\in[1] ), .B0(new_n34), .B1(\in[0] ), .Y(new_n40));
  NAND3X1  g11(.A(new_n40), .B(new_n38), .C(new_n36), .Y(\out[4] ));
  NAND2X1  g12(.A(new_n40), .B(new_n38), .Y(new_n42));
  NAND2X1  g13(.A(new_n42), .B(new_n36), .Y(\out[5] ));
  INVX1    g14(.A(\top_module|johnson[1] ), .Y(new_n46_1));
  INVX1    g15(.A(\top_module|johnson[2] ), .Y(new_n47));
  INVX1    g16(.A(\top_module|johnson[3] ), .Y(new_n48_1));
  NOR4X1   g17(.A(new_n48_1), .B(new_n47), .C(new_n46_1), .D(\top_module|johnson[0] ), .Y(new_n49_1));
  INVX1    g18(.A(\top_module|johnson[0] ), .Y(new_n50));
  NOR4X1   g19(.A(\top_module|johnson[3] ), .B(new_n47), .C(new_n46_1), .D(new_n50), .Y(new_n51_1));
  OR2X1    g20(.A(new_n51_1), .B(new_n49_1), .Y(new_n52_1));
  NOR4X1   g21(.A(\top_module|johnson[3] ), .B(\top_module|johnson[2] ), .C(new_n46_1), .D(new_n50), .Y(new_n53));
  NOR4X1   g22(.A(\top_module|johnson[3] ), .B(\top_module|johnson[2] ), .C(\top_module|johnson[1] ), .D(new_n50), .Y(new_n54_1));
  OR2X1    g23(.A(new_n54_1), .B(new_n53), .Y(new_n55_1));
  NOR4X1   g24(.A(new_n48_1), .B(\top_module|johnson[2] ), .C(\top_module|johnson[1] ), .D(\top_module|johnson[0] ), .Y(new_n56));
  NOR4X1   g25(.A(new_n48_1), .B(new_n47), .C(\top_module|johnson[1] ), .D(\top_module|johnson[0] ), .Y(new_n57));
  NOR4X1   g26(.A(new_n57), .B(new_n56), .C(new_n55_1), .D(new_n52_1), .Y(new_n58));
  OR2X1    g27(.A(new_n56), .B(new_n55_1), .Y(new_n59));
  MX2X1    g28(.A(new_n59), .B(\top_module|johnson[0] ), .S0(new_n58), .Y(n45));
  OR2X1    g29(.A(new_n55_1), .B(new_n51_1), .Y(new_n61));
  MX2X1    g30(.A(new_n61), .B(\top_module|johnson[1] ), .S0(new_n58), .Y(n48));
  OR2X1    g31(.A(new_n53), .B(new_n52_1), .Y(new_n63));
  MX2X1    g32(.A(new_n63), .B(\top_module|johnson[2] ), .S0(new_n58), .Y(n51));
  OR2X1    g33(.A(new_n57), .B(new_n52_1), .Y(new_n65));
  MX2X1    g34(.A(new_n65), .B(\top_module|johnson[3] ), .S0(new_n58), .Y(n54));
  ZERO     g35(.Y(\out[6] ));
  ZERO     g36(.Y(\out[7] ));
  BUFX1    g37(.A(\top_module|johnson[0] ), .Y(\Q[0] ));
  BUFX1    g38(.A(\top_module|johnson[1] ), .Y(\Q[1] ));
  BUFX1    g39(.A(\top_module|johnson[2] ), .Y(\Q[2] ));
  BUFX1    g40(.A(\top_module|johnson[3] ), .Y(\Q[3] ));
  BUFX1    g41(.A(\top_module|johnson[0] ), .Y(\out[0] ));
  BUFX1    g42(.A(\top_module|johnson[1] ), .Y(\out[1] ));
  BUFX1    g43(.A(\top_module|johnson[2] ), .Y(\out[2] ));
  BUFX1    g44(.A(\top_module|johnson[3] ), .Y(\out[3] ));
  always @ (posedge clock) begin
    \top_module|johnson[0]  <= n45;
    \top_module|johnson[1]  <= n48;
    \top_module|johnson[2]  <= n51;
    \top_module|johnson[3]  <= n54;
  end
endmodule


