// Benchmark "sky130_fd_sc_hdll__a32oi" written by ABC on Wed Jun 26 15:22:23 2024

module sky130_fd_sc_hdll__a32oi ( 
    A1, A2, A3, B1, B2,
    Y  );
  input  A1, A2, A3, B1, B2;
  output Y;
  wire new_n7;
  AND2X1   g0(.A(A2), .B(A1), .Y(new_n7));
  AOI22X1  g1(.A0(new_n7), .A1(A3), .B0(B2), .B1(B1), .Y(Y));
endmodule


