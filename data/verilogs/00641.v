module dual_port_ram (
  input clk,
  input wenA,
  input wenB,
  input [addr_width-1:0] addra,
  input [addr_width-1:0] addrb,
  input [width-1:0] dina,
  input [width-1:0] dinb,
  output [width-1:0] douta,
  output [width-1:0] doutb
);

parameter width = 8; // width of the data bus
parameter addr_width = 10; // number of address bits

reg [width-1:0] mem [0:(2**addr_width)-1];

always @(posedge clk) begin
  if (wenA) begin
    mem[addra] <= dina;
  end
  if (wenB) begin
    mem[addrb] <= dinb;
  end
  douta <= mem[addra];
  doutb <= mem[addrb];
end

endmodule