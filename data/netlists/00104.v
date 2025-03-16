// Benchmark "inv_clk" written by ABC on Wed Jun 26 15:22:00 2024

module inv_clk ( 
    clkin,
    clkout  );
  input  clkin;
  output clkout;
  INVX1    g0(.A(clkin), .Y(clkout));
endmodule


