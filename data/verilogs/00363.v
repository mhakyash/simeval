module alu(a,b,aluc,result);
	input wire [31:0] a,b;
	input wire [4:0] aluc;
	output reg [31:0] result;

	always @*
	begin
		case(aluc)
			5'd0: // Addition (signed)
				result = a + b;
			5'd1: // Addition (unsigned)
				result = a + b;
			5'd2: // Subtraction (signed)
				result = a - b;
			5'd3: // Subtraction (unsigned)
				result = a - b;
			5'd4: // Bitwise AND
				result = a & b;
			5'd5: // Bitwise OR
				result = a | b;
			5'd6: // Bitwise XOR
				result = a ^ b;
			5'd7: // Bitwise NOR
				result = ~(a | b);
			5'd8: // Set Less Than (signed)
				result = (a[31]^b[31])?(a[31]?1:0):(a<b);
			5'd9: // Set Less Than (unsigned)
				result = a < b;
			5'd10: // Shift Left Logical
				result = b << a;
			5'd11: // Shift Right Logical
				result = b >> a;
			5'd12: // Shift Right Arithmetic
				result = $signed(b) >>> a;
			5'd14: // Load Upper Immediate
				result = {b[15:0], 16'b0};
			5'd31: // Zero
				result = 0;
			default: // Invalid input
				result = 0;
		endcase
	end

endmodule