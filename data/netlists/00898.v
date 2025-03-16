// Benchmark "fsm_pattern_detection" written by ABC on Wed Jun 26 15:22:23 2024

module fsm_pattern_detection ( clock, 
    clk, reset, data,
    match, done  );
  input  clock;
  input  clk, reset, data;
  output match, done;
  reg \state[0] , \state[1] , \pattern_idx[0] , \pattern_idx[1] ,
    match_flag, done_flag;
  wire new_n24, new_n25, new_n26, new_n27_1, new_n28, new_n29, new_n30,
    new_n31, new_n33, new_n34, new_n35, new_n36, new_n37_1, new_n39,
    new_n40, new_n41, new_n42, new_n43, new_n44, new_n45, new_n46, new_n47,
    new_n49, new_n50, new_n51, new_n52, new_n53, new_n54, new_n55, new_n57,
    new_n58, new_n59, new_n60, new_n61, new_n62, new_n63, new_n64, new_n66,
    n12, n17, n22, n27, n32, n37;
  NAND2X1  g00(.A(\state[1] ), .B(\state[0] ), .Y(new_n24));
  INVX1    g01(.A(\state[0] ), .Y(new_n25));
  INVX1    g02(.A(\state[1] ), .Y(new_n26));
  INVX1    g03(.A(data), .Y(new_n27_1));
  NOR3X1   g04(.A(\state[1] ), .B(\state[0] ), .C(new_n27_1), .Y(new_n28));
  AND2X1   g05(.A(\pattern_idx[1] ), .B(\pattern_idx[0] ), .Y(new_n29));
  NOR4X1   g06(.A(new_n29), .B(\state[1] ), .C(new_n25), .D(new_n27_1), .Y(new_n30));
  OAI22X1  g07(.A0(new_n30), .A1(new_n28), .B0(new_n26), .B1(new_n25), .Y(new_n31));
  AOI21X1  g08(.A0(new_n31), .A1(new_n24), .B0(reset), .Y(n12));
  NAND2X1  g09(.A(\state[1] ), .B(\state[0] ), .Y(new_n33));
  NAND2X1  g10(.A(\pattern_idx[1] ), .B(\pattern_idx[0] ), .Y(new_n34));
  NOR4X1   g11(.A(new_n34), .B(\state[1] ), .C(new_n25), .D(new_n27_1), .Y(new_n35));
  NOR3X1   g12(.A(new_n26), .B(\state[0] ), .C(new_n27_1), .Y(new_n36));
  OAI22X1  g13(.A0(new_n36), .A1(new_n35), .B0(new_n26), .B1(new_n25), .Y(new_n37_1));
  AOI21X1  g14(.A0(new_n37_1), .A1(new_n33), .B0(reset), .Y(n17));
  NAND3X1  g15(.A(\pattern_idx[0] ), .B(\state[1] ), .C(\state[0] ), .Y(new_n39));
  INVX1    g16(.A(\pattern_idx[1] ), .Y(new_n40));
  NAND3X1  g17(.A(new_n26), .B(\state[0] ), .C(data), .Y(new_n41));
  AOI21X1  g18(.A0(new_n40), .A1(\pattern_idx[0] ), .B0(new_n41), .Y(new_n42));
  OR2X1    g19(.A(\state[1] ), .B(\state[0] ), .Y(new_n43));
  NAND4X1  g20(.A(\pattern_idx[0] ), .B(\state[1] ), .C(new_n25), .D(data), .Y(new_n44));
  NOR2X1   g21(.A(\pattern_idx[0] ), .B(data), .Y(new_n45));
  OAI21X1  g22(.A0(new_n45), .A1(new_n43), .B0(new_n44), .Y(new_n46));
  OAI22X1  g23(.A0(new_n46), .A1(new_n42), .B0(new_n26), .B1(new_n25), .Y(new_n47));
  AOI21X1  g24(.A0(new_n47), .A1(new_n39), .B0(reset), .Y(n22));
  NAND3X1  g25(.A(\pattern_idx[1] ), .B(\state[1] ), .C(\state[0] ), .Y(new_n49));
  NOR2X1   g26(.A(\pattern_idx[1] ), .B(\pattern_idx[0] ), .Y(new_n50));
  OR4X1    g27(.A(new_n50), .B(\state[1] ), .C(new_n25), .D(new_n27_1), .Y(new_n51));
  OR4X1    g28(.A(new_n40), .B(new_n26), .C(\state[0] ), .D(new_n27_1), .Y(new_n52));
  OR4X1    g29(.A(new_n40), .B(\state[1] ), .C(\state[0] ), .D(data), .Y(new_n53));
  NAND3X1  g30(.A(new_n53), .B(new_n52), .C(new_n51), .Y(new_n54));
  OAI21X1  g31(.A0(new_n26), .A1(new_n25), .B0(new_n54), .Y(new_n55));
  AOI21X1  g32(.A0(new_n55), .A1(new_n49), .B0(reset), .Y(n27));
  INVX1    g33(.A(match_flag), .Y(new_n57));
  XOR2X1   g34(.A(\state[1] ), .B(\state[0] ), .Y(new_n58));
  OR2X1    g35(.A(new_n58), .B(new_n57), .Y(new_n59));
  AND2X1   g36(.A(\state[1] ), .B(new_n25), .Y(new_n60));
  AND2X1   g37(.A(new_n26), .B(\state[0] ), .Y(new_n61));
  AND2X1   g38(.A(match_flag), .B(data), .Y(new_n62));
  OAI21X1  g39(.A0(new_n34), .A1(new_n27_1), .B0(new_n57), .Y(new_n63));
  AOI22X1  g40(.A0(new_n63), .A1(new_n61), .B0(new_n62), .B1(new_n60), .Y(new_n64));
  AOI21X1  g41(.A0(new_n64), .A1(new_n59), .B0(reset), .Y(n32));
  AOI21X1  g42(.A0(new_n60), .A1(new_n27_1), .B0(done_flag), .Y(new_n66));
  NOR2X1   g43(.A(new_n66), .B(reset), .Y(n37));
  BUFX1    g44(.A(match_flag), .Y(match));
  BUFX1    g45(.A(done_flag), .Y(done));
  always @ (posedge clock) begin
    \state[0]  <= n12;
    \state[1]  <= n17;
    \pattern_idx[0]  <= n22;
    \pattern_idx[1]  <= n27;
    match_flag <= n32;
    done_flag <= n37;
  end
  initial begin
    \state[0]  <= 1'b0;
    \state[1]  <= 1'b0;
    \pattern_idx[0]  <= 1'b0;
    \pattern_idx[1]  <= 1'b0;
    match_flag <= 1'b0;
    done_flag <= 1'b0;
  end
endmodule


