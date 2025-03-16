// Benchmark "address_operation" written by ABC on Wed Jun 26 15:22:04 2024

module address_operation ( clock, 
    \address_a[0] , \address_a[1] , \address_a[2] , \address_a[3] ,
    \address_a[4] , \address_a[5] , \address_a[6] , \address_a[7] ,
    \address_a[8] , \address_b[0] , \address_b[1] , \address_b[2] ,
    \address_b[3] , \address_b[4] , \address_b[5] , \address_b[6] ,
    \address_b[7] , \address_b[8] , clock,
    \q_a[0] , \q_a[1] , \q_a[2] , \q_a[3] , \q_b[0] , \q_b[1] , \q_b[2] ,
    \q_b[3]   );
  input  clock;
  input  \address_a[0] , \address_a[1] , \address_a[2] , \address_a[3] ,
    \address_a[4] , \address_a[5] , \address_a[6] , \address_a[7] ,
    \address_a[8] , \address_b[0] , \address_b[1] , \address_b[2] ,
    \address_b[3] , \address_b[4] , \address_b[5] , \address_b[6] ,
    \address_b[7] , \address_b[8] , clock;
  output \q_a[0] , \q_a[1] , \q_a[2] , \q_a[3] , \q_b[0] , \q_b[1] , \q_b[2] ,
    \q_b[3] ;
  reg \q_b[0] , \q_b[1] , \q_b[2] , \q_b[3] , \q_a[0] , \q_a[1] , \q_a[2] ,
    \q_a[3] ;
  wire new_n53, new_n54, new_n55, new_n57, new_n58, new_n59, new_n61,
    new_n62, new_n63, new_n64_1, new_n65, new_n68_1, new_n69, new_n70,
    new_n72_1, new_n73, new_n74, new_n76_1, new_n77, new_n78, new_n79,
    new_n80_1, n56, n60, n64, n68, n72, n76, n80, n84;
  XOR2X1   g00(.A(\address_b[8] ), .B(\address_b[0] ), .Y(n56));
  INVX1    g01(.A(\address_b[1] ), .Y(new_n53));
  INVX1    g02(.A(\address_b[8] ), .Y(new_n54));
  XOR2X1   g03(.A(\address_b[1] ), .B(\address_b[0] ), .Y(new_n55));
  MX2X1    g04(.A(new_n55), .B(new_n53), .S0(new_n54), .Y(n60));
  XOR2X1   g05(.A(\address_b[2] ), .B(\address_b[1] ), .Y(new_n57));
  AND2X1   g06(.A(\address_b[1] ), .B(\address_b[0] ), .Y(new_n58));
  XOR2X1   g07(.A(new_n58), .B(\address_b[2] ), .Y(new_n59));
  MX2X1    g08(.A(new_n59), .B(new_n57), .S0(new_n54), .Y(n64));
  AND2X1   g09(.A(\address_b[2] ), .B(\address_b[1] ), .Y(new_n61));
  XOR2X1   g10(.A(new_n61), .B(\address_b[3] ), .Y(new_n62));
  INVX1    g11(.A(\address_b[3] ), .Y(new_n63));
  NAND3X1  g12(.A(\address_b[2] ), .B(\address_b[1] ), .C(\address_b[0] ), .Y(new_n64_1));
  XOR2X1   g13(.A(new_n64_1), .B(new_n63), .Y(new_n65));
  MX2X1    g14(.A(new_n65), .B(new_n62), .S0(new_n54), .Y(n68));
  XOR2X1   g15(.A(\address_a[8] ), .B(\address_a[0] ), .Y(n72));
  INVX1    g16(.A(\address_a[1] ), .Y(new_n68_1));
  INVX1    g17(.A(\address_a[8] ), .Y(new_n69));
  XOR2X1   g18(.A(\address_a[1] ), .B(\address_a[0] ), .Y(new_n70));
  MX2X1    g19(.A(new_n70), .B(new_n68_1), .S0(new_n69), .Y(n76));
  XOR2X1   g20(.A(\address_a[2] ), .B(\address_a[1] ), .Y(new_n72_1));
  AND2X1   g21(.A(\address_a[1] ), .B(\address_a[0] ), .Y(new_n73));
  XOR2X1   g22(.A(new_n73), .B(\address_a[2] ), .Y(new_n74));
  MX2X1    g23(.A(new_n74), .B(new_n72_1), .S0(new_n69), .Y(n80));
  AND2X1   g24(.A(\address_a[2] ), .B(\address_a[1] ), .Y(new_n76_1));
  XOR2X1   g25(.A(new_n76_1), .B(\address_a[3] ), .Y(new_n77));
  INVX1    g26(.A(\address_a[3] ), .Y(new_n78));
  NAND3X1  g27(.A(\address_a[2] ), .B(\address_a[1] ), .C(\address_a[0] ), .Y(new_n79));
  XOR2X1   g28(.A(new_n79), .B(new_n78), .Y(new_n80_1));
  MX2X1    g29(.A(new_n80_1), .B(new_n77), .S0(new_n69), .Y(n84));
  always @ (posedge clock) begin
    \q_b[0]  <= n56;
    \q_b[1]  <= n60;
    \q_b[2]  <= n64;
    \q_b[3]  <= n68;
    \q_a[0]  <= n72;
    \q_a[1]  <= n76;
    \q_a[2]  <= n80;
    \q_a[3]  <= n84;
  end
endmodule


