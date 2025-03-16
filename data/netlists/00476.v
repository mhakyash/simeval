// Benchmark "pipelined_module" written by ABC on Wed Jun 26 15:22:12 2024

module pipelined_module ( 
    \in_vec[0] , \in_vec[1] , \in_vec[2] , \in_vec[3] ,
    \out_vec[0] , \out_vec[1] , \out_vec[2] , \out_vec[3] , msb_out,
    mid_out, lsb_out  );
  input  \in_vec[0] , \in_vec[1] , \in_vec[2] , \in_vec[3] ;
  output \out_vec[0] , \out_vec[1] , \out_vec[2] , \out_vec[3] , msb_out,
    mid_out, lsb_out;
  wire new_n13, new_n14;
  XOR2X1   g0(.A(\in_vec[2] ), .B(\in_vec[0] ), .Y(\out_vec[0] ));
  XOR2X1   g1(.A(\in_vec[3] ), .B(\in_vec[1] ), .Y(new_n13));
  AND2X1   g2(.A(\in_vec[2] ), .B(\in_vec[0] ), .Y(new_n14));
  XOR2X1   g3(.A(new_n14), .B(new_n13), .Y(\out_vec[1] ));
  ZERO     g4(.Y(\out_vec[2] ));
  ZERO     g5(.Y(\out_vec[3] ));
  BUFX1    g6(.A(\in_vec[3] ), .Y(msb_out));
  BUFX1    g7(.A(\in_vec[2] ), .Y(mid_out));
  BUFX1    g8(.A(\in_vec[0] ), .Y(lsb_out));
endmodule


