// Benchmark "shift_register" written by ABC on Wed Jun 26 15:22:15 2024

module shift_register ( clock, 
    data_in, load, shift_left, shift_right, clk,
    data_out, \parallel_out[0] , \parallel_out[1] , \parallel_out[2] ,
    \parallel_out[3] , \parallel_out[4] , \parallel_out[5] ,
    \parallel_out[6] , \parallel_out[7]   );
  input  clock;
  input  data_in, load, shift_left, shift_right, clk;
  output data_out, \parallel_out[0] , \parallel_out[1] , \parallel_out[2] ,
    \parallel_out[3] , \parallel_out[4] , \parallel_out[5] ,
    \parallel_out[6] , \parallel_out[7] ;
  reg \shift_reg[0] , \shift_reg[1] , \shift_reg[2] , \shift_reg[3] ,
    \shift_reg[4] , \shift_reg[5] , \shift_reg[6] , \shift_reg[7] ;
  wire new_n39, new_n40_1, new_n41, new_n42, new_n43, new_n45_1, new_n46,
    new_n48, new_n49, new_n51, new_n52, new_n54, new_n55_1, new_n57,
    new_n58, new_n60_1, new_n61, new_n63, new_n64, n30, n35, n40, n45, n50,
    n55, n60, n65;
  INVX1    g00(.A(shift_right), .Y(new_n39));
  OR2X1    g01(.A(new_n39), .B(shift_left), .Y(new_n40_1));
  MX2X1    g02(.A(\shift_reg[0] ), .B(data_in), .S0(new_n40_1), .Y(new_n41));
  AND2X1   g03(.A(new_n39), .B(shift_left), .Y(new_n42));
  MX2X1    g04(.A(new_n41), .B(data_in), .S0(new_n42), .Y(new_n43));
  MX2X1    g05(.A(new_n43), .B(\shift_reg[0] ), .S0(load), .Y(n30));
  MX2X1    g06(.A(\shift_reg[1] ), .B(\shift_reg[0] ), .S0(new_n40_1), .Y(new_n45_1));
  MX2X1    g07(.A(new_n45_1), .B(\shift_reg[0] ), .S0(new_n42), .Y(new_n46));
  MX2X1    g08(.A(new_n46), .B(\shift_reg[1] ), .S0(load), .Y(n35));
  MX2X1    g09(.A(\shift_reg[2] ), .B(\shift_reg[1] ), .S0(new_n40_1), .Y(new_n48));
  MX2X1    g10(.A(new_n48), .B(\shift_reg[1] ), .S0(new_n42), .Y(new_n49));
  MX2X1    g11(.A(new_n49), .B(\shift_reg[2] ), .S0(load), .Y(n40));
  MX2X1    g12(.A(\shift_reg[3] ), .B(\shift_reg[2] ), .S0(new_n40_1), .Y(new_n51));
  MX2X1    g13(.A(new_n51), .B(\shift_reg[2] ), .S0(new_n42), .Y(new_n52));
  MX2X1    g14(.A(new_n52), .B(\shift_reg[3] ), .S0(load), .Y(n45));
  MX2X1    g15(.A(\shift_reg[4] ), .B(\shift_reg[3] ), .S0(new_n40_1), .Y(new_n54));
  MX2X1    g16(.A(new_n54), .B(\shift_reg[3] ), .S0(new_n42), .Y(new_n55_1));
  MX2X1    g17(.A(new_n55_1), .B(\shift_reg[4] ), .S0(load), .Y(n50));
  MX2X1    g18(.A(\shift_reg[5] ), .B(\shift_reg[4] ), .S0(new_n40_1), .Y(new_n57));
  MX2X1    g19(.A(new_n57), .B(\shift_reg[4] ), .S0(new_n42), .Y(new_n58));
  MX2X1    g20(.A(new_n58), .B(\shift_reg[5] ), .S0(load), .Y(n55));
  MX2X1    g21(.A(\shift_reg[6] ), .B(\shift_reg[5] ), .S0(new_n40_1), .Y(new_n60_1));
  MX2X1    g22(.A(new_n60_1), .B(\shift_reg[5] ), .S0(new_n42), .Y(new_n61));
  MX2X1    g23(.A(new_n61), .B(\shift_reg[6] ), .S0(load), .Y(n60));
  MX2X1    g24(.A(data_in), .B(\shift_reg[6] ), .S0(new_n40_1), .Y(new_n63));
  MX2X1    g25(.A(new_n63), .B(\shift_reg[6] ), .S0(new_n42), .Y(new_n64));
  MX2X1    g26(.A(new_n64), .B(\shift_reg[7] ), .S0(load), .Y(n65));
  BUFX1    g27(.A(\shift_reg[7] ), .Y(data_out));
  BUFX1    g28(.A(\shift_reg[0] ), .Y(\parallel_out[0] ));
  BUFX1    g29(.A(\shift_reg[1] ), .Y(\parallel_out[1] ));
  BUFX1    g30(.A(\shift_reg[2] ), .Y(\parallel_out[2] ));
  BUFX1    g31(.A(\shift_reg[3] ), .Y(\parallel_out[3] ));
  BUFX1    g32(.A(\shift_reg[4] ), .Y(\parallel_out[4] ));
  BUFX1    g33(.A(\shift_reg[5] ), .Y(\parallel_out[5] ));
  BUFX1    g34(.A(\shift_reg[6] ), .Y(\parallel_out[6] ));
  BUFX1    g35(.A(\shift_reg[7] ), .Y(\parallel_out[7] ));
  always @ (posedge clock) begin
    \shift_reg[0]  <= n30;
    \shift_reg[1]  <= n35;
    \shift_reg[2]  <= n40;
    \shift_reg[3]  <= n45;
    \shift_reg[4]  <= n50;
    \shift_reg[5]  <= n55;
    \shift_reg[6]  <= n60;
    \shift_reg[7]  <= n65;
  end
endmodule


