// Benchmark "top_module" written by ABC on Wed Jun 26 15:22:16 2024

module top_module ( clock, 
    clk, reset,
    \q[0] , \q[1] , \q[2] , \q[3] , \q[4] , \q[5] , \q[6] , \q[7]   );
  input  clock;
  input  clk, reset;
  output \q[0] , \q[1] , \q[2] , \q[3] , \q[4] , \q[5] , \q[6] , \q[7] ;
  reg \shift_reg[7] , \counter[0] , \counter[1] , \counter[2] ,
    \counter[3] , \functional_output[0] , \functional_output[1] ,
    \functional_output[2] , \functional_output[3] , \functional_output[4] ,
    \functional_output[5] , \functional_output[6] , \functional_output[7] ,
    \shift_reg[0] , \shift_reg[1] , \shift_reg[2] , \shift_reg[3] ,
    \shift_reg[4] , \shift_reg[5] , \shift_reg[6] ;
  wire new_n73, new_n74, new_n76, new_n77_1, new_n79, new_n80, n22, n27, n32,
    n37, n42, n47, n52, n57, n62, n67, n72, n77, n81, n86, n91, n96, n101,
    n106, n110, n114;
  MX2X1    g00(.A(\shift_reg[6] ), .B(\shift_reg[7] ), .S0(reset), .Y(n22));
  NOR2X1   g01(.A(\counter[0] ), .B(reset), .Y(n27));
  INVX1    g02(.A(reset), .Y(new_n73));
  XOR2X1   g03(.A(\counter[1] ), .B(\counter[0] ), .Y(new_n74));
  AND2X1   g04(.A(new_n74), .B(new_n73), .Y(n32));
  AND2X1   g05(.A(\counter[1] ), .B(\counter[0] ), .Y(new_n76));
  XOR2X1   g06(.A(new_n76), .B(\counter[2] ), .Y(new_n77_1));
  AND2X1   g07(.A(new_n77_1), .B(new_n73), .Y(n37));
  NAND3X1  g08(.A(\counter[2] ), .B(\counter[1] ), .C(\counter[0] ), .Y(new_n79));
  XOR2X1   g09(.A(new_n79), .B(\counter[3] ), .Y(new_n80));
  NOR2X1   g10(.A(new_n80), .B(reset), .Y(n42));
  OR2X1    g11(.A(\shift_reg[0] ), .B(\counter[0] ), .Y(n47));
  OR2X1    g12(.A(\shift_reg[1] ), .B(\counter[1] ), .Y(n52));
  OR2X1    g13(.A(\shift_reg[2] ), .B(\counter[2] ), .Y(n57));
  OR2X1    g14(.A(\shift_reg[3] ), .B(\counter[3] ), .Y(n62));
  MX2X1    g15(.A(\shift_reg[7] ), .B(\shift_reg[0] ), .S0(reset), .Y(n86));
  MX2X1    g16(.A(\shift_reg[0] ), .B(\shift_reg[1] ), .S0(reset), .Y(n91));
  MX2X1    g17(.A(\shift_reg[1] ), .B(\shift_reg[2] ), .S0(reset), .Y(n96));
  MX2X1    g18(.A(\shift_reg[2] ), .B(\shift_reg[3] ), .S0(reset), .Y(n101));
  MX2X1    g19(.A(\shift_reg[3] ), .B(\shift_reg[4] ), .S0(reset), .Y(n106));
  MX2X1    g20(.A(\shift_reg[4] ), .B(\shift_reg[5] ), .S0(reset), .Y(n110));
  MX2X1    g21(.A(\shift_reg[5] ), .B(\shift_reg[6] ), .S0(reset), .Y(n114));
  BUFX1    g22(.A(\functional_output[0] ), .Y(\q[0] ));
  BUFX1    g23(.A(\functional_output[1] ), .Y(\q[1] ));
  BUFX1    g24(.A(\functional_output[2] ), .Y(\q[2] ));
  BUFX1    g25(.A(\functional_output[3] ), .Y(\q[3] ));
  BUFX1    g26(.A(\functional_output[4] ), .Y(\q[4] ));
  BUFX1    g27(.A(\functional_output[5] ), .Y(\q[5] ));
  BUFX1    g28(.A(\functional_output[6] ), .Y(\q[6] ));
  BUFX1    g29(.A(\functional_output[7] ), .Y(\q[7] ));
  BUFX1    g30(.A(\shift_reg[4] ), .Y(n67));
  BUFX1    g31(.A(\shift_reg[5] ), .Y(n72));
  BUFX1    g32(.A(\shift_reg[6] ), .Y(n77));
  BUFX1    g33(.A(\shift_reg[7] ), .Y(n81));
  always @ (posedge clock) begin
    \shift_reg[7]  <= n22;
    \counter[0]  <= n27;
    \counter[1]  <= n32;
    \counter[2]  <= n37;
    \counter[3]  <= n42;
    \functional_output[0]  <= n47;
    \functional_output[1]  <= n52;
    \functional_output[2]  <= n57;
    \functional_output[3]  <= n62;
    \functional_output[4]  <= n67;
    \functional_output[5]  <= n72;
    \functional_output[6]  <= n77;
    \functional_output[7]  <= n81;
    \shift_reg[0]  <= n86;
    \shift_reg[1]  <= n91;
    \shift_reg[2]  <= n96;
    \shift_reg[3]  <= n101;
    \shift_reg[4]  <= n106;
    \shift_reg[5]  <= n110;
    \shift_reg[6]  <= n114;
  end
  initial begin
    \shift_reg[7]  <= 1'b0;
    \counter[0]  <= 1'b0;
    \counter[1]  <= 1'b0;
    \counter[2]  <= 1'b0;
    \counter[3]  <= 1'b0;
    \functional_output[0]  <= 1'b0;
    \functional_output[1]  <= 1'b0;
    \functional_output[2]  <= 1'b0;
    \functional_output[3]  <= 1'b0;
    \functional_output[4]  <= 1'b0;
    \functional_output[5]  <= 1'b0;
    \functional_output[6]  <= 1'b0;
    \functional_output[7]  <= 1'b0;
    \shift_reg[0]  <= 1'b0;
    \shift_reg[1]  <= 1'b0;
    \shift_reg[2]  <= 1'b0;
    \shift_reg[3]  <= 1'b0;
    \shift_reg[4]  <= 1'b0;
    \shift_reg[5]  <= 1'b0;
    \shift_reg[6]  <= 1'b0;
  end
endmodule


