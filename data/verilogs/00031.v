module memory16 (
  input [11:0] address,
  input clock,
  input [15:0] data,
  input wren,
  output reg [15:0] q
);

  reg [15:0] memory [0:4095];

  always @(posedge clock) begin
    if (wren) begin
      memory[address] <= data;
    end
    q <= memory[address];
  end

endmodule