module counter(clk, reset, enable, count);

	input clk, reset, enable;
	output reg [3:0] count;

	always @(posedge clk) begin
		if (reset == 0) begin
			count <= 4'b0000;
		end else if (enable == 1) begin
			count <= count + 1;
		end
	end

endmodule