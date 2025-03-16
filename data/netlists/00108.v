// Benchmark "sky130_fd_sc_lp__inputiso0p" written by ABC on Wed Jun 26 15:22:00 2024

module sky130_fd_sc_lp__inputiso0p ( 
    A, SLEEP,
    X  );
  input  A, SLEEP;
  output X;
  wire new_n4;
  INVX1    g0(.A(SLEEP), .Y(new_n4));
  AND2X1   g1(.A(new_n4), .B(A), .Y(X));
endmodule


