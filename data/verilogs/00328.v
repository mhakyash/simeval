module scratchpad_memory (
  input clk,
  input rst,
  input write_en,
  input [log2(depth)-1:0] address,
  input [width-1:0] data_in,
  output reg [width-1:0] data_out
);

parameter depth = 1024; // depth of the memory block
parameter width = 16; // width of each memory location (in bits)

reg [width-1:0] memory [depth-1:0];

always @(posedge clk or posedge rst) begin
  if (rst) begin
    data_out <= 0;
  end else begin
    if (write_en) begin
      memory[address] <= data_in;
    end else begin
      data_out <= memory[address];
    end
  end
end

endmodule