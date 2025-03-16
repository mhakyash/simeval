// Benchmark "seven_segment" written by ABC on Wed Jun 26 15:22:09 2024

module seven_segment ( clock, 
    \data_in[0] , \data_in[1] , \data_in[2] , \data_in[3] ,
    \seg_out[0] , \seg_out[1] , \seg_out[2] , \seg_out[3] , \seg_out[4] ,
    \seg_out[5] , \seg_out[6]   );
  input  clock;
  input  \data_in[0] , \data_in[1] , \data_in[2] , \data_in[3] ;
  output \seg_out[0] , \seg_out[1] , \seg_out[2] , \seg_out[3] , \seg_out[4] ,
    \seg_out[5] , \seg_out[6] ;
  reg \stage3_out[0] , \stage3_out[1] , \stage3_out[2] , \stage3_out[3] ,
    \stage2_out[0] , \stage2_out[1] , \stage2_out[2] , \stage2_out[3] ,
    \stage1_out[0] , \stage1_out[1] , \stage1_out[2] , \stage1_out[3] ;
  wire new_n48_1, new_n49, new_n50, new_n51, new_n52_1, new_n53, new_n54,
    new_n55, new_n56_1, new_n57, new_n58, new_n59_1, new_n60, new_n61,
    new_n62_1, new_n63, new_n64, new_n65_1, new_n66, new_n67, new_n68_1,
    new_n69, new_n70, new_n71, new_n72, new_n73, new_n75, new_n77, new_n79,
    new_n81, new_n83, new_n84, new_n86, n24, n29, n34, n39, n44, n48, n52,
    n56, n59, n62, n65, n68;
  INVX1    g00(.A(\stage3_out[0] ), .Y(new_n48_1));
  INVX1    g01(.A(\stage3_out[3] ), .Y(new_n49));
  OR4X1    g02(.A(new_n49), .B(\stage3_out[2] ), .C(\stage3_out[1] ), .D(new_n48_1), .Y(new_n50));
  OR4X1    g03(.A(new_n49), .B(\stage3_out[2] ), .C(\stage3_out[1] ), .D(\stage3_out[0] ), .Y(new_n51));
  INVX1    g04(.A(\stage3_out[1] ), .Y(new_n52_1));
  INVX1    g05(.A(\stage3_out[2] ), .Y(new_n53));
  OR4X1    g06(.A(\stage3_out[3] ), .B(new_n53), .C(new_n52_1), .D(\stage3_out[0] ), .Y(new_n54));
  NAND3X1  g07(.A(new_n54), .B(new_n51), .C(new_n50), .Y(new_n55));
  NOR4X1   g08(.A(\stage3_out[3] ), .B(new_n53), .C(\stage3_out[1] ), .D(new_n48_1), .Y(new_n56_1));
  OR2X1    g09(.A(\stage3_out[1] ), .B(\stage3_out[0] ), .Y(new_n57));
  NOR3X1   g10(.A(new_n57), .B(\stage3_out[3] ), .C(new_n53), .Y(new_n58));
  OR2X1    g11(.A(\stage3_out[3] ), .B(\stage3_out[2] ), .Y(new_n59_1));
  NOR3X1   g12(.A(new_n59_1), .B(new_n52_1), .C(new_n48_1), .Y(new_n60));
  NOR3X1   g13(.A(new_n59_1), .B(new_n52_1), .C(\stage3_out[0] ), .Y(new_n61));
  OR2X1    g14(.A(new_n61), .B(new_n60), .Y(new_n62_1));
  OR4X1    g15(.A(new_n62_1), .B(new_n58), .C(new_n56_1), .D(new_n55), .Y(new_n63));
  OR2X1    g16(.A(new_n58), .B(new_n56_1), .Y(new_n64));
  NOR4X1   g17(.A(new_n49), .B(\stage3_out[2] ), .C(\stage3_out[1] ), .D(new_n48_1), .Y(new_n65_1));
  NOR3X1   g18(.A(new_n57), .B(new_n49), .C(\stage3_out[2] ), .Y(new_n66));
  NOR4X1   g19(.A(\stage3_out[3] ), .B(new_n53), .C(new_n52_1), .D(\stage3_out[0] ), .Y(new_n67));
  NOR4X1   g20(.A(\stage3_out[3] ), .B(new_n53), .C(new_n52_1), .D(new_n48_1), .Y(new_n68_1));
  OR4X1    g21(.A(new_n68_1), .B(new_n67), .C(new_n66), .D(new_n65_1), .Y(new_n69));
  NOR3X1   g22(.A(new_n59_1), .B(\stage3_out[1] ), .C(new_n48_1), .Y(new_n70));
  NOR4X1   g23(.A(\stage3_out[3] ), .B(\stage3_out[2] ), .C(\stage3_out[1] ), .D(\stage3_out[0] ), .Y(new_n71));
  OR2X1    g24(.A(new_n71), .B(new_n70), .Y(new_n72));
  OR4X1    g25(.A(new_n72), .B(new_n69), .C(new_n62_1), .D(new_n64), .Y(new_n73));
  AND2X1   g26(.A(new_n73), .B(new_n63), .Y(\seg_out[0] ));
  OR4X1    g27(.A(new_n71), .B(new_n58), .C(new_n56_1), .D(new_n55), .Y(new_n75));
  AND2X1   g28(.A(new_n75), .B(new_n73), .Y(\seg_out[1] ));
  OR4X1    g29(.A(new_n71), .B(new_n61), .C(new_n67), .D(new_n66), .Y(new_n77));
  AND2X1   g30(.A(new_n77), .B(new_n73), .Y(\seg_out[2] ));
  OR4X1    g31(.A(new_n71), .B(new_n62_1), .C(new_n56_1), .D(new_n55), .Y(new_n79));
  AND2X1   g32(.A(new_n79), .B(new_n73), .Y(\seg_out[3] ));
  OR4X1    g33(.A(new_n72), .B(new_n69), .C(new_n60), .D(new_n64), .Y(new_n81));
  AND2X1   g34(.A(new_n81), .B(new_n73), .Y(\seg_out[4] ));
  OR4X1    g35(.A(new_n68_1), .B(new_n58), .C(new_n66), .D(new_n65_1), .Y(new_n83));
  OR4X1    g36(.A(new_n83), .B(new_n72), .C(new_n61), .D(new_n60), .Y(new_n84));
  AND2X1   g37(.A(new_n84), .B(new_n73), .Y(\seg_out[5] ));
  OR4X1    g38(.A(new_n71), .B(new_n69), .C(new_n62_1), .D(new_n56_1), .Y(new_n86));
  AND2X1   g39(.A(new_n86), .B(new_n73), .Y(\seg_out[6] ));
  BUFX1    g40(.A(\stage2_out[0] ), .Y(n24));
  BUFX1    g41(.A(\stage2_out[1] ), .Y(n29));
  BUFX1    g42(.A(\stage2_out[2] ), .Y(n34));
  BUFX1    g43(.A(\stage2_out[3] ), .Y(n39));
  BUFX1    g44(.A(\stage1_out[0] ), .Y(n44));
  BUFX1    g45(.A(\stage1_out[1] ), .Y(n48));
  BUFX1    g46(.A(\stage1_out[2] ), .Y(n52));
  BUFX1    g47(.A(\stage1_out[3] ), .Y(n56));
  BUFX1    g48(.A(\data_in[0] ), .Y(n59));
  BUFX1    g49(.A(\data_in[1] ), .Y(n62));
  BUFX1    g50(.A(\data_in[2] ), .Y(n65));
  BUFX1    g51(.A(\data_in[3] ), .Y(n68));
  always @ (posedge clock) begin
    \stage3_out[0]  <= n24;
    \stage3_out[1]  <= n29;
    \stage3_out[2]  <= n34;
    \stage3_out[3]  <= n39;
    \stage2_out[0]  <= n44;
    \stage2_out[1]  <= n48;
    \stage2_out[2]  <= n52;
    \stage2_out[3]  <= n56;
    \stage1_out[0]  <= n59;
    \stage1_out[1]  <= n62;
    \stage1_out[2]  <= n65;
    \stage1_out[3]  <= n68;
  end
endmodule


