module memory_interface (
  input clk,
  input rst,
  input we,
  input [addr_width-1:0] addr,
  input [data_width-1:0] din,
  output reg [data_width-1:0] dout
);

parameter data_width = 32;
parameter addr_width = 16;

reg [data_width-1:0] memory [0:(1<<addr_width)-1];

always @(posedge clk) begin
  if (rst) begin
    dout <= 0;
  end else begin
    if (we) begin
      memory[addr] <= din;
    end else begin
      dout <= memory[addr];
    end
  end
end

endmodule