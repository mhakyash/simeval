// Benchmark "binary_counter" written by ABC on Wed Jun 26 15:22:01 2024

module binary_counter ( clock, 
    reset, load, clk, \data_in[0] , \data_in[1] , \data_in[2] ,
    \data_in[3] ,
    \count[0] , \count[1] , \count[2] , \count[3]   );
  input  clock;
  input  reset, load, clk, \data_in[0] , \data_in[1] , \data_in[2] ,
    \data_in[3] ;
  output \count[0] , \count[1] , \count[2] , \count[3] ;
  reg \stage2_count[0] , \stage2_count[1] , \stage2_count[2] ,
    \stage2_count[3] , \stage1_count[0] , \stage1_count[1] ,
    \stage1_count[2] , \stage1_count[3] ;
  wire new_n36, new_n37, new_n39_1, new_n40, new_n41, new_n43, new_n44_1,
    new_n45, new_n47, new_n48, new_n49_1, new_n50, new_n52, new_n54_1,
    new_n56, new_n58, n24, n29, n34, n39, n44, n49, n54, n59;
  OR2X1    g00(.A(\stage2_count[0] ), .B(load), .Y(new_n36));
  NAND2X1  g01(.A(\data_in[0] ), .B(load), .Y(new_n37));
  AOI21X1  g02(.A0(new_n37), .A1(new_n36), .B0(reset), .Y(n24));
  INVX1    g03(.A(reset), .Y(new_n39_1));
  XOR2X1   g04(.A(\stage2_count[1] ), .B(\stage2_count[0] ), .Y(new_n40));
  MX2X1    g05(.A(new_n40), .B(\data_in[1] ), .S0(load), .Y(new_n41));
  AND2X1   g06(.A(new_n41), .B(new_n39_1), .Y(n29));
  AND2X1   g07(.A(\stage2_count[1] ), .B(\stage2_count[0] ), .Y(new_n43));
  XOR2X1   g08(.A(new_n43), .B(\stage2_count[2] ), .Y(new_n44_1));
  MX2X1    g09(.A(new_n44_1), .B(\data_in[2] ), .S0(load), .Y(new_n45));
  AND2X1   g10(.A(new_n45), .B(new_n39_1), .Y(n34));
  INVX1    g11(.A(\stage2_count[3] ), .Y(new_n47));
  NAND3X1  g12(.A(\stage2_count[2] ), .B(\stage2_count[1] ), .C(\stage2_count[0] ), .Y(new_n48));
  XOR2X1   g13(.A(new_n48), .B(new_n47), .Y(new_n49_1));
  MX2X1    g14(.A(new_n49_1), .B(\data_in[3] ), .S0(load), .Y(new_n50));
  AND2X1   g15(.A(new_n50), .B(new_n39_1), .Y(n39));
  MX2X1    g16(.A(\stage2_count[0] ), .B(\data_in[0] ), .S0(load), .Y(new_n52));
  AND2X1   g17(.A(new_n52), .B(new_n39_1), .Y(n44));
  MX2X1    g18(.A(\stage2_count[1] ), .B(\data_in[1] ), .S0(load), .Y(new_n54_1));
  AND2X1   g19(.A(new_n54_1), .B(new_n39_1), .Y(n49));
  MX2X1    g20(.A(\stage2_count[2] ), .B(\data_in[2] ), .S0(load), .Y(new_n56));
  AND2X1   g21(.A(new_n56), .B(new_n39_1), .Y(n54));
  MX2X1    g22(.A(\stage2_count[3] ), .B(\data_in[3] ), .S0(load), .Y(new_n58));
  AND2X1   g23(.A(new_n58), .B(new_n39_1), .Y(n59));
  BUFX1    g24(.A(\stage1_count[0] ), .Y(\count[0] ));
  BUFX1    g25(.A(\stage1_count[1] ), .Y(\count[1] ));
  BUFX1    g26(.A(\stage1_count[2] ), .Y(\count[2] ));
  BUFX1    g27(.A(\stage1_count[3] ), .Y(\count[3] ));
  always @ (posedge clock) begin
    \stage2_count[0]  <= n24;
    \stage2_count[1]  <= n29;
    \stage2_count[2]  <= n34;
    \stage2_count[3]  <= n39;
    \stage1_count[0]  <= n44;
    \stage1_count[1]  <= n49;
    \stage1_count[2]  <= n54;
    \stage1_count[3]  <= n59;
  end
endmodule


