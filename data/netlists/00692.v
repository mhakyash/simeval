// Benchmark "shift_register" written by ABC on Wed Jun 26 15:22:17 2024

module shift_register ( clock, 
    in,
    \out[0] , \out[1] , \out[2]   );
  input  clock;
  input  in;
  output \out[0] , \out[1] , \out[2] ;
  reg \stage1_out[0] , \stage2_out[0] , \out[0] ;
  wire n9, n13, n17;
  ZERO     g0(.Y(\out[1] ));
  ZERO     g1(.Y(\out[2] ));
  BUFX1    g2(.A(in), .Y(n9));
  BUFX1    g3(.A(\stage1_out[0] ), .Y(n13));
  BUFX1    g4(.A(\stage2_out[0] ), .Y(n17));
  always @ (posedge clock) begin
    \stage1_out[0]  <= n9;
    \stage2_out[0]  <= n13;
    \out[0]  <= n17;
  end
endmodule


