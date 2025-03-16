// Benchmark "top_module" written by ABC on Wed Jun 26 15:22:11 2024

module top_module ( clock, 
    clk, reset, \a[0] , \a[1] , \a[2] , \a[3] , \b[0] , \b[1] , \b[2] ,
    \b[3] , select, shift_parallel, \parallel_in[0] , \parallel_in[1] ,
    \parallel_in[2] , \parallel_in[3] ,
    \sum[0] , \sum[1] , \sum[2] , \sum[3] , overflow, \shift_reg_out[0] ,
    \shift_reg_out[1] , \shift_reg_out[2] , \shift_reg_out[3] ,
    \func_out[0] , \func_out[1] , \func_out[2] , \func_out[3]   );
  input  clock;
  input  clk, reset, \a[0] , \a[1] , \a[2] , \a[3] , \b[0] , \b[1] ,
    \b[2] , \b[3] , select, shift_parallel, \parallel_in[0] ,
    \parallel_in[1] , \parallel_in[2] , \parallel_in[3] ;
  output \sum[0] , \sum[1] , \sum[2] , \sum[3] , overflow, \shift_reg_out[0] ,
    \shift_reg_out[1] , \shift_reg_out[2] , \shift_reg_out[3] ,
    \func_out[0] , \func_out[1] , \func_out[2] , \func_out[3] ;
  reg \top_module|shift_register(2)|shift_reg[0] ,
    \top_module|shift_register(2)|shift_reg[1] ,
    \top_module|shift_register(2)|shift_reg[2] ,
    \top_module|shift_register(2)|shift_reg[3] ;
  wire new_n43, new_n44, new_n45, new_n46, new_n47, new_n48, new_n49,
    new_n50, new_n51, new_n53, new_n54, new_n55, new_n56, new_n57, new_n58,
    new_n59, new_n60, new_n61, new_n62, new_n63, new_n65, new_n66, new_n67,
    new_n68, new_n69, new_n70, new_n71, new_n72, new_n73, new_n74, new_n76,
    new_n77, new_n80, new_n82, new_n84, new_n86, n518, n521, n524, n527;
  XOR2X1   g00(.A(\b[0] ), .B(\a[0] ), .Y(\sum[0] ));
  INVX1    g01(.A(select), .Y(new_n43));
  XOR2X1   g02(.A(\b[1] ), .B(\a[1] ), .Y(new_n44));
  AND2X1   g03(.A(\b[0] ), .B(\a[0] ), .Y(new_n45));
  XOR2X1   g04(.A(new_n45), .B(new_n44), .Y(new_n46));
  NAND2X1  g05(.A(\b[0] ), .B(\a[0] ), .Y(new_n47));
  INVX1    g06(.A(\a[1] ), .Y(new_n48));
  XOR2X1   g07(.A(\b[1] ), .B(\b[0] ), .Y(new_n49));
  XOR2X1   g08(.A(new_n49), .B(new_n48), .Y(new_n50));
  XOR2X1   g09(.A(new_n50), .B(new_n47), .Y(new_n51));
  MX2X1    g10(.A(new_n51), .B(new_n46), .S0(new_n43), .Y(\sum[1] ));
  INVX1    g11(.A(\a[2] ), .Y(new_n53));
  XOR2X1   g12(.A(\b[2] ), .B(new_n53), .Y(new_n54));
  AND2X1   g13(.A(\b[1] ), .B(\a[1] ), .Y(new_n55));
  AOI21X1  g14(.A0(new_n45), .A1(new_n44), .B0(new_n55), .Y(new_n56));
  XOR2X1   g15(.A(new_n56), .B(new_n54), .Y(new_n57));
  NOR2X1   g16(.A(\b[1] ), .B(\b[0] ), .Y(new_n58));
  XOR2X1   g17(.A(new_n58), .B(\b[2] ), .Y(new_n59));
  XOR2X1   g18(.A(new_n59), .B(new_n53), .Y(new_n60));
  NAND2X1  g19(.A(new_n49), .B(\a[1] ), .Y(new_n61));
  OAI21X1  g20(.A0(new_n50), .A1(new_n47), .B0(new_n61), .Y(new_n62));
  XOR2X1   g21(.A(new_n62), .B(new_n60), .Y(new_n63));
  MX2X1    g22(.A(new_n63), .B(new_n57), .S0(new_n43), .Y(\sum[2] ));
  XOR2X1   g23(.A(\b[3] ), .B(\a[3] ), .Y(new_n65));
  NAND2X1  g24(.A(\b[2] ), .B(\a[2] ), .Y(new_n66));
  OAI21X1  g25(.A0(new_n56), .A1(new_n54), .B0(new_n66), .Y(new_n67));
  XOR2X1   g26(.A(new_n67), .B(new_n65), .Y(new_n68));
  NOR3X1   g27(.A(\b[2] ), .B(\b[1] ), .C(\b[0] ), .Y(new_n69));
  XOR2X1   g28(.A(new_n69), .B(\b[3] ), .Y(new_n70));
  XOR2X1   g29(.A(new_n70), .B(\a[3] ), .Y(new_n71));
  NOR2X1   g30(.A(new_n59), .B(new_n53), .Y(new_n72));
  AOI21X1  g31(.A0(new_n62), .A1(new_n60), .B0(new_n72), .Y(new_n73));
  XOR2X1   g32(.A(new_n73), .B(new_n71), .Y(new_n74));
  MX2X1    g33(.A(new_n74), .B(new_n68), .S0(new_n43), .Y(\sum[3] ));
  OR2X1    g34(.A(\sum[3] ), .B(\sum[2] ), .Y(new_n76));
  NOR2X1   g35(.A(\sum[3] ), .B(\sum[2] ), .Y(new_n77));
  AND2X1   g36(.A(new_n77), .B(new_n76), .Y(overflow));
  OR2X1    g37(.A(\sum[0] ), .B(\top_module|shift_register(2)|shift_reg[0] ), .Y(\func_out[0] ));
  INVX1    g38(.A(reset), .Y(new_n80));
  AND2X1   g39(.A(\parallel_in[0] ), .B(new_n80), .Y(n518));
  MX2X1    g40(.A(\parallel_in[1] ), .B(\top_module|shift_register(2)|shift_reg[0] ), .S0(shift_parallel), .Y(new_n82));
  AND2X1   g41(.A(new_n82), .B(new_n80), .Y(n521));
  MX2X1    g42(.A(\parallel_in[2] ), .B(\top_module|shift_register(2)|shift_reg[1] ), .S0(shift_parallel), .Y(new_n84));
  AND2X1   g43(.A(new_n84), .B(new_n80), .Y(n524));
  MX2X1    g44(.A(\parallel_in[3] ), .B(\top_module|shift_register(2)|shift_reg[2] ), .S0(shift_parallel), .Y(new_n86));
  AND2X1   g45(.A(new_n86), .B(new_n80), .Y(n527));
  BUFX1    g46(.A(\top_module|shift_register(2)|shift_reg[0] ), .Y(\shift_reg_out[0] ));
  BUFX1    g47(.A(\top_module|shift_register(2)|shift_reg[1] ), .Y(\shift_reg_out[1] ));
  BUFX1    g48(.A(\top_module|shift_register(2)|shift_reg[2] ), .Y(\shift_reg_out[2] ));
  BUFX1    g49(.A(\top_module|shift_register(2)|shift_reg[3] ), .Y(\shift_reg_out[3] ));
  MX2X1    g50(.A(new_n51), .B(new_n46), .S0(new_n43), .Y(\func_out[1] ));
  MX2X1    g51(.A(new_n63), .B(new_n57), .S0(new_n43), .Y(\func_out[2] ));
  MX2X1    g52(.A(new_n74), .B(new_n68), .S0(new_n43), .Y(\func_out[3] ));
  always @ (posedge clock) begin
    \top_module|shift_register(2)|shift_reg[0]  <= n518;
    \top_module|shift_register(2)|shift_reg[1]  <= n521;
    \top_module|shift_register(2)|shift_reg[2]  <= n524;
    \top_module|shift_register(2)|shift_reg[3]  <= n527;
  end
endmodule


