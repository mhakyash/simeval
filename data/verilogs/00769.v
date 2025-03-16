module hpdmc_banktimer(
	input sys_clk,
	input sdram_rst,
	input tim_cas,
	input [1:0] tim_wr,
	input read,
	input write,
	output reg precharge_safe
);

reg [3:0] counter;

always @(posedge sys_clk) begin
	if(sdram_rst) begin
		counter <= 4'd0;
		precharge_safe <= 1'b1;
	end else begin
		if(read) begin
			counter <= 4'd8;
			precharge_safe <= 1'b0;
		end else if(write) begin
			counter <= {2'b10, tim_wr};
			precharge_safe <= 1'b0;
		end else begin
			if(counter == 4'b1) precharge_safe <= 1'b1;
			if(~precharge_safe) counter <= counter - 4'b1;
		end
	end
end

// --------------------------------------------------------------------
endmodule