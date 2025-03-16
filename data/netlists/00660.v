// Benchmark "multiplexor" written by ABC on Wed Jun 26 15:22:16 2024

module multiplexor ( 
    sel, \in0[0] , \in0[1] , \in0[2] , \in0[3] , \in0[4] , \in1[0] ,
    \in1[1] , \in1[2] , \in1[3] , \in1[4] ,
    \mux_out[0] , \mux_out[1] , \mux_out[2] , \mux_out[3] , \mux_out[4]   );
  input  sel, \in0[0] , \in0[1] , \in0[2] , \in0[3] , \in0[4] , \in1[0] ,
    \in1[1] , \in1[2] , \in1[3] , \in1[4] ;
  output \mux_out[0] , \mux_out[1] , \mux_out[2] , \mux_out[3] , \mux_out[4] ;
  MX2X1    g0(.A(\in0[0] ), .B(\in1[0] ), .S0(sel), .Y(\mux_out[0] ));
  MX2X1    g1(.A(\in0[1] ), .B(\in1[1] ), .S0(sel), .Y(\mux_out[1] ));
  MX2X1    g2(.A(\in0[2] ), .B(\in1[2] ), .S0(sel), .Y(\mux_out[2] ));
  MX2X1    g3(.A(\in0[3] ), .B(\in1[3] ), .S0(sel), .Y(\mux_out[3] ));
  MX2X1    g4(.A(\in0[4] ), .B(\in1[4] ), .S0(sel), .Y(\mux_out[4] ));
endmodule


