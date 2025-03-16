// Benchmark "shift_register" written by ABC on Wed Jun 26 15:22:22 2024

module shift_register ( clock, 
    clk, parallel_load, \in[0] , \in[1] , \in[2] , \in[3] ,
    out  );
  input  clock;
  input  clk, parallel_load, \in[0] , \in[1] , \in[2] , \in[3] ;
  output out;
  reg \reg1[0] , \reg2[0] , \reg4[0] , \reg3[0] , out;
  wire n16, n20, n25, n29, n32;
  MX2X1    g0(.A(\reg1[0] ), .B(\in[0] ), .S0(parallel_load), .Y(n16));
  BUFX1    g1(.A(\reg1[0] ), .Y(n20));
  BUFX1    g2(.A(\reg3[0] ), .Y(n25));
  BUFX1    g3(.A(\reg2[0] ), .Y(n29));
  BUFX1    g4(.A(\reg4[0] ), .Y(n32));
  always @ (posedge clock) begin
    \reg1[0]  <= n16;
    \reg2[0]  <= n20;
    \reg4[0]  <= n25;
    \reg3[0]  <= n29;
    out <= n32;
  end
endmodule


