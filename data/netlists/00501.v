// Benchmark "PCSCLKDIV" written by ABC on Wed Jun 26 15:22:12 2024

module PCSCLKDIV ( 
    CLKI, RST, SEL2, SEL1, SEL0,
    CDIV1, CDIVX  );
  input  CLKI, RST, SEL2, SEL1, SEL0;
  output CDIV1, CDIVX;
  ZERO     g0(.Y(CDIV1));
  ZERO     g1(.Y(CDIVX));
endmodule


