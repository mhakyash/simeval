module memory_controller (
  input clk,
  input cs,
  input rw,
  input [7:0] addr,
  input [7:0] din,
  output [7:0] dout
);

reg [7:0] memory [0:255];

always @(posedge clk) begin
  if (cs) begin
    if (rw) begin // read from memory
      dout <= memory[addr];
    end else begin // write to memory
      memory[addr] <= din;
    end
  end
end

endmodule