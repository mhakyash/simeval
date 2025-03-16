module addsub(/*AUTOARG*/
	// Outputs
	data_c,overflow,
	// Inputs
	data_a, data_b, sign, addsub
	);
	
	input  [31:0]    data_a;
	input  [31:0] 	 data_b;
	input 			 sign;
	input 			 addsub;

	output           overflow;
	output reg  [31:0] data_c;
	
	reg [32:0] temp;
	
	always @(*) begin
		if (addsub == 1) begin // subtraction
			if (sign == 1) begin // signed subtraction
				if (data_a < data_b) begin
					temp = {32'h0, data_b} - {32'h0, data_a};
					data_c = -temp[31:0];
					overflow = 1;
				end else begin
					temp = {32'h0, data_a} - {32'h0, data_b};
					data_c = temp[31:0];
					overflow = 0;
				end
			end else begin // unsigned subtraction
				if (data_a < data_b) begin
					temp = {32'h0, data_b} - {32'h0, data_a};
					data_c = temp[31:0];
					overflow = 1;
				end else begin
					temp = {32'h0, data_a} - {32'h0, data_b};
					data_c = temp[31:0];
					overflow = 0;
				end
			end
		end else begin // addition
			if (sign == 1) begin // signed addition
				temp = {32'h0, data_a[31] ^ sign, data_a[30:0]} + {32'h0, data_b[31] ^ sign, data_b[30:0]};
				if (temp[32] != temp[31]) begin
					overflow = 1;
				end else begin
					overflow = 0;
				end
				data_c = temp[31:0];
			end else begin // unsigned addition
				temp = {32'h0, data_a} + {32'h0, data_b};
				if (temp[32] != 0) begin
					overflow = 1;
				end else begin
					overflow = 0;
				end
				data_c = temp[31:0];
			end
		end
	end
	
endmodule