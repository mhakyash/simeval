// Benchmark "digital_circuit" written by ABC on Wed Jun 26 15:22:07 2024

module digital_circuit ( 
    A1, A2, B1, VPB, VPWR, VGND, VNB,
    Y  );
  input  A1, A2, B1, VPB, VPWR, VGND, VNB;
  output Y;
  wire new_n9;
  AND2X1   g0(.A(A2), .B(A1), .Y(new_n9));
  OR2X1    g1(.A(new_n9), .B(B1), .Y(Y));
endmodule


