module stratixv_pll_dpa_output
#(
	// parameter declaration and default value assignment
	parameter output_clock_frequency = "",	//Valid values: 
	parameter pll_vcoph_div = 1	//Valid values: 1|2|4
)
(
	//input and output port declaration
	input [ 0:0 ] pd,
	input [ 7:0 ] phin,
	output [ 7:0 ] phout
); 

	// Calculate the input clock frequency
	// The input clock frequency is a multiple of 40 MHz
	// phin[7:0] = input clock frequency in MHz
	assign input_clk_freq = phin + 40;

	// Calculate the output clock frequency
	// The output clock frequency is a multiple of the input clock frequency
	// The multiplication factor is equal to pll_vcoph_div
	// phout[7:0] = output clock frequency in MHz
	assign output_clk_freq = input_clk_freq * pll_vcoph_div;
	
	// Instantiate the stratixv_pll_dpa_output_encrypted module to generate the output clock frequency
	stratixv_pll_dpa_output_encrypted #(
		.output_clock_frequency(output_clk_freq),
		.pll_vcoph_div(pll_vcoph_div)
	)
	stratixv_pll_dpa_output_encrypted_inst (
		.pd(pd),
		.phin(phin),
		.phout(phout)
	);

endmodule