// Benchmark "turnoff_ctrl" written by ABC on Wed Jun 26 15:22:24 2024

module turnoff_ctrl ( clock, 
    clk, rst_n, req_compl_i, compl_done_i, cfg_to_turnoff_n,
    cfg_turnoff_ok_n  );
  input  clock;
  input  clk, rst_n, req_compl_i, compl_done_i, cfg_to_turnoff_n;
  output cfg_turnoff_ok_n;
  reg cfg_turnoff_ok_n, trn_pending;
  wire new_n13, new_n15, new_n16, n14, n18;
  NOR2X1   g0(.A(trn_pending), .B(cfg_to_turnoff_n), .Y(new_n13));
  NAND2X1  g1(.A(new_n13), .B(rst_n), .Y(n14));
  INVX1    g2(.A(compl_done_i), .Y(new_n15));
  MX2X1    g3(.A(req_compl_i), .B(new_n15), .S0(trn_pending), .Y(new_n16));
  AND2X1   g4(.A(new_n16), .B(rst_n), .Y(n18));
  always @ (posedge clock) begin
    cfg_turnoff_ok_n <= n14;
    trn_pending <= n18;
  end
endmodule


