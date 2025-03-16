module ram_rw (
  input clk,
  input [3:0] waddr,
  input [7:0] wdata,
  input wen,
  input [3:0] raddr,
  output reg [7:0] rdata
);

  reg [7:0] mem [0:15];
  integer i;

  always @(posedge clk) begin
    if (wen) begin
      mem[waddr] <= wdata;
    end
    rdata <= mem[raddr];
  end

endmodule