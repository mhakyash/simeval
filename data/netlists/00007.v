// Benchmark "combinational_logic" written by ABC on Wed Jun 26 15:21:58 2024

module combinational_logic ( 
    A1, A2, B1, C1, D1,
    Y  );
  input  A1, A2, B1, C1, D1;
  output Y;
  wire new_n7;
  OR2X1    g0(.A(A2), .B(A1), .Y(new_n7));
  NAND4X1  g1(.A(new_n7), .B(D1), .C(C1), .D(B1), .Y(Y));
endmodule


