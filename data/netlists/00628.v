// Benchmark "top_module" written by ABC on Wed Jun 26 15:22:15 2024

module top_module ( clock, 
    clk, reset, \in_hi[0] , \in_hi[1] , \in_hi[2] , \in_hi[3] , \in_hi[4] ,
    \in_hi[5] , \in_hi[6] , \in_hi[7] , \in_lo[0] , \in_lo[1] , \in_lo[2] ,
    \in_lo[3] , \in_lo[4] , \in_lo[5] , \in_lo[6] , \in_lo[7] ,
    \q[0] , \q[1] , \q[2] , \q[3] , \q[4] , \q[5] , \q[6] , \q[7]   );
  input  clock;
  input  clk, reset, \in_hi[0] , \in_hi[1] , \in_hi[2] , \in_hi[3] ,
    \in_hi[4] , \in_hi[5] , \in_hi[6] , \in_hi[7] , \in_lo[0] , \in_lo[1] ,
    \in_lo[2] , \in_lo[3] , \in_lo[4] , \in_lo[5] , \in_lo[6] , \in_lo[7] ;
  output \q[0] , \q[1] , \q[2] , \q[3] , \q[4] , \q[5] , \q[6] , \q[7] ;
  reg \top_module|dff_circuit(1)|dff_reg[5] ,
    \top_module|dff_circuit(1)|dff_reg[6] ,
    \top_module|dff_circuit(1)|dff_reg[7] ,
    \top_module|dff_circuit(1)|dff_reg[0] ,
    \top_module|dff_circuit(1)|dff_reg[1] ,
    \top_module|dff_circuit(1)|dff_reg[2] ,
    \top_module|dff_circuit(1)|dff_reg[3] ,
    \top_module|dff_circuit(1)|dff_reg[4] , \top_module|shift_reg[0] ,
    \top_module|shift_reg[1] , \top_module|shift_reg[2] ,
    \top_module|shift_reg[3] , \top_module|shift_reg[4] ,
    \top_module|shift_reg[5] , \top_module|shift_reg[6] ,
    \top_module|shift_reg[7] ;
  wire new_n75, new_n76, new_n77, new_n78, new_n79, new_n80, new_n81,
    new_n83, new_n84, n115, n118, n121, n124, n127, n130, n133, n136, n189,
    n192, n195, n198, n201, n204, n207, n210;
  INVX1    g00(.A(\in_lo[5] ), .Y(new_n75));
  XOR2X1   g01(.A(\in_lo[7] ), .B(\in_hi[7] ), .Y(new_n76));
  XOR2X1   g02(.A(new_n76), .B(new_n75), .Y(new_n77));
  XOR2X1   g03(.A(new_n77), .B(\in_lo[4] ), .Y(new_n78));
  XOR2X1   g04(.A(new_n78), .B(\in_lo[3] ), .Y(new_n79));
  XOR2X1   g05(.A(new_n79), .B(\in_lo[2] ), .Y(new_n80));
  XOR2X1   g06(.A(new_n80), .B(\in_lo[1] ), .Y(new_n81));
  XOR2X1   g07(.A(new_n81), .B(\in_lo[0] ), .Y(n124));
  INVX1    g08(.A(reset), .Y(new_n83));
  XOR2X1   g09(.A(n124), .B(\top_module|dff_circuit(1)|dff_reg[0] ), .Y(new_n84));
  AND2X1   g10(.A(new_n84), .B(new_n83), .Y(n189));
  AND2X1   g11(.A(\top_module|shift_reg[0] ), .B(new_n83), .Y(n192));
  AND2X1   g12(.A(\top_module|shift_reg[1] ), .B(new_n83), .Y(n195));
  AND2X1   g13(.A(\top_module|shift_reg[2] ), .B(new_n83), .Y(n198));
  AND2X1   g14(.A(\top_module|shift_reg[3] ), .B(new_n83), .Y(n201));
  AND2X1   g15(.A(\top_module|shift_reg[4] ), .B(new_n83), .Y(n204));
  AND2X1   g16(.A(\top_module|shift_reg[5] ), .B(new_n83), .Y(n207));
  AND2X1   g17(.A(\top_module|shift_reg[6] ), .B(new_n83), .Y(n210));
  BUFX1    g18(.A(\top_module|shift_reg[0] ), .Y(\q[0] ));
  BUFX1    g19(.A(\top_module|shift_reg[1] ), .Y(\q[1] ));
  BUFX1    g20(.A(\top_module|shift_reg[2] ), .Y(\q[2] ));
  BUFX1    g21(.A(\top_module|shift_reg[3] ), .Y(\q[3] ));
  BUFX1    g22(.A(\top_module|shift_reg[4] ), .Y(\q[4] ));
  BUFX1    g23(.A(\top_module|shift_reg[5] ), .Y(\q[5] ));
  BUFX1    g24(.A(\top_module|shift_reg[6] ), .Y(\q[6] ));
  BUFX1    g25(.A(\top_module|shift_reg[7] ), .Y(\q[7] ));
  BUFX1    g26(.A(\in_lo[4] ), .Y(n115));
  BUFX1    g27(.A(\in_lo[5] ), .Y(n118));
  BUFX1    g28(.A(\in_lo[6] ), .Y(n121));
  BUFX1    g29(.A(\in_lo[0] ), .Y(n127));
  BUFX1    g30(.A(\in_lo[1] ), .Y(n130));
  BUFX1    g31(.A(\in_lo[2] ), .Y(n133));
  BUFX1    g32(.A(\in_lo[3] ), .Y(n136));
  always @ (posedge clock) begin
    \top_module|dff_circuit(1)|dff_reg[5]  <= n115;
    \top_module|dff_circuit(1)|dff_reg[6]  <= n118;
    \top_module|dff_circuit(1)|dff_reg[7]  <= n121;
    \top_module|dff_circuit(1)|dff_reg[0]  <= n124;
    \top_module|dff_circuit(1)|dff_reg[1]  <= n127;
    \top_module|dff_circuit(1)|dff_reg[2]  <= n130;
    \top_module|dff_circuit(1)|dff_reg[3]  <= n133;
    \top_module|dff_circuit(1)|dff_reg[4]  <= n136;
    \top_module|shift_reg[0]  <= n189;
    \top_module|shift_reg[1]  <= n192;
    \top_module|shift_reg[2]  <= n195;
    \top_module|shift_reg[3]  <= n198;
    \top_module|shift_reg[4]  <= n201;
    \top_module|shift_reg[5]  <= n204;
    \top_module|shift_reg[6]  <= n207;
    \top_module|shift_reg[7]  <= n210;
  end
endmodule


