// Benchmark "seven_segment_decoder" written by ABC on Wed Jun 26 15:22:02 2024

module seven_segment_decoder ( clock, 
    \DATA_IN[0] , \DATA_IN[1] , \DATA_IN[2] , \DATA_IN[3] ,
    \SEVEN_SEG_OUT[0] , \SEVEN_SEG_OUT[1] , \SEVEN_SEG_OUT[2] ,
    \SEVEN_SEG_OUT[3] , \SEVEN_SEG_OUT[4] , \SEVEN_SEG_OUT[5] ,
    \SEVEN_SEG_OUT[6]   );
  input  clock;
  input  \DATA_IN[0] , \DATA_IN[1] , \DATA_IN[2] , \DATA_IN[3] ;
  output \SEVEN_SEG_OUT[0] , \SEVEN_SEG_OUT[1] , \SEVEN_SEG_OUT[2] ,
    \SEVEN_SEG_OUT[3] , \SEVEN_SEG_OUT[4] , \SEVEN_SEG_OUT[5] ,
    \SEVEN_SEG_OUT[6] ;
  reg \SEVEN_SEG_OUT[0] , \SEVEN_SEG_OUT[1] , \SEVEN_SEG_OUT[2] ,
    \SEVEN_SEG_OUT[3] , \SEVEN_SEG_OUT[4] , \SEVEN_SEG_OUT[5] ,
    \SEVEN_SEG_OUT[6] , \pipeline_reg3[0] , \pipeline_reg3[1] ,
    \pipeline_reg3[2] , \pipeline_reg3[3] , \pipeline_reg1[0] ,
    \pipeline_reg1[1] , \pipeline_reg1[2] , \pipeline_reg1[3] ,
    \pipeline_reg2[0] , \pipeline_reg2[1] , \pipeline_reg2[2] ,
    \pipeline_reg2[3] ;
  wire new_n69, new_n70, new_n71_1, new_n72, new_n73, new_n74, new_n75_1,
    new_n76, new_n77, new_n78, new_n79_1, new_n80, new_n81, new_n82,
    new_n83_1, new_n84, new_n85, new_n86, new_n87_1, new_n88, new_n89,
    new_n90_1, new_n92, new_n93_1, new_n96_1, new_n98, new_n99, n24, n28,
    n32, n36, n40, n44, n48, n52, n57, n62, n67, n71, n75, n79, n83, n87,
    n90, n93, n96;
  INVX1    g00(.A(\pipeline_reg3[1] ), .Y(new_n69));
  INVX1    g01(.A(\pipeline_reg3[2] ), .Y(new_n70));
  NAND4X1  g02(.A(\pipeline_reg3[3] ), .B(new_n70), .C(new_n69), .D(\pipeline_reg3[0] ), .Y(new_n71_1));
  NOR2X1   g03(.A(\pipeline_reg3[1] ), .B(\pipeline_reg3[0] ), .Y(new_n72));
  NAND3X1  g04(.A(new_n72), .B(\pipeline_reg3[3] ), .C(new_n70), .Y(new_n73));
  INVX1    g05(.A(\pipeline_reg3[0] ), .Y(new_n74));
  OR4X1    g06(.A(\pipeline_reg3[3] ), .B(new_n70), .C(new_n69), .D(new_n74), .Y(new_n75_1));
  OR4X1    g07(.A(\pipeline_reg3[3] ), .B(new_n70), .C(new_n69), .D(\pipeline_reg3[0] ), .Y(new_n76));
  NAND4X1  g08(.A(new_n76), .B(new_n75_1), .C(new_n73), .D(new_n71_1), .Y(new_n77));
  OR2X1    g09(.A(\pipeline_reg3[3] ), .B(\pipeline_reg3[2] ), .Y(new_n78));
  NOR3X1   g10(.A(new_n78), .B(\pipeline_reg3[1] ), .C(new_n74), .Y(new_n79_1));
  NOR4X1   g11(.A(\pipeline_reg3[3] ), .B(\pipeline_reg3[2] ), .C(\pipeline_reg3[1] ), .D(\pipeline_reg3[0] ), .Y(new_n80));
  OR2X1    g12(.A(new_n80), .B(new_n79_1), .Y(new_n81));
  NOR4X1   g13(.A(\pipeline_reg3[3] ), .B(new_n70), .C(\pipeline_reg3[1] ), .D(\pipeline_reg3[0] ), .Y(new_n82));
  NOR4X1   g14(.A(\pipeline_reg3[3] ), .B(new_n70), .C(\pipeline_reg3[1] ), .D(new_n74), .Y(new_n83_1));
  OR2X1    g15(.A(new_n83_1), .B(new_n82), .Y(new_n84));
  NAND2X1  g16(.A(\pipeline_reg3[1] ), .B(\pipeline_reg3[0] ), .Y(new_n85));
  NOR2X1   g17(.A(new_n78), .B(new_n85), .Y(new_n86));
  NOR3X1   g18(.A(new_n78), .B(new_n69), .C(\pipeline_reg3[0] ), .Y(new_n87_1));
  OR2X1    g19(.A(new_n87_1), .B(new_n86), .Y(new_n88));
  NOR4X1   g20(.A(new_n88), .B(new_n84), .C(new_n81), .D(new_n77), .Y(new_n89));
  OR2X1    g21(.A(new_n82), .B(new_n79_1), .Y(new_n90_1));
  OR2X1    g22(.A(new_n90_1), .B(new_n89), .Y(n24));
  INVX1    g23(.A(new_n83_1), .Y(new_n92));
  NAND2X1  g24(.A(new_n92), .B(new_n76), .Y(new_n93_1));
  OR2X1    g25(.A(new_n93_1), .B(new_n89), .Y(n28));
  OR2X1    g26(.A(new_n89), .B(new_n87_1), .Y(n32));
  INVX1    g27(.A(new_n75_1), .Y(new_n96_1));
  OR4X1    g28(.A(new_n89), .B(new_n82), .C(new_n79_1), .D(new_n96_1), .Y(n36));
  OR2X1    g29(.A(\pipeline_reg3[1] ), .B(new_n74), .Y(new_n98));
  OAI22X1  g30(.A0(new_n85), .A1(\pipeline_reg3[3] ), .B0(new_n98), .B1(\pipeline_reg3[2] ), .Y(new_n99));
  OR4X1    g31(.A(new_n99), .B(new_n89), .C(new_n83_1), .D(new_n82), .Y(n40));
  OR4X1    g32(.A(new_n89), .B(new_n88), .C(new_n79_1), .D(new_n96_1), .Y(n44));
  OR4X1    g33(.A(new_n89), .B(new_n80), .C(new_n79_1), .D(new_n96_1), .Y(n48));
  BUFX1    g34(.A(\pipeline_reg2[0] ), .Y(n52));
  BUFX1    g35(.A(\pipeline_reg2[1] ), .Y(n57));
  BUFX1    g36(.A(\pipeline_reg2[2] ), .Y(n62));
  BUFX1    g37(.A(\pipeline_reg2[3] ), .Y(n67));
  BUFX1    g38(.A(\DATA_IN[0] ), .Y(n71));
  BUFX1    g39(.A(\DATA_IN[1] ), .Y(n75));
  BUFX1    g40(.A(\DATA_IN[2] ), .Y(n79));
  BUFX1    g41(.A(\DATA_IN[3] ), .Y(n83));
  BUFX1    g42(.A(\pipeline_reg1[0] ), .Y(n87));
  BUFX1    g43(.A(\pipeline_reg1[1] ), .Y(n90));
  BUFX1    g44(.A(\pipeline_reg1[2] ), .Y(n93));
  BUFX1    g45(.A(\pipeline_reg1[3] ), .Y(n96));
  always @ (posedge clock) begin
    \SEVEN_SEG_OUT[0]  <= n24;
    \SEVEN_SEG_OUT[1]  <= n28;
    \SEVEN_SEG_OUT[2]  <= n32;
    \SEVEN_SEG_OUT[3]  <= n36;
    \SEVEN_SEG_OUT[4]  <= n40;
    \SEVEN_SEG_OUT[5]  <= n44;
    \SEVEN_SEG_OUT[6]  <= n48;
    \pipeline_reg3[0]  <= n52;
    \pipeline_reg3[1]  <= n57;
    \pipeline_reg3[2]  <= n62;
    \pipeline_reg3[3]  <= n67;
    \pipeline_reg1[0]  <= n71;
    \pipeline_reg1[1]  <= n75;
    \pipeline_reg1[2]  <= n79;
    \pipeline_reg1[3]  <= n83;
    \pipeline_reg2[0]  <= n87;
    \pipeline_reg2[1]  <= n90;
    \pipeline_reg2[2]  <= n93;
    \pipeline_reg2[3]  <= n96;
  end
endmodule


