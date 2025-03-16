// Benchmark "ripple_shift" written by ABC on Wed Jun 26 15:22:23 2024

module ripple_shift ( clock, 
    clk, reset, \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] ,
    \B[3] , cin, \parallel_load[0] , \parallel_load[1] ,
    \parallel_load[2] , shift, control,
    \sum[0] , \sum[1] , \sum[2] , \sum[3] , cout, \out[0] , \out[1] ,
    \out[2] , \xor_result[0] , \xor_result[1] , \xor_result[2]   );
  input  clock;
  input  clk, reset, \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] ,
    \B[2] , \B[3] , cin, \parallel_load[0] , \parallel_load[1] ,
    \parallel_load[2] , shift, control;
  output \sum[0] , \sum[1] , \sum[2] , \sum[3] , cout, \out[0] , \out[1] ,
    \out[2] , \xor_result[0] , \xor_result[1] , \xor_result[2] ;
  reg \ripple_shift|shift_reg[0] , \ripple_shift|shift_reg[1] ,
    \ripple_shift|shift_reg[2] ;
  wire new_n37, new_n38, new_n39, new_n41, new_n42, new_n43, new_n44,
    new_n45, new_n46, new_n48, new_n49, new_n50, new_n51, new_n53, new_n54,
    new_n55, new_n56, new_n57, new_n58, new_n60, new_n61, new_n63,
    new_n67_1, new_n68, new_n69_1, new_n70_1, new_n71, new_n72_1,
    new_n73_1, new_n75, new_n76, new_n77, new_n79, new_n80, new_n81,
    new_n82, n66, n69, n72;
  INVX1    g00(.A(cin), .Y(new_n37));
  XOR2X1   g01(.A(\B[0] ), .B(\A[0] ), .Y(new_n38));
  XOR2X1   g02(.A(new_n38), .B(new_n37), .Y(new_n39));
  INVX1    g03(.A(new_n39), .Y(\sum[0] ));
  NAND2X1  g04(.A(\B[0] ), .B(\A[0] ), .Y(new_n41));
  NAND2X1  g05(.A(\B[0] ), .B(\A[0] ), .Y(new_n42));
  NAND3X1  g06(.A(new_n42), .B(new_n38), .C(cin), .Y(new_n43));
  AND2X1   g07(.A(new_n43), .B(new_n41), .Y(new_n44));
  INVX1    g08(.A(\A[1] ), .Y(new_n45));
  XOR2X1   g09(.A(\B[1] ), .B(new_n45), .Y(new_n46));
  XOR2X1   g10(.A(new_n46), .B(new_n44), .Y(\sum[1] ));
  AND2X1   g11(.A(\B[1] ), .B(\A[1] ), .Y(new_n48));
  AOI21X1  g12(.A0(new_n43), .A1(new_n41), .B0(new_n46), .Y(new_n49));
  XOR2X1   g13(.A(new_n49), .B(new_n48), .Y(new_n50));
  XOR2X1   g14(.A(\B[2] ), .B(\A[2] ), .Y(new_n51));
  XOR2X1   g15(.A(new_n51), .B(new_n50), .Y(\sum[2] ));
  NAND2X1  g16(.A(\B[2] ), .B(\A[2] ), .Y(new_n53));
  NAND2X1  g17(.A(\B[2] ), .B(\A[2] ), .Y(new_n54));
  NAND3X1  g18(.A(new_n54), .B(new_n51), .C(new_n50), .Y(new_n55));
  AND2X1   g19(.A(new_n55), .B(new_n53), .Y(new_n56));
  INVX1    g20(.A(\A[3] ), .Y(new_n57));
  XOR2X1   g21(.A(\B[3] ), .B(new_n57), .Y(new_n58));
  XOR2X1   g22(.A(new_n58), .B(new_n56), .Y(\sum[3] ));
  AND2X1   g23(.A(\B[3] ), .B(\A[3] ), .Y(new_n60));
  AOI21X1  g24(.A0(new_n55), .A1(new_n53), .B0(new_n58), .Y(new_n61));
  XOR2X1   g25(.A(new_n61), .B(new_n60), .Y(cout));
  INVX1    g26(.A(\ripple_shift|shift_reg[0] ), .Y(new_n63));
  XOR2X1   g27(.A(new_n39), .B(new_n63), .Y(\xor_result[0] ));
  XOR2X1   g28(.A(\sum[1] ), .B(\ripple_shift|shift_reg[1] ), .Y(\xor_result[1] ));
  XOR2X1   g29(.A(\sum[2] ), .B(\ripple_shift|shift_reg[2] ), .Y(\xor_result[2] ));
  INVX1    g30(.A(reset), .Y(new_n67_1));
  INVX1    g31(.A(control), .Y(new_n68));
  NAND3X1  g32(.A(\ripple_shift|shift_reg[1] ), .B(new_n68), .C(shift), .Y(new_n69_1));
  OAI21X1  g33(.A0(new_n63), .A1(shift), .B0(new_n69_1), .Y(new_n70_1));
  OR2X1    g34(.A(\parallel_load[1] ), .B(\parallel_load[0] ), .Y(new_n71));
  OR2X1    g35(.A(new_n71), .B(\parallel_load[2] ), .Y(new_n72_1));
  MX2X1    g36(.A(new_n70_1), .B(\parallel_load[0] ), .S0(new_n72_1), .Y(new_n73_1));
  AND2X1   g37(.A(new_n73_1), .B(new_n67_1), .Y(n66));
  MX2X1    g38(.A(\ripple_shift|shift_reg[2] ), .B(\ripple_shift|shift_reg[0] ), .S0(control), .Y(new_n75));
  MX2X1    g39(.A(\ripple_shift|shift_reg[1] ), .B(new_n75), .S0(shift), .Y(new_n76));
  MX2X1    g40(.A(new_n76), .B(\parallel_load[1] ), .S0(new_n72_1), .Y(new_n77));
  AND2X1   g41(.A(new_n77), .B(new_n67_1), .Y(n69));
  INVX1    g42(.A(\ripple_shift|shift_reg[2] ), .Y(new_n79));
  NAND3X1  g43(.A(\ripple_shift|shift_reg[1] ), .B(control), .C(shift), .Y(new_n80));
  OAI21X1  g44(.A0(new_n79), .A1(shift), .B0(new_n80), .Y(new_n81));
  MX2X1    g45(.A(new_n81), .B(\parallel_load[2] ), .S0(new_n72_1), .Y(new_n82));
  AND2X1   g46(.A(new_n82), .B(new_n67_1), .Y(n72));
  BUFX1    g47(.A(\ripple_shift|shift_reg[0] ), .Y(\out[0] ));
  BUFX1    g48(.A(\ripple_shift|shift_reg[1] ), .Y(\out[1] ));
  BUFX1    g49(.A(\ripple_shift|shift_reg[2] ), .Y(\out[2] ));
  always @ (posedge clock) begin
    \ripple_shift|shift_reg[0]  <= n66;
    \ripple_shift|shift_reg[1]  <= n69;
    \ripple_shift|shift_reg[2]  <= n72;
  end
endmodule


