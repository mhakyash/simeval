module adder_subtractor(A, B, mode, result);
input [3:0] A, B;
input mode;
output reg [3:0] result;

always @(*) begin
	if(mode == 0)
		result <= A + B;
	else
		result <= A - B;
end

endmodule