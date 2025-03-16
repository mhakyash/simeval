// Benchmark "counter" written by ABC on Wed Jun 26 15:22:11 2024

module counter ( clock, 
    \max_val[0] , \max_val[1] , \max_val[2] , \max_val[3] , reset, clk,
    \count_val[0] , \count_val[1] , \count_val[2] , \count_val[3]   );
  input  clock;
  input  \max_val[0] , \max_val[1] , \max_val[2] , \max_val[3] , reset,
    clk;
  output \count_val[0] , \count_val[1] , \count_val[2] , \count_val[3] ;
  reg \reg_count[0] , \reg_count[1] , \reg_count[2] , \reg_count[3] ;
  wire new_n23, new_n24, new_n25, new_n26, new_n27_1, new_n29, new_n30,
    new_n32_1, new_n33, new_n35, new_n36, n22, n27, n32, n37;
  XOR2X1   g00(.A(\reg_count[2] ), .B(\max_val[2] ), .Y(new_n23));
  XOR2X1   g01(.A(\reg_count[3] ), .B(\max_val[3] ), .Y(new_n24));
  XOR2X1   g02(.A(\reg_count[0] ), .B(\max_val[0] ), .Y(new_n25));
  XOR2X1   g03(.A(\reg_count[1] ), .B(\max_val[1] ), .Y(new_n26));
  NOR4X1   g04(.A(new_n26), .B(new_n25), .C(new_n24), .D(new_n23), .Y(new_n27_1));
  NOR3X1   g05(.A(new_n27_1), .B(\reg_count[0] ), .C(reset), .Y(n22));
  INVX1    g06(.A(\reg_count[0] ), .Y(new_n29));
  XOR2X1   g07(.A(\reg_count[1] ), .B(new_n29), .Y(new_n30));
  NOR3X1   g08(.A(new_n30), .B(new_n27_1), .C(reset), .Y(n27));
  NAND2X1  g09(.A(\reg_count[1] ), .B(\reg_count[0] ), .Y(new_n32_1));
  XOR2X1   g10(.A(new_n32_1), .B(\reg_count[2] ), .Y(new_n33));
  NOR3X1   g11(.A(new_n33), .B(new_n27_1), .C(reset), .Y(n32));
  NAND3X1  g12(.A(\reg_count[2] ), .B(\reg_count[1] ), .C(\reg_count[0] ), .Y(new_n35));
  XOR2X1   g13(.A(new_n35), .B(\reg_count[3] ), .Y(new_n36));
  NOR3X1   g14(.A(new_n36), .B(new_n27_1), .C(reset), .Y(n37));
  BUFX1    g15(.A(\reg_count[0] ), .Y(\count_val[0] ));
  BUFX1    g16(.A(\reg_count[1] ), .Y(\count_val[1] ));
  BUFX1    g17(.A(\reg_count[2] ), .Y(\count_val[2] ));
  BUFX1    g18(.A(\reg_count[3] ), .Y(\count_val[3] ));
  always @ (posedge clock) begin
    \reg_count[0]  <= n22;
    \reg_count[1]  <= n27;
    \reg_count[2]  <= n32;
    \reg_count[3]  <= n37;
  end
endmodule


