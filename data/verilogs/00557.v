module memory(input clk, input [31:0] idata, output [47:0] odata, input [15:0] addr, input [1:0] rw);
	reg [7:0] data [0:2**16-1];
	
	initial $readmemb("mem_init.txt", data);
	
	always @(posedge clk) begin
		case (rw)
			2'b01 : begin
				data[addr] <= idata[7:0];
			end
			2'b10 : begin
				{data[addr], data[addr + 1] } <= idata[15:0];
			end
			2'b11 : begin
				{data[addr], data[addr + 1], data[addr + 2], data[addr + 3] } <= idata[31:0];
			end
		endcase
	end
	
	assign odata = {data[addr], data[addr + 1], data[addr + 2], data[addr + 3], data[addr + 4], data[addr + 5] };
endmodule