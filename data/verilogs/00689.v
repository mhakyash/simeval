module cmd_fifo(
  clk,
  rst,
  din,
  wr_en,
  rd_en,
  dout,
  full,
  empty
);

input clk;
input rst;
input [7 : 0] din;
input wr_en;
input rd_en;
output [7 : 0] dout;
output full;
output empty;

// Instantiate the FIFO_GENERATOR_V8_2 module
FIFO_GENERATOR_V8_2 #(
    // Set the parameters for the FIFO
    .C_AXI_DATA_WIDTH(8), // Set the data width to 8 bits
    .C_WR_DEPTH(16),      // Set the write depth to 16
    .C_RD_DEPTH(16),      // Set the read depth to 16
    .C_HAS_RST(1)         // Enable reset
) fifo_inst (
    // Connect the inputs and outputs of the FIFO
    .CLK(clk),
    .RST(rst),
    .DIN(din),
    .WR_EN(wr_en),
    .RD_EN(rd_en),
    .DOUT(dout),
    .FULL(full),
    .EMPTY(empty)
);

endmodule