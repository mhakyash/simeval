module DCSC(
	input CLK1, CLK0,
	input SEL1, SEL0,
	input MODESEL,
	output DCSOUT
);
	parameter DCSMODE = "POS";
	
	reg DCS1, DCS0, DCS_OR, DCS_XOR, DCS_AND;
	
	// Generate intermediate signals
	assign DCS_OR = CLK1 | CLK0;
	assign DCS_XOR = CLK1 ^ CLK0;
	assign DCS_AND = CLK1 & CLK0;
	
	// Generate DCSOUT based on MODESEL and SEL1/SEL0
	always @(*) begin
		if (MODESEL) begin
			DCSOUT = DCS_AND;
		end else begin
			if (SEL1 && !SEL0) begin
				DCSOUT = CLK1;
			end else if (!SEL1 && SEL0) begin
				DCSOUT = CLK0;
			end else if (SEL1 && SEL0) begin
				DCSOUT = DCS_OR;
			end else begin
				DCSOUT = DCS_XOR;
			end
		end
	end
	
	// Invert DCSOUT if DCSMODE is "NEG"
	assign DCSOUT = (DCSMODE == "NEG") ? (~DCSOUT) : (DCSOUT);
	
endmodule