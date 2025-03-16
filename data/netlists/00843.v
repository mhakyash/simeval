// Benchmark "nand_full_adder" written by ABC on Wed Jun 26 15:22:22 2024

module nand_full_adder ( 
    \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] , \C[0] ,
    \C[1] , \C[2] , \C[3] ,
    \sum[0] , \sum[1] , \sum[2] , \sum[3]   );
  input  \A[0] , \A[1] , \A[2] , \A[3] , \B[0] , \B[1] , \B[2] , \B[3] ,
    \C[0] , \C[1] , \C[2] , \C[3] ;
  output \sum[0] , \sum[1] , \sum[2] , \sum[3] ;
  wire new_n17, new_n19, new_n21, new_n23;
  INVX1    g0(.A(\A[0] ), .Y(new_n17));
  XOR2X1   g1(.A(\B[0] ), .B(new_n17), .Y(\sum[0] ));
  INVX1    g2(.A(\A[1] ), .Y(new_n19));
  XOR2X1   g3(.A(\B[1] ), .B(new_n19), .Y(\sum[1] ));
  INVX1    g4(.A(\A[2] ), .Y(new_n21));
  XOR2X1   g5(.A(\B[2] ), .B(new_n21), .Y(\sum[2] ));
  INVX1    g6(.A(\A[3] ), .Y(new_n23));
  XOR2X1   g7(.A(\B[3] ), .B(new_n23), .Y(\sum[3] ));
endmodule


