// Benchmark "clk_phase_shifter" written by ABC on Wed Jun 26 15:22:01 2024

module clk_phase_shifter ( 
    clk, \ctrl[0] , \ctrl[1] , \ctrl[2] ,
    clk_out  );
  input  clk, \ctrl[0] , \ctrl[1] , \ctrl[2] ;
  output clk_out;
  wire new_n6;
  INVX1    g0(.A(clk), .Y(new_n6));
  NOR4X1   g1(.A(\ctrl[2] ), .B(\ctrl[1] ), .C(\ctrl[0] ), .D(new_n6), .Y(clk_out));
endmodule


