module scratchpad_ram(DATA_IN, DATA_OUT, ADDR, WE, CLK);

  parameter WIDTH = 10;
  parameter DEPTH = 256;

  input [WIDTH-1:0] DATA_IN;
  output [WIDTH-1:0] DATA_OUT;
  input [7:0] ADDR;
  input WE;
  input CLK;

  reg [WIDTH-1:0] mem [0:DEPTH-1];

  always @(posedge CLK) begin
    if (WE) begin
      mem[ADDR] <= DATA_IN;
    end
  end

  assign DATA_OUT = mem[ADDR];

endmodule