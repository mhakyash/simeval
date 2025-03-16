// Benchmark "shift_register_gated" written by ABC on Wed Jun 26 15:22:07 2024

module shift_register_gated ( 
    CLK, EN, TE,
    ENCLK  );
  input  CLK, EN, TE;
  output ENCLK;
  BUFX1    g0(.A(EN), .Y(ENCLK));
endmodule


