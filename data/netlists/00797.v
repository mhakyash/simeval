// Benchmark "reg_ena_rst" written by ABC on Wed Jun 26 15:22:20 2024

module reg_ena_rst ( clock, 
    clk, ena, d, rst,
    q  );
  input  clock;
  input  clk, ena, d, rst;
  output q;
  reg q;
  wire new_n9, new_n10, n12;
  INVX1    g0(.A(rst), .Y(new_n9));
  MX2X1    g1(.A(q), .B(d), .S0(ena), .Y(new_n10));
  AND2X1   g2(.A(new_n10), .B(new_n9), .Y(n12));
  always @ (posedge clock) begin
    q <= n12;
  end
endmodule


