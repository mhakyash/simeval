module regfile(
  input clk,
  input we,
  input [3:0] wa,
  input [7:0] wd,
  input [3:0] ra,
  output [7:0] rd,
  output [3:0] out
);

  reg [7:0] data [0:15];
  reg [3:0] addr;
  
  always @(posedge clk) begin
    if (we) begin
      data[wa] <= wd;
    end
    addr <= ra;
  end
  
  assign rd = data[addr];
  assign out = addr;
  
endmodule