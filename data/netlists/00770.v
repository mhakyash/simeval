// Benchmark "sky130_fd_sc_ls__a2111o" written by ABC on Wed Jun 26 15:22:19 2024

module sky130_fd_sc_ls__a2111o ( 
    A1, A2, B1, C1, D1,
    X  );
  input  A1, A2, B1, C1, D1;
  output X;
  wire new_n7;
  AND2X1   g0(.A(A2), .B(A1), .Y(new_n7));
  OR4X1    g1(.A(new_n7), .B(D1), .C(C1), .D(B1), .Y(X));
endmodule


