// Benchmark "my_logic" written by ABC on Wed Jun 26 15:22:00 2024

module my_logic ( 
    A1, A2, A3, \B[0] , \B[1] ,
    Y  );
  input  A1, A2, A3, \B[0] , \B[1] ;
  output Y;
  wire new_n7;
  OR2X1    g0(.A(\B[1] ), .B(\B[0] ), .Y(new_n7));
  OR4X1    g1(.A(new_n7), .B(A3), .C(A2), .D(A1), .Y(Y));
endmodule


