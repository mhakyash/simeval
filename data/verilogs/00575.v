module execute_load_data(
		input wire [3:0] iMASK,
		input wire [1:0] iSHIFT,
		input wire [31:0] iDATA,
		output wire [31:0] oDATA
	);

	assign oDATA = func_load_fairing(
		iMASK,
		iSHIFT,
		iDATA
	);

	function [31:0] func_load_fairing;	
		input [3:0] func_mask;
		input [1:0] func_shift;
		input [31:0] func_data;
		reg [31:0] func_output;
		begin
			if(func_mask == 4'hf)begin
				func_output = func_data;
			end
			else if(func_mask == 4'b0001)begin
				func_output = {func_data[31:24], 24'h0};
			end
			else if(func_mask == 4'b0010)begin
				func_output = {func_data[23:16], 24'h0};
			end
			else if(func_mask == 4'b0100)begin
				func_output = {func_data[15:8], 24'h0};
			end
			else if(func_mask == 4'b1000)begin
				func_output = {func_data[7:0], 24'h0};
			end
			else if(func_mask == 4'b0011)begin
				func_output = {func_data[31:16], 16'h0};
			end
			else begin
				func_output = {func_data[31:8], 8'h0};
			end
			
			// Shift right by iSHIFT bits
			if(func_shift == 2'b00)begin
				func_load_fairing = func_output;
			end
			else if(func_shift == 2'b01)begin
				func_load_fairing = func_output >> 1;
			end
			else if(func_shift == 2'b10)begin
				func_load_fairing = func_output >> 2;
			end
			else begin // func_shift == 2'b11
				func_load_fairing = func_output >> 3;
			end
		end
	endfunction
	
endmodule