// Benchmark "top_module" written by ABC on Wed Jun 26 15:22:05 2024

module top_module ( clock, 
    clk, reset, \d[0] , \d[1] , \d[2] , \d[3] , \d[4] , \d[5] , \d[6] ,
    \d[7] ,
    \q[0] , \q[1] , \q[2] , \q[3] , \q[4] , \q[5] , \q[6] , \q[7]   );
  input  clock;
  input  clk, reset, \d[0] , \d[1] , \d[2] , \d[3] , \d[4] , \d[5] ,
    \d[6] , \d[7] ;
  output \q[0] , \q[1] , \q[2] , \q[3] , \q[4] , \q[5] , \q[6] , \q[7] ;
  reg \top_module|counter_out[0] , \top_module|counter_out[1] ,
    \top_module|counter_out[2] , \top_module|counter_out[3] ,
    \top_module|flip_flop(2)|q_ff[0] , \top_module|flip_flop(2)|q_ff[1] ,
    \top_module|flip_flop(2)|q_ff[2] , \top_module|flip_flop(2)|q_ff[3] ,
    \top_module|flip_flop(2)|q_ff[4] , \top_module|flip_flop(2)|q_ff[5] ,
    \top_module|flip_flop(2)|q_ff[6] , \top_module|flip_flop(2)|q_ff[7] ;
  wire new_n55, new_n73_1, new_n74_1, new_n76_1, new_n77_1, new_n79_1,
    new_n80_1, n73, n76, n79, n82, n232, n235, n238, n241, n244, n247,
    n250, n253;
  INVX1    g00(.A(\top_module|counter_out[3] ), .Y(new_n55));
  MX2X1    g01(.A(\d[0] ), .B(\top_module|flip_flop(2)|q_ff[0] ), .S0(clk), .Y(n232));
  MX2X1    g02(.A(n232), .B(\top_module|counter_out[0] ), .S0(new_n55), .Y(\q[0] ));
  AND2X1   g03(.A(\top_module|flip_flop(2)|q_ff[1] ), .B(clk), .Y(n235));
  MX2X1    g04(.A(n235), .B(\top_module|counter_out[1] ), .S0(new_n55), .Y(\q[1] ));
  AND2X1   g05(.A(\top_module|flip_flop(2)|q_ff[2] ), .B(clk), .Y(n238));
  MX2X1    g06(.A(n238), .B(\top_module|counter_out[2] ), .S0(new_n55), .Y(\q[2] ));
  AND2X1   g07(.A(\top_module|flip_flop(2)|q_ff[3] ), .B(clk), .Y(n241));
  AND2X1   g08(.A(n241), .B(\top_module|counter_out[3] ), .Y(\q[3] ));
  AND2X1   g09(.A(\top_module|flip_flop(2)|q_ff[4] ), .B(clk), .Y(n244));
  AND2X1   g10(.A(n244), .B(\top_module|counter_out[3] ), .Y(\q[4] ));
  AND2X1   g11(.A(\top_module|flip_flop(2)|q_ff[5] ), .B(clk), .Y(n247));
  AND2X1   g12(.A(n247), .B(\top_module|counter_out[3] ), .Y(\q[5] ));
  AND2X1   g13(.A(\top_module|flip_flop(2)|q_ff[6] ), .B(clk), .Y(n250));
  AND2X1   g14(.A(n250), .B(\top_module|counter_out[3] ), .Y(\q[6] ));
  AND2X1   g15(.A(\top_module|flip_flop(2)|q_ff[7] ), .B(clk), .Y(n253));
  AND2X1   g16(.A(n253), .B(\top_module|counter_out[3] ), .Y(\q[7] ));
  NOR2X1   g17(.A(\top_module|counter_out[0] ), .B(reset), .Y(n73));
  INVX1    g18(.A(reset), .Y(new_n73_1));
  XOR2X1   g19(.A(\top_module|counter_out[1] ), .B(\top_module|counter_out[0] ), .Y(new_n74_1));
  AND2X1   g20(.A(new_n74_1), .B(new_n73_1), .Y(n76));
  AND2X1   g21(.A(\top_module|counter_out[1] ), .B(\top_module|counter_out[0] ), .Y(new_n76_1));
  XOR2X1   g22(.A(new_n76_1), .B(\top_module|counter_out[2] ), .Y(new_n77_1));
  AND2X1   g23(.A(new_n77_1), .B(new_n73_1), .Y(n79));
  NAND3X1  g24(.A(\top_module|counter_out[2] ), .B(\top_module|counter_out[1] ), .C(\top_module|counter_out[0] ), .Y(new_n79_1));
  XOR2X1   g25(.A(new_n79_1), .B(new_n55), .Y(new_n80_1));
  AND2X1   g26(.A(new_n80_1), .B(new_n73_1), .Y(n82));
  always @ (posedge clock) begin
    \top_module|counter_out[0]  <= n73;
    \top_module|counter_out[1]  <= n76;
    \top_module|counter_out[2]  <= n79;
    \top_module|counter_out[3]  <= n82;
    \top_module|flip_flop(2)|q_ff[0]  <= n232;
    \top_module|flip_flop(2)|q_ff[1]  <= n235;
    \top_module|flip_flop(2)|q_ff[2]  <= n238;
    \top_module|flip_flop(2)|q_ff[3]  <= n241;
    \top_module|flip_flop(2)|q_ff[4]  <= n244;
    \top_module|flip_flop(2)|q_ff[5]  <= n247;
    \top_module|flip_flop(2)|q_ff[6]  <= n250;
    \top_module|flip_flop(2)|q_ff[7]  <= n253;
  end
endmodule


