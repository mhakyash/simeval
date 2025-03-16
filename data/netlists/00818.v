// Benchmark "buffer_power_good" written by ABC on Wed Jun 26 15:22:20 2024

module buffer_power_good ( 
    SLEEP, A, KAPWR, VPWR, VGND, VPB, VNB,
    X  );
  input  SLEEP, A, KAPWR, VPWR, VGND, VPB, VNB;
  output X;
  ZERO     g0(.Y(X));
endmodule


