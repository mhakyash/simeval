module SNPS_CLOCK_GATE_HIGH_d_ff_en_W32_0_11 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;

  reg ENCLK_reg;

  always @ (posedge CLK) begin
    if (EN && TE) begin
      ENCLK_reg <= 1;
    end else begin
      ENCLK_reg <= 0;
    end
  end

  assign ENCLK = ENCLK_reg;

  TLATNTSCAX2TS latch ( .E(EN), .SE(TE), .CK(CLK), .ECK(ENCLK) );
initial $sdf_annotate("CORDIC_Arch3_ASIC_fpu_syn_constraints_clk10.tcl_GATED_syn.sdf"); 
endmodule