module mem_protect (
  input [n-1:0] addr,
  input wen,
  input ren,
  input [7:0] din,
  output [7:0] dout
);

parameter n = 8; // number of address lines
parameter m = 256; // size of memory block
parameter p = 16; // number of protection blocks

reg [7:0] mem [0:m-1]; // memory block
reg [p-1:0] protect [0:n-1]; // protection blocks

assign dout = (ren && protect[addr]) ? mem[addr] : 8'hZZ; // read access

always @ (posedge clk) begin
  if (wen && protect[addr]) mem[addr] <= din; // write access
end

endmodule