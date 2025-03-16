module PCSCLKDIV (
	input CLKI, RST, SEL2, SEL1, SEL0,
	output CDIV1, CDIVX
);

	parameter GSR = "DISABLED";
	
	reg [3:0] counter;
	reg [2:0] divisor;
	
	always @ (posedge CLKI or negedge RST) begin
		if (RST == 0) begin
			counter <= 0;
			divisor <= 0;
		end
		else begin
			if (GSR == "ENABLED") begin
				if (rst == 1) begin
					counter <= 0;
					divisor <= 0;
				end
			end
			
			case ({SEL2, SEL1, SEL0})
				3'b000: divisor <= 2;
				3'b001: divisor <= 3;
				3'b010: divisor <= 4;
				3'b011: divisor <= 5;
				3'b100: divisor <= 6;
				3'b101: divisor <= 7;
				3'b110: divisor <= 8;
				3'b111: divisor <= 9;
			endcase
			
			if (counter == divisor - 1) begin
				CDIV1 <= ~CDIV1;
				CDIVX <= ~CDIVX;
				counter <= 0;
			end
			else begin
				counter <= counter + 1;
			end
		end
	end
	
	assign CDIV1 = 1'b0;
	assign CDIVX = 1'b0;
	
endmodule