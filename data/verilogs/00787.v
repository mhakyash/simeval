module clock_gate (
  input CLK, 
  input EN, 
  input TE, 
  input RST, 
  output ENCLK
);

  TLATNTSCAX2TS latch (
    .E(EN), 
    .SE(TE), 
    .CK(CLK), 
    .ECK(ENCLK)
  );

  reg gated_clk;

  always @ (posedge CLK or posedge RST) begin
    if (RST) begin
      gated_clk <= 1'b0;
    end else begin
      gated_clk <= EN & TE;
    end
  end

  assign ENCLK = gated_clk;

endmodule