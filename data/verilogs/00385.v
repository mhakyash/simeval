module single_port_RAM (
  input clk,
  input we,
  input [n-1:0] addr,
  input [m-1:0] din,
  output [m-1:0] dout
);

parameter n = 4; // number of address bits
parameter m = 8; // number of data bits
parameter k = 16; // number of memory locations

reg [m-1:0] mem [0:k-1];

always @(posedge clk) begin
  if (we) begin
    mem[addr] <= din;
  end
  else begin
    dout <= mem[addr];
  end
end

endmodule