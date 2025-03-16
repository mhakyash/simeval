// Benchmark "clock_gate" written by ABC on Wed Jun 26 15:22:26 2024

module clock_gate ( 
    CLK, EN, TE,
    ENCLK  );
  input  CLK, EN, TE;
  output ENCLK;
  wire new_n5;
  NAND2X1  g0(.A(EN), .B(CLK), .Y(new_n5));
  NOR2X1   g1(.A(new_n5), .B(TE), .Y(ENCLK));
endmodule


