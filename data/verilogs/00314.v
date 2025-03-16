module SNPS_CLOCK_GATE_HIGH_Up_counter_COUNTER_WIDTH4 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;

  reg Q, D;

  always @(posedge CLK) begin
    if (EN & TE) begin
      Q <= D;
    end
  end

  assign ENCLK = Q;

endmodule