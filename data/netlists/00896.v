// Benchmark "top_module" written by ABC on Wed Jun 26 15:22:23 2024

module top_module ( clock, 
    clk, reset, \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] ,
    \in[6] , \in[7] ,
    \serial_out[0] , \serial_out[1] , \serial_out[2] , \serial_out[3] ,
    \serial_out[4] , \serial_out[5] , \serial_out[6] , \serial_out[7] ,
    \serial_out[8] , \serial_out[9] , \serial_out[10] , \serial_out[11] ,
    \serial_out[12] , \serial_out[13] , \serial_out[14] , \serial_out[15]   );
  input  clock;
  input  clk, reset, \in[0] , \in[1] , \in[2] , \in[3] , \in[4] ,
    \in[5] , \in[6] , \in[7] ;
  output \serial_out[0] , \serial_out[1] , \serial_out[2] , \serial_out[3] ,
    \serial_out[4] , \serial_out[5] , \serial_out[6] , \serial_out[7] ,
    \serial_out[8] , \serial_out[9] , \serial_out[10] , \serial_out[11] ,
    \serial_out[12] , \serial_out[13] , \serial_out[14] , \serial_out[15] ;
  reg \serial_out[0] , \serial_out[8] , \serial_out[9] , \serial_out[10] ,
    \serial_out[11] , \serial_out[12] , \serial_out[13] , \serial_out[14] ,
    \serial_out[15] , \top_module|shift_reg_out[0] ;
  wire new_n72_1, n63, n66, n69, n72, n75, n78, n81, n84, n87, n131;
  MX2X1    g00(.A(\top_module|shift_reg_out[0] ), .B(\in[0] ), .S0(reset), .Y(n66));
  AND2X1   g01(.A(\in[1] ), .B(reset), .Y(n69));
  AND2X1   g02(.A(\in[2] ), .B(reset), .Y(n72));
  AND2X1   g03(.A(\in[3] ), .B(reset), .Y(n75));
  AND2X1   g04(.A(\in[4] ), .B(reset), .Y(n78));
  AND2X1   g05(.A(\in[5] ), .B(reset), .Y(n81));
  AND2X1   g06(.A(\in[6] ), .B(reset), .Y(n84));
  AND2X1   g07(.A(\in[7] ), .B(reset), .Y(n87));
  INVX1    g08(.A(reset), .Y(new_n72_1));
  AND2X1   g09(.A(\in[0] ), .B(new_n72_1), .Y(n131));
  ZERO     g10(.Y(\serial_out[1] ));
  ZERO     g11(.Y(\serial_out[2] ));
  ZERO     g12(.Y(\serial_out[3] ));
  ZERO     g13(.Y(\serial_out[4] ));
  ZERO     g14(.Y(\serial_out[5] ));
  ZERO     g15(.Y(\serial_out[6] ));
  ZERO     g16(.Y(\serial_out[7] ));
  BUFX1    g17(.A(\top_module|shift_reg_out[0] ), .Y(n63));
  always @ (posedge clock) begin
    \serial_out[0]  <= n63;
    \serial_out[8]  <= n66;
    \serial_out[9]  <= n69;
    \serial_out[10]  <= n72;
    \serial_out[11]  <= n75;
    \serial_out[12]  <= n78;
    \serial_out[13]  <= n81;
    \serial_out[14]  <= n84;
    \serial_out[15]  <= n87;
    \top_module|shift_reg_out[0]  <= n131;
  end
endmodule


